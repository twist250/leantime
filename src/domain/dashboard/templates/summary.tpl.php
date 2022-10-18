<?php

use leantime\core;

defined('RESTRICTED') or die('Restricted access');
$project = $this->get('project');

if (!core\login::userIsAtLeast("admin")) {
    header('Location: /dashboard/show');
}
?>

<div class="pageheader">

    <div class="pageicon">
        <span class="fa fa-suitcase"></span>
    </div>
    <div class="pagetitle">
        <h5><?php echo $this->__('label.administration');
            $this->__("") ?></h5>
        <h1>Summary of Projects</h1>
    </div>

</div>
<!--pageheader-->

<div class="maincontent">
    <div class="maincontentinner">

        <?php echo $this->displayNotification(); ?>

        <?php echo $this->displayLink('dashboard.show', "<i class='fa fa-fw fa-arrow-right'></i> " . $this->__('Dashboard'), NULL, array('class' => 'btn btn-primary btn-rounded')) ?>
        <?php echo $this->displayLink('projects.newProject', "<i class='iconfa-plus'></i> " . $this->__('link.new_project'), NULL, array('class' => 'btn btn-primary btn-rounded')) ?>

        <table class="table table-bordered" cellpadding="0" cellspacing="0" border="0" id="allProjectsTable">
            <colgroup>
                <col class="con1" />
                <col class="con0" />
                <col class="con1" />
                <col class="con0" />
                <col class="con1" />
                <col class="con0" />
            </colgroup>
            <thead>
                <tr>
                    <th class="head0"><?php echo $this->__('label.project_name'); ?></th>
                    <th class="head1"><?php echo $this->__('label.budget_cost'); ?></th>
                    <th class="head1">Start Date</th>
                    <th class="head1">End Date</th>
                    <th class="head1">Project Manager</th>
                    <th class="head1">Report</th>
                </tr>
            </thead>
            <tbody>

                <?php foreach ($this->get("projectsWithPMs") as $pm) : ?>
                    <tr class='gradeA'>

                        <td style="padding:6px;">
                            <?php echo $this->displayLink('projects.changeCurrentProject', $this->escape($pm['name']), array('id' => $pm['id'])) ?>
                        <td class="center"><?php $this->e($pm['dollarBudget']); ?></td>
                        <td class="center"><?php $this->e($pm['timelineFrom']); ?></td>
                        <td class="center"><?php $this->e($pm['timelineTo']); ?></td>
                        <td class="center"><?php $this->e($pm['firstname'] . ' ' . $pm['lastname']); ?></td>
                        <td class="center"><?php echo $this->displayLink('projects.changeCurrentReport', 'View report', array('id' => $pm['id'])) ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

    </div>
</div>



<script type="text/javascript">
    jQuery(document).ready(function() {

        <?php if (isset($_SESSION['userdata']['settings']["modals"]["showProjects"]) === false || $_SESSION['userdata']['settings']["modals"]["showProjects"] == 0) {     ?>
            leantime.helperController.showHelperModal("showProjects");
        <?php
            //Only show once per session
            $_SESSION['userdata']['settings']["modals"]["showProjects"] = 1;
        } ?>

        leantime.projectsController.initProjectTable();

    });
</script>