var exec = require('cordova/exec');

module.exports = {
	    /**AsReaderDevice**/
    getSDKVersion: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getSDKVersion", []);
    },
    setTriggerModeDefault: function(listener, isDefault){
        exec(listener, null, "AsReaderDockPlugin", "setTriggerModeDefault", [isDefault]);
    },
    getRegion: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getRegion", []);
    },
    getReaderInformation: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getReaderInformation", []);
    },
    getReaderInfo: function(listener, infoType){
        exec(listener, null, "AsReaderDockPlugin", "getReaderInfo", [infoType]);
    },
    getCurrentBattery: function(listener, battery){
        exec(listener, null, "AsReaderDockPlugin", "getCurrentBattery", [battery]);
    },
    setBeepAndVibrationAndIlluminationAndLed: function(listener, beepOn, vibrationOn, illuminationOn, led){
        exec(listener, null, "AsReaderDockPlugin", "setBeepAndVibrationAndIlluminationAndLed", [beepOn, vibrationOn, illuminationOn, led]);
    },
    setReaderPowerAndBuzzerAndVibrationAndLedAndIlluminationAndMode: function(listener, isOn, isBeep, isVib, isLed, isIllu, nDeviceType){
        exec(listener, null, "AsReaderDockPlugin", "setReaderPowerAndBuzzerAndVibrationAndLedAndIlluminationAndMode", [isOn, isBeep, isVib, isLed, isIllu, nDeviceType]);
    },
    setReaderPowerAndBuzzerAndVibrationAndLedAndIlluminationAndConnectedBeepAndMode: function(listener, isOn, isBeep, isVib, isLed, isIllu, isConnectedBeep, nDeviceType){
        exec(listener, null, "AsReaderDockPlugin", "setReaderPowerAndBuzzerAndVibrationAndLedAndIlluminationAndConnectedBeepAndMode", [isOn, isBeep, isVib, isLed, isIllu, isConnectedBeep, nDeviceType]);
    },
    setReaderProgMode: function(listener, mode){
        exec(listener, null, "AsReaderDockPlugin", "setReaderProgMode", [mode]);
    },
    setTagCountAndScanTimeAndCycle: function(listener, mtnu, mtime, repeatCycle){
        exec(listener, null, "AsReaderDockPlugin", "setTagCountAndScanTimeAndCycle", [mtnu, mtime, repeatCycle]);
    },
    setChargingControl: function(success, error, isOn) {
        exec(success, error, "AsReaderDockPlugin", "setChargingControl", [isOn]);
    },
    /**AsReaderInfo**/
    getAsReaderInfo: function(success, error){
        exec(success, error, "AsReaderDockPlugin", "getAsReaderInfo", []);
    },
    /**AsReaderBarcodeDevice**/
    barcodeDeviceStartScan: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "barcodeDeviceStartScan", []);
    },
    barcodeDeviceStopScan: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "barcodeDeviceStopScan", []);
    },
    doFactoryReset: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "doFactoryReset", []);
    },
    setSendBarcodeSettingData: function(listener, sendData){
        exec(listener, null, "AsReaderDockPlugin", "setSendBarcodeSettingData", [sendData]);
    },
    setSymbologyPrefix: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setSymbologyPrefix", []);
    },
    /**AsReaderRFIDDevice**/
    rfidDeviceStartScan: function(listener, nTagCount, nScanTime, nCycle){
        exec(listener, null, "AsReaderDockPlugin", "rfidDeviceStartScan", [nTagCount, nScanTime, nCycle]);
    },
    rfidDeviceStopScan: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "rfidDeviceStopScan", []);
    },
    rfidDeviceStartReadTagsAndRssi: function(listener, maxTags, maxTime, repeatCycle){
        exec(listener, null, "AsReaderDockPlugin", "rfidDeviceStartReadTagsAndRssi", [maxTags, maxTime, repeatCycle]);
    },
    rfidDeviceStartReadTagAndTid: function(listener, maxTags, maxTime, repeatCycle){
        exec(listener, null, "AsReaderDockPlugin", "rfidDeviceStartReadTagAndTid", [maxTags, maxTime, repeatCycle]);
    },
    getSelectParameter: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getSelectParameter", []);
    },
    getSelectParameterWithTarget: function(listener, target, action, memoryBank, pointer, length, truncate, mask){
        exec(listener, null, "AsReaderDockPlugin", "getSelectParameterWithTarget", [target, action, memoryBank, pointer, length, truncate, mask]);
    },
    getChannel: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getChannel", []);
    },
    setReadTime: function(listener, ReadTime, IdleTime){
        exec(listener, null, "AsReaderDockPlugin", "setReadTime", [ReadTime, IdleTime]);
    },
    setChannel: function(listener, channel, channelOffset){
        exec(listener, null, "AsReaderDockPlugin", "setChannel", [channel, channelOffset]);
    },
    getFhLbtParameter: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getFhLbtParameter", []);
    },
    setFhLbtParameter: function(listener, ReadTime, IdleTime, carrierSenseTime, targetRFPowerLevel, frequencyHopping, listenBeforeTalk, continuousWave){
        exec(listener, null, "AsReaderDockPlugin", "setFhLbtParameter", [ReadTime, IdleTime, carrierSenseTime, targetRFPowerLevel, frequencyHopping, listenBeforeTalk, continuousWave]);
    },
    getOutputPowerLevel: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getOutputPowerLevel", []);
    },
    setOutputPowerLevel: function(listener, powerLevel){
        exec(listener, null, "AsReaderDockPlugin", "setOutputPowerLevel", [powerLevel]);
    },
    writeTagMemory: function(listener, accessPassword, epc, memoryBank, startAddress, dataToWrite){
        exec(listener, null, "AsReaderDockPlugin", "writeTagMemory", [accessPassword, epc, memoryBank, startAddress, dataToWrite]);
    },
    killTag: function(listener, password, targetTag){
        exec(listener, null, "AsReaderDockPlugin", "killTag", [password, targetTag]);
    },
    lockTagMemory: function(listener, accessPassword, targetEpc, targetMemory, action){
        exec(listener, null, "AsReaderDockPlugin", "lockTagMemory", [accessPassword, targetEpc, targetMemory, action]);
    },
    getFrequencyHoppingTable: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getFrequencyHoppingTable", []);
    },
    setFrequencyHoppingTableSize: function(listener, tableSize, channels){
        exec(listener, null, "AsReaderDockPlugin", "setFrequencyHoppingTableSize", [tableSize, channels]);
    },
    getRssi: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getRssi", []);
    },
    getSession: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getSession", []);
    },
    setSession: function(listener, session){
        exec(listener, null, "AsReaderDockPlugin", "setSession", [session]);
    },
    getAnticollision: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getAnticollision", []);
    },
    setAnticollision: function(listener, mode, counter){
        exec(listener, null, "AsReaderDockPlugin", "setAnticollision", [mode, counter]);
    },
    updateRegistry: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "updateRegistry", []);
    },
    setStopTagNum: function(listener, maxTags, maxTime, repeatCycle){
        exec(listener, null, "AsReaderDockPlugin", "setStopTagNum", [maxTags, maxTime, repeatCycle]);
    },
    getRFIDModuleVersion: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getRFIDModuleVersion", []);
    },
    setHoppingOnOff: function(listener, isOn){
        exec(listener, null, "AsReaderDockPlugin", "setHoppingOnOff", [isOn]);
    },
    writeTagMemoryWithEPC: function(listener, epc, dataToWrite){
        exec(listener, null, "AsReaderDockPlugin", "writeTagMemoryWithEPC", [epc, dataToWrite]);
    },
    getQueryParameter: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getQueryParameter", []);
    },
    setReaderProgMode: function(listener, mode){
        exec(listener, null, "AsReaderDockPlugin", "setReaderProgMode", [mode]);
    },
    readTag: function(listener, accessPassword, epc, memoryBank, startAddress, dataLength){
        exec(listener, null, "AsReaderDockPlugin", "readTag", [accessPassword, epc, memoryBank, startAddress, dataLength]);
    },
    setQueryParam: function(listener, divideRatio, m, trext, selection, session, target, qValue){
        exec(listener, null, "AsReaderDockPlugin", "setQueryParam", [divideRatio, m, trext, selection, session, target, qValue]);
    },
    setRfCw: function(listener, on){
        exec(listener, null, "AsReaderDockPlugin", "setRfCw", [on]);
    },
    getModulation: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getModulation", []);
    },
    blockEraseTagMemory: function(listener, accessPassword, epc, memoryBank, startAddress, dataLength){
        exec(listener, null, "AsReaderDockPlugin", "blockEraseTagMemory", [accessPassword, epc, memoryBank, startAddress, dataLength]);
    },
    genericTransport: function(listener, accessPassword, epc, transmissionState, rm, size, genericCommand){
        exec(listener, null, "AsReaderDockPlugin", "genericTransport", [accessPassword, epc, transmissionState, rm, size, genericCommand]);
    },
    getTemperature: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getTemperature", []);
    },
    getRegistryItem: function(listener, registryItem){
        exec(listener, null, "AsReaderDockPlugin", "getRegistryItem", [registryItem]);
    },
    setOptimumFrequencyHoppingTable: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setOptimumFrequencyHoppingTable", []);
    },
    setFrequencyHoppingMode: function(listener, mode){
        exec(listener, null, "AsReaderDockPlugin", "setFrequencyHoppingMode", [mode]);
    },
    getFrequencyHoppingMode: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getFrequencyHoppingMode", []);
    },
    getStopCondition: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "getStopCondition", []);
    },
    setSmartHoppingOnOff: function(listener, isOn){
        exec(listener, null, "AsReaderDockPlugin", "setSmartHoppingOnOff", [isOn]);
    },
