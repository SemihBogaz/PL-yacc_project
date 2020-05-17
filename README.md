# PLlex-yacc
Group Members: 

Aidin Karimzadeh[20185156018]

Rashad Aliyev[20160807003]  

Semih Bogaz[20150807006] 

Name of Programming Language:TrigoSAR


in version 1.1.0 all bugs are fixed 


In this prat of the project, we had created a lexical analyzer for trigonometric function based language.
User can do such things:

sin() <- 90 //with is taking sinus func of 90 degree

//or 

sin()<-PI //for same operation

!ident_name ->2*PI // identifier declaretion, assignment to a identifier and multiplication operation

2 == 2 // to check equality



Grammar in BNF Form:

    <expr>::= <statement> + <statement> + <statement> | <statement>
  

	  <statement>::= !<identifier_name> |  <assign>   | <input_type>  | <function_type>
  

	 <function_type>::=<tri_function> | < inverse_tri_function >


	<tri_function>::=<sin stmt> | <cos stmt> | <tan stmt> | <cot stmt>
  

	 <inverse_tri_function> ::= <arcsin stmt> | <arccos stmt> | <arctan stmt> | <arccot stmt>
  

	 <identifier_name>::=<string> + < number> | <string>
  

	 <input_type>::= <integer> | <String> | <float>
  

	 <integer>::=0 | 1 | … | 9
  

	 <String> ::= a | b | … | z | A | B | … | Z
  

	 <float> ::=  <integer> + “.” + <integer> 
  

	 <Sin stmt>::=<Sin clause> + < input_type >
  
  
 	 <Sin clause>::=  sin() + < input_type >
  

	 <Cos stmt>::=< Cos clause>< integer >
  
  
	 <Cos clause>::=  cos() + < input_type >
  

	 <Tan stmt>::=< Tan clause>< integer >
  
  
	 <Tan clause>::=  tan() + < input_type >
  

	 <Cot stmt>::=< Cot clause>< integer >
  
  
	 <Cot clause>::=  cot() + < input_type >
  

	 <ArcSin stmt>::=< ArcSin clause>< integer >
  
  
	 <ArcSin clause>::=  ArcSin () + < input_type >
  

	 <ArcCos stmt>::=< ArcCos clause>< integer >
  
  
	 <ArcCos clause>::= ArcCos () + < input_type >


	 <ArcTan stmt>::=< ArcTan clause>< integer >
  
  
	 <ArcTan clause>::=  ArcTan () + < input_type >


	 <ArcCot stmt>::=< ArcCot clause>< integer >
  
  
	 <ArcCot clause>::=  ArcCot () + < input_type >

