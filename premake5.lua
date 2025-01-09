project "SDL"
    kind "StaticLib"
    language "C"

    targetdir ("bin/" .. Outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. Outputdir .. "/%{prj.name}")

    files {
        "src/**.c",
        "src/**.h",
        "include/**.h"
    }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        optimize "Off"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
        symbols "Off"