local profile = {};
local sets = {
    Regen = {
        Main = 'Bolelabunga',
        Sub = 'Sors Shield',
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Arbatel Bonnet +2',
        Neck = { Name = 'Argute Stole +1', AugPath='A' },
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Static Earring',
        Body = 'Peda. Gown +3',
        Hands = 'Arbatel Bracers +2',
        Ring1 = 'Naji\'s Loop',
        Ring2 = 'Mallquis Ring',
        Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+20', [3] = 'MND+30', [4] = 'Magic Damage +20' } },
        Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = '"Regen" potency+3' },
        Feet = { Name = 'Telchine Pigaches', Augment = '"Regen" potency+3' },
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
        Legs = 'Doyen pants',
        Feet = 'Acad. Loafers +1',
    },
    Nuke = {
        Main = { Name = 'Septoptic +1', AugPath='A' },
        Sub = 'Culminus',
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Arbatel Bonnet +2',
        Neck = { Name = 'Argute Stole +1', AugPath='A' },
        Ear1 = 'Barkaro. Earring',
        Ear2 = { Name = 'Arbatel Earring', Augment = 'Mag. Acc.+6' },
        Body = 'Arbatel Gown +2',
        Hands = 'Arbatel Bracers +2',
        Ring1 = 'Mallquis Ring',
        Ring2 = 'Jhakri Ring',
        Back = { Name = 'Bookworm\'s Cape', Augment = { [1] = 'Helix eff. dur. +18', [2] = 'INT+3' } },
        Waist = 'Hachirin-no-Obi',
        Legs = 'Arbatel Pants +2',
        Feet = 'Arbatel Loafers +2',
    },
	resting = {
        Neck = { Name = 'Jeweled Collar', Augment = { [1] = 'MND+3', [2] = 'MP recovered while healing +2' } },
      	Ammo = 'Homiliary',
		Back = 'Felicitas cape +1',
		Ear1 = 'Relaxing earring',
    },
	Movement = {
        Feet = 'Herald\'s Gaiters',
    },
    idle = {
        Main = { Name = 'Septoptic +1', AugPath='A' },
        Sub = 'Culminus',
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Arbatel Bonnet +2',
        Neck = 'Voltsurge Torque',
        Ear1 = 'Barkaro. Earring',
        Ear2 = { Name = 'Arbatel Earring', Augment = 'Mag. Acc.+6' },
        Body = 'Peda. Gown +3',
        Hands = 'Arbatel Bracers +2',
        Ring1 = 'Jhakri Ring',
        Ring2 = 'Lebeche ring',
        Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+20', [3] = 'MND+30', [4] = 'Magic Damage +20' } }, 
        Waist = 'Hachirin-no-Obi',
        Legs = 'Arbatel Pants +2',
        Feet = 'Arbatel Loafers +2',
    },
	asleep = {
        Main = 'Opashoro',      
    },
	Enfeebling = {
		Legs = 'Arbatel Pants +2',
		Ear2 = { Name = 'Arbatel Earring', Augment = 'Mag. Acc.+6' },
		Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+20', [3] = 'MND+30', [4] = 'Magic Damage +20' } }, 
	},
	Enhancing = {
        Main = 'Pedagogy Staff',
        Sub = 'Tokko grip',
		Head = { Name = 'Telchine Cap', Augment = 'Enh. Mag. eff. dur. +9' },
		Waist = 'Embla Sash',
		Hands = 'Arbatel Bracers +2',
		Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+20', [3] = 'MND+30', [4] = 'Magic Damage +20' } },  
		Body = 'Peda. Gown +3',
        Legs = { Name = 'Telchine Braconi', Augment = 'Enh. Mag. eff. dur. +8' },
        Feet = { Name = 'Telchine Pigaches', Augment = 'Enh. Mag. eff. dur. +9' },
    },
	Stoneskin = {
		Neck = 'Nodens Gorget',
		Waist = 'Siegel Sash',
	},
	Drain = {
        Main = { Name = 'Rubicundity', Augment = { [1] = 'Dark magic skill +1', [2] = '"Conserve MP"+2', [3] = 'Mag. Acc.+5' } },
        Sub = 'Culminus',
        Ring1 = 'Excelsis Ring',
		Waist = 'Fucho-no-Obi',
		Ear2 = { Name = 'Arbatel Earring', Augment = 'Mag. Acc.+6' },
    },
	Sub = {
		Head = 'Acad. Mortar. +1',
		Body = 'Peda. Gown +3',
		Waist = 'Embla Sash',
		Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+2', [3] = 'MND+23', [4] = 'Magic Damage +2' } },  
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
        Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+20', [3] = 'MND+30', [4] = 'Magic Damage +20' } },
		--Body = { Name = 'Chironic Doublet', Augment = { [1] = '"Mag. Atk. Bns."+17', [2] = 'Attack+20', [3] = 'Mag. Acc.+17', [4] = 'Weapon skill damage +1%', [5] = 'Phalanx +5', [6] = 'MND+3', [7] = 'Accuracy+20' } },
		Body = 'Peda. Gown +3',
        Legs = 'Acad. Pants +3',
        Feet = { Name = 'Vanya Clogs', AugPath='C' },
    },
	Cursna = {
		Legs = 'Acad. Pants +2',
		Feet = 'Gende. Galosh. +1',
	},
	Lumin = {
		Main = 'Daybreak',
		Sub = 'Culminus',
	},
	dt = {
        Main = 'Malignance Pole',
        Sub = 'Tokko grip',
        Head = 'Arbatel Bonnet +2',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Body = 'Arbatel Gown +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -2%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -4%' } },
        Ring1 = 'K\'ayres Ring',
        Ring2 = 'Defending Ring',
        Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+20', [3] = 'MND+30', [4] = 'Magic Damage +20' } },
        Legs = 'Arbatel Pants +2',
    },
	WS = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
		Waist = 'Fotia Belt',
	},
	WSMulti = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
		Waist = 'Fotia Belt',
	},
	WSMab = {
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Neck = 'Fotia Gorget',
		Ammo = 'Oshasha\'s Treatise',
		Waist = 'Fotia Belt',
	},
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	(function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 4');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 12');
	coroutine.sleep(0.5);
	AshitaCore:GetChatManager():QueueCommand(1, '/sl blink');
	end):once(1); --This calls the function after 1 second
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
	if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.idle);
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
	local player = gData.GetPlayer();
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Enhancing);
        end

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if string.match(spell.Name, 'Cursna') then
            gFunc.EquipSet(sets.Cursna);
        end
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);
		if (string.contains(spell.Name, 'Lumino')) then
            gFunc.EquipSet(sets.Lumin);
		end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Enfeebling); -- mostly macc anyways
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        elseif (string.match(spell.Name, 'Kaustra')) then
            gFunc.EquipSet(sets.Kaustra);
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
    elseif (act.Name == "Brainshaker" or act.Name == "Skullbreaker" or act.Name == "Rock Crusher" or act.Name == "Omniscience" or act.Name == "Myrkr" or act.Name == "Shattersoul") then
        gFunc.EquipSet(profile.Sets.WSMab);
    else
        gFunc.EquipSet(profile.Sets.WS);
    end    
end

return profile;