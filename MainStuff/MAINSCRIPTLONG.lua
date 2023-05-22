--MAINSCRIPT--
local Version = "DBV1"
local ashversioncheck

function ASHCHECKVERSION()
    if ashversioncheck == Version then
        print("Correct Version")
    else
        print("Incorrect Version")
    end
end

if isfile("/ASHV1/Comfirm.ASHF") then
    local ashversioncheck = readfile("/ASHV1/Comfirm.ASHF")
    print("You Have Folder Already Loading")
else
    local ashversioncheck = readfile("/ASHV1/Comfirm.ASHF")
    print("You Dont Have the Folder Making In Workspace It Will Be Called ASHV1")
    makefolder("/ASHV1")
    writefile("/ASHV1/Comfirm.ASHF", Version)
end
