state("SonsOfTheForest"){
	float health: "fmodstudio.dll", 0x002B1E50, 0x2A8, 0x8, 0x4C;
	uint location: "GameAssembly.dll", 0x05078420, 0xB8, 0xD8, 0xB4;
}

startup{
	settings.Add("sor", true, "Split On Respaw"); 
}

start{
	if(current.health <= 28 && current.health > 0 ){
		return true;
	}
}

split{
	if(old.health == 0 && current.health == 28 && settings["sor"]){
		return true;
	}
}

reset{
	if(current.location == 0){
		return true;
	}
}
