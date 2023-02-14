local profile = {};
local sets = {
    Idle = {
        Main = { Name = 'Aettir', AugPath='A' },
        Sub = 'Utu Grip',
        Ammo = 'Ginsen',
        Head = { Name = 'Fu. Bandeau +1', AugTrial=5335 },
        Neck = { Name = 'Futhark Torque +1', AugPath='A' },
        Ear1 = 'Cessance Earring',
        Ear2 = 'Sherida Earring',
        Body = 'Runeist\'s coat +2',
        Hands = 'Regal Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Warden\'s Ring',
        Back = { Name = 'Ogma\'s Cape', Augment = { [1] = 'Parrying rate+5%', [2] = 'Enmity+10', [3] = 'Eva.+20', [4] = 'Mag. Evasion+10', [5] = 'HP+60', [6] = 'Mag. Eva.+20' } },
        Waist = 'Chiner\'s Belt +1',
        Legs = 'Eri. Leg Guards +1',
        Feet = 'Erilaz Greaves +2',
    },
	Resting = {
        Ear1 = 'Relaxing earring',
        Ammo = 'Homiliary',
    },
	Movement = {
		Feet = 'Skd. Jambeaux +1',
	},
	MAB = {
		Ear1 = 'Friomisi Earring',
		Ear2 = 'Hermetic Earring',
		Neck = 'Sibyl Scarf',
		Ring1 = 'Mujin Band',
		Body = 'Samnuha Coat',
		Waist = 'Eschan Stone',
		Ammo = 'Seeth. bomblet +1',
	},
	WSMulti = {
		Head = { Name = 'Herculean Helm', Augment = { [1] = 'Weapon skill damage +6%', [2] = 'Rng.Acc.+21', [3] = 'CHR+10', [4] = 'Attack+3', [5] = 'Accuracy+3' } },
		Ammo = 'Knobkierrie',
		Neck = 'Fotia Gorget',
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' }},
		Hands = 'Meg. Gloves +2',
		Waist = 'Fotia Belt',
	},
	WSMab = {
		Head = { Name = 'Herculean Helm', Augment = { [1] = 'Weapon skill damage +6%', [2] = 'Rng.Acc.+21', [3] = 'CHR+10', [4] = 'Attack+3', [5] = 'Accuracy+3' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Knobkierrie',
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' }},
		Ear2 = 'Friomisi Earring',
		Ring1 = 'Mujin Band',
		Hands = 'Meg. Gloves +2',
		Waist = 'Fotia Belt',
	},
	WS = {
		Head = { Name = 'Herculean Helm', Augment = { [1] = 'Weapon skill damage +6%', [2] = 'Rng.Acc.+21', [3] = 'CHR+10', [4] = 'Attack+3', [5] = 'Accuracy+3' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Knobkierrie',
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Hands = 'Meg. Gloves +2',
		Waist = 'Fotia Belt',
	},
	
	TH = {
        Ammo = 'Per. Lucky Egg',
        Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+5', [2] = '"Treasure Hunter"+2', [3] = 'Attack+4', [4] = '"Mag. Atk. Bns."+23' } },
    },
	
	Enhancing_Precast = {
		Hands = 'Regal Gauntlets',
		Legs = { Name = 'Futhark Trousers +1', AugTrial=5338 },
	},
};
profile.Sets = sets;

local Settings = {
    UseTH = false
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local player = gData.GetPlayer();
	
	if (player.SubJob == "BLU" ) then
	(function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 10');
	coroutine.sleep(0.5);
	AshitaCore:GetChatManager():QueueCommand(1, '/sl blink');
	end):once(1); --This calls the function after 1 second
	elseif (player.SubJob == "DRK" ) then
	(function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 2');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 10');
	coroutine.sleep(0.5);
	AshitaCore:GetChatManager():QueueCommand(1, '/sl blink');
	end):once(1); --This calls the function after 1 second
	end
	
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    if (args[1] == 'TH') then
        if (Settings.UseTH == true) then
            Settings.UseTH = false;
        else
            Settings.UseTH = true;
        end
    end
end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
	if (player.Status == "Engaged") then
        gFunc.EquipSet(profile.Sets.Idle);
		if (Settings.UseTH == true) then
            gFunc.EquipSet(sets.TH);
        end
    elseif (player.Status == "Resting") then
		gFunc.EquipSet(profile.Sets.Resting);
	elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
end

profile.HandleAbility = function()
	 local act = gData.GetAction();
	if (act.Name == "Lunge" or act.Name == "Swipe") then
        gFunc.EquipSet(profile.Sets.MAB);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	local spell = gData.GetAction();
	if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing_Precast);
	end
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local act = gData.GetAction();
	if (act.Name == "Dimidiation" or act.Name == "Resolution" or act.Name == "Sickle Moon") then
        gFunc.EquipSet(profile.Sets.WSMulti);
    elseif (act.Name == "Frostbite" or act.Name == "Freezebite" or act.Name == "Herculean Slash") then
        gFunc.EquipSet(profile.Sets.WSMab);
    else
        gFunc.EquipSet(profile.Sets.WS);
    end  
end

return profile;