local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Daybreak',
        Sub = 'Culminus',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = 'Azimuth Hood +2',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = 'Malignance Earring',
        Ear2 = { Name = 'Azimuth Earring +1', Augment = { [1] = 'Damage taken-4%', [2] = 'Mag. Acc.+12' } },
        Body = 'Bagua Tunic +1',
        Hands = 'Geo. Mitaines +2',
        Ring1 = 'Jhakri Ring',
        Ring2 = 'Mallquis Ring',
        Back = { Name = 'Lifestream Cape', Augment = { [1] = 'Pet: Damage taken -1%', [2] = 'Geomancy Skill +10', [3] = 'Indi. eff. dur. +15' } },
        Waist = 'Isa Belt',
        Legs = 'Mallquis Trews +2',
        Feet = 'Geo. Sandals +2',
    },
	Nuke = {
		Neck = 'Mizu. Kubikazari',
		Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Mag. Atk. Bns."+14', [2] = 'Magic burst dmg.+11%', [3] = 'Mag. Acc.+13' } },
		Head = { Name = 'Merlinic Hood', Augment = { [1] = 'Magic burst dmg.+11%', [2] = '"Mag. Atk. Bns."+24' } },
		Hands = 'Bagua Mitaines +3',
		Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
		Ring1 = 'Mujin Band',
		Waist = 'Hachirin-no-Obi',
	},
    Movement = {
        Feet = 'Geo. Sandals +2',
    },
	DT = {
        Main = 'Malignance Pole',
		Sub = 'Tokko grip',
		Neck = 'Loricate torque +1',
        Ring2 = 'Defending Ring',
    },
	TH = { 
		Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
	WS = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Waist = 'Fotia Belt',
		Ammo = 'Oshasha\'s Treatise',
	},
	WSMulti = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Waist = 'Fotia Belt',
		Ammo = 'Oshasha\'s Treatise',
	},
	WSMab = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Waist = 'Fotia Belt',
		Ammo = 'Oshasha\'s Treatise',
	},
	ElePrecast = {
		Hands = 'Bagua Mitaines +3',
    },
	Precast = {
        Head = 'Nahtirah Hat',
        Neck = 'Voltsurge Torque',
        Ear1 = 'Malignance Earring',
		Ear2 = 'Mendi. Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Mag. Atk. Bns."+14', [2] = 'Magic burst dmg.+11%', [3] = 'Mag. Acc.+13' } },
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -2%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -4%' } },
        Ring1 = 'Lebeche ring',
        Ring2 = 'Mallquis Ring',
        Back = { Name = 'Fi Follet Cape +1', AugPath='A' },
        Waist = 'Embla Sash',
        Legs = 'Doyen pants',
    },
	Enhancing = {
        Main = { Name = 'Serenity', Augment = { [1] = '"Cure" spellcasting time -9%', [2] = 'Enha.mag. skill +8', [3] = 'MP+50', [4] = '"Cure" potency +3%' } },
        Sub = 'Tokko grip',
		Head = { Name = 'Telchine Cap', Augment = 'Enh. Mag. eff. dur. +9' },
		Neck = 'Incanter\'s Torque',
		Waist = 'Embla Sash', 
		Body = { Name = 'Chironic Doublet', Augment = { [1] = '"Mag. Atk. Bns."+17', [2] = 'Attack+20', [3] = 'Mag. Acc.+17', [4] = 'Weapon skill damage +1%', [5] = 'Phalanx +5', [6] = 'MND+3', [7] = 'Accuracy+20' } },
        Legs = { Name = 'Telchine Braconi', Augment = 'Enh. Mag. eff. dur. +8' },
        Feet = { Name = 'Telchine Pigaches', Augment = 'Enh. Mag. eff. dur. +9' },
    },
	Stoneskin = {
		Neck = 'Nodens Gorget',
		Waist = 'Siegel Sash',
	},
	Cursna = {
		Feet = 'Gende. Galosh. +1',
	},
	Enfeebling = {
		Hands = 'Azimuth Gloves +1',
	},
	Drain = {
        Main = { Name = 'Rubicundity', Augment = { [1] = 'Dark magic skill +1', [2] = '"Conserve MP"+2', [3] = 'Mag. Acc.+5' } },
        Sub = 'Culminus',
		Neck = 'Erra Pendant',
        Ring1 = 'Excelsis Ring',
		Ring2 = 'Archon Ring',
		Legs = 'Azimuth Tights +1',
		Waist = 'Fucho-no-Obi',
    },
	Cure = {
        Main = 'Daybreak',
        Sub = 'Sors Shield',
		Head = { Name = 'Vanya Hood', AugPath='C' },
        Neck = 'Nodens Gorget',
        Ear1 = 'Static Earring',
		Ear2 = 'Mendi. Earring',
        Hands = { Name = 'Telchine Gloves', Augment = { [1] = '"Regen" potency+2', [2] = '"Cure" potency +7%' } },
		Ring1 = 'Lebeche ring',
        Ring2 = 'Naji\'s Loop',
		Body = { Name = 'Chironic Doublet', Augment = { [1] = '"Mag. Atk. Bns."+17', [2] = 'Attack+20', [3] = 'Mag. Acc.+17', [4] = 'Weapon skill damage +1%', [5] = 'Phalanx +5', [6] = 'MND+3', [7] = 'Accuracy+20' } },
        Feet = { Name = 'Vanya Clogs', AugPath='C' },
    },
    ['Geo'] = {
        Range = { Name = 'Dunna', AugPath='A' },
        Head = 'Azimuth Hood +2',
        Neck = 'Incanter\'s Torque',
        Ear2 = { Name = 'Azimuth Earring +1', Augment = { [1] = 'Damage taken-4%', [2] = 'Mag. Acc.+12' } },
        Body = { Name = 'Bagua Tunic +1', AugTrial=5331 },
        Hands = 'Geo. Mitaines +2',
        Feet = 'Azimuth Gaiters +1',
        Back = { Name = 'Lifestream Cape', Augment = { [1] = 'Pet: Damage taken -1%', [2] = 'Geomancy Skill +10', [3] = 'Indi. eff. dur. +15' } },
        },
	LifeCycle = {
		Body = 'Geo. Tunic +1',
	},
	Bolster = {
		Body = { Name = 'Bagua Tunic +1', AugTrial=5331 },
	},
	asleep = {
        Main = 'Prime Maul',      
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
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 11');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 17');
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
        gFunc.EquipSet(sets.Idle);
		if (Settings.UseTH == true) then
            gFunc.EquipSet(sets.TH);
        end
		if (Settings.Burst == true) then
            gFunc.EquipSet(sets.Burst);
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
end

