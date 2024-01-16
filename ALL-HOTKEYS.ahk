#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#Include %A_ScriptDir%

#InstallKeybdHook

tabletMode=0
changingSize=0
unitySearch = 1

; GENERIC ------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\generics.ahk

; CHROME ------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\chrome.ahk

; FL STUDIO ------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\flstudio.ahk

; UNITY----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\unity.ahk

; ILLUSTRATOR----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\illustrator.ahk

; ADOBE XD----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\adobexd.ahk

; AFTER EFFECTS----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\aftereffects.ahk

; PHOTOSHOP----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\photoshop.ahk

; INDESIGN----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\indesign.ahk

; BLENDER----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\blender.ahk

; FIGMA----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\figma.ahk

; ZBRUSH----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\zbrush.ahk

; HOUDINI----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\houdini.ahk

; PLASTICITY----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\plasticity.ahk

; OTHERS----------------------------------------------------------------------------
#Include C:\Users\pinoa\Documents\scripts\ahk\others.ahk

