<?php

namespace App\Models;

use CodeIgniter\Model;

class Grafik_model extends Model
{
	

    public function grafik_gender_json(){ 
		$query = $this->db->query("select jenis_kelamin,count(nik) as jumlah from tab_penduduk group by jenis_kelamin");
	    return $query->getResult();
	}
   
}
