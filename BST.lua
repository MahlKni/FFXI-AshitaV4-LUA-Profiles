local profile = {};
profile.Sets = {
    Idle = {
        Main = 'Dolichenus',
        Sub = { Name = 'Habilitator +1', AugPath='A' },
        Ammo = 'Voluspa Tathlum',
        Head = { Name = 'Valorous Mask', Augment = { [1] = '"Dbl.Atk."+2', [2] = 'Weapon skill damage +8%', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Pet: VIT+6' } },
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Enmerkar Earring',
        Body = 'Malignance Tabard',
        Hands = 'Nukumi Manoplas +1',
        Ring1 = 'Tali\'ah Ring',
        Ring2 = 'Meghanada Ring',
        Back = { Name = 'Pastoralist\'s Mantle', Augment = { [1] = 'Pet: Rng. Acc.+10', [2] = 'STR+3', [3] = 'Accuracy+2', [4] = 'Pet: Accuracy+10', [5] = 'DEX+3' } },
        Waist = 'Hurch\'lan Sash',
        Legs = 'Tali\'ah Sera. +2',
        Feet = { Name = 'Valorous Greaves', Augment = { [1] = 'Attack+11', [2] = 'Weapon skill damage +5%' } },
    },
    Ready = {
    },
    PetAtk = {
		Ear1 = 'Hija Earring',
		Head = 'Tali\'ah Turban +1',
		Body = 'Tali\'ah Manteel +2',
		Hands = 'Tali\'ah Gages +1',
		Legs = 'Tali\'ah Sera. +2',
		Feet = 'Tali\'ah Crackows +1',
		
    },
    PetMab = {
        Ear1 = 'Hija Earring',
        Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: M.Acc.+20', [2] = 'Pet: M.Dmg.+20', [3] = 'Mag. Acc+7', [4] = 'Weapon skill damage +10%', [5] = 'Magic Damage +7' } },
        Waist = 'Kuku Stone',
        Legs = 'Tot. Trousers +2',
        Feet = 'Tot. Gaiters +2',
    },
    PetMacc = {
		Ear1 = 'Hija Earring',
		Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: M.Acc.+20', [2] = 'Pet: M.Dmg.+20', [3] = 'Mag. Acc+7', [4] = 'Weapon skill damage +10%', [5] = 'Magic Damage +7' } },
    },
    WS = {
		Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Legs = 'Meg. Chausses +2',
		Hands = 'Meg. Gloves +2',
		Feet = { Name = 'Valorous Greaves', Augment = { [1] = 'Attack+11', [2] = 'Weapon skill damage +5%' } },
		Ammo = 'Oshasha\'s Treatise',
		Waist = 'Fotia Belt',
    },
    WSMulti = {
		Neck = 'Fotia Gorget',
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Legs = 'Meg. Chausses +2',
		Waist = 'Dynamic Belt',
		Hands = 'Meg. Gloves +2',
		Feet = { Name = 'Valorous Greaves', Augment = { [1] = 'Attack+11', [2] = 'Weapon skill damage +5%' } },
		Ammo = 'Oshasha\'s Treatise',
		Waist = 'Fotia Belt',
    },
    WSMab = {
		Neck = 'Fotia Gorget',
		Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = '"Mag. Atk. Bns."+4' } },
		Ear2 = 'Friomisi Earring',
		Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: M.Acc.+20', [2] = 'Pet: M.Dmg.+20', [3] = 'Mag. Acc+7', [4] = 'Weapon skill damage +10%', [5] = 'Magic Damage +7' } },
		Legs = 'Augury Cuisses',
		Hands = 'Meg. Gloves +2',
		Feet = { Name = 'Valorous Greaves', Augment = { [1] = 'Attack+11', [2] = 'Weapon skill damage +5%' } },
		Ammo = 'Oshasha\'s Treatise',
		Waist = 'Fotia Belt',
    },
    Reward = {
		Body = 'Totemic Jackcoat +1',
		Ammo = 'Pet Food Theta',
		Ear1 = 'Static Earring',
		Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: M.Acc.+20', [2] = 'Pet: M.Dmg.+20', [3] = 'Mag. Acc+7', [4] = 'Weapon skill damage +10%', [5] = 'Magic Damage +7' } },
		Feet = 'Tot. Gaiters +2',
    },
    ['CallBeast'] = {
		Ear2 = { Name = 'Nukumi Earring', Augment = { [1] = 'Accuracy+6', [2] = 'Mag. Acc.+6' } },
		Body = 'Malignance Tabard',
		Hands = { Name = 'Ankusa Gloves +1', AugTrial=5272 },
        
    },
	Killer = {
		Main = { Name = 'Arktoi', AugPath='A' },
		Sub = 'Kaidate',
        Range = 'Killer Shortbow',
		Legs = 'Tot. Trousers +2',
        Head = { Name = 'Ankusa Helm +1', AugTrial=5270 },
	},
	Spur = {
		Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: M.Acc.+20', [2] = 'Pet: M.Dmg.+20', [3] = 'Mag. Acc+7', [4] = 'Weapon skill damage +10%', [5] = 'Magic Damage +7' } },
		Feet = 'Nukumi Ocreae'
	},
	Movement = {
		Feet = 'Skd. Jambeaux +1',
	},
	Resting = {
	},
    TH = {
        Ammo = 'Per. Lucky Egg',
        Waist = 'Chaac Belt',
		}
,
    };


