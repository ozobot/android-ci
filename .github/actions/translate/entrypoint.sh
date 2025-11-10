#!/bin/bash

SOURCE_FILE="${SOURCE_FILE:?"SOURCE_FILE must be specified"}"
GEMINI_API_KEY="${GEMINI_API_KEY:?"GEMINI_API_KEY must be specified"}"

export GEMINI_API_KEY

gemini -o text --approval-mode=auto_edit --allowed-tools=run_shell_command "I need to translate strings from this file '$SOURCE_FILE' which are in english to all languages available to the Android platform. These strings must be translated with formal language and \"you\" is referring to \"them\" or \"they\" as not to assume the gender of the person. Strings marked with translatable=\"false\" can be completely skipped and not even copied to other files, otherwise please translate each string one by one with to the best of your abilities. Additionally you can use context to common abbreviations in translating the string. Some parameters of the string might contain more context in which the string is used, so translate accordingly."