include(FindPythonInterp)

# if python module is available for standart python interpreter,
# set PYTHON_<UPPER_MODULE_NAME>_FOUND to "YES"
function(check_python_module module)
    if(PYTHONINTERP_FOUND)
        execute_process(COMMAND "${PYTHON_EXECUTABLE}" "-c" "import ${module}"
            RESULT_VARIABLE exit_status)
        if(${exit_status} EQUAL 0)
            string(TOUPPER ${module} MODULE)
            set(PYTHON_${MODULE}_FOUND "YES")
        endif(${exit_status} EQUAL 0)
    endif(PYTHONINTERP_FOUND)
endfunction()

