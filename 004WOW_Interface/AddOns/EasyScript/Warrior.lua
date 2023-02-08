--该函数通用于任何近战职业，要求使用者拖出近战攻击到动作条，调用 MeleeAttack() 函数
function MeleeAttack()
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
end
-- 此处是狂暴战自动输出的函数
function ES_Warrior_Berserking()
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
end