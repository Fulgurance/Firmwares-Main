class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}/#{Ism.settings.rootPath}/lib/firmware")

        moveFile(   path:       "#{buildDirectoryPath}/intel-ucode",
                    newPath:    "#{builtSoftwareDirectoryPath}/#{Ism.settings.rootPath}/lib/firmware/intel-ucode")
    end

    def install
        super

        runDepmodCommand
    end

end
