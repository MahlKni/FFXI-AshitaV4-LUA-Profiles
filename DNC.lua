local profile = {};

local handleFishMode = gFunc.LoadFile('common/fishMode.lua')
local handleHelmMode = gFunc.LoadFile('common/helmMode.lua')

local sets = {
    ['Idle'] = {
        Main = { Name = 'Enchufla', AugPath='C' },
        Sub = { Name = 'Ternion Dagger +1', AugPath='A' },
        Ammo = 'Ginsen',
        Head = 'Maculele Tiara +2',
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = { Name = 'Macu. Earring +1', Augment = { [1] = 'Accuracy+13', [2] = '"Store TP"+4', [3] = 'Mag. Acc.+13' } },
        Body = 'Malignance Tabard',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Toetapper Mantle', Augment = { [1] = '"Rev. Flourish"+15', [2] = '"Store TP"+3', [3] = '"Dual Wield"+2' } },
        Waist = 'Eschan Stone',
        Legs = 'Meg. Chausses +2',
        Feet = { Name = 'Horos T. Shoes +3', AugTrial=5556 },
    },
	
	TH = { 
		Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
		Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+5', [2] = '"Treasure Hunter"+2', [3] = 'Attack+4', [4] = '"Mag. Atk. Bns."+23' } },
	},
	
	DT = {
		Neck = { Name = 'Loricate Torque +1', AugPath='A' },
		Ring1 = 'Defending Ring',
		Ring2 = 'Warden\'s Ring',
		Waist = 'Plat. Mog. Belt',
	},
	
	['Waltz'] = {
		Head = 'Horos Tiara +1',
        Body = 'Maxixi Casaque +1',
		Back = { Name = 'Toetapper Mantle', Augment = { [1] = '"Rev. Flourish"+15', [2] = '"Store TP"+3', [3] = '"Dual Wield"+2' } },
        Feet = 'Maxixi Toe Shoes +1',
    },
	
	['Samba'] = {
		Head = 'Maxixi Tiara +2',
		Back = 'Senuna\'s mantle',
	},
	
	['Jig'] = {
		Legs = 'Horos Tights +1',
		Feet = 'Maxixi Toe Shoes +1',
	},
	
	['NFR'] = {
		Body = 'Horos casaque +1',
	},
	
	WSMulti = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' }},
		Neck = 'Fotia Gorget',
		Hands = 'Meg. Gloves +2',
		Ammo = 'Oshasha\'s Treatise',
		Waist = 'Fotia Belt',
		Legs = 'Meg. Chausses +2',
		Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+25', [2] = 'Weapon skill damage +4%', [3] = 'Attack+24', [4] = 'DEX+3' } },
	},
	WSMab = {
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ear2 = 'Friomisi Earring',
		Ammo = 'Oshasha\'s Treatise',
        Hands = 'Meg. Gloves +2',
		Waist = 'Fotia Belt',
		Legs = 'Maxixi Tights +2',
		Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+25', [2] = 'Weapon skill damage +4%', [3] = 'Attack+24', [4] = 'DEX+3' } },
        },
	['WS'] = {
        Ammo = 'Oshasha\'s Treatise',
        Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
        Hands = 'Meg. Gloves +2',
        Waist = 'Fotia Belt',
		Legs = 'Maxixi Tights +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+25', [2] = 'Weapon skill damage +4%', [3] = 'Attack+24', [4] = 'DEX+3' } },
    },
	CF = {
		Head = 'Maculele Tiara +1',
	},
	RF = {
	Back = { Name = 'Toetapper Mantle', Augment = { [1] = '"Rev. Flourish"+15', [2] = '"Store TP"+3', [3] = '"Dual Wield"+2' } },
	},
	Movement = {
        Feet = 'Skd. Jambeaux +1',
    },
	asleep = {
        Main = 'Mpu Gandring',      
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    UseTH = false,
	UseDT = false,
	FishMode = false,
	HelmMode = false
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
	
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias add /fishe /lac fwd fish')
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias add /helm /lac fwd helm')
	
	
end

profile.OnUnload = function()
	handleFishMode('fish off')
    handleHelmMode('helm off')

    
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias del /fishe')
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias del /helm')
end

profile.HandleCommand = function(args)
    if (args[1] == 'TH') then
        if (Settings.UseTH == true) then
            Settings.UseTH = false;
        else
            Settings.UseTH = true;
        end
	elseif (args[1] == 'DT') then
		if (Settings.UseDT == true) then
            Settings.UseDT = false;
        else
            Settings.UseDT = true;
        end
    end
	
	handleFishMode(args)
    handleHelmMode(args)
end

profile.HandleDefault = function()
local player = gData.GetPlayer();
	
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Idle);
		if (Settings.UseTH == true) then
            gFunc.EquipSet(sets.TH);
		elseif (Settings.UseDT == true) then
            gFunc.EquipSet(sets.DT);
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
		elseif (act.Name == "Reverse Flourish") then
        gFunc.EquipSet(sets.RF);
	elseif (act.Name == "No Foot Rise") then
        gFunc.EquipSet(sets.NFR);
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