<?php 
class M_home extends CI_Model{
	function tampilAcara(){
		return $this->db->get('acara'); 
	}

}

 ?>