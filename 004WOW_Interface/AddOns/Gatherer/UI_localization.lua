--[[
	Localization stings for Gatherer config UI
	english set by default, localized versions overwrite the variables.
	Revision: $Id: UI_localization.lua 247 2006-06-26 11:08:02Z islorgris $
	
	ToDo:
		- Missing German strings
		- Missing Chinese strings	
]]

	-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer Options";
	
	GATHERER_TEXT_TOGGLE_MINIMAP	= "Minimap ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "Worldmap ";
	GATHERER_TEXT_TOGGLE_HERBS   	= "Herbs ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "Ores ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "Treasures ";
	GATHERER_TEXT_TOGGLE_REPORT     = "Report";
	GATHERER_TEXT_TOGGLE_SEARCH		= "Search";

	GATHERER_REPORT_TIP				= "Access Report dialog.";
	GATHERER_SEARCH_TIP				= "Access Search dialog.";
	GATHERER_MENUTITLE_TIP			= "Access Configuration dialog.";
	GATHERER_ZMBUTTON_TIP			= "Access Zone Match dialog.";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      = "Gatherer: Options";
	GATHERER_TAB_MENU_TEXT			= "Quick Menu";

	GATHERER_TEXT_SHOWONMOUSE       = "Show on mouse over";
	GATHERER_TEXT_HIDEONMOUSE       = "Hide on mouse out";
	GATHERER_TEXT_SHOWONCLICK       = "Show on left click";
	GATHERER_TEXT_HIDEONCLICK       = "Hide on left click";
	GATHERER_TEXT_HIDEONBUTTON      = "Hide on button press";
	GATHERER_TEXT_POSITION          = "Position";
	GATHERER_TEXT_RADIUS	        = "Radius";
	GATHERER_TEXT_HIDEICON			= "Hide menu icon";

	GATHERER_SHOWONMOUSE_TIP		= "Show menu on icon mouse over.";
	GATHERER_SHOWONCLICK_TIP		= "Show Menu on icon left-click.";
	GATHERER_HIDEONMOUSE_TIP		= "Hide menu off mouse over.";
	GATHERER_HIDEONCLICK_TIP		= "Hide menu on icon left-click.";
	GATHERER_HIDEONBUTTON_TIP		= "Hide menu on selection.";
	GATHERER_HIDEICON_TIP			= "Hide minimap icon to access menu.";
	GATHERER_TEXT_POSITION_TIP  	= "Adjusts the position of the tracking icon around the border of the minimap.";
	GATHERER_TEXT_RADIUS_TIP  		= "Adjusts the position of the tracking icon from the center of the minimap.";

	GATHERER_TAB_MENU_TEXT_TIP		= "Access QuickMenu Options.";

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "Globals";

	GATHERER_TEXT_RAREORE           = "Couple Rare Ore/Herbs";
	GATHERER_TEXT_NO_MINICONDIST	= "No icon under min distance";
	GATHERER_TEXT_MAPMINDER			= "Activate Map Minder";
	GATHERER_TEXT_MAPMINDER_VALUE	= "Map Minder timer";
	GATHERER_TEXT_FADEPERC			= "Fade Percent";
	GATHERER_TEXT_FADEDIST			= "Fade Distance";
	GATHERER_TEXT_THEME				= "Theme: ";
	GATHERER_TEXT_MINIIDIST			= "Minimal icon distance";
	GATHERER_TEXT_NUMBER			= "Mininotes number";
	GATHERER_TEXT_MAXDIST			= "Mininotes distance";
	GATHERER_TEXT_HIDEMININOTES		= "Hide mininotes";
	GATHERER_TEXT_TOGGLEWORLDNOTES	= "Long world note names";
	GATHERER_TEXT_WMICONSIZEEB		= "Worldmap icon size";
	GATHERER_TEXT_WMICONALPHAEB		= "Worldmap icon transparency";
	GATHERER_TEXT_ALPHAUNDER_MINICON= "Transparency under min";

	GATHERER_MAPMINDER_TIP			= "Activate/Deactivate Map Minder.";
	GATHERER_TEXT_MAPMINDER_TIP		= "Adjusts the Map Minder timer.";
	GATHERER_THEME_TIP				= "Set Icon Theme.";
	GATHERER_NOMINIICONDIST_TIP		= "No display of minimap icon under min distance.";	
	GATHERER_RAREORE_TIP			= "Show common/rare ore/herbs together.";
	GATHERER_TEXT_FADEPERC_TIP		= "Adjusts icons fade percent." ;
	GATHERER_TEXT_FADEDIST_TIP		= "Adjusts icons fade distance.";
	GATHERER_TEXT_MINIIDIST_TIP		= "Adjusts minimal distance at which item icon appears.";
	GATHERER_TEXT_NUMBER_TIP		= "Adjusts number of mininotes displayed on the minimap.";
	GATHERER_TEXT_MAXDIST_TIP		= "Adjusts maximum distance to consider when looking for mininotes to display on the minimap.";
	GATHERER_HIDEMININOTES_TIP		= "Do not display mininotes on minimap.";
	GATHERER_TOGGLEWORLDNOTES_TIP	= "Toggle between short/long item name in worldmap notes.";
	GATHERER_WMICONSIZEEB_TIP		= "Set Icon size on world map.";
	GATHERER_WMICONALPHAEB_TIP		= "Set Icon transparency on world map.";
	GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "Set mininote transparency under minimal distance";
	
	GATHERER_TAB_GLOBALS_TEXT_TIP	= "Access Global Options.";
	
	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT 		= "Filters";

	GATHERER_TEXT_FILTER_HERBS		= "Herbs: ";
	GATHERER_TEXT_FILTER_ORE		= "Ore: ";
	GATHERER_TEXT_FILTER_TREASURE	= "Treasure: ";
	GATHERER_TEXT_LINKRECORD        = "Filter Record"
	GATHERER_TEXT_WMFILTERS			= "Filters on World Map";
	GATHERER_TEXT_DISABLEWMFIX		= "Enable Show/Hide button";

	GATHERER_HERBSKLEB_TIP			= "Set min Herbalism skill for display.";
	GATHERER_ORESKLEB_TIP			= "Set min Mining skill for display.";
	GATHERER_HERBDDM_TIP			= "Filter shown herbs.";
	GATHERER_OREDDM_TIP				= "Filter shown ores.";
	GATHERER_TREASUREDDM_TIP		= "Filter shown treasures.";
	GATHERER_TEXT_LINKRECORD_TIP	= "Link recording to selected filters.";
	GATHERER_TEXT_WMFILTERS_TIP		= "Toggle items filters on world map.";
	GATHERER_TEXT_DISABLEWMFIX_TIP	= "Enable World Map Show/Hide button to display items";

	GATHERER_TAB_FILTERS_TEXT_TIP	= "Access Filters Options."

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "Zone Rematch";

	GATHERER_TEXT_APPLY_REMATCH		= "Apply Zone Rematch:";
	GATHERER_TEXT_SRCZONE_MISSING	= "Source Zone not selected.";
	GATHERER_TEXT_DESTZONE_MISSING	= "Destination Zone not selected.";
	GATHERER_TEXT_FIXITEMS			= "Fix Item Names";
	GATHERER_TEXT_LASTMATCH			= "Last Match: ";
	GATHERER_TEXT_LASTMATCH_NONE	= "None";
	GATHERER_TEXT_CONFIRM_REMATCH	= "Confirm Zone Rematch (WARNING, this will modify data)";

	GATHERER_ZM_FIXITEM_TIP			= "Fix Items names, localized version only.";
	GATHERER_ZM_SRCDDM_TIP			= "Set Source Map order.";
	GATHERER_ZM_DESTDDM_TIP			= "Set Destination Map order.";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "Node Report by Zone.";
	
	GATHERER_REPORT_LOCATION		= "Location:";
	GATHERER_REPORT_COL_TYPE		= "Type";
	GATHERER_REPORT_COL_NAME		= "Gatherable";
	GATHERER_REPORT_COL_PTYPE		= "% Type";
	GATHERER_REPORT_COL_PDENSITY	= "% Density";
	
	GATHERER_REPORT_SUMMARY			= "Total: # gather for & nodes";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "Search for Zone containing specific item.";
	
	GATHERER_SEARCH_LOCATION		= "Item:";
	GATHERER_SEARCH_COL_CONTINENT	= "Continent";
	GATHERER_SEARCH_COL_ZONE		= "Zone";
	GATHERER_SEARCH_COL_PNODE		= "% Node";
	GATHERER_SEARCH_COL_PDENSITY	= "% Density";

	GATHERER_SEARCH_SUMMARY			= "Found: # nodes in & zones";
	
	-- World Map
	GATHERER_FILTERDM_TEXT		= "Filters"
	GATHERER_FILTERDM_TIP		= "Modify item filters."

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Show/Hide Gatherer Quick Menu";
	BINDING_NAME_GATHERER_BINDING_OPTIONS		= "Show/Hide Gatherer Options";
	BINDING_NAME_GATHERER_BINDING_REPORT		= "Show/Hide Gatherer Report";
	BINDING_NAME_GATHERER_BINDING_SEARCH		= "Show/Hide Gatherer Options";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3fTable of Contents|r\n\n1- Quick Menu\n2- Minimap\n3- World Map\n4- Options Dialog\n5- Zone Rematch Dialog\n6- Report Dialog\n7- Search Dialog\n8- Node Editor\n";
	GathererHelp[2] ="|cffff7f3fQuick Menu:|r\n\nAllows fast access to basic display filters (minimap, world map, herbs, ores and treasures) as well as access to the statistic dialogs (see help pages on Report and Search).\n\nClicking on the menu title will bring up the configuration dialog.\n";
	GathererHelp[3] ="|cffff7f3fMinimap:|r\n\nThe minimap will display icons for the closest gathers (25 max, according to filters, number of gather to show, max distance to consider, etc.).\n\nMousing over these icons will bring up a tooltip detailing the gatherable name, the number of time a successful gather was performed there and the distance to it from current position (in units and time to get there in a straight line at standard running speed).\n";
	GathererHelp[4] ="|cffff7f3fWorld Map:|r\n\nThe World Map will display icons for all gathered items in the selected zone (400 max, according to selected filters, etc.).\n\nSince having a great number of items to display may cause lag while trying to access the map, by default the items are shown (there is a toggle in the Filters option tab not to display them all the time, it enables a Show Items button on the world map).\n\nThe World Map also allows access to the Node Editor to do some basic manipulation on the Database, by alt-right clicking on a node.\n";
	GathererHelp[5] ="|cffff7f3fOptions Dialog:|r\n\nThe option dialog is divided in 3 tabs: Filters, Globals, Quick Menu\n\n|cffff7f3fFilters Tab|r deals with filters related option (including control for the Show/Hide button on the World Map).\n\n|cffff7f3fGlobals Tab|r handles options related to core Gatherer functionnality (most of these are also availale though command line).\n\n|cffff7f3fQuick Menu Tab|r controls the behaviour of the quick menu from the minimap icon (including icon position and show/hide control).\n";
	GathererHelp[6] ="|cffff7f3fZone Rematch Dialog:|r\n\nThis is mainly a facility for localized WoW clients in which the zone name translations were not complete by the time of the official WoW release.\n\nWhen zone names are changed, zone indexes change too because they are sorted alphabetically.\nThis facility provides transition matrixes to fix these indexes by selecting a Source Zone order (ie. previous one) and a Destination Zone order (ie. current one) identified by the WoW version and prefixed by WoW client language (the fix item checkbox allows item names that have been changed to be fixed).\n\nThis also allows global manipulation of the database, such as changing it's format, this is done with any selected source and destination zone order, for non-localized clients an identify matrix should be used (ie. same source and destination order).\n\n|cffff7f3fDatabase is modified, so keep a backup of your data, just in case.|r\n";
	GathererHelp[7] ="|cffff7f3fReport Dialog:|r\n\nIn this dialog you can display the items you have collected in the various zones (one zone at a time) for a quick overview.\n\nYou can click on the various column headings to sort (and reverse sort) the display according to that column contents.\n\nMost of the columns are self-explanatory, except for the ones detailed below:\n|cffff7f3fType %:|r\n  Percentage of the ressource compared to number of recorded gather of the same type in zone.\n\n|cffff7f3fDensity %:|r\n  Percentage of the ressource compared to number of recorded gather of the same item worldwide.\n";
	GathererHelp[8] ="|cffff7f3fSearch Dialog:|r\n\nIn this dialog you can specify an item and display the various zones in which it has already been gathered.\n\nYou can click on the various column headings to sort (and reverse sort) the display according to that column contents.\n\nMost of the columns are self-explanatory, except for the ones detailed below:\n|cffff7f3fNode %:|r\n  Percentage of the ressource compared to the number of nodes in zone.\n\n|cffff7f3fDensity %:|r\n  Percentage of the ressource compared to total matching nodes worldwide.\n";
	GathererHelp[9] ="|cffff7f3fNode Editor:|r\n\nIn this dialog you (alt-right click on a node in the World Map), you can change the node name, it's icon, toggle it as bugged or delete it.\n\n|cffff7f3fToggle Bugged|r will only work for the current selected node.\n\n|cffff7f3fDelete|r use scope (Node by default to avoid mistakes) and can be extended to Zone, Continent and World scopes.\n\n|cffff7f3fAccept|r will take into account the new node name (remember to hit enter after filling the new name) and/or icon.\nAs for the delete button, this one takes scope into account and can be applied at Node, Zone, Continent and World level.\n";
	GathererHelp.currentPage=1;

	GathererDetails = {}; -- this line MUST NOT be repeated in localization blocks
	GathererDetails["description"] = "Show gathered herbs/ores/treasures locations";
	GathererDetails["releaseDate"] = "August 27, 2006";

