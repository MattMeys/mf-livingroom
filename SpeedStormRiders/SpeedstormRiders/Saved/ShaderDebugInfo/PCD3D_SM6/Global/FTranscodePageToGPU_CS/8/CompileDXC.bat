@ECHO OFF
SET DXC="E:\Epic Games 002\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "E:\Epic Games 002\UE_5.4\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 -Zpr -O3 -WX -auto-binding-space 0 -Wno-parentheses-equality -disable-lifetime-markers -T cs_6_6 -E TranscodePageToGPU -Fc NaniteTranscode.d3dasm -Fo NaniteTranscode.dxil NaniteTranscode.usf
:END
PAUSE
