project "ImGuiNodeEditor"
    kind "Staticlib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs
    {
        "%{wks.location}/Eagle/vendor/imgui",
        "."
    }

    files
    {
        "crude_json.h",
        "imgui_bezier_math.h",
        "imgui_canvas.h",
        "imgui_extra_math.h",
        "imgui_node_editor.h",
        "imgui_node_editor_internal.h",
        "crude_json.cpp",
        "imgui_canvas.cpp",
        "imgui_node_editor.cpp",
        "imgui_node_editor_api.cpp",
        "examples/blueprints-example/utilities/builders.h",
        "examples/blueprints-example/utilities/drawing.h",
        "examples/blueprints-example/utilities/widgets.h",
        "examples/blueprints-example/utilities/builders.cpp",
        "examples/blueprints-example/utilities/drawing.cpp",
        "examples/blueprints-example/utilities/widgets.cpp",
    }

    filter "system:windows"
        systemversion "latest"

    filter { "system:windows", "configurations:Debug" }
        runtime "Debug"

    filter { "system:windows", "configurations:ReleaseWithDebug" }
        runtime "Release"
        optimize "Speed"

    filter { "system:windows", "configurations:Release" }
        runtime "Release"
        optimize "Speed"