if ( GetLocale() == "frFR" ) then
	-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer Options";	

	GATHERER_TEXT_TOGGLE_MINIMAP	= "Carte: Minicarte ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "Carte: Monde ";
	GATHERER_TEXT_TOGGLE_HERBS   	= "R\195\169colte Herbes ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "R\195\169colte Gisements ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "R\195\169colte Tr\195\169sors ";
	GATHERER_TEXT_TOGGLE_REPORT     = "Rapport";
	GATHERER_TEXT_TOGGLE_SEARCH		= "Recherche";

	GATHERER_REPORT_TIP				= "Vers la fenetre de rapport.";
	GATHERER_SEARCH_TIP				= "Vers la fenetre de recherche.";
	GATHERER_MENUTITLE_TIP			= "Vers la fenetre de configuration.";
	GATHERER_ZMBUTTON_TIP			= "Vers la synchronisation de zone.";
	
	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      = "Gatherer: Options";
	GATHERER_TAB_MENU_TEXT			= "Menu Rapide"

	GATHERER_TEXT_SHOWONMOUSE       = "Montrer sur passage souris";
	GATHERER_TEXT_HIDEONMOUSE       = "Cacher hors passage souris";
	GATHERER_TEXT_SHOWONCLICK       = "Montrer sur clic gauche";
	GATHERER_TEXT_HIDEONCLICK       = "Cacher sur clic gauche";
	GATHERER_TEXT_HIDEONBUTTON      = "Cacher sur activation bouton";
	GATHERER_TEXT_POSITION          = "Position";
	GATHERER_TEXT_RADIUS	        = "Rayon";
	GATHERER_TEXT_HIDEICON			= "Cacher l'icone de menu";

	GATHERER_TEXT_POSITION_TIP      = "Ajuste la position de l'icone sur le bord de la minicarte.";
	GATHERER_TEXT_RADIUS_TIP        = "Ajuste la position de l'icone par rapport au centre de la minicarte.";
	GATHERER_SHOWONMOUSE_TIP		= "Montrer le menu en passant la souris sur l'icone.";
	GATHERER_SHOWONCLICK_TIP		= "Montrer le menu en faisant un clic gauche sur l'icone.";
	GATHERER_HIDEONMOUSE_TIP		= "Cacher le menu quand la souris n'est plus sur l'icone.";
	GATHERER_HIDEONCLICK_TIP		= "Cacher le menu en faisant un clic gauche sur l'icone.";
	GATHERER_HIDEONBUTTON_TIP		= "Cacher le menu quand on clique sur un de ses \195\169l\195\169ments.";
	GATHERER_HIDEICON_TIP			= "Cacher l'icone d'acc\195\168s au menu.";

	GATHERER_TAB_MENU_TEXT_TIP		= "Acc\195\169der aux options du Menu rapide."

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "G\195\169n\195\169ral"

	GATHERER_TEXT_RAREORE      		= "Coupler Minerais/Herbes Rares";
	GATHERER_TEXT_NO_MINICONDIST	= "Pas d'icone sous distance mini";
	GATHERER_TEXT_MAPMINDER			= "Activation Map Minder";
	GATHERER_TEXT_MAPMINDER_VALUE	= "Dur\195\169e Map Minder";
	GATHERER_TEXT_FADEPERC			= "Pourcentage transparence";
	GATHERER_TEXT_FADEDIST			= "Distance transparence";
	GATHERER_TEXT_THEME				= "Th\195\168me: ";
	GATHERER_TEXT_MINIIDIST			= "Distance mini icone";
	GATHERER_TEXT_NUMBER			= "Nombre de notes";
	GATHERER_TEXT_MAXDIST			= "Distance maxi notes";
	GATHERER_TEXT_HIDEMININOTES		= "Cacher les mininotes";
	GATHERER_TEXT_TOGGLEWORLDNOTES	= "Noms longs sur carte du monde";
	GATHERER_TEXT_WMICONSIZEEB		= "Taille icone carte du monde";
	GATHERER_TEXT_WMICONALPHAEB		= "Alpha icone carte du monde";
	GATHERER_TEXT_ALPHAUNDER_MINICON= "Alpha sous distance mini";

	GATHERER_TEXT_MAPMINDER_TIP		= "Ajuste la dur\195\169e du Map Minder.";
	GATHERER_TEXT_FADEPERC_TIP		= "Ajuste le pourcentage de transparence des icones." ;
	GATHERER_TEXT_FADEDIST_TIP		= "Ajuste la distance de transparence des icones.";
	GATHERER_TEXT_MINIIDIST_TIP		= "Ajuste la distance minimale a laquelle l'icone apparait.";
	GATHERER_TEXT_NUMBER_TIP		= "Ajuste le nombre de notes affich\195\169es sur la minicarte.";
	GATHERER_TEXT_MAXDIST_TIP		= "Ajuste la distance maximum pour l'affichage des notes sur la minicarte.";
	GATHERER_MAPMINDER_TIP			= "Activater/D\195\169sactiver Map Minder.";
	GATHERER_THEME_TIP				= "Choisir le th\195\168me d'icone.";
	GATHERER_NOMINIICONDIST_TIP		= "Ne pas afficher les mini-icones en dessous de la distance minimale.";	
	GATHERER_RAREORE_TIP			= "Coupler l'affichage des herbes/minerais rares.";
	GATHERER_TOGGLEWORLDNOTES_TIP	= "Basculer entre les noms courts/longs des objets sur la carte du monde.";
	GATHERER_WMICONSIZEEB_TIP		= "Choisir la taille des icones sur la carte du monde.";
	GATHERER_WMICONALPHAEB_TIP		= "Choisir l'alpha des icones sur la carte du monde.";
	GATHERER_HIDEMININOTES_TIP		= "Ne pas afficher les mininotes sur la minicarte.";
	GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "Choisir l'apha des mininotes en dessous de la distance minimale.";

	GATHERER_TAB_GLOBALS_TEXT_TIP	= "Acc\195\169der aux options g\195\169n\195\169nales."

	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT		= "Filtres"

	GATHERER_TEXT_FILTER_HERBS		= "Herbes: ";
	GATHERER_TEXT_FILTER_ORE		= "Gisements: ";
	GATHERER_TEXT_FILTER_TREASURE	= "Tr\195\169sors: ";
	GATHERER_TEXT_LINKRECORD        = "Saisie Filtr\195\169e"
	GATHERER_TEXT_WMFILTERS			= "Filtres Carte du Monde"
	GATHERER_TEXT_DISABLEWMFIX		= "Active le bouton Show/Hide";

	GATHERER_HERBSKLEB_TIP			= "Comp\195\169tence mini pour l'affichage les herbes.";
	GATHERER_ORESKLEB_TIP			= "Comp\195\169tence mini pour l'affichage des minerais.";
	GATHERER_HERBDDM_TIP			= "Filtrer les herbes affich\195\169es.";
	GATHERER_OREDDM_TIP				= "Filtrer les minerais affich\195\169es.";
	GATHERER_TEXT_LINKRECORD_TIP	= "Conditionne l'enregistrement au contenu du filtre.";
	GATHERER_TREASUREDDM_TIP		= "Filtrer les tr\195\169sors affich\195\169es.";
	GATHERER_TEXT_WMFILTERS_TIP		= "Montre/Cache les filtres d'objets sur la Carte du Monde."
	GATHERER_TEXT_DISABLEWMFIX_TIP	= "Active bouton show/hide sur la carte du monde, \195\160 vos risques.";

	GATHERER_TAB_FILTERS_TEXT_TIP	= "Acc\195\169der aux options des filtres."

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "Zone Rematch";

	GATHERER_TEXT_APPLY_REMATCH		= "Synchronisation des zones:";
	GATHERER_TEXT_SRCZONE_MISSING	= "Zone Source non s\195\169lection\195\169e.";
	GATHERER_TEXT_DESTZONE_MISSING	= "Zone Destination non s\195\169lection\195\169e.";
	GATHERER_TEXT_FIXITEMS			= "Correction du nom des objets";
	GATHERER_TEXT_LASTMATCH			= "Derni\195\168re synchro: ";
	GATHERER_TEXT_LASTMATCH_NONE	= "Aucune";
	GATHERER_TEXT_CONFIRM_REMATCH	= "Confirmation de la resynchronisation des zones (ATTENTION, cela modifie les donn\195\169es).";

	GATHERER_ZM_FIXITEM_TIP			= "Correction des noms d'objets, version localis\195\169e uniquement.";
	GATHERER_ZM_SRCDDM_TIP			= "Choisir l'ordre des Zones d'origine.";
	GATHERER_ZM_DESTDDM_TIP			= "Choisir l'ordre des Zones destination.";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "Rapport: points de r\195\169colte par Zone.";
	
	GATHERER_REPORT_LOCATION		= "Localisation:";
	GATHERER_REPORT_COL_TYPE		= "Type";
	GATHERER_REPORT_COL_NAME		= "R\195\169coltable";
	GATHERER_REPORT_COL_PTYPE		= "% Type";
	GATHERER_REPORT_COL_PDENSITY	= "% Densit\195\169";
	
	GATHERER_REPORT_SUMMARY			= "Total: # r\195\169coltes pour & points";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "Cherche les zones contenant un objet sp\195\169cifique.";
	
	GATHERER_SEARCH_LOCATION		= "Objet:";
	GATHERER_SEARCH_COL_CONTINENT	= "Continent";
	GATHERER_SEARCH_COL_ZONE		= "Zone";
	GATHERER_SEARCH_COL_PNODE		= "% points";
	GATHERER_SEARCH_COL_PDENSITY	= "% Densit\195\169";

	GATHERER_SEARCH_SUMMARY			= "Trouv\195\169s: # points dans & zones";
	
	-- World Map
	GATHERER_FILTERDM_TEXT		= "Filtres"
	GATHERER_FILTERDM_TIP		= "Modifie les filtres d'objets."

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Montrer/Cacher menu Gatherer";
	BINDING_NAME_GATHERER_BINDING_OPTIONS		= "Montrer/Cacher options Gatherer ";
	BINDING_NAME_GATHERER_BINDING_REPORT		= "Montrer/Cacher rapport Gatherer ";
	BINDING_NAME_GATHERER_BINDING_SEARCH		= "Montrer/Cacher recherche Gatherer";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3fSommaire|r\n\n1- Menu Rapide\n2- Minicarte\n3- Carte du Monde\n4- Options\n5- Zone Match\n6- Rapport\n7- Recherche\n8- Editeur de point\n";
	GathererHelp[2] ="|cffff7f3fMenu Rapide:|r\n\nAcc\195\168s rapide aux filtres basique (minicarte, carte du monde, herbes, minerais et tr\195\169sors) et aux \195\169crans de statistiques (voir pages d'aide sur Rapport et Recherche).\n\nEn cliquant sur le titre du menu, l'\195\169cran de configuration est affich\195\169.\n";
	GathererHelp[3] ="|cffff7f3fMinicarte:|r\n\nLa minicarte affiche des icones pour les r\195\169coltables proches (25 max, selon les filtres, nombre \195\160 montrer, distance maxi \195\160 considerer, etc.).\n\nEn passant la souris dessus une fen\195\170tre est affich\195\169e et donne le nom de l'objet, le nombre de r\195\169coltes effectu\195\169es dessus et sa distance depuis la position actuelle du personnage (en unit\195\169s et temps pour se rendre au point en ligne droite \195\160 vitesse de course normale).\n";
	GathererHelp[4] ="|cffff7f3fCarte du Monde:|r\n\nLa carte du monde affiche les icones de tout ce qui a \195\169t\195\169 r\195\169colt\195\169 dans la zone s\195\169lectionn\195\169e (400 max, selon les filtres choisis, etc.).\n\nUn grand nombre d'objet \195\160 afficher pouvant causer un d\195\169lai de l'affichage de la carte, par d\195\169faut les objets sont montr\195\169s (il y a une bascule dans l'onglet Filtres des options qui permet de ne pas les afficher en permanence, cela active un bouton Show Item sur la carte du monde).\n\nLa Carte du Monde permet aussi l'acc\195\169s \195\160 l'\195\169diteur de point pour effectuer des manipulations basiques sur la base de donn\195\169es, en faisant alt-clic droit sur un point.\n";
	GathererHelp[5] ="|cffff7f3fOptions:|r\n\nLa fen\195\170tre d'options est divis\195\169e en 3 onglets: Filtres, G\195\169n\195\169ral et Menu Rapide.\n\n|cffff7f3fOnglet Filtres|r options relatives aux filtres (y compris le contr\195\180le pour le bouton Show/Hide sur la carte du monde).\n\n|cffff7f3fOnglet G\195\169n\195\169ral|r options relatives aux fonctionnalit\195\169s de base de Gatherer (la pluspart \195\169tant aussi disponibles par ligne de commande).\n\n|cffff7f3fOnglet Menu rapide|r contr\195\180le le comportement du menu rapide du bouton de la minicarte (y compris la position et l'affichage/non-affichage de l'icone).\n";
	GathererHelp[6] ="|cffff7f3fZone Match:|r\n\nCeci est principalement pr\195\169vu pour les clients WoW localis\195\169s dans lesquels les traductions de nom de zones n'\195\169taient pas finis lors de la release officielle de WoW.\n\nQuand les noms de zone sont chang\195\169s, les index changent car elles sont tri\195\169es alphab\195\169tiquement.\nCet utilitaire fournit des matrices de transition pour les corriger en choisissant un ordre Source (ie. le pr\195\169c\195\169dent) et un ordre Destination (ie. l'actuel) identifi\195\169 par la version de WoW et prefix\195\169 par la langue du client (la case correction d'objet permet de corriger les noms d'objets traduits au fil de l'eau).\n\nCeci permet aussi de faire des manipulations globales sur la base, comme changer son format. Cela est fait avec d\195\168s qu'une transition est appliqu\195\169e, les clients non-localis\195\169s doivent utiliser des matrices d'identit\195\169 (ie. m\195\170me source et destination).\n\n|cffff7f3fLa base est modifi\195\169e, donc gardez une sauvegarde de celle-ci, au cas ou.|r\n";
	GathererHelp[7] ="|cffff7f3fRapport:|r\n\nCette fen\195\170tre permet d'afficher les objets r\195\169colt\195\169s dans les diff\195\169rentes zones (une \195\160 la fois) pour avoir une vue d'ensemble rapide.\n\nVous pouvez cliquer sur les titres des colonnes pour trier (et tri inverse) l'affichage selon le contenu de la colonne choisie.\n\nLa pluspart des colonnes sont facilement compr\195\169hensibles, except\195\169 les 2 d\195\169taill\195\169es ci-apr\195\168s:\n|cffff7f3fType %:|r\n  Pourcentage de resource par rapport au nombre de r\195\169colte du m\195\170me type dans la zone.\n\n|cffff7f3fDensit\195\169 %:|r\n  Pourcentage de ressource par rapport au nombre total de r\195\169colte de l'objet dans le monde.\n";
	GathererHelp[8] ="|cffff7f3fRecherche:|r\n\nDans cette fen\195\170tre vous pouvez rechercher un objet particulier et afficher les zones dans lesquelles vous l'avez d\195\169j\195\160 r\195\169colt\195\169.\n\nVous pouvez cliquer sur les titres des colonnes pour trier (et tri inverse) l'affichage selon le contenu de la colonne choisie.\n\nLa pluspart des colonnes sont facilement compr\195\169hensibles, except\195\169 les 2 d\195\169taill\195\169es ci-apr\195\168s:\n|cffff7f3f% points:|r\n  Pourcentage de ressource par rapport au nombre de points de r\195\169colte de la zone.\n\n|cffff7f3f% Densit\195\169:|r\n  Pourcentage de ressource par rapport au nombre total de point de r\195\169colte correspondant dans le monde.\n";
	GathererHelp[9] ="|cffff7f3fEditeur de point:|r\n\nCeci permet (alt-clic droit sur un point de r\195\169colte sur la Carte du Monde) de changer le nom du point, son icone, le marquer comme bugg\195\169 ou de l'effacer.\n\n|cffff7f3fToggle Bugged|r ne fonctionne que pour le point courant.\n\n|cffff7f3fSuppr|r utilise la port\195\169e (Node par d\195\169faut pour reduire les erreurs) et peut \195\170tre \195\169tendu \195\160 Zone, Continent et World.\n\n|cffff7f3fAccepter|r prend en compte le nouveau nom (appuyer sur entr\195\169e pour le valider apr\195\169s l'avoir tap\195\169) et/ou la nouvelle icone du point.\nComme pour le bouton Suppr, la port\195\169e est prise en compte peut \195\170tre appliqu\195\169e aux niveaux Node, Zone, Continent et World.\n";

	GathererDetails["description"] = "Montrer les positions des herbes/minerais/tr\195\169sors r\195\169colt\195\169s.";
	GathererDetails["releaseDate"] = "27 aout 2006";

