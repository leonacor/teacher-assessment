<?php
session_start();
include('DataSystem.php');
class InfoSystem extends DataSystem
{
    private $bConnection;
    private function OpenDB()
    {
        $bConnection = new mysqli(DataSystem::dbHost, DataSystem::dbUser, DataSystem::dbPwd, DataSystem::dbName);
    		if ($bConnection->connect_errno)
    		{
    			//echo 'NOK: (Error: '.$mysqli->connect_errno.') '.$mysqli->connect_error;
    			$this->bConnection = false;
    		}
    		else
    		{
    			//echo 'OK '.$mysqli->host_info.'\n';
    			$this->bConnection = $bConnection;
    		}
    }

    private function CloseDB()
    {
        mysqli_close($this->bConnection);
    }

    private function GetQueryUSP($i, $arg1 = 'N/A', $arg2 = 'N/A', $arg3 = 'N/A', $arg4 = 'N/A', $arg5 = 'N/A', $arg6 = 'N/A')
  	{
  		return "call uspTeAsMx(".$i.",'".$arg1."','".$arg2."','".$arg3."','".$arg4."','".$arg5."','".$arg6."');";
  	}

    public function getAccess($strUsNam, $strPwd/*, $iProfile*/)//bsnsLogin
  	{
  		$this->OpenDB();
  		$this->bConnection->set_charset("utf8");
      /*if($iProfile==5)//teacher
      {

      }
      else//student admin
      {
        $res = $this->bConnection->query($this->GetQueryUSP(1,$strUsNam,$strPwd));
      }*/
      $res = $this->bConnection->query($this->GetQueryUSP(1,$strUsNam,$strPwd));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
  	}

    public function getUsNam($strUsNam)//bsnsLogin
  	{
  		$this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(2,$strUsNam));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
  	}

    public function getTeachersToEvaluate($strUsNum)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(3,$strUsNum));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function getQuestions()//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(4));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function setInsertNewAssessment($num,$nam,$yearAcademic,$alive,$numAdmin){
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(5,$num,$nam,$yearAcademic,$alive,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function setInsertNewQuestion($num,$nam,$numCatPrSk,$numAdmin){
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(6,$num,$nam,$numCatPrSk,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function getAssessment()//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(7));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function setInsertNewProdQuPrSkAs($numAs,$namQuPrSk,$numAdmin){
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(8,$numAs,$namQuPrSk,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function getProdQuPrSkAs()//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(9));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function getAllQuPrSkAs()//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(10));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function setUpdateCatAssessmentPublish($numProdQuPrSkAs,$numAdmin)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(11,$numProdQuPrSkAs,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function setUpdateDismissQuPrSkAs($iCase,$numProdQuPrSkAs,$numAdmin)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(12,$iCase,$numProdQuPrSkAs,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function getQuPrSkAsQuery()//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(13));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function getPrSkQuery()//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(14));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function setRemoveQuestion($numQuPrSk,$numAdmin)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(15,$numQuPrSk,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function setRemovePrSk($numQuPrSk,$numAdmin)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(16,$numQuPrSk,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function setNewPrSk($numPrSk,$namPrSk,$numAdmin)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(17,$numPrSk,$namPrSk,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function getCatAsAliveQuery()//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(18));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function getCatGr()//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(19));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function setAliveAs($numAs,$numAdmin)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(20,$numAs,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function setRemoveAliveAs($numAs,$numAdmin)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset("utf8");
  		$res = $this->bConnection->query($this->GetQueryUSP(21,$numAs,$numAdmin));
  		$row = $res->fetch_assoc();
  		$strR = $row['L1'];
  		$this->CloseDB();
  		return $strR;
    }

    public function getCatUsProfile($iProfile)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(22,$iProfile));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function setNoTeacher($numTe,$numSu,$numSt,$numAs)//bsnsHome
    {
      $this->OpenDB();
      $this->bConnection->set_charset("utf8");
      $res = $this->bConnection->query($this->GetQueryUSP(23,$numTe,$numSu,$numSt,$numAs));
      $row = $res->fetch_assoc();
      $strR = $row['L1'];
      $this->CloseDB();
      return $strR;
    }

    public function getTeachersToEvaluateAlreadyEvaluated($strUsNum)//bsnsHome
    {
      $this->OpenDB();
  		$this->bConnection->set_charset('utf8');
  		$res = $this->bConnection->query($this->GetQueryUSP(24,$strUsNum));
  		$rows = array();
  		while($r = mysqli_fetch_assoc($res)) {
  			$rows[] = array_map(null, $r);
  		}
  		$this->CloseDB();
  		return json_encode($rows);
    }

    public function setAnswersQuestions($numTe,$numSt,$numSu,$q,$a,$numAs)//bsnsHome
    {
      $this->OpenDB();
      $this->bConnection->set_charset("utf8");
      $res = $this->bConnection->query($this->GetQueryUSP(25,$numTe,$numSt,$numSu,$q,$a,$numAs));
      $row = $res->fetch_assoc();
      $strR = $row['L1'];
      $this->CloseDB();
      return $strR;
    }

    public function setNewUser($numUs,$accessUs)//bsnsHome
    {
      $this->OpenDB();
      $this->bConnection->set_charset("utf8");
      $res = $this->bConnection->query($this->GetQueryUSP(26,$numUs,$accessUs));
      $row = $res->fetch_assoc();
      $strR = $row['L1'];
      $this->CloseDB();
      return $strR;
    }
}
