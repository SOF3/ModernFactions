<?php

/*
 * ModernFactions
 *
 * Copyright (C) 2018 SOFe
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

declare(strict_types=1);

namespace SOFe\ModernFactions;

use pocketmine\plugin\PluginBase;
use poggit\libasynql\DataConnector;
use poggit\libasynql\libasynql;
use SOFe\Libglocal\LangManager;
use SOFe\Libglocal\Libglocal;
use SOFe\Libkinetic\KineticAdapter;
use SOFe\Libkinetic\KineticAdapterBase;
use SOFe\Libkinetic\KineticManager;
use spoondetector\SpoonDetector;

class Main extends PluginBase implements KineticAdapter{
	use KineticAdapterBase;

	/** @var LangManager */
	private $lang;
	/** @var DataConnector */
	private $database;
	/** @var KineticManager */
	private $kinetic;

	public function onEnable() : void{
		if(!SpoonDetector::printSpoon($this, "pocketmine-only.txt")){
			return;
		}

		$this->saveDefaultConfig();

		$this->lang = Libglocal::init($this);

		$this->database = libasynql::create($this, $this->getConfig()->get("database"), [
			"sqlite" => "sqlite.sql",
			"mysql" => "mysql.sql"
		]);

		$this->kinetic = new KineticManager($this, $this);
	}

	public function onDisable(){
		if(isset($this->database)){
			$this->database->close();
		}
	}
}
