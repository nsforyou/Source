Complete/Accept quests with a keybind - not 100% effective if there are more than 1 quest reward

```plaintext
/run AcceptQuest()
/run CompleteQuest()
/run i=GetNumQuestChoices() if i<2 then GetQuestReward(1) end
/run SelectAvailableQuest(1)
/run SelectGossipAvailableQuest(1)
/run SelectActiveQuest(1)
/run SelectGossipActiveQuest(1)
```
