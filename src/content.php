<!DOCTYPE html>
<html dir="<?php echo $this->language->__("language.direction"); ?>" lang="<?php echo $this->language->__("language.code"); ?>">

<head>
    <?php echo $this->includeAction('general.header'); ?>
</head>

<body>
    <div class="mainwrapper">


        <div class="leftpanel" style="<?php if (isset($_SESSION['menuState']) && $_SESSION['menuState'] == 'closed') echo 'margin-left:-240px;'; ?>">


            <div class="logo" style="<?php if (isset($_SESSION['menuState']) && $_SESSION['menuState'] == 'closed') echo 'margin-left:-260px;'; ?>">

                <a href="<?= BASE_URL ?>" style="background-image:url('<?php echo htmlentities($_SESSION["companysettings.logoPath"]); ?>')">&nbsp;</a>
            </div>

            <?php
            $url = 'http://' . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
            if (strpos($url, 'summary') == false) { ?>
                <div class="leftmenu">

                    <?php echo $this->includeAction('general.menu'); ?>

                </div>

            <?php } ?>
            <!--leftmenu-->

        </div><!-- leftpanel -->

        <div class="header" style="<?php if (isset($_SESSION['menuState']) && $_SESSION['menuState'] == 'closed') echo 'margin-left:0px; width:100%;'; ?>">

            <?php
            $url = 'http://' . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
            if (strpos($url, 'summary') == false) { ?>

                <a class="barmenu open" href="javascript:void(0);">
                    <span class="fa fa-bars"></span>
                </a>


            <?php } ?>

            <div class="headerinner" style="<?php if (isset($_SESSION['menuState']) && $_SESSION['menuState'] == 'closed') echo 'margin-left:0px;'; ?>">


                <div class="userloggedinfo">
                    <?php echo $frontController->includeAction('general.loginInfo'); ?>
                </div>

                <?php echo $frontController->includeAction('general.headMenu'); ?>

            </div>
        </div>

        <div class="rightpanel" style="position: relative; <?php if (isset($_SESSION['menuState']) && $_SESSION['menuState'] == 'closed') echo 'margin-left:0px;'; ?>">

            <!--###MAINCONTENT###-->

        </div>
        <!--rightpanel-->

    </div>
    <!--mainwrapper-->

</body>

</html>