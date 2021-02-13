//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
#define TAGS(X) tSF_MissionTags = X ;
//
//
// Mission tags
TAGS(["SPECOPS"])

// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"1986 год, в последнее время отношения между США и Кубой вновь накалились. На одном из островов карибского бассейна разведка США обнаружила активность кубинских ВМФ. Было установлено, что около острова Porto загорелся и потерпел крушение контейнеровоз Santa Castaneda, вышедший из Гаваны днём ранее. Мы связываем активные действия кубинцев с перевозившемся на корабле грузом. На место крушения прибыли несколько вертолётов и пехота кубинских ВС.<br /><br />Мы обеспокоены такой реакцией и высылаем отряд SEALs для захвата корабля и исследования груза. Разведка точно не знает, что находится в корабле, но предполагает наличие ракетного вооружения, недавного переданного Кубе Союзом. В данный момент потерпевший крушение корабль сел на мель на острове Porto."
END

TOPIC("А. Враждебные силы:")
"Взвод или больше пехоты ВС Республики Кубы<br />Гарнизон острова Porto"
END

TOPIC("Б. Дружественные силы:")
"Navy SEALs:<br />1'6 - 2 чел.<br />1'1 - 9 чел.<br />1'2 - 9 чел.<br />"
END

TOPIC("II. Задание:")
"1. Найти CV Santa Castaneda<br />2. Обнаружить и уничтожить груз<br />3. Эвакуироваться на USS Khe Sanh<br />"
END

TOPIC("III. Выполнение:")
"Ваш отряд был скрытно переброшен на остров с подводной лодки и находится на северо-востоке острова. Предполагаемое место крушения корабля находится на юго-западе. Около места высадки разведка обнаружила командный пункт гарнизона и бункер у дороги. Кубинцы оставили там несколько человек для охраны. В городе противника нет. <br /><br />К западу от населённого пункта находится наблюдательный пункт, с которого возможно есть видимость на корабль.<br />Основные силы противника находятся на берегу и занимаются спасением груза. <br /><br />После нахождения груза и его уничтожения, вам станет доступна эвакуация с помощью вертолётов ВМФ США. Точка эвакуации - десатный корабль Khe Sanh ВМФ США"
END

TOPIC("IV. Поддержка:")
"LHD Khe Sanh<br />MH-60 - Bones-1-1<br />MH-60 - Bones-1-2"
END

TOPIC("V. Сигналы:")
"PL NET 50 Mhz<br />SUP NET 51 Mhz<br /><br />1'1 - SR CH 1<br />1'2 - SR CH 2<br />"
END

TOPIC("VI. Замечания:")
"Подрывные заряды находятся в рюкзаках у гренадёров и стрелков. При их потере не забудьте взять заряды. Вертолёты доступны только после уничтожения цели. "
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Прямое участие GSO не требуется."
END
};

ADD_TOPICS