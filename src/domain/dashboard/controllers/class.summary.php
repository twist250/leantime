<?php

namespace leantime\domain\controllers {

    use leantime\core;
    use leantime\domain\repositories;
    use leantime\domain\services;
    use leantime\domain\models;

    use DateTime;
    use DateInterval;


    class summary
    {

        private $tpl;


        /**
         * constructor - initialize private variables
         *
         * @access public
         *
         */
        public function __construct()
        {

            $this->tpl = new core\template();
        }

        /**
         * get - handle get requests
         *
         * @access public
         *
         */
        public function get($params)
        {
            $projectRepo = new repositories\projects();

            $this->tpl->assign('projectsWithPMs', $projectRepo->getProjectsWithPM());
            $this->tpl->display('dashboard.summary');
        }

        /**
         * post - handle post requests (via login for example) and redirects to get
         *
         * @access public
         */
        public function post($params)
        {
            if (isset($_GET['id'])) {

                $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
                $this->tpl->assign(
                    "currentProjectName",
                    $this->projectService->getProjectName($_SESSION['currentProject'])
                );
                $this->tpl->redirect(BASE_URL . "/reports/show/" . $id);
            }
        }


        /**
         * put - handle put requests
         *
         * @access public
         *
         */
        public function put($params)
        {
        }

        /**
         * delete - handle delete requests
         *
         * @access public
         *
         */
        public function delete($params)
        {
        }
    }
}