end

if ( GetLocale() == "deDE" ) then
	-- Quick Menu
	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer Optionen";

	GATHERER_TEXT_TOGGLE_MINIMAP	= "Minikarte ";
	GATHERER_TEXT_TOGGLE_MAINMAP	= "Weltkarte ";
	GATHERER_TEXT_TOGGLE_HERBS		= "Kr\195\164uter ";
	GATHERER_TEXT_TOGGLE_MINERALS	= "Erze ";
	GATHERER_TEXT_TOGGLE_TREASURE	= "Sch\195\164tze ";
	-- GATHERER_TEXT_TOGGLE_REPORT	= "";
	-- GATHERER_TEXT_TOGGLE_SEARCH	= "";

	-- GATHERER_REPORT_TIP			= "";
	-- GATHERER_SEARCH_TIP			= "";
	GATHERER_MENUTITLE_TIP			= "Zugriff auf Konfigurationen";  
	GATHERER_ZMBUTTON_TIP			= "Zugriff auf Zone Match Dialog";  

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE	= "Gatherer: Optionen";
	--GATHERER_TAB_MENU_TEXT	= "";

	GATHERER_TEXT_SHOWONMOUSE	= "Anzeigen bei 'Mouse-over'";
	GATHERER_TEXT_HIDEONMOUSE	= "Verstecken bei 'Mouse-out'";
	GATHERER_TEXT_SHOWONCLICK	= "Anzeigen bei Linksklick";
	GATHERER_TEXT_HIDEONCLICK	= "Verstecken bei Linksklick";
	GATHERER_TEXT_HIDEONBUTTON	= "Verstecken bei Tastendruck";
	GATHERER_TEXT_POSITION		= "Position";
	GATHERER_TEXT_HIDEICON		= "Verstecke Menuicon";  

	GATHERER_SHOWONMOUSE_TIP	= "Zeige das Menu beim Mausover \195\188ber das Icon";  
	GATHERER_SHOWONCLICK_TIP	= "Zeige das Menu beim Linksklick auf das Icon";  
	GATHERER_HIDEONMOUSE_TIP	= "Verstecke das Menu wenn der Mauszeiger nicht mehr auf dem Icon ist";  
	GATHERER_HIDEONCLICK_TIP	= "Verstecke das Menu beim Linksklick auf das Icon";  
	GATHERER_HIDEONBUTTON_TIP	= "Verstecke das Menu bei Anwahl";  
	GATHERER_HIDEICON_TIP		= "Verstecke das Minimapicon zum Menuzugriff";  
	GATHERER_TEXT_POSITION_TIP	= "Passt die Position des Trackingicons am Rand der Minikarte an";

	--GATHERER_TAB_MENU_TEXT_TIP	= "";

	-- Globals Options
	--GATHERER_TAB_GLOBALS_TEXT			= "";

	GATHERER_TEXT_RAREORE			= "Ein paar seltene Erze/Kr\195\164uter";
	GATHERER_TEXT_NO_MINICONDIST	= "Kein Icon unter der min.enfern.";
	GATHERER_TEXT_MAPMINDER			= "Map-Minder aktivieren";
	GATHERER_TEXT_MAPMINDER_VALUE	= "Map-Minder-Timer";
	GATHERER_TEXT_FADEPERC			= "Transparenz in Prozent";
	GATHERER_TEXT_FADEDIST			= "Ausblendungsabstand";
	GATHERER_TEXT_THEME				= "Theme: ";
	GATHERER_TEXT_MINIIDIST			= "Minimale Icon-Entfernung";
	GATHERER_TEXT_NUMBER			= "Mininotiz-Anzahl";
	GATHERER_TEXT_MAXDIST			= "Mininotiz-Entfernung";
	GATHERER_TEXT_HIDEMININOTES		= "Verstecke Minimarkierungen";  
	GATHERER_TEXT_TOGGLEWORLDNOTES	= "Lange Weltmarkierungsnamen";  
	GATHERER_TEXT_WMICONSIZEEB		= "Weltkarten Icongr\195\182\195\159e"; 
	-- GATHERER_TEXT_WMICONALPHAEB		= "";
	--GATHERER_TEXT_ALPHAUNDER_MINICON= "";

	GATHERER_TEXT_MAPMINDER_TIP		= "Stellt den Map-Minder-Timer ein";
	GATHERER_MAPMINDER_TIP			= "Aktiviere/Deaktiviere Map Minder";  
	GATHERER_THEME_TIP				= "Setze Icon Theme";  
	GATHERER_NOMINIICONDIST_TIP		= "Keine Anzeige der Minimap-Icons unter der Mindestentfernung";  
	GATHERER_RAREORE_TIP			= "Zeige gew\195\182hnliche/seltene Erze/Pflanzen zusammen";  
	GATHERER_TEXT_FADEPERC_TIP		= "Stellt die Transparenz in Prozent ein" ;
	GATHERER_TEXT_FADEDIST_TIP		= "Stellt die Entfernung f\195\188r die Ausblendung ein";
	GATHERER_TEXT_MINIIDIST_TIP		= "Stellt die minimale Entfernung der Icons ein in welcher sie erscheinen";
	GATHERER_TEXT_NUMBER_TIP		= "Stellt die Anzahl der angezeigten Mininotizen ein";
	GATHERER_TEXT_MAXDIST_TIP		= "Stellt die maximale Entfernung ein, in welcher nach Mininotizen gesucht wird";
	GATHERER_HIDEMININOTES_TIP		= "Zeige keine Minimapsymbole an";  
	GATHERER_TOGGLEWORLDNOTES_TIP	= "Wechsel zwischen kurzen/langen Itemnamen der Weltkartenmarkierungen";  
	GATHERER_WMICONSIZEEB_TIP		= "Setze Icongr\195\182\195\159e auf der Weltkarte";  
	-- GATHERER_TEXT_WMICONALPHAEB_TIP		= "";
	-- GATHERER_TEXT_ALPHAUNDER_MINICON_TIP = "";

	--GATHERER_TAB_GLOBALS_TEXT_TIP	= "";

 	-- Filters Options
	-- GATHERER_TAB_FILTERS_TEXT		= "";

	GATHERER_TEXT_FILTER_HERBS		= "Kr\195\164uter: ";
	GATHERER_TEXT_FILTER_ORE		= "Erze: ";
	GATHERER_TEXT_FILTER_TREASURE	= "Sch\195\164tze: ";
	-- GATHERER_TEXT_LINKRECORD		= "";
	-- GATHERER_TEXT_WMFILTERS		= "";
	-- GATHERER_TEXT_DISABLEWMFIX	= "";

	GATHERER_HERBSKLEB_TIP			= "Setze min. Kr\195\164uterkundeskill f\195\188r die Anzeige";  
	GATHERER_ORESKLEB_TIP			= "Set min. Bergbauskill f\195\188r die Anzeige";  
	GATHERER_HERBDDM_TIP			= "Filter anzuzeigende Pflanzen";  
	GATHERER_OREDDM_TIP				= "Filter anzuzeigende Erze";  
	GATHERER_TREASUREDDM_TIP		= "Filter anzuzeigende Truhen";
	-- GATHERER_TEXT_LINKRECORD_TIP		= "";
	-- GATHERER_TEXT_WMFILTERS_TIP		= "";
	-- GATHERER_DISABLEWMFIX_TIP		= "";

	-- GATHERER_TAB_FILTERS_TEXT_TIP	= "";

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "Zonenabgleich";

	GATHERER_TEXT_APPLY_REMATCH		= "Zonenabgleich durchf\195\188hren:";
	GATHERER_TEXT_SRCZONE_MISSING	= "Quellzone nicht ausgew\195\164hlt.";
	GATHERER_TEXT_DESTZONE_MISSING	= "Zielzone nicht ausgew\195\164hlt.";
	GATHERER_TEXT_FIXITEMS			= "Item-Namen korrigieren";
	GATHERER_TEXT_LASTMATCH			= "Letzer Treffer: ";
	GATHERER_TEXT_LASTMATCH_NONE	= "Keiner";
	GATHERER_TEXT_CONFIRM_REMATCH	= "Zonenabgleich best\195\164tigen (ACHTUNG: Daten werden ge\195\164ndert!)";

	GATHERER_ZM_FIXITEM_TIP			= "Korrigiere Itemnamen, nur lokalisierte Version";  
	GATHERER_ZM_SRCDDM_TIP			= "Setze Source Map Reihenfolge";  
	GATHERER_ZM_DESTDDM_TIP			= "Setze Destination Map Reihenfolge";  

	-- Report Dialog
	-- GATHERER_TAB_REPORT_TIP			= "";
	
	-- GATHERER_REPORT_LOCATION		= "";
	-- GATHERER_REPORT_COL_TYPE		= "";
	-- GATHERER_REPORT_COL_NAME		= "";
	-- GATHERER_REPORT_COL_PTYPE		= "";
	-- GATHERER_REPORT_COL_PDENSITY	= "";
	
	-- GATHERER_REPORT_SUMMARY			= "";

	-- Search Dialog
	-- GATHERER_TAB_SEARCH_TIP			= "";
	
	-- GATHERER_SEARCH_LOCATION			= "";
	-- GATHERER_SEARCH_COL_CONTINENT	= "";
	-- GATHERER_SEARCH_COL_ZONE			= "";
	-- GATHERER_SEARCH_COL_PNODE		= "";
	-- GATHERER_SEARCH_COL_PDENSITY		= "";

	-- GATHERER_SEARCH_SUMMARY			= "";
	
	-- World Map
	--GATHERER_FILTERDM_TEXT		= ""
	--GATHERER_FILTERDM_TIP		= ""

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER		= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU		= "Gatherer-Men\195\188 An/Aus";
	-- BINDING_NAME_GATHERER_BINDING_OPTIONS	= "";
	-- BINDING_NAME_GATHERER_BINDING_REPORT		= "";
	-- BINDING_NAME_GATHERER_BINDING_SEARCH		= "";
