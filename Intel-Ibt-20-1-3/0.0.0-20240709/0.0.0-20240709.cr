class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/lib/firmware/intel")

        copyFile(   "#{buildDirectoryPath}/intel/ibt-20-1-3.sfi",
                    "#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/lib/firmware/intel/ibt-20-1-3.sfi")
    end

end
