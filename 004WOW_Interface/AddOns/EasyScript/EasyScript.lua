function EasyHealCommand(cmd)
   myFrame = getglobal("EasyHealFrame");
   if(not myFrame:IsShown()) then
      myFrame:Show();
   else
      myFrame:Hide();
   end
end

function EasyHealLoad()
   getglobal("EasyHealFrame"):Hide();
   DEFAULT_CHAT_FRAME:AddMessage("懒人治疗插件初始化完毕，显示请输入/EH 团刷/RH 小队/PH ");
   SLASH_HELLOWORLD1 = "/easyheal";
   SLASH_HELLOWORLD2 = "/eh";
   SlashCmdList["HELLOWORLD"] = EasyHealCommand;
   SLASH_AUTOHEALRAID = "/RH";
   SlashCmdList["AUTOHEALRAID"] = AutoHealRaid;
   SLASH_AUTOHEALPARTY = "/PH";
   SlashCmdList["AUTOHEALPARTY"] = AutoHealParty;
   SLASH_AutoWarrior_Battle1 = "/AWB";
   SlashCmdList["AutoWarrior_Battle"] = AutoWarrior_Battle;  
end

function AutoHealRaid(cmd)
local h,m,p,q,i=UnitHealth,UnitHealthMax,"player";
for i=1,GetNumRaidMembers() 
	do q="raid"..i;
		if CheckInteractDistance(q,4) and m(p)-h(p)<m(q)-h(q) and h(q)>1 
		then p=q;
		end;
end;
TargetUnit(p);
	if h(p)/m(p) > 0.75 and h(p)/m(p) < 0.98
		then CastSpellByName("圣光闪现");
	end;
	if h(p)/m(p) > 0.43 and h(p)/m(p) <= 0.75
		then CastSpellByName("圣光术");
	end;
	if h(p)/m(p) <= 0.43
		then CastSpellByName("神恩术");CastSpellByName("圣光术");
	end;
end

function AutoHealParty(cmd)
local h,m,p,q,i=UnitHealth,UnitHealthMax,"player";
	for i=1,GetNumPartyMembers() 
		do q="party"..i;
			-- if not CheckInteractDistance(q,4)
				-- SendChatMessage("玩家<<%t>>可能因距离过远无法接受治疗。", "PARTY");
			-- end
			if CheckInteractDistance(q,4) and m(p)-h(p) < m(q)-h(q) and h(q)>1 
				then p=q;				
			end;
	end;
	TargetUnit(p);
	if h(p)/m(p) > 0.75 and h(p)/m(p) < 1
		then CastSpellByName("圣光闪现");
--		DEFAULT_CHAT_FRAME:AddMessage("当前目标为"..p.."当前血量为"..h(p)/m(p));
	end;
	if h(p)/m(p) > 0.43 and h(p)/m(p) <= 0.75
		then CastSpellByName("圣光闪现");
	end;
	if h(p)/m(p) <= 0.43
		then CastSpellByName("神恩术");CastSpellByName("圣光术");
	end;
end
--英勇打击 怒气 13
--致死打击 怒气 30
--旋风斩   怒气 25
--横扫攻击 怒气 30
--检查技能ID的通用函数
-- local i = 1
-- while true do
   -- local spellName, spellRank = GetSpellName(i, BOOKTYPE_SPELL)
   -- if not spellName then
      -- do break end
   -- end
   
   -- -- use spellName and spellRank here
   -- DEFAULT_CHAT_FRAME:AddMessage( spellName .. '(' .. spellRank .. ')' )
   
   -- i = i + 1
