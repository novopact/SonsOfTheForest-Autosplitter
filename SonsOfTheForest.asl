state("SonsOfTheForest"){
	float health: "GameAssembly.dll", 0x0502C8C0, 0xB8, 0x3D0, 0xB0, 0x2B0;
	uint location: "GameAssembly.dll", 0x05078420, 0xB8, 0xD8, 0xB4;
}

startup{
	settings.Add("sor", true, "Split On Respaw"); 
}

start{
	if(current.health == 28){
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