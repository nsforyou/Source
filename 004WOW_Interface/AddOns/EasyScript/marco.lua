--为团队中的目标加buff
--耐力
/script if not UnitAura("Player","真言术：韧") then CastSpellByName("真言术：韧");end;
/script local i,p;for i=1,5 do p="Party"..i;TargetUnit(p);if not UnitAura("Target","真言术：韧") then CastSpellByName("真言术：韧");TargetLastTarget();break;end;end;
--智慧
/script if not UnitAura("Player","奥术智慧") then CastSpellByName("奥术智慧");end;
/script local i,p;for i=1,5 do p="Party"..i;TargetUnit(p);if not UnitAura("Target","奥术智慧") then CastSpellByName("奥术智慧");end;break;end;