-- end
function AutoWarrior_KB()
	if UnitCanAttack("target","player") and UnitHealth("target") > 0
		then if not AtkSpell 
			then for AtkSlot = 1,180 
				do  if IsAttackAction(AtkSlot) 
					 then AtkSpell = AtkSlot;
					end;
				end;
			end; 
		if not IsCurrentAction(AtkSpell) 
			then UseAction(AtkSpell);
		end;
	else SetCVar("targetNearestDistance", 8);
	TargetNearestEnemy();
	SetCVar("targetNearestDistance", 41);
		-- SendChatMessage("换目标","say");
	end;
	---------------------------------------
	-- 玩家怒气值小于 25 切换狂暴姿态，选择最近的敌人平砍。
	---------------------------------------
	if UnitHealth("target")/UnitHealthMax("target") <= 0.2 and UnitMana("Player") > 80
		then CastSpellByName("斩杀");
		--SendChatMessage("目标已进入斩杀线","say");
		else
			_,_,isActive,_=GetShapeshiftFormInfo(1) 
			if UnitMana("Player") >= 0 and UnitMana("Player") <= 25 and isActive	
				then CastSpellByName("狂暴姿态");
			-- SendChatMessage("狂暴姿态","say");
			end;
			if UnitMana("Player") >= 30 
				then CastSpellByName("嗜血");
			-- SendChatMessage("嗜血","say");
			end;
			if UnitMana("Player") >= 43
				then CastSpellByName("英勇打击");
			end;
			if UnitMana("Player") >= 68 and not isActive and (IsActionInRange(66)==1)
				then CastSpellByName("旋风斩");
			end;
			if UnitMana("player") >= 53 and isActive
				then CastSpellByName("顺劈斩");CastSpellByName("雷霆一击")
			end;
	end;
end;


function AutoWarrior_WQ()
	if UnitCanAttack("target","player") and UnitHealth("target") > 0
		then if not AtkSpell 
			then for AtkSlot = 1,180 
				do  if IsAttackAction(AtkSlot) 
					 then AtkSpell = AtkSlot;
					end;
				end;
			end; 
		if not IsCurrentAction(AtkSpell) 
			then UseAction(AtkSpell);
		end;
	else SetCVar("targetNearestDistance", 8);
	TargetNearestEnemy();
	SetCVar("targetNearestDistance", 41);
		-- SendChatMessage("换目标","say");
	end;
	---------------------------------------
	-- 玩家怒气值小于15 切换狂暴姿态，选择最近的敌人平砍。
	---------------------------------------
	if UnitHealth("target")/UnitHealthMax("target") <= 0.2 and UnitMana("Player") > 80
		then CastSpellByName("斩杀");
		--SendChatMessage("目标已进入斩杀线","say");
		else
			_,_,isActive,_=GetShapeshiftFormInfo(1)  
			if UnitMana("Player") >= 0 and UnitMana("Player") <= 25 	
				then CastSpellByName("狂暴姿态");
			-- SendChatMessage("狂暴姿态","say");
			end;
			if UnitMana("Player") >= 30 
				then CastSpellByName("致死打击");
			-- SendChatMessage("致死打击","say");
			end;
			if UnitMana("Player") >= 43
				then CastSpellByName("英勇打击");
			end;
			if UnitMana("Player") >= 68 and not isActive and (IsActionInRange(66)==1)
				then CastSpellByName("旋风斩");
			end;
			if UnitMana("player") >= 73 and isActive
				then CastSpellByName("横扫攻击");
			end;
			if UnitMana("player") >= 86 and isActive
			then CastSpellByName("断筋");
		end;
	end;
end;

function Rogue_Attack()
	if UnitCanAttack("target","player") and UnitHealth("target") > 0
		then if not AtkSpell 
			then for AtkSlot = 1,180 
				do  if IsAttackAction(AtkSlot) 
					 then AtkSpell = AtkSlot;
					end;
				end;
			end; 
		if not IsCurrentAction(AtkSpell) 
			then UseAction(AtkSpell);
		end;
	else SetCVar("targetNearestDistance", 8);
	TargetNearestEnemy();
	SetCVar("targetNearestDistance", 41);
		-- SendChatMessage("换目标","say");
	end;
	local p,c,b,i,f=GetComboPoints(),CastSpellByName;for i=1,16 do b=UnitBuff("player",i);if b and strfind(b,"SliceDice") then f=1;break;end;end;if p>2 and not f then c("切割");elseif p==5 and f then c("剔骨");else c("邪恶攻击");end;

end;

function Paladin_Attack1()
	if UnitCanAttack("target","player") and UnitHealth("target") > 0
		then if not AtkSpell 
			then for AtkSlot = 1,180 
				do  if IsAttackAction(AtkSlot) 
					 then AtkSpell = AtkSlot;
					end;
				end;
			end; 
		if not IsCurrentAction(AtkSpell) 
			then UseAction(AtkSpell);
		end;
	else SetCVar("targetNearestDistance", 8);
	TargetNearestEnemy();
	SetCVar("targetNearestDistance", 41);
		-- SendChatMessage("换目标","say");
	end;
	if UnitAura("Player","圣印")
		then CastSpellByName("审判");
		elseif not UnitAura("Player","正义圣印")
		then CastSpellByName("正义圣印");
	end;		
