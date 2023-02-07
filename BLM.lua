local profile = {};
local sets = {
    Nuke = {
        Main = { Name = 'Septoptic +1', AugPath='A' },
        Sub = 'Culminus',
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Arch. Petasos +3',
        Neck = 'Sibyl scarf',
        Ear1 = 'Barkaro. Earring',
        Ear2 = { Name = 'Wicce Earring +1', Augment = { [1] = 'Enmity-3', [2] = 'Mag. Acc.+13' } },
        Body = 'Arch. Coat +3',
        Hands = 'Spae. Gloves +3',
        Ring1 = 'Mallquis Ring',
        Ring2 = 'Jhakri Ring',
        Back = { Name = 'Taranus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc+20', [4] = 'INT+30', [5] = 'Magic Damage +20' } },
        Waist = 'Hachirin-no-Obi',
        Legs = 'Arch. Tonban +3',
        Feet = 'Wicce Sabots +2',
    },
	Burst = {
		Head = { Name = 'Merlinic Hood', Augment = { [1] = 'Magic burst dmg.+11%', [2] = '"Mag. Atk. Bns."+24' } },
		Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Mag. Atk. Bns."+14', [2] = 'Magic burst dmg.+11%', [3] = 'Mag. Acc.+13' } },
        Hands = 'Spae. Gloves +3',
		Legs = 'Wicce Chausses +2',
		Neck = 'Mizu. Kubikazari',
		Ring1 = 'Mujin Band',
	},
	TH = { 
		Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
    resting = {
        Neck = { Name = 'Jeweled Collar', Augment = { [1] = 'MND+3', [2] = 'MP recovered while healing +2' } },
        Legs = 'Oracle\'s braconi',
		Back = 'Felicitas cape +1',
		Ear1 = 'Relaxing earring',
    },
    dt = {
        Main = 'Malignance Pole',
		Neck = 'Loricate torque +1',
        Ring2 = 'Defending Ring',
    },
	Movement = {
        Feet = 'Herald\'s Gaiters',
    },
	asleep = {
        Main = 'Opashoro',      
    },
	
	Precast = {
		Head = 'Nahtirah Hat',
        Neck = 'Voltsurge Torque',
        Ear1 = 'Barkaro. Earring',
		Ear2 = 'Mendi. Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Mag. Atk. Bns."+14', [2] = 'Magic burst dmg.+11%', [3] = 'Mag. Acc.+13' } },
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -2%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -4%' } },
        Ring1 = 'Lebeche ring',
        Ring2 = 'Mallquis Ring',
        Back = { Name = 'Fi Follet Cape +1', AugPath='A' },
        Waist = 'Embla Sash',
        Feet = 'Regal Pumps +1',
		}
	Enfeebling = {
	},
		WS = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
	},
	WSMulti = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
	},
	WSMab = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
	},
	Sub = {
		Waist = 'Embla Sash',
	},
	Drain = {
        Main = { Name = 'Rubicundity', Augment = { [1] = 'Dark magic skill +1', [2] = '"Conserve MP"+2', [3] = 'Mag. Acc.+5' } },
        Sub = 'Culminus',
        Ring1 = 'Excelsis Ring',
		Ring2 = 'Archon Ring',
		Waist = 'Fucho-no-Obi',
	},
	Cure = {
		Main = 'Daybreak',
        Sub = 'Sors Shield',
		Neck = 'Phalaina Locket',
		Head = { Name = 'Vanya Hood', AugPath='C' },
		Ear1 = 'Static Earring',
		Legs = 'Theurgist\'s Slacks',
		Ring1 = 'Lebeche ring',
        Ring2 = 'Naji\'s Loop',
		Feet = { Name = 'Vanya Clogs', AugPath='C' },
	},
	Cursna = {
		Feet = 'Gende. Galosh. +1',
	},
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    UseTH = false,
	Burst = true,
};
profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	
	(function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 5');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 4');
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
	elseif (args[1] == 'Burst') then
		if (Settings.Burst == true) then
            Settings.Burst = false;
        else
            Settings.Burst = true;
        end
    end
end


profile.HandleDefault = function()
    local player = gData.GetPlayer();
	
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Nuke);
		if (Settings.UseTH == true) then
            gFunc.EquipSet(sets.TH);
        end
		if (Settings.Burst == true) then
            gFunc.EquipSet(sets.Burst);
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
end


profile.HandleAbility = function()
	local act = gData.GetAction();
	if (act.Name == "Sublimation") then
        gFunc.EquipSet(profile.Sets.Sub);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	local spell = gData.GetAction();
	gFunc.EquipSet(sets.Precast);
	
end

profile.HandleMidcast = function()
	local spell = gData.GetAction();
	
	if (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if string.match(spell.Name, 'Cursna') then
            gFunc.EquipSet(sets.Cursna);
        end
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);
		if (Settings.Burst == true) then
            gFunc.EquipSet(sets.Burst);
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Enfeebling); -- mostly macc anyways
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
		end
	end
	
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local act = gData.GetAction();
	if (act.Name == "Black Halo" or act.Name == "Realmrazer") then
        gFunc.EquipSet(profile.Sets.WSMulti);
    elseif (act.Name == "Brainshaker" or act.Name == "Skullbreaker" or act.Name == "Rock Crusher" or act.Name == "Vidohunir" or act.Name == "Myrkr" or act.Name == "Shattersoul") then
        gFunc.EquipSet(profile.Sets.WSMab);
    else
        gFunc.EquipSet(profile.Sets.WS);
    end    
end

return profile;