//    setRegion: function(listener, region){
//        exec(listener, null, "AsReaderDockPlugin", "setRegion", [region]);
//    },
    /**AsReaderNFCDevice**/
    nfcDeviceStartScan: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "nfcDeviceStartScan", []);
    },
    nfcDeviceStopScan: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "nfcDeviceStopScan", []);
    },
    nfcSendData: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "nfcSendData", []);
    },
    setPluggedListener: function(listener, inventoryTime){
        exec(listener, null, "AsReaderDockPlugin", "setPluggedListener", [inventoryTime]);
    },
    /**AsReaderDeviceProtocol**/
    setPluggedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setPluggedListener", []);
    },
    setBatteryReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setBatteryReceivedListener", []);
    },
    setReaderConnectedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setReaderConnectedListener", []);
    },
    setResponsePowerOnOffListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setResponsePowerOnOffListener", []);
    },
    setReleasedTriggerButtonListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setReleasedTriggerButtonListener", []);
    },
    setPushedTriggerButtonListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setPushedTriggerButtonListener", []);
    },
    setOnAsReaderTriggerKeyEventStatusListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setOnAsReaderTriggerKeyEventStatusListener", []);
    },
    setReceivedScanDataListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setReceivedScanDataListener", []);
    },
    setReceivedScanStringListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setReceivedScanStringListener", []);
    },
    setUnknownCommandReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setUnknownCommandReceivedListener", []);
    },
    setAllDataReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setAllDataReceivedListener", []);
    },
    setStopReadScanListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setStopReadScanListener", []);
    },
    setStartedReadScanListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setStartedReadScanListener", []);
    },
    setErrorReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setErrorReceivedListener", []);
    },
    /**AsReaderBarcodeDeviceProtocol**/
    setBarcodeDataReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setBarcodeDataReceivedListener", []);
    },
    setReceiveFactoryResetListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setReceiveFactoryResetListener", []);
    },
    /**AsReaderRFIDDeviceProtocol**/
    setRfidEpcDataWithTidListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidEpcDataWithTidListener", []);
    },
    setRfidEpcStringWithTidListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidEpcStringWithTidListener", []);
    },
    setRfidPcEpcDataListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidPcEpcDataListener", []);
    },
    setRfidPcEpcStringListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidPcEpcStringListener", []);
    },
    setRfidPcEpcDataWithRssiListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidPcEpcDataWithRssiListener", []);
    },
    setRfidPcEpcStringWithRssiListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidPcEpcStringWithRssiListener", []);
    },
    setRssiReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRssiReceivedListener", []);
    },
    setDidSetOutputPowerLevelListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetOutputPowerLevelListener", []);
    },
    setChannelReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setChannelReceivedListener", []);
    },
    setDidSetChannelParamReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetChannelParamReceivedListener", []);
    },
    setDidSetAntiCollisionListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetAntiCollisionListener", []);
    },
    setDidSetSessionListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetSessionListener", []);
    },
    setDidSetBeepListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetBeepListener", []);
    },
    setDidSetStopConditionListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetStopConditionListener", []);
    },
    setAnticolParamReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setAnticolParamReceivedListener", []);
    },
    setModulationParamReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setModulationParamReceivedListener", []);
    },
    setTxPowerLevelReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setTxPowerLevelReceivedListener", []);
    },
    setRegionReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRegionReceivedListener", []);
    },
    setStopConditionsReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setStopConditionsReceivedListener", []);
    },
    setSelectParamReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setSelectParamReceivedListener", []);
    },
    setQueryParamReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setQueryParamReceivedListener", []);
    },