end

-- localized by 浮云飘飘 
if ( GetLocale() == "zhCN" ) then

	GATHERER_TEXT_TITLE_BUTTON		= "Gatherer 选项";
	
	GATHERER_TEXT_TOGGLE_MINIMAP		= "小地图 ";
	GATHERER_TEXT_TOGGLE_MAINMAP		= "世界地图 ";
	GATHERER_TEXT_TOGGLE_HERBS   		= "草药 ";
	GATHERER_TEXT_TOGGLE_MINERALS		= "矿物 ";
	GATHERER_TEXT_TOGGLE_TREASURE		= "财宝 ";
	GATHERER_TEXT_TOGGLE_REPORT     	= "报告";
	GATHERER_TEXT_TOGGLE_SEARCH		= "搜索";

	GATHERER_REPORT_TIP			= "打开报告对话框.";
	GATHERER_SEARCH_TIP			= "打开搜索对话框.";
	GATHERER_MENUTITLE_TIP			= "打开配置对话框.";
	GATHERER_ZMBUTTON_TIP			= "打开地区重匹配对话框.";

	-- Quick Menu Options
	GATHERER_TEXT_CONFIG_TITLE      	= "Gatherer: 选项";
	GATHERER_TAB_MENU_TEXT			= "快捷菜单";

	GATHERER_TEXT_SHOWONMOUSE       	= "鼠标移过时显示";
	GATHERER_TEXT_HIDEONMOUSE       	= "鼠标移开时隐藏";
	GATHERER_TEXT_SHOWONCLICK       	= "左键点击显示";
	GATHERER_TEXT_HIDEONCLICK       	= "左键点击隐藏";
	GATHERER_TEXT_HIDEONBUTTON      	= "按键隐藏";
	GATHERER_TEXT_POSITION          	= "位置";
	GATHERER_TEXT_RADIUS	       	 	= "角度";
	GATHERER_TEXT_HIDEICON			= "隐藏菜单按钮";

	GATHERER_SHOWONMOUSE_TIP		= "鼠标移过图标时显示菜单.";
	GATHERER_SHOWONCLICK_TIP		= "左键点击图标时显示菜单.";
	GATHERER_HIDEONMOUSE_TIP		= "鼠标移开时隐藏菜单.";
	GATHERER_HIDEONCLICK_TIP		= "左键点击图标隐藏菜单.";
	GATHERER_HIDEONBUTTON_TIP		= "选择后隐藏菜单.";
	GATHERER_HIDEICON_TIP			= "隐藏小地图图标.";
	GATHERER_TEXT_POSITION_TIP  		= "调节图标在小地图边框的位置.";
	GATHERER_TEXT_RADIUS_TIP  		= "调节图标相对小地图中心的位置.";

	GATHERER_TAB_MENU_TEXT_TIP		= "打开快捷菜单选项.";

	-- Globals Options
	GATHERER_TAB_GLOBALS_TEXT		= "全局";
	
	
	GATHERER_TEXT_RAREORE          		= "同时显示稀有矿物/草药";
	GATHERER_TEXT_NO_MINICONDIST		= "最小距离下无图标";
	GATHERER_TEXT_MAPMINDER			= "激活地图提醒器";
	GATHERER_TEXT_MAPMINDER_VALUE		= "地图提醒器计时器";
	GATHERER_TEXT_FADEPERC			= "渐隐百分比";
	GATHERER_TEXT_FADEDIST			= "渐隐距离";
	GATHERER_TEXT_THEME			= "主题: ";
	GATHERER_TEXT_MINIIDIST			= "最小图标距离";
	GATHERER_TEXT_NUMBER			= "小标记数量";
	GATHERER_TEXT_MAXDIST			= "小标记距离";
	GATHERER_TEXT_HIDEMININOTES		= "隐藏小标记";
	GATHERER_TEXT_TOGGLEWORLDNOTES		= "长世界地图标记名称";	
	GATHERER_TEXT_WMICONSIZEEB		= "世界地图图标尺寸";
	GATHERER_TEXT_WMICONALPHAEB		= "世界地图图标透明度";
	GATHERER_TEXT_ALPHAUNDER_MINICON	= "最小距离下透明度";
	
	GATHERER_MAPMINDER_TIP			= "激活/反激活地图指示器.";
	GATHERER_TEXT_MAPMINDER_TIP		= "调整地图指示器计时器.";
	GATHERER_THEME_TIP			= "设置图标主题.";

	GATHERER_NOMINIICONDIST_TIP		= "最小距离下不显示小地图图标.";	
	GATHERER_RAREORE_TIP			= "同时显示普通/稀有矿物/草药.";
	GATHERER_TEXT_FADEPERC_TIP		= "调节图标渐隐百分比." ;
	GATHERER_TEXT_FADEDIST_TIP		= "调节图标渐隐距离.";
	GATHERER_TEXT_MINIIDIST_TIP		= "调节物品图标出现的最小距离.";
	GATHERER_TEXT_NUMBER_TIP		= "调节小地图显示的小标记数量.";

	GATHERER_TEXT_MAXDIST_TIP		= "当寻找显示在小地图上的小标记时调整最大距离以便查看.";
	GATHERER_HIDEMININOTES_TIP		= "不在小地图上显示小标记.";
	GATHERER_TOGGLEWORLDNOTES_TIP		= "切换世界地图上物品名称的长短.";
	GATHERER_WMICONSIZEEB_TIP		= "设置世界地图图标尺寸.";

	GATHERER_WMICONALPHAEB_TIP		= "设置世界地图图标透明度.";
	GATHERER_TEXT_ALPHAUNDER_MINICON_TIP 	= "设置最小距离下小标记透明度";
	
	GATHERER_TAB_GLOBALS_TEXT_TIP		= "打开全局选项.";
	
	-- Filters Options
	GATHERER_TAB_FILTERS_TEXT 		= "过滤器";

	GATHERER_TEXT_FILTER_HERBS		= "草药: ";
	GATHERER_TEXT_FILTER_ORE		= "矿物: ";
	GATHERER_TEXT_FILTER_TREASURE		= "宝箱: ";
	GATHERER_TEXT_LINKRECORD        	= "过滤纪录"
	GATHERER_TEXT_WMFILTERS			= "世界地图过滤器";
	GATHERER_TEXT_DISABLEWMFIX		= "启用 显示/隐藏 按钮";

	GATHERER_HERBSKLEB_TIP			= "设置显示采集草药需要的最低技能.";
	GATHERER_ORESKLEB_TIP			= "设置显示采矿需要的最低技能.";
	GATHERER_HERBDDM_TIP			= "过滤显示的草药.";
	GATHERER_OREDDM_TIP			= "过滤显示的矿物.";
	GATHERER_TREASUREDDM_TIP		= "过滤显示的财宝.";
	GATHERER_TEXT_LINKRECORD_TIP		= "链接记录以选择过滤器.";
	GATHERER_TEXT_WMFILTERS_TIP		= "开启/关闭世界地图过滤器.";
	GATHERER_TEXT_DISABLEWMFIX_TIP		= "启用世界地图 显示/隐藏 按钮来显示物品";

	GATHERER_TAB_FILTERS_TEXT_TIP		= "打开过滤器选项."

	-- Zone Rematch Dialog
	GATHERER_TEXT_REMATCH_TITLE		= "地区重匹配";

	GATHERER_TEXT_APPLY_REMATCH		= "接受地区重匹配:";
	GATHERER_TEXT_SRCZONE_MISSING		= "源区域未选择.";
	GATHERER_TEXT_DESTZONE_MISSING		= "目标区域未选择.";
	GATHERER_TEXT_FIXITEMS			= "修正物品名称";
	GATHERER_TEXT_LASTMATCH			= "最后匹配: ";
	GATHERER_TEXT_LASTMATCH_NONE		= "无";
	GATHERER_TEXT_CONFIRM_REMATCH		= "确定地区重匹配 (警告, 这将修改数据)";

	GATHERER_ZM_FIXITEM_TIP			= "修正物品名称, 仅本地化版本.";
	GATHERER_ZM_SRCDDM_TIP			= "设置源地图次序.";
	GATHERER_ZM_DESTDDM_TIP			= "设置目标地图次序.";

	-- Report Dialog
	GATHERER_TAB_REPORT_TIP			= "地区节点报告.";
	
	GATHERER_REPORT_LOCATION		= "位置:";
	GATHERER_REPORT_COL_TYPE		= "类型";
	GATHERER_REPORT_COL_NAME		= "可采集";
	GATHERER_REPORT_COL_PTYPE		= "% 类型";
	GATHERER_REPORT_COL_PDENSITY		= "% 密度";
	
	GATHERER_REPORT_SUMMARY			= "合计: # 采集于 & 节点";

	-- Search Dialog
	GATHERER_TAB_SEARCH_TIP			= "搜索地区包含的指定项目.";
	
	GATHERER_SEARCH_LOCATION		= "项目:";
	GATHERER_SEARCH_COL_CONTINENT		= "大陆";
	GATHERER_SEARCH_COL_ZONE		= "地区";
	GATHERER_SEARCH_COL_PNODE		= "% 节点";

	GATHERER_SEARCH_COL_PDENSITY		= "% 密度";

	GATHERER_SEARCH_SUMMARY			= "发现: # 节点在 & 地区";
	
	-- World Map
	GATHERER_FILTERDM_TEXT			= "过滤器"
	GATHERER_FILTERDM_TIP			= "更改物品过滤条件."

	-- Bindings
	BINDING_HEADER_GATHERER_BINDINGS_HEADER	= "Gatherer";

	BINDING_NAME_GATHERER_BINDING_QUICKMENU	= "显示/隐藏 Gatherer 快捷菜单";
	BINDING_NAME_GATHERER_BINDING_OPTIONS	= "显示/隐藏 Gatherer 选项";
	BINDING_NAME_GATHERER_BINDING_REPORT	= "显示/隐藏 Gatherer 报告";
	BINDING_NAME_GATHERER_BINDING_SEARCH	= "显示/隐藏 Gatherer 搜索";

	-- MyAddons Help Pages
	GathererHelp = {};
	GathererHelp[1] ="|cffff7f3f目录|r\n\n 1 - 快捷菜单\n 2 - 小地图\n 3 - 世界地图\n 4 - 选项对话框\n 5 - 地区重匹配对话框\n 6 - 报告对话框\n 7 - 搜索对话框\n 8 - 节点编辑器\n";
	GathererHelp[2] ="|cffff7f3f快速菜单:|r\n\n提供了快速调整基本显示过滤 (小地图、世界地图、草药、矿物以及财宝)以及统计对话框 (请查看报告及搜索功能的相关帮助页面)的功能。\n\n点击菜单标题弹出配置对话框。\n";
	GathererHelp[3] ="|cffff7f3f小地图:|r\n\n小地图将显示最近的采集图标 (根据过滤条件、显示采集数目、最大距离等配置，最多显示25个)。\n\n鼠标移过这些图标时、将显示此采集项目的名称、成功采集次数以及与当前所处位置的距离(直线抵达的距离以及常规跑步速度折算的时间)。\n";
	GathererHelp[4] ="|cffff7f3f世界地图:|r\n\n世界地图可以显示所选地区的所有采集项目(根据选择的过滤条件等，最多显示400个)。\n\n因为显示大量的采集项目会在打开地图时产生延时，所以默认情况下这些项目时隐藏的。你可以点击世界地图左下角的 显示物品 按钮来显示他们（过滤选项中有一项可以打开这个限制）。\n\n当你 ALT+鼠标右键 点击一个世界地图上的项目时，也会调出节点编辑器。你可以用它来对数据库做一些基本的编辑。\n";
	GathererHelp[5] ="|cffff7f3f选项对话框:|r\n\n选项对话框分为三个标签: 过滤、全局、快速菜单\n\n|cffff7f3f过滤标签|r 包含过滤相关选项（包含世界地图显示/隐藏按钮的控制）。\n\n|cffff7f3f全局标签|r 包含Gatherer核心功能相关的选项（绝大部分选项同样可以通过命令行实现）。\n\n|cffff7f3f快捷菜单|r 控制小地图图标弹出的快捷菜单的行为（包括图标的位置及显示与否）。\n";
	GathererHelp[6] ="|cffff7f3f地区重匹配对话框:|r\n\n此功能主要用于一些本地化在官方推出客户端时没有完全完成的发布版本。\n\n当地区名字变化时，由于地区目录是由名称的字母顺序决定的，所以同样会产生变化。\n这一机制提供了一个转换表，根据WoW的版本及客户端语言（修正项目钩选框允许同时修正修改过的项目名称），采用选择一个源地区（比如上一个）与一个目的地区顺序（当前顺序）来修正这个目录。\n\n也允许对数据库的全局操作，例如改变它的格式，此操作作用于任意选择的资源和目的地地区次序，对于 未-本地化 的客户端则必须使用一个识别矩阵（比如先同的来源和目的地次序）。\n\n|cffff7f3f数据库被改变，所以保存一个你数据的备份，以防万一。|r\n";
	GathererHelp[7] ="|cffff7f3f报告对话框:|r\n\n在这个对话框中，你可以查看你在各个地区（每次只能查看一个）的采集结果。\n\n你可以点击不同的标头根据列内容进行排序（也可以逆向）。\n\n很多标头已经可以说明问题了，下面的项目稍做解释：\n|cffff7f3f种类 %:|r\n  在同一地区同类采集资源中占的数量的百分比。\n\n|cffff7f3f密度 %:|r\n  同一采集项目占世界范围内此项目的百分比。\n";
	GathererHelp[8] ="|cffff7f3f搜索对话框:|r\n\n在此对话框中，你可以指定一个采集对象并显示在不同地区你对此项目的采集记录。\n\n你可以点击标头来根据列内容对列进行排序（或逆序）。\n\n大部分标头名称已经足够说明其内容，除了下列这些：\n|cffff7f3f节点 %:|r\n  指定资源占选定地区所有资源的百分比。\n\n|cffff7f3f密度 %:|r\n  制定资源占世界总资源量的百分比。\n";
	GathererHelp[9] ="|cffff7f3f节点编辑器:|r\n\n在此对话框中，你可以（右键点击世界地图上的节点）改变节点的名称，它的图标、标记其为错误产生的或是删除它。\n\n|cffff7f3f标记错误|r 仅作用于选定的节点。\n\n|cffff7f3f删除|r 使用范围（默认为节点，已避免误操作）可以扩展为地区、大陆以及世界范围。\n\n|cffff7f3f接受|r 使用新的节点名称（写好新名字后，记得按确认）和/或图标\n与删除按钮一样，这个操作也有节点、地区、大陆乃至世界的范围选择。\n";
	GathererHelp.currentPage=1;

	GathererDetails["description"] = "显示采集到的草药/矿物/财宝的位置";
end