end;

function Paladin_Attack2()
	if UnitCanAttack("target","player") and UnitHealth("target") > 0
		then if not AtkSpell 
			then for AtkSlot = 1,180 
				do  if IsAttackAction(AtkSlot) 
					 then AtkSpell = AtkSlot;
					end;
				end;
			end; 
		if not IsCurrentAction(AtkSpell) 
			then UseAction(AtkSpell);
		end;
	else SetCVar("targetNearestDistance", 8);
	TargetNearestEnemy();
	SetCVar("targetNearestDistance", 41);
		-- SendChatMessage("换目标","say");
	end;
	if UnitAura("Player","圣印")
		then CastSpellByName("审判");
		elseif not UnitAura("Player","命令圣印") 
		then CastSpellByName("命令圣印");
	end;
end;

function Paladin_Attack3()
	if UnitCanAttack("target","player") and UnitHealth("target") > 0
		then if not AtkSpell 
			then for AtkSlot = 1,180 
				do  if IsAttackAction(AtkSlot) 
					 then AtkSpell = AtkSlot;
					end;
				end;
			end; 
		if not IsCurrentAction(AtkSpell) 
			then UseAction(AtkSpell);
		end;
	else SetCVar("targetNearestDistance", 8);
	TargetNearestEnemy();
	SetCVar("targetNearestDistance", 41);
		-- SendChatMessage("换目标","say");
	end;
	if (UnitAura("Player","光明圣印") and not UnitAura("Target","圣光审判"))
		then CastSpellByName("审判");
		elseif not UnitAura("Player","光明圣印") 
		then CastSpellByName("光明圣印");
	end;
end;

function Paladin_Attack4()
	if UnitCanAttack("target","player") and UnitHealth("target") > 0
		then if not AtkSpell 
			then for AtkSlot = 1,180 
				do  if IsAttackAction(AtkSlot) 
					 then AtkSpell = AtkSlot;
					end;
				end;
			end; 
		if not IsCurrentAction(AtkSpell) 
			then UseAction(AtkSpell);
		end;
	else SetCVar("targetNearestDistance", 8);
	TargetNearestEnemy();
	SetCVar("targetNearestDistance", 41);
		-- SendChatMessage("换目标","say");
	end;
	if (UnitAura("Player","智慧圣印") and not UnitAura("Target","智慧审判"))
		then CastSpellByName("审判");
	elseif not UnitAura("Player","智慧圣印") 
		then CastSpellByName("智慧圣印");
	end;
end;

function Paladin_Attack5()
	if UnitCanAttack("target","player") and UnitHealth("target") > 0
		then if not AtkSpell 
			then for AtkSlot = 1,180 
				do  if IsAttackAction(AtkSlot) 
					 then AtkSpell = AtkSlot;
					end;
				end;
			end; 
		if not IsCurrentAction(AtkSpell) 
			then UseAction(AtkSpell);
		end;
	else SetCVar("targetNearestDistance", 8);
	TargetNearestEnemy();
	SetCVar("targetNearestDistance", 41);
		-- SendChatMessage("换目标","say");
	end;
	if (UnitAura("Player","十字军圣印") and not UnitAura("Target","十字军审判"))
		then CastSpellByName("审判");
		elseif not UnitAura("Target","十字军审判") 
		then CastSpellByName("十字军圣印");
	end	;	
end;
-- /script if UnitAura("player","圣印") then ChatFrame1:AddMessage("找到十字军圣印") end;
-- /script if UnitAura("player","圣印") then CastSpellByName("审判") else CastSpellByName("正义圣印") end;
--/script local a=GetSpellCooldown("53");ChatFrame1:AddMessage(a)
-- /script local s,i,n="血性狂暴",1;while 1 do n=GetSpellName(i,"spell");if n then if strfind(n,s) then ChatFrame1:AddMessage(i);break;end;i=i+1;else break;end;end;
-- /script local s,i,n="审判",1;while 1 do n=GetSpellName(i,"spell");if n then if strfind(n,s) then ChatFrame1:AddMessage(i);break;end;i=i+1;else break;end;end;