profile.HandleAbility = function()
	local act = gData.GetAction();
	if (act.Name == "Life Cycle") then
        gFunc.EquipSet(profile.Sets.LifeCycle);
	elseif (act.Name == "Bolster") then
		gFunc.EquipSet(profile.Sets.Bolster);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	local spell = gData.GetAction();
	gFunc.EquipSet(sets.Precast);
	if (spell.Skill == 'Elemental Magic') then
	gFunc.EquipSet(sets.ElePrecast);
	end
end

profile.HandleMidcast = function()
	local spell = gData.GetAction();
	
	if (string.contains(spell.Name, 'Indi-') or string.contains(spell.Name, 'Geo-')) then
		gFunc.EquipSet(sets.Geo);
		end
		
	if (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if string.match(spell.Name, 'Cursna') then
            gFunc.EquipSet(sets.Cursna);
        end
	end
	
	if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        end
		end
		
    if (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);
		if (Settings.Burst == true) then
            gFunc.EquipSet(sets.Burst);
        end
		end
		
	if (spell.Skill == 'Enfeebling Magic' or spell.Skill == 'Dark Magic' ) then
        gFunc.EquipSet(sets.Enfeebling);
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
    elseif (act.Name == "Brainshaker" or act.Name == "Skullbreaker" or act.Name == "Rock Crusher" or act.Name == "Myrkr" or act.Name == "Shattersoul") then
        gFunc.EquipSet(profile.Sets.WSMab);
    else
        gFunc.EquipSet(profile.Sets.WS);
    end  
end

return profile;