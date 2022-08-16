local Blips={
	{name="Arab Drift Highway",color=47,id=76,x=-1625.21,y=-3284.43,z=11.10,scale=0.9},
}
      
Citizen.CreateThread(function()
    for _,v in pairs(Blips)do
      v.blip=AddBlipForCoord(v.x,v.y,v.z);
      SetBlipSprite(v.blip,v.id);
      SetBlipDisplay(v.blip,4);
      SetBlipScale(v.blip,v.scale);
      SetBlipColour(v.blip,v.color);
      SetBlipAsShortRange(v.blip,true);
	  BeginTextCommandSetBlipName("STRING");
      AddTextComponentString(v.name);
      EndTextCommandSetBlipName(v.blip);
    end
end)