601,100
602,"Merch Article Week Staging - Data Load Master"
562,"NULL"
586,
585,
564,
565,"x4iqrwFQV0wUv0JGT<wBjwyxazQPFOX?RiAJFnr4UDz;p?j:A[`t>L@[E1DJS]xF52CNfhDsjep]ErEcfsID9CpLh\7LNg[:T5s4=JMDbUSwKvw<Lu=QLG6^JrfXe3JFVOAbsfnAT?v;aRwtjzoIwoL^0RiS7f14]r6lF3x4a9ny2h`SZRonKly[`Jq8@G6esN0rU^5@"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,
568,""""
570,
571,
569,0
592,0
599,1000
560,0
561,0
590,0
637,0
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,39

#****Begin: Generated Statements***
#****End: Generated Statements****


CurrentWeek = CELLGETS('Time Control', 'Actual', 'Current Merch Week');
WeeksToReload = CELLGETN('Time Control', 'Actual', 'Merch Weeks to Reload');

StartWeek = CurrentWeek;
EndWeek = CurrentWeek;

Counter = 1;
WHILE(Counter <= WeeksToReload);

StartWeek = ATTRS('Time Weekly', StartWeek, 'Prior');

Counter = Counter + 1;
END;

StartWeek = SUBST(StartWeek, 1, 6);
EndWeek = SUBST(EndWeek, 1, 6);


EXECUTEPROCESS('Merch Article Week Staging - Load Inventory for One Week',
'pStartWeek', StartWeek,
'pEndWeek', EndWeek);

EXECUTEPROCESS('Merch Article Week Staging - Load On Order for One Week',
'pStartWeek', StartWeek,
'pEndWeek', EndWeek);

EXECUTEPROCESS('Merch Article Week Staging - Load Receipts for One Week',
'pStartWeek', StartWeek,
'pEndWeek', EndWeek);

EXECUTEPROCESS('Merch Article Week Staging - Load Sales and Cost Data',
'pStartWeek', StartWeek,
'pEndWeek', EndWeek);

#Test

573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,3

#****Begin: Generated Statements***
#****End: Generated Statements****
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,0
900,
901,
902,
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