//    setDidSetRegionListener: function(listener){
//        exec(listener, null, "AsReaderDockPlugin", "setDidSetRegionListener", []);
//    },
    setOnOffTimeChangedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setOnOffTimeChangedListener", []);
    },
    setFreqHPTableReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setFreqHPTableReceivedListener", []);
    },
    setDidSetFHmodeChangedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetFHmodeChangedListener", []);
    },
    setResGetFHmodeListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setResGetFHmodeListener", []);
    },
    setRfidOnOffTimeReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidOnOffTimeReceivedListener", []);
    },
    setUpdatedRegistryListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setUpdatedRegistryListener", []);
    },
    setFhLbtReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setFhLbtReceivedListener", []);
    },
    setDidSetOptiFreqHPTableListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetOptiFreqHPTableListener", []);
    },
    setHoppingTableReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setHoppingTableReceivedListener", []);
    },
    setDidSetFreqHPTableListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetFreqHPTableListener", []);
    },
    setDidSetFhLbtListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setDidSetFhLbtListener", []);
    },
    setRfidModuleVersionReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidModuleVersionReceivedListener", []);
    },
    setReaderInfoReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setReaderInfoReceivedListener", []);
    },
    setWrittenReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setWrittenReceivedListener", []);
    },
    setSessionReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setSessionReceivedListener", []);
    },
    setTagMemoryReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setTagMemoryReceivedListener", []);
    },
    setKilledReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setKilledReceivedListener", []);
    },
    setLockedReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setLockedReceivedListener", []);
    },
    setRegisteryItemReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRegisteryItemReceivedListener", []);
    },
    setGenericReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setGenericReceivedListener", []);
    },
    setResponseRebootListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setResponseRebootListener", []);
    },
    setResponseFWDataListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setResponseFWDataListener", []);
    },
    setRfidDataReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setRfidDataReceivedListener", []);
    },
    /**AsReaderNFCDeviceProtocol**/
    setNfcDataReceivedListener: function(listener){
        exec(listener, null, "AsReaderDockPlugin", "setNfcDataReceivedListener", []);
    },
};
