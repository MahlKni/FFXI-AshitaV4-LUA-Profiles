local profile = {};
local sets = {
    Idle = {
        Main = 'Gokotai',
        Sub = { Name = 'Ternion Dagger +1', AugPath='A' },
        Ammo = 'Date shuriken',
        Head = 'Hattori Zukin +2',
        Neck = 'Erudit. Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = { Name = 'Hattori Earring', Augment = { [1] = 'Accuracy+6', [2] = 'Mag. Acc.+6' } },
        Body = 'Hattori Ningi +2',
        Hands = { Name = 'Tatena. Gote +1', AugPath='A' },
        Ring1 = 'Hizamaru Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Yokaze Mantle', Augment = { [1] = 'STR+5', [2] = 'Sklchn.dmg.+4%', [3] = 'DEX+1' } },
        Waist = 'Chiner\'s Belt +1',
        Legs = { Name = 'Tatena. Haidate +1', AugPath='A' },
        Feet = { Name = 'Tatena. Sune. +1', AugPath='A' },
    },
	Burst = { 
		Ear1 = 'Friomisi earring',
		Ear2 = 'Hermetic Earring',
		Head = 'Mochi. Hatsuburi +3',
		Neck = 'Sibyl Scarf',
		Ring1 = 'Mujin Band',
		Body = 'Samnuha Coat',
		Waist = 'Eschan Stone',
		Hands = 'Hattori tekko +2',
		Feet = 'Hattori kyahan +2',
		Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
		},
	dt = {
		Neck = { Name = 'Loricate Torque +1', AugPath='A' },
		Ring1 = 'Defending ring',
		Legs = 'Hattori Hakama +2',
	},
    Movement = {
        Feet = 'Danzo Sune-Ate',
    },
	NightMoves = {
		Feet = 'Hachi. Kyahan +1',
	},
	WSMulti = {
		Head = { Name = 'Herculean Helm', Augment = { [1] = 'Weapon skill damage +6%', [2] = 'Rng.Acc.+21', [3] = 'CHR+10', [4] = 'Attack+3', [5] = 'Accuracy+3' } },
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' }},
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
		Feet = 'Hattori kyahan +2',
		Waist = 'Fotia Belt',
		},
	WSMab = {
		Head = { Name = 'Herculean Helm', Augment = { [1] = 'Weapon skill damage +6%', [2] = 'Rng.Acc.+21', [3] = 'CHR+10', [4] = 'Attack+3', [5] = 'Accuracy+3' } },
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Weapon skill damage +4%', [2] = 'Accuracy+16', [3] = 'Attack+16', [4] = 'Enmity+3' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
		Feet = 'Hattori kyahan +2',
		Waist = 'Fotia Belt',
		},
	WS = {
		Head = { Name = 'Herculean Helm', Augment = { [1] = 'Weapon skill damage +6%', [2] = 'Rng.Acc.+21', [3] = 'CHR+10', [4] = 'Attack+3', [5] = 'Accuracy+3' } },
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Weapon skill damage +4%', [2] = 'Accuracy+16', [3] = 'Attack+16', [4] = 'Enmity+3' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
		Feet = 'Hattori kyahan +2',
		Waist = 'Fotia Belt',
		},
	TH = {
        Ammo = 'Per. Lucky Egg',
        Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+5', [2] = '"Treasure Hunter"+2', [3] = 'Attack+4', [4] = '"Mag. Atk. Bns."+23' } },
    },
	Precast = {
		Body = { Name = 'Taeon Tabard' , Augment = { [1] = '"Fast Cast"+5'}},
		Hands = { Name = 'Leyline Gloves', Augment = { [1] = 'Accuracy+12', [2] = '"Mag. Atk. Bns."+15', [3] = '"Fast Cast"+2', [4] = 'Mag. Acc.+14' } }, 
		Feet = 'Hattori kyahan +2',
		Neck = 'Voltsurge torque',
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
	
	(function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 18');
	coroutine.sleep(0.5);
	AshitaCore:GetChatManager():QueueCommand(1, '/sl blink');
	end):once(1); --This calls the function after 1 second
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
	local environment = gData.GetEnvironment();
	
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Idle);
		if (Settings.UseTH == true) then
            gFunc.EquipSet(sets.TH);
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		if (environment.Time > 7.00 and environment.Time < 17.00) then
		gFunc.EquipSet(sets.Movement);
		else 
		gFunc.EquipSet(sets.NightMoves);
		end
    end
	
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local action = gData.GetAction()
	gFunc.EquipSet(profile.Sets.Precast)
	
    if action.Name == 'Utsusemi: Ichi' then
        local delay = 2.4
        if gData.GetBuffCount(66) == 1 then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/cancel 66') end):once(delay)
        elseif gData.GetBuffCount(444) == 1 then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/cancel 444') end):once(delay)
        elseif gData.GetBuffCount(445) == 1 then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/cancel 445') end):once(delay)
        elseif gData.GetBuffCount(446) == 1 then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/cancel 446') end):once(delay)
        end
    end

    if action.Name == 'Utsusemi: Ni' then
        local delay = 0.5
        if gData.GetBuffCount(66) == 1 then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/cancel 66') end):once(delay)
        elseif gData.GetBuffCount(444) == 1 then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/cancel 444') end):once(delay)
        elseif gData.GetBuffCount(445) == 1 then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/cancel 445') end):once(delay)
        elseif gData.GetBuffCount(446) == 1 then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/cancel 446') end):once(delay)
        end
    end

    
end

profile.HandleMidcast = function()
	local spell = gData.GetAction();
	if (spell.Skill == 'Ninjutsu') then
		gFunc.EquipSet(profile.Sets.Burst);
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local act = gData.GetAction();
	if (act.Name == "Blade: Ku" or act.Name == "Blade: Retsu" or act.Name == "Blade: Jin" or act.Name == "Blade: Shun") then
        gFunc.EquipSet(profile.Sets.WSMulti);
    elseif (act.Name == "Blade: Teki" or act.Name == "Blade: To" or act.Name == "Blade: Chi" or act.Name == "Blade: Ei" or act.Name == "Blade: Yu") then
        gFunc.EquipSet(profile.Sets.WSMab);
    else
        gFunc.EquipSet(profile.Sets.WS);
    end  
end

return profile;