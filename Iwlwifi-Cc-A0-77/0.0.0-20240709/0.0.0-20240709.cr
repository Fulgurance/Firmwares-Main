class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/lib/firmware")

        copyFile(   "#{buildDirectoryPath}/iwlwifi-cc-a0-77.ucode",
                    "#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/lib/firmware/iwlwifi-cc-a0-77.ucode")
    end

end
