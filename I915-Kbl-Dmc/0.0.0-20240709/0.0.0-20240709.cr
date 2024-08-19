class Target < ISM::Software

    def prepareInstallation
        super

        moveFile(   path:       "#{buildDirectoryPath}/lib",
                    newPath:    "#{builtSoftwareDirectoryPath}/#{Ism.settings.rootPath}/lib")
    end

    def install
        super

        runDepmodCommand
    end

end