profile.Packer = {
};
local Settings = {
    UseTH = false
};
local PetPhys = T{ 'Somersault', 'Sensilla Blades', 'Tegmina Buffet', 'Cyclotail', 'Fluid Toss', 'Fluid Spread', 'Razor Fang', 'Claw Cyclone', 'Crossthrash', 'Tail Blow', 'Blockhead', 'Brain Crush' };
local PetMab = T{ 'Cursed Sphere', 'Venom', 'Digest', 'Fireball', 'Charged Whisker' };
local PetMacc = T{ 'Purulent Ooze', 'Corrosive Ooze', 'Roar', 'Predatory Glare', 'Infrasonics' };


local function HandlePetAction(type)
    if (type == "phys") then
        gFunc.EquipSet(profile.Sets.PetAtk);
    elseif (type == "mab") then
        gFunc.EquipSet(profile.Sets.PetMab);
    elseif (type == "macc") then
        gFunc.EquipSet(profile.Sets.PetMacc);
    end
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local player = gData.GetPlayer();
	
	if (player.SubJob == "DNC" ) then
	(function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 11');
	coroutine.sleep(0.5);
	AshitaCore:GetChatManager():QueueCommand(1, '/sl blink');
	end):once(1); --This calls the function after 1 second
	elseif (player.SubJob == "NIN" ) then
	(function()
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 10');
    coroutine.sleep(0.1);
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	coroutine.sleep(0.2);
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 11');
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
    local pet = gData.GetPet();
    local petAction = gData.GetPetAction();
    
    if (petAction ~= nil and petAction.Name ~= "") then
        petAction.Name = string.sub(petAction.Name, 1, #petAction.Name - 1);
        if (PetPhys:contains(petAction.Name)) then
            HandlePetAction("phys");
            return;
        elseif (PetMab:contains(petAction.Name)) then
            HandlePetAction("mab");
            return;
        elseif (PetMacc:contains(petAction.Name)) then
            HandlePetAction("macc");
            return;
        end
    end

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(profile.Sets.Idle);
		if (Settings.UseTH == true) then
            gFunc.EquipSet(profile.Sets.TH);
        end
		elseif (player.Status == 'Resting') then
        gFunc.EquipSet(profile.Sets.Resting);
		elseif (player.IsMoving == true) then
		gFunc.EquipSet(profile.Sets.Movement);
    end
end

profile.HandleAbility = function()
    local act = gData.GetAction();

    if (act.Type == "Ready") then
        gFunc.EquipSet(profile.Sets.Ready);
    elseif (act.Name == "Reward") then
        gFunc.EquipSet(profile.Sets.Reward);
	elseif (act.Name == "Killer Instinct") then
        gFunc.EquipSet(profile.Sets.Killer);
	elseif (act.Name == "Spur") then
        gFunc.EquipSet(profile.Sets.Spur);
    elseif (act.Name == "Bestial Loyalty" or act.Name == "Call Beast") then
        gFunc.EquipSet(profile.Sets.CallBeast);
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

    if (act.Name == "Decimation" or act.Name == "Ruinator") then
        gFunc.EquipSet(profile.Sets.WSMulti);
    elseif (act.Name == "Primal Rend" or act.Name == "Cloudsplitter") then
        gFunc.EquipSet(profile.Sets.WSMab);
    else
        gFunc.EquipSet(profile.Sets.WS);
    end    
end

return profile;
