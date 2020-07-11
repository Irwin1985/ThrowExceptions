Set Procedure To "ThrowEx.prg" additive
Do ThrowEx

#define CRLF Chr(13) + Chr(10)

Try
	Sumar(10, 15)
Catch to loEx
	MessageBox(loEx.Message + CRLF + Alltrim(Str(loEx.ErrorNo)) + CRLF + loEx.Details, 16, "Atención")
EndTry

&& ======================================================================== &&
&& Function Sumar
&& ======================================================================== &&
Function Sumar(a, b)
	If a < b
		=NewException("a no puede ser menor que b", 1001, "Tiene que verificar que a sea siempre mayor que b.")
	Else
		Return a + b
	endif
EndFunc