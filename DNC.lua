local profile = {};
local sets = {
    ['Idle'] = {
        Main = { Name = 'Enchufla', AugPath='C' },
        Sub = { Name = 'Ternion Dagger +1', AugPath='A' },
        Ammo = 'Ginsen',
        Head = 'Maculele tiara +2',
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Assuage Earring',
        Body = 'Malignance Tabard',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Sokolski Mantle',
        Waist = 'Eschan Stone',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+5', [2] = '"Triple Atk."+1', [3] = 'DEX+5' } },
        Feet = { Name = 'Horos T. Shoes +3', AugTrial=5556 },
    },
	
	TH = { 
		Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
		Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+5', [2] = '"Treasure Hunter"+2', [3] = 'Attack+4', [4] = '"Mag. Atk. Bns."+23' } },
	},
	
	['Waltz'] = {
        Body = 'Maxixi Casaque +1',
        Feet = 'Rawhide Boots',
    },
	
	['Samba'] = {
		Head = 'Maxixi Tiara +2',
	},
	
	['Jig'] = {
		Legs = 'Horos Tights',
	},
	
	WSMulti = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' }},
		Neck = 'Fotia Gorget',
		Hands = 'Meg. Gloves +2',
		Ammo = 'Oshasha\'s Treatise',
		Waist = 'Fotia Belt',
	},
	WSMab = {
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
        Hands = 'Meg. Gloves +2',
		Waist = 'Fotia Belt',
        },
	WS = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
		Hands = 'Meg. Gloves +2',
		Waist = 'Fotia Belt',
	},
	CF = {
		Head = 'Maculele Tiara +1',
	},
	Movement = {
        Feet = 'Skd. Jambeaux +1',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    UseTH = false
};
profile.OnLoad = function()
    gSettings.AllowAddSet = true;
		(function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 9');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 9');
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
	
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Idle);
		if (Settings.UseTH == true) then
            gFunc.EquipSet(sets.TH);
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
end

profile.HandleAbility = function()
	local act = gData.GetAction();
	if (string.contains(act.Name, 'Waltz')) then
		gFunc.EquipSet(sets.Waltz);
	elseif (string.contains(act.Name, 'Samba')) then
		gFunc.EquipSet(sets.Samba);
	elseif (string.contains(act.Name, 'Jig')) then
		gFunc.EquipSet(sets.Jig);
	elseif (act.Name == "Climactic Flourish") then
        gFunc.EquipSet(sets.CF);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local act = gData.GetAction();
	if (act.Name == "Savage Blade" or act.Name == "Evisceration") then
        gFunc.EquipSet(profile.Sets.WSMulti);
    elseif (act.Name == "Burning Blade" or act.Name == "Cyclone" or act.Name == "Aeolian Edge") then
        gFunc.EquipSet(profile.Sets.WSMab);
    else
        gFunc.EquipSet(profile.Sets.WS);
    end  
end

return profile;