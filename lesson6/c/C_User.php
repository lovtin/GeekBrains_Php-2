<?php
	include_once 'm/User.php';

	class C_User extends C_Base {
		
		public function action_info() {
			
			$get_user = new User();
			$user_info = $get_user->getUser($_SESSION['user_id']);
			$this->title .= ' | ' . $user_info['name'];
			$this->content = $this->Template('v/v_info.php', array('username' => $user_info['name'], 'userlogin' => $user_info['login']));
		}
		
		public function action_reg() {
			
			$this->title .= ' | Регистрация';
			$this->content = $this->Template('v/v_reg.php', array());

			if($this->isPost()) {
				$new_user = new User();
				$result = $new_user->newUser($_POST['name'], $_POST['login'], $_POST['password']);
				$this->content = $this->Template('v/v_reg.php', array('text' => $result));
			}
		}

		public function action_login() {
			$this->title .= ' | Вход';
			$this->content = $this->Template('v/v_login.php', array());

			if($this->isPost()) {
				$login = new User();
				$result = $login->login($_POST['login'], $_POST['password']);
				$this->content = $this->Template('v/v_login.php', array('text' => $result));
			}
		}

		public function action_logout() {
			$logout = new User();
			$result = $logout->logout();
		}
	}
?>