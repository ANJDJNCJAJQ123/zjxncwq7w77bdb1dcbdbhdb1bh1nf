@echo off
Setlocal EnableDelayedExpansion
Set _RNDLength=2
Set _Alphanumeric=0123456789ABCDEF
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%

SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!

If !_count! lss %_RNDLength% goto _loop

@echo off
@echo ION HWID CHANGER
@echo ----------------------------------------------------------------------------------------------------------------
@echo ----------------------------------------------------------------------------------------------------------------
cd "C:\IonAutoSpoof\"
@echo ----------------------------------------------------------------------------------------------------------------
@echo ----------------------------------------------------------------------------------------------------------------
@echo CHANGING ALL HWIDs
@echo CS will be changed to %_RndAlphaNum%%_RndAlphaNum%
@echo BS will be changed to %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%
@echo PSN will be changed to %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%
@echo SS will be changed to %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%
@echo SU will be changed Automatically

@echo Press any key to change all your HWIDs: 
cd "C:\IonAutoSpoof\"
AMIDEWINx64.EXE /CS %_RndAlphaNum%%_RndAlphaNum% > nul
AMIDEWINx64.EXE /BS %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum% > nul
AMIDEWINx64.EXE /PSN %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum% > nul
AMIDEWINx64.EXE /SS %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum% > nul
AMIDEWINx64.EXE /SU AUTO > nul
@echo CS successfully changed to %_RndAlphaNum%%_RndAlphaNum%
@echo BS successfully changed to %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%
@echo PSN successfully changed to %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%
@echo SS successfully changed to %_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%%_RndAlphaNum%
@echo SU changed Automatically

@echo ALL HWID IDs Have Been Changed 
