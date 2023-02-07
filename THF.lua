local profile = {};
local sets = {
    Idle = {
        Main = 'Naegling',
        Sub = { Name = 'Ternion Dagger +1', AugPath='A' },
        Ammo = 'Ginsen',
        Head = { Name = 'Herculean Helm', Augment = { [1] = 'Weapon skill damage +6%', [2] = 'Rng.Acc.+21', [3] = 'CHR+10', [4] = 'Attack+3', [5] = 'Accuracy+3' } },
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Malignance Tabard',
        Hands = { Name = 'Floral Gauntlets', Augment = { [1] = 'Rng.Acc.+11', [2] = '"Triple Atk."+2', [3] = 'Accuracy+5' } },
        Ring1 = 'K\'ayres Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Toutatis\'s Cape',
        Waist = 'Chiner\'s Belt +1',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+5', [2] = '"Triple Atk."+1', [3] = 'DEX+5' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Weapon Skill Acc.+9', [2] = 'Attack+6', [3] = '"Store TP"+5', [4] = 'Accuracy+6' } },
    },
	Movement = {
        Feet = 'Skd. Jambeaux +1',
    },
	
	TH = { 
		Feet = 'Skulk. Poulaines +1',
		Hands = 'Plun. Armlets +1',
		Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
	
	WSMulti = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' }},
		Neck = 'Subtlety Spec.',
		Hands = 'Meg. Gloves +2',
		Ammo = 'Oshasha\'s Treatise',
	},
	WSMab = {
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Subtlety Spec.',
		Ammo = 'Oshasha\'s Treatise',
        Hands = 'Meg. Gloves +2',
        },
	WS = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Subtlety Spec.',
		Ammo = 'Oshasha\'s Treatise',
		Hands = 'Meg. Gloves +2',
	}
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
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 8');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 14');
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