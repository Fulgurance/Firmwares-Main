class Target < ISM::Software

    def prepareInstallation
        super

        makeDirectory("#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/lib/firmware/i915")

        copyFile(   "#{buildDirectoryPath}/i915/kbl_dmc_ver1_04.bin",
                    "#{builtSoftwareDirectoryPath}#{Ism.settings.rootPath}/lib/firmware/i915/kbl_dmc_ver1_04.bin")
    end

end
