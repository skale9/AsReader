/********* AsReaderDockPlugin.mm Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <Foundation/Foundation.h>
#import <AsReaderDockSDK/AsReaderDockSDK.h>

#define REGION_KOREA_OLD            0x01
#define REGION_USA_OLD              0x02
#define REGION_EUROPE_OLD           0x04
#define REGION_JAPAN_OLD            0x08
#define REGION_CHINA2_OLD           0x10
#define REGION_CHINA1_OLD           0x16
#define REGION_USA2_OLD             0x32

#define REGION_KOREA                0x11
#define REGION_USA                  0x21
#define REGION_USA2                 0x22
#define REGION_EUROPE               0x31
#define REGION_JAPAN                0x41
#define REGION_CHINA1               0x51
#define REGION_CHINA2               0x52
#define REGION_BRAZIL1              0x61
#define REGION_BRAZIL2              0x62
#define REGION_AU_HK                0x71


@interface AsReaderDockPlugin : CDVPlugin<AsReaderRFIDDeviceDelegate,AsReaderDeviceDelegate, AsreaderBarcodeDeviceDelegate, AsReaderNFCDeviceDelegate> {
    NSString *_pluggedListenerCallbackId;
    NSString *_batteryReceivedListenerCallbackId;
    NSString *_readerConnectedListenerCallbackId;
    NSString *_responsePowerOnOffListenerCallbackId;
    NSString *_releasedTriggerButtonListenerCallbackId;
    NSString *_pushedTriggerButtonListenerCallbackId;
    NSString *_onAsReaderTriggerKeyEventStatusListenerCallbackId;
    NSString *_receivedScanStringListenerCallbackId;
    NSString *_receivedScanDataListenerCallbackId;
    NSString *_unknownCommandReceivedListenerCallbackId;
    NSString *_allDataReceivedListenerCallbackId;
    NSString *_stopReadScanListenerCallbackId;
    NSString *_startedReadScanListenerCallbackId;
    NSString *_errorReceivedListenerCallbackId;
    
    //barcode
    NSString *_barcodeDataReceivedListenerCallbackId;
    NSString *_receiveFactoryResetListenerCallbackId;
    
    //rfid
    NSString *_rfidEpcDataWithTidListenerCallbackId;
    NSString *_rfidEpcStringWithTidListenerCallbackId;
    NSString *_rfidPcEpcDataListenerCallbackId;
    NSString *_rfidPcEpcStringListenerCallbackId;
    NSString *_rfidPcEpcDataWithRssiListenerCallbackId;
    NSString *_rfidPcEpcStringWithRssiListenerCallbackId;
    NSString *_rfidRssiReceivedListenerCallbackId;
    NSString *_didSetOutputPowerLevelListenerCallbackId;
    NSString *_didSetChannelParamReceivedListenerCallbackId;
    NSString *_didSetAntiCollisionListenerCallbackId;
    NSString *_didSetSessionListenerCallbackId;
    NSString *_didSetBeepListenerCallbackId;
    NSString *_didSetStopConditionListenerCallbackId;
    NSString *_channelReceivedListenerCallbackId;
    NSString *_anticolParamReceivedListenerCallbackId;
    NSString *_modulationParamReceivedListenerCallbackId;
    NSString *_txPowerLevelReceivedListenerCallbackId;
    NSString *_regionReceivedListenerCallbackId;
    NSString *_stopConditionsReceivedListenerCallbackId;
    NSString *_selectParamReceivedListenerCallbackId;
    NSString *_queryParamReceivedListenerCallbackId;
    NSString *_didSetRegionListenerCallbackId;
    NSString *_onOffTimeChangedListenerCallbackId;
    NSString *_freqHPTableReceivedListenerCallbackId;
    NSString *_didSetFHmodeChangedListenerCallbackId;
    NSString *_resGetFHmodeListenerCallbackId;
    NSString *_rfidOnOffTimeReceivedListenerCallbackId;
    NSString *_updatedRegistryListenerCallbackId;
    NSString *_fhLbtReceivedListenerCallbackId;
    NSString *_didSetOptiFreqHPTableListenerCallbackId;
    NSString *_hoppingTableReceivedListenerCallbackId;
    NSString *_didSetFreqHPTableListenerCallbackId;
    NSString *_didSetFhLbtListenerCallbackId;
    NSString *_rfidModuleVersionReceivedListenerCallbackId;
    NSString *_readerInfoReceivedListenerCallbackId;
    NSString *_writtenReceivedListenerCallbackId;
    NSString *_sessionReceivedListenerCallbackId;
    NSString *_tagMemoryReceivedListenerCallbackId;
    NSString *_killedReceivedListenerCallbackId;
    NSString *_lockedReceivedListenerCallbackId;
    NSString *_registeryItemReceivedListenerCallbackId;
    NSString *_genericReceivedListenerCallbackId;
    NSString *_responseRebootListenerCallbackId;
    NSString *_responseFWDataListenerCallbackId;
    NSString *_rfidDataReceivedListenerCallbackId;
    
    //nfc
    NSString *_nfcDataReceivedListenerCallbackId;
}

#pragma mark - AsReaderDevice
- (void)getSDKVersion:(CDVInvokedUrlCommand *)command;
- (void)setTriggerModeDefault:(CDVInvokedUrlCommand *)command;
- (void)getRegion:(CDVInvokedUrlCommand *)command;
- (void)getReaderInformation:(CDVInvokedUrlCommand *)command;
- (void)getReaderInfo:(CDVInvokedUrlCommand *)command;
- (void)getCurrentBattery:(CDVInvokedUrlCommand *)command;
- (void)setBeepAndVibrationAndIlluminationAndLed:(CDVInvokedUrlCommand *)command;
- (void)setReaderPowerAndBuzzerAndVibrationAndLedAndIlluminationAndMode:(CDVInvokedUrlCommand *)command;
- (void)setReaderPowerAndBuzzerAndVibrationAndLedAndIlluminationAndConnectedBeepAndMode:(CDVInvokedUrlCommand *)command;
- (void)setReaderProgMode:(CDVInvokedUrlCommand *)command;
- (void)setTagCountAndScanTimeAndCycle:(CDVInvokedUrlCommand *)command;
- (void)setChargingControl:(CDVInvokedUrlCommand*)command;
#pragma mark - AsReaderBarcodeDevice
- (void)barcodeDeviceStartScan:(CDVInvokedUrlCommand *)command;
- (void)barcodeDeviceStopScan:(CDVInvokedUrlCommand *)command;
- (void)doFactoryReset:(CDVInvokedUrlCommand *)command;
- (void)setSendBarcodeSettingData:(CDVInvokedUrlCommand *)command;
- (void)setSymbologyPrefix:(CDVInvokedUrlCommand *)command;
#pragma mark - AsReaderRFIDDevice
- (void)rfidDeviceStartScan:(CDVInvokedUrlCommand *)command;
- (void)rfidDeviceStopScan:(CDVInvokedUrlCommand *)command;
- (void)rfidDeviceStartReadTagsAndRssi:(CDVInvokedUrlCommand *)command;
- (void)rfidDeviceStartReadTagAndTid:(CDVInvokedUrlCommand *)command;
- (void)getSelectParameter:(CDVInvokedUrlCommand *)command;
- (void)getSelectParameterWithTarget:(CDVInvokedUrlCommand *)command;
- (void)getChannel:(CDVInvokedUrlCommand *)command;
- (void)setReadTime:(CDVInvokedUrlCommand *)command;
- (void)setChannel:(CDVInvokedUrlCommand *)command;
- (void)getFhLbtParameter:(CDVInvokedUrlCommand *)command;
- (void)setFhLbtParameter:(CDVInvokedUrlCommand *)command;
- (void)getOutputPowerLevel:(CDVInvokedUrlCommand *)command;
- (void)setOutputPowerLevel:(CDVInvokedUrlCommand *)command;
- (void)writeTagMemory:(CDVInvokedUrlCommand *)command;
- (void)killTag:(CDVInvokedUrlCommand *)command;
- (void)lockTagMemory:(CDVInvokedUrlCommand *)command;
- (void)getFrequencyHoppingTable:(CDVInvokedUrlCommand *)command;
- (void)setFrequencyHoppingTableSize:(CDVInvokedUrlCommand *)command;
- (void)getRssi:(CDVInvokedUrlCommand *)command;
- (void)getSession:(CDVInvokedUrlCommand *)command;
- (void)setSession:(CDVInvokedUrlCommand *)command;
- (void)getAnticollision:(CDVInvokedUrlCommand *)command;
- (void)setAnticollision:(CDVInvokedUrlCommand *)command;
- (void)updateRegistry:(CDVInvokedUrlCommand *)command;
- (void)setStopTagNum:(CDVInvokedUrlCommand *)command;
- (void)getRFIDModuleVersion:(CDVInvokedUrlCommand *)command;
- (void)setHoppingOnOff:(CDVInvokedUrlCommand *)command;
- (void)writeTagMemoryWithEPC:(CDVInvokedUrlCommand *)command;
- (void)getQueryParameter:(CDVInvokedUrlCommand *)command;
- (void)readTag:(CDVInvokedUrlCommand *)command;
- (void)setQueryParam:(CDVInvokedUrlCommand *)command;
- (void)setRfCw:(CDVInvokedUrlCommand *)command;
- (void)getModulation:(CDVInvokedUrlCommand *)command;
- (void)blockEraseTagMemory:(CDVInvokedUrlCommand *)command;
- (void)genericTransport:(CDVInvokedUrlCommand *)command;
- (void)getTemperature:(CDVInvokedUrlCommand *)command;
- (void)getRegistryItem:(CDVInvokedUrlCommand *)command;
- (void)setOptimumFrequencyHoppingTable:(CDVInvokedUrlCommand *)command;
- (void)setFrequencyHoppingMode:(CDVInvokedUrlCommand *)command;
- (void)getFrequencyHoppingMode:(CDVInvokedUrlCommand *)command;
- (void)getStopCondition:(CDVInvokedUrlCommand *)command;
- (void)setSmartHoppingOnOff:(CDVInvokedUrlCommand *)command;
//- (void)setRegion:(CDVInvokedUrlCommand *)command;
#pragma mark - AsReaderNFCDevice
- (void)nfcDeviceStartScan:(CDVInvokedUrlCommand *)command;
- (void)nfcDeviceStopScan:(CDVInvokedUrlCommand *)command;
- (void)nfcSendData:(CDVInvokedUrlCommand *)command;
- (void)setInventoryTime:(CDVInvokedUrlCommand *)command;
#pragma mark - AsReaderInfo
- (void)getAsReaderInfo:(CDVInvokedUrlCommand *)command;
#pragma mark - AsReaderDeviceProtocol Listener
- (void)setPluggedListener:(CDVInvokedUrlCommand *)command;
- (void)setBatteryReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setReaderConnectedListener:(CDVInvokedUrlCommand *)command;
- (void)setResponsePowerOnOffListener:(CDVInvokedUrlCommand *)command;
- (void)setReleasedTriggerButtonListener:(CDVInvokedUrlCommand *)command;
- (void)setPushedTriggerButtonListener:(CDVInvokedUrlCommand *)command;
- (void)setOnAsReaderTriggerKeyEventStatusListener:(CDVInvokedUrlCommand *)command;
- (void)setReceivedScanDataListener:(CDVInvokedUrlCommand *)command;
- (void)setUnknownCommandReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setAllDataReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setStopReadScanListener:(CDVInvokedUrlCommand *)command;
- (void)setStartedReadScanListener:(CDVInvokedUrlCommand *)command;
- (void)setErrorReceivedListener:(CDVInvokedUrlCommand *)command;
#pragma mark - AsreaderBarcodeDeviceProtocol Listener
- (void)setBarcodeDataReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setReceiveFactoryResetListener:(CDVInvokedUrlCommand *)command;
#pragma mark - AsReaderRFIDProtocol Listener
- (void)setRfidEpcDataWithTidListener:(CDVInvokedUrlCommand *)command;
- (void)setRfidEpcStringWithTidListener:(CDVInvokedUrlCommand *)command;
- (void)setRfidPcEpcDataListener:(CDVInvokedUrlCommand *)command;
- (void)setRfidPcEpcStringListener:(CDVInvokedUrlCommand*)command;
- (void)setRfidPcEpcDataWithRssiListener:(CDVInvokedUrlCommand*)command;
- (void)setRfidPcEpcStringWithRssiListener:(CDVInvokedUrlCommand*)command;
- (void)setRssiReceivedListener:(CDVInvokedUrlCommand*)command;
- (void)setDidSetOutputPowerLevelListener:(CDVInvokedUrlCommand*)command;
- (void)setDidSetChannelParamReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetAntiCollisionListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetSessionListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetBeepListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetStopConditionListener:(CDVInvokedUrlCommand *)command;
- (void)setChannelReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setAnticolParamReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setModulationParamReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setTxPowerLevelReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setRegionReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setStopConditionsReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setSelectParamReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setQueryParamReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetRegionListener:(CDVInvokedUrlCommand *)command;
- (void)setOnOffTimeChangedListener:(CDVInvokedUrlCommand *)command;
- (void)setFreqHPTableReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetFHmodeChangedListener:(CDVInvokedUrlCommand *)command;
- (void)setResGetFHmodeListener:(CDVInvokedUrlCommand *)command;
- (void)setRfidOnOffTimeReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setUpdatedRegistryListener:(CDVInvokedUrlCommand *)command;
- (void)setFhLbtReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetOptiFreqHPTableListener:(CDVInvokedUrlCommand *)command;
- (void)setHoppingTableReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetFreqHPTableListener:(CDVInvokedUrlCommand *)command;
- (void)setDidSetFhLbtListener:(CDVInvokedUrlCommand *)command;
- (void)setRfidModuleVersionReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setReaderInfoReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setWrittenReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setSessionReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setTagMemoryReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setKilledReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setLockedReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setRegisteryItemReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setGenericReceivedListener:(CDVInvokedUrlCommand *)command;
- (void)setResponseRebootListener:(CDVInvokedUrlCommand *)command;
- (void)setResponseFWDataListener:(CDVInvokedUrlCommand *)command;
- (void)setRfidDataReceivedListener:(CDVInvokedUrlCommand *)command;
#pragma mark - AsReaderNFCProtocol Listener
- (void)setNfcDataReceivedListener:(CDVInvokedUrlCommand *)command;

@property (nonatomic, retain) AsReaderDevice *m_DeviceCommon;
@property (nonatomic, retain) AsReaderRFIDDevice *m_RFIDDevice;

@end

@implementation AsReaderDockPlugin {
    NSMutableDictionary *tagDic;
}

- (void)pluginInitialize {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    self.m_DeviceCommon = [AsReaderRFIDDevice sharedInstance];
    self.m_DeviceCommon.delegateDevice  = self;
    self.m_DeviceCommon.delegateRFID    = self;
    self.m_DeviceCommon.delegateNFC    = self;
    tagDic = [NSMutableDictionary dictionary];
}

#pragma mark - AsReaderDevice
- (void)getSDKVersion:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSString *sdkVersion = [AsReaderDevice getSDKVersion]?:@"";
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:sdkVersion];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setTriggerModeDefault:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    BOOL isDefault = [[arguments objectAtIndex:0] boolValue];
    [AsReaderDevice setTriggerModeDefault:isDefault];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getRegion:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getRegion];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getReaderInformation:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [self.m_DeviceCommon getReaderInformation];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getReaderInfo:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int infoType = [[arguments objectAtIndex:0] intValue];
    BOOL status = [self.m_DeviceCommon getReaderInfo:infoType];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getCurrentBattery:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    int battery = [self.m_DeviceCommon getCurrentBattery];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:battery];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setBeepAndVibrationAndIlluminationAndLed:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    BOOL beepOn = [[arguments objectAtIndex:0] boolValue];
    BOOL vibrationOn = [[arguments objectAtIndex:1] boolValue];
    BOOL illuminationOn = [[arguments objectAtIndex:2] boolValue];
    BOOL led = [[arguments objectAtIndex:3] boolValue];
    
    BOOL status = [self.m_DeviceCommon setBeep:beepOn setVibration:vibrationOn setIllumination:illuminationOn setLED:led];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setReaderPowerAndBuzzerAndVibrationAndLedAndIlluminationAndMode:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    BOOL isOn = [[arguments objectAtIndex:0] boolValue];
    BOOL isBeep = [[arguments objectAtIndex:1] boolValue];
    BOOL isVib = [[arguments objectAtIndex:2] boolValue];
    BOOL isLed = [[arguments objectAtIndex:3] boolValue];
    BOOL isIllu = [[arguments objectAtIndex:4] boolValue];
    int nDeviceType = [[arguments objectAtIndex:5] intValue];
    BOOL status = [self.m_DeviceCommon setReaderPower:isOn beep:isBeep vibration:isVib led:isLed illumination:isIllu mode:nDeviceType];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setReaderPowerAndBuzzerAndVibrationAndLedAndIlluminationAndConnectedBeepAndMode:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    BOOL isOn = [[arguments objectAtIndex:0] boolValue];
    BOOL isBeep = [[arguments objectAtIndex:1] boolValue];
    BOOL isVib = [[arguments objectAtIndex:2] boolValue];
    BOOL isLed = [[arguments objectAtIndex:3] boolValue];
    BOOL isIllu = [[arguments objectAtIndex:4] boolValue];
    BOOL isConnectedBeep = [[arguments objectAtIndex:5] boolValue];
    int nDeviceType = [[arguments objectAtIndex:6] intValue];
    BOOL status = [self.m_DeviceCommon setReaderPower:isOn beep:isBeep vibration:isVib led:isLed illumination:isIllu connectedBeep:isConnectedBeep mode:nDeviceType];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setReaderProgMode:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int mode = [[arguments objectAtIndex:0] intValue];
    BOOL status = [self.m_DeviceCommon setReaderProgMode:mode];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setTagCountAndScanTimeAndCycle:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int mtnu = [[arguments objectAtIndex:0] intValue];
    int mtime = [[arguments objectAtIndex:1] intValue];
    int repeatCycle = [[arguments objectAtIndex:2] intValue];
    [self.m_DeviceCommon setTagCount:mtnu setScanTime:mtime setCycle:repeatCycle];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setChargingControl:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    BOOL commandSuccess = NO;
    if(command.arguments.count ==1){
        if ([[[command arguments] objectAtIndex:0] boolValue]) {
            commandSuccess = [[self m_DeviceCommon] setChargingControl:YES];
        }else{
            commandSuccess = [[self m_DeviceCommon] setChargingControl:NO];
        }
    }
    if (!commandSuccess)
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Failed to set charging control."];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

#pragma mark - AsReaderBarcodeDevice
- (void)barcodeDeviceStartScan:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderBarcodeDevice sharedInstance] startScan];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)barcodeDeviceStopScan:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderBarcodeDevice sharedInstance] stopScan];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)doFactoryReset:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderBarcodeDevice sharedInstance] doFactoryReset];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setSendBarcodeSettingData:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    NSString *str = [arguments objectAtIndex:0];
    NSData *bytes = [str dataUsingEncoding:NSUTF8StringEncoding];
    BOOL status = [[AsReaderBarcodeDevice sharedInstance] sendBarcodeSettingData:bytes];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setSymbologyPrefix:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderBarcodeDevice sharedInstance] setSymbologyPrefix];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

#pragma mark - AsReaderRFIDDevice
- (void)rfidDeviceStartScan:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int nTagCount = [[arguments objectAtIndex:0] intValue];
    int nScanTime = [[arguments objectAtIndex:1] intValue];
    int nCycle = [[arguments objectAtIndex:2] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] startScan:nTagCount mtime:nScanTime repeatCycle:nCycle];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)rfidDeviceStopScan:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] stopScan];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)rfidDeviceStartReadTagsAndRssi:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int maxTags = [[arguments objectAtIndex:0] intValue];
    int maxTime = [[arguments objectAtIndex:1] intValue];
    int repeatCycle = [[arguments objectAtIndex:2] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] startReadTagsAndRssiWithTagNum:maxTags maxTime:maxTime repeatCycle:repeatCycle];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)rfidDeviceStartReadTagAndTid:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int maxTags = [[arguments objectAtIndex:0] intValue];
    int maxTime = [[arguments objectAtIndex:1] intValue];
    int repeatCycle = [[arguments objectAtIndex:2] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] startReadTagAndTidWithTagNum:maxTags maxTime:maxTime repeatCycle:repeatCycle];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getSelectParameter:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getSelectParameter];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getSelectParameterWithTarget:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int target = [[arguments objectAtIndex:0] intValue];
    int action = [[arguments objectAtIndex:1] intValue];
    int memoryBank = [[arguments objectAtIndex:2] intValue];
    int pointer = [[arguments objectAtIndex:3] intValue];
    int length = [[arguments objectAtIndex:4] intValue];
    int truncate = [[arguments objectAtIndex:5] intValue];
    NSData *mask = [arguments objectAtIndex:6];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getSelectParameter:target action:action memoryBank:memoryBank pointer:pointer length:length truncate:truncate mask:mask];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getChannel:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getChannel];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setReadTime:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int ReadTime = [[arguments objectAtIndex:0] intValue];
    int IdleTime = [[arguments objectAtIndex:1] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] setReadTime:ReadTime idleTime:IdleTime];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setChannel:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int channel = [[arguments objectAtIndex:0] intValue];
    int channelOffset = [[arguments objectAtIndex:1] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] setChannel:channel channelOffset:channelOffset];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getFhLbtParameter:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getFhLbtParameter];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setFhLbtParameter:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int ReadTime = [[arguments objectAtIndex:0] intValue];
    int IdleTime = [[arguments objectAtIndex:1] intValue];
    int carrierSenseTime = [[arguments objectAtIndex:2] intValue];
    int targetRFPowerLevel = [[arguments objectAtIndex:3] intValue];
    int frequencyHopping = [[arguments objectAtIndex:4] intValue];
    int listenBeforeTalk = [[arguments objectAtIndex:5] intValue];
    int continuousWave = [[arguments objectAtIndex:6] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] setFhLbtParameter:ReadTime idleTime:IdleTime carrierSenseTime:carrierSenseTime targetRFPowerLevel:targetRFPowerLevel frequencyHopping:frequencyHopping listenBeforeTalk:listenBeforeTalk continuousWave:continuousWave];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getOutputPowerLevel:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getOutputPowerLevel];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setOutputPowerLevel:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int powerLevel = [[arguments objectAtIndex:0] intValue];
    AsReaderRFIDDevice *device = [AsReaderRFIDDevice sharedInstance];
    device.delegateDevice  = self;
    device.delegateRFID    = self;
    BOOL status = [device setOutputPowerLevel:powerLevel];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)writeTagMemory:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int accessPassword = [[arguments objectAtIndex:0] intValue];
    NSString *epcStr = [arguments objectAtIndex:1];
    NSMutableData* epcData = [NSMutableData data];
    int idx;
    for (idx = 0; idx+2 <= epcStr.length; idx+=2) {
        NSRange range = NSMakeRange(idx, 2);
        NSString* hexStr = [epcStr substringWithRange:range];
        NSScanner* scanner = [NSScanner scannerWithString:hexStr];
        unsigned int intValue;
        [scanner scanHexInt:&intValue];
        [epcData appendBytes:&intValue length:1];
    }
    int memoryBank = [[arguments objectAtIndex:2] intValue];
    int startAddress = [[arguments objectAtIndex:3] intValue];
    NSString *dataToWrite = [arguments objectAtIndex:4];
    
    NSData *pcData    = [epcData subdataWithRange:NSMakeRange(0, 2)];
    
    uint8_t* pData = (uint8_t*)[pcData bytes];
    uint16_t intData = pData[0] << 8 | pData[1];
    int epcLength = [dataToWrite intValue];
    if (epcLength != 0) {
        intData = intData & 0x07FF;
        intData |= (epcLength& 0x1F) << 11;
    }
    NSString *writeStr = [NSString stringWithFormat:@"%04X",intData];
    NSMutableData *data = [NSMutableData data];
    int idxD;
    for (idxD = 0; idxD+2 <= writeStr.length; idxD+=2) {
        NSRange range = NSMakeRange(idxD, 2);
        NSString* hexStr = [writeStr substringWithRange:range];
        NSScanner* scanner = [NSScanner scannerWithString:hexStr];
        unsigned int intValue;
        [scanner scanHexInt:&intValue];
        [data appendBytes:&intValue length:1];
    }
    BOOL status = [[AsReaderRFIDDevice sharedInstance] writeTagMemoryWithAccessPassword:accessPassword epc:epcData memoryBank:memoryBank startAddress:startAddress dataToWrite:data];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)killTag:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    NSString *password = [arguments objectAtIndex:0];
    NSScanner* pScanner = [NSScanner scannerWithString: password];
    uint32_t killpassword;
    [pScanner scanHexInt: &killpassword];
    NSString *targetEpc = [arguments objectAtIndex:1];
    NSMutableData *data = [NSMutableData data];
    int idx;
    for (idx = 0; idx+2 <= targetEpc.length; idx+=2) {
        NSRange range = NSMakeRange(idx, 2);
        NSString* hexStr = [targetEpc substringWithRange:range];
        NSScanner* scanner = [NSScanner scannerWithString:hexStr];
        unsigned int intValue;
        [scanner scanHexInt:&intValue];
        [data appendBytes:&intValue length:1];
    }
    BOOL status = [[AsReaderRFIDDevice sharedInstance] killTagWithPassword:killpassword epc:data];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)lockTagMemory:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    NSString *accessPasswordStr = [arguments objectAtIndex:0];
    NSScanner* pScanner = [NSScanner scannerWithString: accessPasswordStr];
    uint32_t accesspassword;
    [pScanner scanHexInt: &accesspassword];
    NSString *targetEpc = [arguments objectAtIndex:1];
    NSMutableData* data = [NSMutableData data];
    int idx;
    for (idx = 0; idx+2 <= targetEpc.length; idx+=2) {
        NSRange range = NSMakeRange(idx, 2);
        NSString* hexStr = [targetEpc substringWithRange:range];
        NSScanner* scanner = [NSScanner scannerWithString:hexStr];
        unsigned int intValue;
        [scanner scanHexInt:&intValue];
        [data appendBytes:&intValue length:1];
    }
    uint32_t lock = 0;
    uint32_t seed = (uint32_t)[[arguments objectAtIndex:3] intValue];
    int targetMemory = [[arguments objectAtIndex:2] intValue];
    switch (targetMemory) {
        case 0: // Kill
        lock = (seed << 8) | (3 << 18);
        break;
        case 1: // Access
        lock = (seed << 6) | (3 << 16);
        break;
        case 2: // EPC
        lock = (seed << 4) | (3 << 14);
        break;
        case 3: // TID
        lock = (seed << 2) | (3 << 12);
        break;
        case 4: // USER
        lock = (seed << 0) | (3 << 10);
        break;
        default:
        break;
    }
    BOOL status = [[AsReaderRFIDDevice sharedInstance] lockTagMemoryWithAccessPassword:accesspassword epc:data lockData:lock];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getFrequencyHoppingTable:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getFrequencyHoppingTable];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setFrequencyHoppingTableSize:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int tableSize = [[arguments objectAtIndex:0] intValue];
    NSData *channels = [arguments objectAtIndex:1];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] setFrequencyHoppingTableSize:tableSize channels:channels];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getRssi:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getRssi];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getSession:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getSession];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setSession:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int session = [[arguments objectAtIndex:0] intValue];
    AsReaderRFIDDevice *device = [AsReaderRFIDDevice sharedInstance];
    device.delegateDevice  = self;
    device.delegateRFID    = self;
    BOOL status = [device setSession:session];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getAnticollision:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getAnticollision];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setAnticollision:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int mode = [[arguments objectAtIndex:0] intValue];
    int counter = [[arguments objectAtIndex:1] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] setAnticollision:mode Counter:counter];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)updateRegistry:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] updateRegistry];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setStopTagNum:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int maxTags = [[arguments objectAtIndex:0] intValue];
    int maxTime = [[arguments objectAtIndex:1] intValue];
    int repeatCycle = [[arguments objectAtIndex:2] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] setStopTagNum:maxTags maxTime:maxTime repeatCycle:repeatCycle];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getRFIDModuleVersion:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getRFIDModuleVersion];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setHoppingOnOff:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int isOn = [[arguments objectAtIndex:0] intValue];
    AsReaderRFIDDevice *device = [AsReaderRFIDDevice sharedInstance];
    device.delegateDevice  = self;
    device.delegateRFID    = self;
    BOOL status = [device setHoppingOnOff:isOn];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)writeTagMemoryWithEPC:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    NSString *epcStr = [arguments objectAtIndex:0];
    NSData *epc = [tagDic objectForKey:epcStr];
    NSString *dataToWrite = [arguments objectAtIndex:1];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] writeTagMemoryWithEPC:epc dataToWriteAscii:dataToWrite];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getQueryParameter:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getQueryParameter];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)readTag:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int accessPassword = [[arguments objectAtIndex:0] intValue];
    NSString *epc = [arguments objectAtIndex:1];
    NSMutableData* data = [NSMutableData data];
    int idx;
    for (idx = 0; idx+2 <= epc.length; idx+=2) {
        NSRange range = NSMakeRange(idx, 2);
        NSString* hexStr = [epc substringWithRange:range];
        NSScanner* scanner = [NSScanner scannerWithString:hexStr];
        unsigned int intValue;
        [scanner scanHexInt:&intValue];
        [data appendBytes:&intValue length:1];
    }
    int memoryBank = [[arguments objectAtIndex:2] intValue];
    int startAddress = [[arguments objectAtIndex:3] intValue];
    int dataLength = [[arguments objectAtIndex:4] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] readTagWithAccessPassword:accessPassword epc:data memoryBank:memoryBank startAddress:startAddress dataLength:dataLength];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setQueryParam:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int divideRatio = [[arguments objectAtIndex:0] intValue];
    int m = [[arguments objectAtIndex:1] intValue];
    int trext = [[arguments objectAtIndex:2] intValue];
    int selection = [[arguments objectAtIndex:3] intValue];
    int session = [[arguments objectAtIndex:4] intValue];
    int target = [[arguments objectAtIndex:5] intValue];
    int qValue = [[arguments objectAtIndex:6] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] setQueryParam:divideRatio m:m trext:trext selection:selection session:session target:target qValue:qValue];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setRfCw:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int on = [[arguments objectAtIndex:0] intValue];
    AsReaderRFIDDevice *device = [AsReaderRFIDDevice sharedInstance];
    device.delegateDevice  = self;
    device.delegateRFID    = self;
    BOOL status = [device setRfCw:on];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getModulation:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getModulation];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)blockEraseTagMemory:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int accessPassword = [[arguments objectAtIndex:0] intValue];
    NSData *epc = [arguments objectAtIndex:1];
    int memoryBank = [[arguments objectAtIndex:2] intValue];
    int startAddress = [[arguments objectAtIndex:3] intValue];
    int dataLength = [[arguments objectAtIndex:4] intValue];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] blockEraseTagMemoryWithAccessPassword:accessPassword epc:epc memoryBank:memoryBank startAddress:startAddress dataLength:dataLength];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)genericTransport:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int accessPassword = [[arguments objectAtIndex:0] intValue];
    NSData *epc = [arguments objectAtIndex:1];
    int transmissionState = [[arguments objectAtIndex:2] intValue];
    int rm = [[arguments objectAtIndex:3] intValue];
    int size = [[arguments objectAtIndex:4] intValue];
    NSData *genericCommand = [arguments objectAtIndex:5];
    BOOL status = [[AsReaderRFIDDevice sharedInstance] genericTransportWithAccessPassword:accessPassword epc:epc transmissionState:transmissionState rm:rm size:size genericCommand:genericCommand];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getTemperature:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getTemperature];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getRegistryItem:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int registryItem = [[arguments objectAtIndex:0] intValue];
    AsReaderRFIDDevice *device = [AsReaderRFIDDevice sharedInstance];
    device.delegateDevice  = self;
    device.delegateRFID    = self;
    BOOL status = [device getRegistryItem:registryItem];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setOptimumFrequencyHoppingTable:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] setOptimumFrequencyHoppingTable];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setFrequencyHoppingMode:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    int mode = [[arguments objectAtIndex:0] intValue];
    AsReaderRFIDDevice *device = [AsReaderRFIDDevice sharedInstance];
    device.delegateDevice  = self;
    device.delegateRFID    = self;
    BOOL status = [device setFrequencyHoppingMode:mode];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getFrequencyHoppingMode:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getFrequencyHoppingMode];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)getStopCondition:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderRFIDDevice sharedInstance] getStopCondition];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setSmartHoppingOnOff:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    BOOL isOn = [[arguments objectAtIndex:0] boolValue];
    AsReaderRFIDDevice *device = [AsReaderRFIDDevice sharedInstance];
    device.delegateDevice  = self;
    device.delegateRFID    = self;
    BOOL status = [device setSmartHoppingOnOff:isOn];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

//- (void)setRegion:(CDVInvokedUrlCommand *)command {
//    NSLog(@"%s,called",__PRETTY_FUNCTION__);
//    CDVPluginResult *pluginResult = nil;
//    NSArray *arguments = command.arguments;
//    int region = [[arguments objectAtIndex:0] intValue];
//    AsReaderRFIDDevice *device = [AsReaderRFIDDevice sharedInstance];
//    device.delegateDevice  = self;
//    device.delegateRFID    = self;
//    BOOL status = [device setRegion:region];
//    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
//    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
//}

#pragma mark - AsReaderNFCDevice
- (void)nfcDeviceStartScan:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderNFCDevice sharedInstance] startScan];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)nfcDeviceStopScan:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    BOOL status = [[AsReaderNFCDevice sharedInstance] stopScan];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


- (void)nfcSendData:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    Byte cmd[] = NFC_CMD_INVENTORYSET;
    NSData *data = [[NSData alloc] initWithBytes:cmd length:sizeof(cmd)];
    BOOL status = [[AsReaderNFCDevice sharedInstance] sendData:data];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    
}

- (void)setInventoryTime:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult *pluginResult = nil;
    NSArray *arguments = command.arguments;
    float inventoryTime = [[arguments objectAtIndex:0] floatValue];
    AsReaderNFCDevice *device = [AsReaderNFCDevice sharedInstance];
    device.delegateDevice  = self;
    device.delegateRFID    = self;
    BOOL status = [device setInventoryTime:inventoryTime];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:status];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

#pragma mark - AsReaderInfo
- (void)getAsReaderInfo:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    CDVPluginResult* pluginResult = nil;
    AsReaderInfo *info = [AsReaderInfo sharedInstance];
    if (info) {
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        [dic setValue:info.deviceName?:@"" forKey:@"deviceName"];
        [dic setValue:info.deviceFirmware?:@"" forKey:@"deviceFirmware"];
        [dic setValue:info.deviceHardware?:@"" forKey:@"deviceHardware"];
        [dic setValue:info.deviceID?:@"" forKey:@"deviceID"];
        [dic setValue:info.deviceManufacturer?:@"" forKey:@"deviceManufacturer"];
        [dic setValue:info.deviceModelNumber?:@"" forKey:@"deviceModelNumber"];
        [dic setValue:info.deviceSerialNumber?:@"" forKey:@"deviceSerialNumber"];
        [dic setValue:info.deviceProtocol?:@"" forKey:@"deviceProtocol"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.readerType] forKey:@"readerType"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.currentSelectDevice] forKey:@"currentSelectDevice"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.isPowerOn] forKey:@"isPowerOn"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.canUseRFID] forKey:@"canUseRFID"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.canUseBarcode] forKey:@"canUseBarcode"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.canUseNFC] forKey:@"canUseNFC"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.isBeep] forKey:@"isBeep"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.isVibration] forKey:@"isVibration"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.isLED] forKey:@"isLED"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.isIllumination] forKey:@"isIllumination"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.isSymbologyPrefix] forKey:@"isSymbologyPrefix"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.isTriggerModeDefault] forKey:@"isTriggerModeDefault"];
        [dic setValue:[NSString stringWithFormat:@"%f",info.rfidPower] forKey:@"rfidPower"];
        [dic setValue:[NSString stringWithFormat:@"%f",info.rfidPowerMax] forKey:@"rfidPowerMax"];
        [dic setValue:[NSString stringWithFormat:@"%f",info.rfidPowerMin] forKey:@"rfidPowerMin"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.rfidOnTime] forKey:@"rfidOnTime"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.rfidOffTime] forKey:@"rfidOffTime"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.nRFIDchannel] forKey:@"nRFIDchannel"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.count] forKey:@"count"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.scanTime] forKey:@"scanTime"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.cycle] forKey:@"cycle"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.carrierSenseTime] forKey:@"carrierSenseTime"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.targetRFPowerLevel] forKey:@"targetRFPowerLevel"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.rfidListenBeforeTalk] forKey:@"rfidListenBeforeTalk"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.rfidFrequencyHopping] forKey:@"rfidFrequencyHopping"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.rfidContinuousWave] forKey:@"rfidContinuousWave"];
        [dic setValue:[NSString stringWithFormat:@"%d",info.isSmartHopping] forKey:@"isSmartHopping"];
        //[dic setValue:info.region?:@"" forKey:@"region"];
        [dic setValue:info.rfidModuleVersion?:@"" forKey:@"rfidModuleVersion"];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dic];
    }else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Failed to get asreader info."];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

#pragma mark - AsReaderDeviceProtocol Listener
- (void)setPluggedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _pluggedListenerCallbackId = command.callbackId;
}

- (void)setBatteryReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _batteryReceivedListenerCallbackId = command.callbackId;
}

- (void)setReaderConnectedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _readerConnectedListenerCallbackId = command.callbackId;
}

- (void)setResponsePowerOnOffListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _responsePowerOnOffListenerCallbackId = command.callbackId;
}

- (void)setReleasedTriggerButtonListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _releasedTriggerButtonListenerCallbackId = command.callbackId;
}

- (void)setPushedTriggerButtonListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _pushedTriggerButtonListenerCallbackId = command.callbackId;
}

- (void)setOnAsReaderTriggerKeyEventStatusListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _onAsReaderTriggerKeyEventStatusListenerCallbackId = command.callbackId;
}

- (void)setReceivedScanStringListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _receivedScanStringListenerCallbackId = command.callbackId;
}

- (void)setReceivedScanDataListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _receivedScanDataListenerCallbackId = command.callbackId;
}


- (void)setUnknownCommandReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _unknownCommandReceivedListenerCallbackId = command.callbackId;
}

- (void)setAllDataReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _allDataReceivedListenerCallbackId = command.callbackId;
}

- (void)setStopReadScanListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _stopReadScanListenerCallbackId = command.callbackId;
}

- (void)setStartedReadScanListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _startedReadScanListenerCallbackId = command.callbackId;
}

- (void)setErrorReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _errorReceivedListenerCallbackId = command.callbackId;
}

#pragma mark - AsReaderDeviceProtocol
- (void)plugged:(BOOL)plug {
    if (_pluggedListenerCallbackId) {
        NSLog(@"%s,called",__PRETTY_FUNCTION__);
        CDVPluginResult *pluginResult = nil;
        if (plug) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
        }else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:NO];
        }
        [pluginResult setKeepCallbackAsBool:YES];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:_pluggedListenerCallbackId];
    }
}

- (void)batteryReceived:(int)battery {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_batteryReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            //        Byte *b = (Byte *)[data bytes];
            //        int adc = b[0];
            int nVal = battery;
            if(nVal > 95) {
                nVal = 4;
            }else if(nVal  >70) {
                nVal = 3;
            }else if(nVal  >45) {
                nVal = 2;
            }else if(nVal  > 20) {
                nVal = 1;
            }else {
                nVal = 0;
            }
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:nVal];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_batteryReceivedListenerCallbackId];
        }
    });
}

- (void)readerConnected:(int)status {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_readerConnectedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_readerConnectedListenerCallbackId];
        }
    });
}

- (void)responsePowerOnOff:(BOOL)isOn HWModeChange:(BOOL)isHWModeChange {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_responsePowerOnOffListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            NSMutableDictionary *dic = [NSMutableDictionary dictionary];
            [dic setValue:[NSString stringWithFormat:@"%d",isOn] forKey:@"isOn"];
            [dic setValue:[NSString stringWithFormat:@"%d",isHWModeChange] forKey:@"isHWModeChange"];
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dic];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_responsePowerOnOffListenerCallbackId];
        }
    });
}

- (void)releasedTriggerButton {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_releasedTriggerButtonListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_releasedTriggerButtonListenerCallbackId];
        }
    });
}

- (void)pushedTriggerButton {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_pushedTriggerButtonListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_pushedTriggerButtonListenerCallbackId];
        }
    });
}

- (void)onAsReaderTriggerKeyEventStatus:(NSString *)status {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_onAsReaderTriggerKeyEventStatusListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_onAsReaderTriggerKeyEventStatusListenerCallbackId];
        }
    });
}

- (void)receivedScanData:(NSData *)readData {
    dispatch_async(dispatch_get_main_queue(), ^{
        CDVPluginResult* pluginResult = nil;
        NSMutableString *tag = [[NSMutableString alloc]init];
        if(_receivedScanDataListenerCallbackId){
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:readData];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_receivedScanDataListenerCallbackId];
        }
        if(_receivedScanStringListenerCallbackId){
            unsigned char *ptr = (unsigned char *) [readData bytes];
            switch ([[AsReaderInfo sharedInstance] currentSelectDevice]) {
                case ASREADER_DEVICE_BARCODE: {
                    tag = [[NSMutableString alloc] initWithData:readData encoding:NSShiftJISStringEncoding];
                }
                break;
                case ASREADER_DEVICE_RFID: {
                    for (int i = 0; i < readData.length; i++) {
                        [tag appendFormat:@"%02x", *ptr++ & 0xFF ];
                    }
                }
                break;
                case ASREADER_DEVICE_NFC: {
#define df_NFCDATA_HEADER_SIZE 4
#define df_NFCDATA_FOOTER_SIZE 3
                    int nNFCDataLen = (int)ptr[3];
                    int nTotalSize  = nNFCDataLen+df_NFCDATA_HEADER_SIZE+df_NFCDATA_FOOTER_SIZE;
                    Byte btSum = 0x00;
                    for(int i = 0; i<nNFCDataLen+df_NFCDATA_HEADER_SIZE+1; i++) {
                        btSum = (Byte)(btSum+ ptr[i]);
                    }
                    if (nTotalSize != (int)readData.length) {
                        [tag appendFormat:@"Data Size Err"];
                    }else if (btSum != ptr[df_NFCDATA_HEADER_SIZE+nNFCDataLen+1]) {
                        [tag appendFormat:@"Check Sum Err"];
                    }else if ((ptr[0] == 0x02) && (ptr[df_NFCDATA_HEADER_SIZE+nNFCDataLen] == 0x03) && (nTotalSize== readData.length)) {
                        for(int i = 0; i<nNFCDataLen; i++) {
                            [tag appendFormat:@"%02x", ptr[i+4] & 0xFF ];
                        }
                    }else {
                        [tag appendFormat:@"Data Format Err"];
                    }
                }
                break;
                case ASREADER_DEVICE_UNKNOWN: {
                    [tag appendFormat:@"Not Found Device Type"];
                }
                break;
                default:
                break;
            }
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:tag];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_receivedScanStringListenerCallbackId];
        }
        [tagDic setValue:readData forKey:tag];
    });
}

- (void)unknownCommandReceived:(int)commandCode {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_unknownCommandReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:commandCode];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_unknownCommandReceivedListenerCallbackId];
        }
    });
}

- (void)allDataReceived:(NSData *)data {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_allDataReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:data];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_allDataReceivedListenerCallbackId];
        }
    });
}

- (void)stopReadScan:(int)status {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_stopReadScanListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_stopReadScanListenerCallbackId];
        }
    });
}

- (void)startedReadScan:(int)status {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_startedReadScanListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_startedReadScanListenerCallbackId];
        }
    });
}

- (void)errorReceived:(NSData *)errorCode {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_errorReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            uint8_t *pData = (uint8_t*)[errorCode bytes];
            NSString *strErrCode = @"";
            NSString *strSubCode = @"";
            switch (pData[0]) {
                case 0x09 : strErrCode =@"Failure to read the tag memory"; break;
                case 0x10 : strErrCode =@"Failure to write data"; break;
                case 0x0B : strErrCode =@"Read Type C Tag ID Multiple’ in Operation"; break;
                case 0x0D : strErrCode =@"Not in mode ‘Read Type C Tag ID Multiple’"; break;
                case 0x0E : strErrCode =@"Invalid parameter"; break;
                case 0x12 : strErrCode =@"Failure to kill a tag"; break;
                case 0x13 : strErrCode =@"Failure to lock a tag"; break;
                case 0x15 : strErrCode =@"Failure to read a tag"; break;
                case 0x18 : strErrCode =@"Not supported command"; break;
                case 0xFF : strErrCode =@"CRC Error"; break;
                default: {
                    NSString *strTem = [NSString stringWithFormat:@"0x%x",pData[1]];
                    strErrCode =strTem;
                }
                    break;
            }
            switch (pData[2]) {
                case  0x01 :strSubCode = @" Not supported "; break;
                case  0x02 :strSubCode = @" Insufficient privileges"; break;
                case  0x03 :strSubCode = @" Memory overrun"; break;
                case  0x04 :strSubCode = @" Memory locked"; break;
                case  0x05 :strSubCode = @" Crypto suite error"; break;
                case  0x06 :strSubCode = @" Command not encapsulated"; break;
                case  0x07 :strSubCode = @" ResponseBuffer overflow"; break;
                case  0x08 :strSubCode = @" Security timeout"; break;
                case  0x0B :strSubCode = @" Insufficient power"; break;
                case  0x0F :strSubCode = @" Non- specific error"; break;
                case  0x11 :strSubCode = @" Sensor Scheduling configuration"; break;
                case  0x12 :strSubCode = @" Tag Busy"; break;
                case  0x13 :strSubCode = @" Measurement type not supported"; break;
                case  0x80 :strSubCode = @" No tag detected"; break;
                case  0x81 :strSubCode = @" Handle acquisition failure"; break;
                case  0x82 :strSubCode = @" Access password failure"; break;
                case  0x90 :strSubCode = @" CRC error"; break;
                case  0x91 :strSubCode = @" Rx Timeout"; break;
                case  0xA0 :strSubCode = @" Registry update failure"; break;
                case  0xA1 :strSubCode = @" Registry erase failure"; break;
                case  0xA2 :strSubCode = @" Registry write failure"; break;
                case  0xA3 :strSubCode = @" Registry not exist"; break;
                case  0xB0 :strSubCode = @" UART failure"; break;
                case  0xB1 :strSubCode = @" SPI failure"; break;
                case  0xB2 :strSubCode = @" I2C failure"; break;
                case  0xB3 :strSubCode = @" GPIO failure"; break;
                case  0xE0 :strSubCode = @" Not supported command"; break;
                case  0xE1 :strSubCode = @" Undefined command"; break;
                case  0xE2 :strSubCode = @" Invalid parameter"; break;
                case  0xE3 :strSubCode = @" Too high parameter"; break;
                case  0xE4 :strSubCode = @" Too low parameter"; break;
                case  0xE5 :strSubCode = @" Failure automatic read operation"; break;
                case  0xE6 :strSubCode = @" Not automatic read mode"; break;
                case  0xE7 :strSubCode = @" Failure to get last response"; break;
                case  0xE8 :strSubCode = @" Failure to control test"; break;
                case  0xE9 :strSubCode = @" Failure to reset Reader"; break;
                case  0xEA :strSubCode = @" Rfidblock control failure"; break;
                case  0xEB :strSubCode = @" Automatic read in operation"; break;
                case  0xF0 :strSubCode = @" Undefined other error"; break;
                case  0xF1 :strSubCode = @" Failure to verify write operation"; break;
                case  0xFC :strSubCode = @" Abnormal antenna"; break;
                case  0xFF :strSubCode = @" None error"; break;
                default: {
                    NSString *strTem = [NSString stringWithFormat:@"0x%x",pData[2]];
                    strSubCode =strTem;
                }
                    break;
            }
            NSString *strErrTotal = [NSString stringWithFormat:@"Error Code(0x%x) : %@ \n SubError(0x%x) : %@",pData[0],strErrCode,pData[2],strSubCode];
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:strErrTotal];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_errorReceivedListenerCallbackId];
        }
    });
}

#pragma mark - AsreaderBarcodeDeviceProtocol Listener
- (void)setBarcodeDataReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _barcodeDataReceivedListenerCallbackId = command.callbackId;
}

- (void)setReceiveFactoryResetListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _receiveFactoryResetListenerCallbackId = command.callbackId;
}

#pragma mark - AsreaderBarcodeDeviceProtocol
- (void)barcodeDataReceived:(NSData *)data {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_barcodeDataReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:data];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_barcodeDataReceivedListenerCallbackId];
        }
    });
}

- (void)receiveFactoryReset:(int)status {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (_receiveFactoryResetListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_receiveFactoryResetListenerCallbackId];
        }
    });
}

#pragma mark - AsReaderRFIDProtocol Listener
- (void)setRfidEpcDataWithTidListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidEpcDataWithTidListenerCallbackId = command.callbackId;
}

- (void)setRfidEpcStringWithTidListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidEpcStringWithTidListenerCallbackId = command.callbackId;
}

- (void)setRfidPcEpcDataListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidPcEpcDataListenerCallbackId = command.callbackId;
}

- (void)setRfidPcEpcStringListener:(CDVInvokedUrlCommand*)command{
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidPcEpcStringListenerCallbackId = command.callbackId;
}

- (void)setRfidPcEpcDataWithRssiListener:(CDVInvokedUrlCommand*)command{
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidPcEpcDataWithRssiListenerCallbackId = command.callbackId;
}

- (void)setRfidPcEpcStringWithRssiListener:(CDVInvokedUrlCommand*)command{
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidPcEpcStringWithRssiListenerCallbackId = command.callbackId;
}

- (void)setRssiReceivedListener:(CDVInvokedUrlCommand*)command{
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidRssiReceivedListenerCallbackId = command.callbackId;
}

- (void)setDidSetOutputPowerLevelListener:(CDVInvokedUrlCommand*)command{
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetOutputPowerLevelListenerCallbackId = command.callbackId;
}

- (void)setDidSetChannelParamReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetChannelParamReceivedListenerCallbackId = command.callbackId;
}

- (void)setDidSetAntiCollisionListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetAntiCollisionListenerCallbackId = command.callbackId;
}

- (void)setDidSetSessionListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetSessionListenerCallbackId = command.callbackId;
}

- (void)setDidSetBeepListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetBeepListenerCallbackId = command.callbackId;
}

- (void)setDidSetStopConditionListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetStopConditionListenerCallbackId = command.callbackId;
}

- (void)setChannelReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _channelReceivedListenerCallbackId = command.callbackId;
}

- (void)setAnticolParamReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _anticolParamReceivedListenerCallbackId = command.callbackId;
}

- (void)setModulationParamReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _modulationParamReceivedListenerCallbackId = command.callbackId;
}

- (void)setTxPowerLevelReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _txPowerLevelReceivedListenerCallbackId = command.callbackId;
}

- (void)setRegionReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _regionReceivedListenerCallbackId = command.callbackId;
}

- (void)setStopConditionsReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _stopConditionsReceivedListenerCallbackId = command.callbackId;
}

- (void)setSelectParamReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _selectParamReceivedListenerCallbackId = command.callbackId;
}

- (void)setQueryParamReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _queryParamReceivedListenerCallbackId = command.callbackId;
}

//- (void)setDidSetRegionListener:(CDVInvokedUrlCommand *)command {
//    NSLog(@"%s,called",__PRETTY_FUNCTION__);
//    _didSetRegionListenerCallbackId = command.callbackId;
//}

- (void)setOnOffTimeChangedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _onOffTimeChangedListenerCallbackId = command.callbackId;
}

- (void)setFreqHPTableReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _freqHPTableReceivedListenerCallbackId = command.callbackId;
}

- (void)setDidSetFHmodeChangedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetFHmodeChangedListenerCallbackId = command.callbackId;
}

- (void)setResGetFHmodeListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _resGetFHmodeListenerCallbackId = command.callbackId;
}

- (void)setRfidOnOffTimeReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidOnOffTimeReceivedListenerCallbackId = command.callbackId;
}

- (void)setUpdatedRegistryListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _updatedRegistryListenerCallbackId = command.callbackId;
}

- (void)setFhLbtReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _fhLbtReceivedListenerCallbackId = command.callbackId;
}

- (void)setDidSetOptiFreqHPTableListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetOptiFreqHPTableListenerCallbackId = command.callbackId;
}

- (void)setHoppingTableReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _hoppingTableReceivedListenerCallbackId = command.callbackId;
}

- (void)setDidSetFreqHPTableListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetFreqHPTableListenerCallbackId = command.callbackId;
}

- (void)setDidSetFhLbtListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _didSetFhLbtListenerCallbackId = command.callbackId;
}

- (void)setRfidModuleVersionReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidModuleVersionReceivedListenerCallbackId = command.callbackId;
}

- (void)setReaderInfoReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _readerInfoReceivedListenerCallbackId = command.callbackId;
}

- (void)setWrittenReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _writtenReceivedListenerCallbackId = command.callbackId;
}

- (void)setSessionReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _sessionReceivedListenerCallbackId = command.callbackId;
}

- (void)setTagMemoryReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _tagMemoryReceivedListenerCallbackId = command.callbackId;
}

- (void)setKilledReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _killedReceivedListenerCallbackId = command.callbackId;
}

- (void)setLockedReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _lockedReceivedListenerCallbackId = command.callbackId;
}

- (void)setRegisteryItemReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _registeryItemReceivedListenerCallbackId = command.callbackId;
}

- (void)setGenericReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _genericReceivedListenerCallbackId = command.callbackId;
}

- (void)setResponseRebootListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _responseRebootListenerCallbackId = command.callbackId;
}

- (void)setResponseFWDataListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _responseFWDataListenerCallbackId = command.callbackId;
}

- (void)setRfidDataReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _rfidDataReceivedListenerCallbackId = command.callbackId;
}

#pragma mark - AsReaderRFIDProtocol
- (void)epcReceived:(NSData *)epc tid:(NSData *)tid {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    dispatch_async(dispatch_get_main_queue(),^{
        CDVPluginResult* pluginResult = nil;
        if(_rfidEpcDataWithTidListenerCallbackId) {
            NSDictionary *dic = @{@"Epc":epc,@"Tid":tid};
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dic];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidEpcDataWithTidListenerCallbackId];
        }
        if(_rfidEpcStringWithTidListenerCallbackId) {
            NSString *hexStr = nil;
            NSMutableString* tmp = [[NSMutableString alloc] init];
            unsigned char* ptr= (unsigned char*) [epc bytes];
            for(int i = 0; i < epc.length; i++) {
                [tmp appendFormat:@"%02X", *ptr++ & 0xFF ];
            }
            hexStr = tmp;
            NSString *hexStrTid = nil;
            NSMutableString* tmpTid = [[NSMutableString alloc] init];
            unsigned char* ptrTid= (unsigned char*) [tid bytes];
            for(int i = 0; i < tid.length; i++) {
                [tmpTid appendFormat:@"%02X", *ptrTid++ & 0xFF ];
            }
            hexStrTid = tmpTid;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:[[NSDictionary alloc] initWithObjectsAndKeys:hexStr,@"Epc",hexStrTid,@"Tid",nil]];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidEpcStringWithTidListenerCallbackId];
        }
    });
}

- (void)pcEpcReceived:(NSData *)pcEpc {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    dispatch_async(dispatch_get_main_queue(),^{
        CDVPluginResult* pluginResult = nil;
        if(_rfidPcEpcDataListenerCallbackId){
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:pcEpc];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidPcEpcDataListenerCallbackId];
        }
        NSString *hexStr = nil;
        NSMutableString* tmp = [[NSMutableString alloc] init];
        unsigned char* ptr= (unsigned char*) [pcEpc bytes];
        for(int i = 0; i < pcEpc.length; i++) {
            [tmp appendFormat:@"%02X", *ptr++ & 0xFF ];
        }
        hexStr = tmp;
        if(_rfidPcEpcStringListenerCallbackId){
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:hexStr];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidPcEpcStringListenerCallbackId];
        }
    });
}

- (void)pcEpcRssiReceived:(NSData *)pcEpc rssi:(int)rssi {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    dispatch_async(dispatch_get_main_queue(),^{
        CDVPluginResult* pluginResult = nil;
        if(_rfidPcEpcDataWithRssiListenerCallbackId){
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:[[NSDictionary alloc] initWithObjectsAndKeys:pcEpc,@"PcEpc",[NSString stringWithFormat:@"%d",rssi],@"Rssi",nil]];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidPcEpcDataWithRssiListenerCallbackId];
        }
        if(_rfidPcEpcStringWithRssiListenerCallbackId){
            NSString *hexStr = nil;
            NSMutableString* tmp = [[NSMutableString alloc] init];
            unsigned char* ptr= (unsigned char*) [pcEpc bytes];
            for(int i = 0; i < pcEpc.length; i++) {
                [tmp appendFormat:@"%02X", *ptr++ & 0xFF ];
            }
            hexStr = tmp;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:[[NSDictionary alloc] initWithObjectsAndKeys:hexStr,@"PcEpc",[NSString stringWithFormat:@"%d",rssi],@"Rssi",nil]];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidPcEpcStringWithRssiListenerCallbackId];
        }
    });
}

- (void)rssiReceived:(int)rssi {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    if(_rfidRssiReceivedListenerCallbackId){
        CDVPluginResult* pluginResult = nil;
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:rssi];
        [pluginResult setKeepCallbackAsBool:YES];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidRssiReceivedListenerCallbackId];
    }
}

- (void)didSetOutputPowerLevel:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetOutputPowerLevelListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetOutputPowerLevelListenerCallbackId];
        }
    });
}

- (void)didSetChannelParamReceived:(int)statusCode {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetChannelParamReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:statusCode];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetChannelParamReceivedListenerCallbackId];
        }
    });
}

- (void)didSetAntiCollision:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetAntiCollisionListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetAntiCollisionListenerCallbackId];
        }
    });
}

- (void)didSetSession:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetSessionListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetSessionListenerCallbackId];
        }
    });
}

- (void)didSetBeep:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetBeepListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetBeepListenerCallbackId];
        }
    });
}

- (void)didSetStopCondition:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetStopConditionListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetStopConditionListenerCallbackId];
        }
    });
}

- (void)channelReceived:(int)channel channelOffset:(int)channelOffset {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_channelReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            NSMutableDictionary *dic = [NSMutableDictionary dictionary];
            [dic setValue:[NSString stringWithFormat:@"%d",channel] forKey:@"channel"];
            [dic setValue:[NSString stringWithFormat:@"%d",channelOffset] forKey:@"channelOffset"];
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dic];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_channelReceivedListenerCallbackId];
        }
    });
}

- (void)anticolParamReceived:(int)mode Counter:(int)counter {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_anticolParamReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            NSMutableDictionary *dic = [NSMutableDictionary dictionary];
            [dic setValue:[NSString stringWithFormat:@"%d",mode] forKey:@"mode"];
            [dic setValue:[NSString stringWithFormat:@"%d",counter] forKey:@"counter"];
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dic];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_anticolParamReceivedListenerCallbackId];
        }
    });
}

- (void)modulationParamReceived:(int)param {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_modulationParamReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:param];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_modulationParamReceivedListenerCallbackId];
        }
    });
}

- (void)txPowerLevelReceived:(NSData*)power {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_txPowerLevelReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_txPowerLevelReceivedListenerCallbackId];
        }
    });
}

- (void)regionReceived:(int)region {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_regionReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            NSString *strBand = @"";
            switch (region) {
                case REGION_KOREA_OLD:
                case REGION_KOREA:
                    strBand = @"KOREA";
                    break;
                case REGION_USA_OLD:
                    strBand = @"US(OLD Type)";
                    break;
                case REGION_USA:
                    strBand = @"US1(North)";
                    break;
                case REGION_USA2:
                    strBand = @"US2";
                    break;
                case REGION_EUROPE_OLD:
                case REGION_EUROPE:
                    strBand = @"EU";
                    break;
                case REGION_JAPAN_OLD:
                case REGION_JAPAN:
                    strBand = @"JAPAN";
                    break;
                case REGION_CHINA2_OLD:
                case REGION_CHINA1_OLD:
                case REGION_CHINA1:
                case REGION_CHINA2:
                    strBand = @"CHINA";
                    break;
                case REGION_AU_HK:
                    strBand = @"ASIA";
                    break;
                default:
                    strBand = @"Unkown";
                    break;
            }
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:strBand];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_regionReceivedListenerCallbackId];
        }
    });
}


- (void)stopConditionsReceived:(NSData *)data {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_stopConditionsReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_stopConditionsReceivedListenerCallbackId];
        }
    });
}

- (void)selectParamReceived:(NSData *)selParam {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_selectParamReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_selectParamReceivedListenerCallbackId];
        }
    });
}

- (void)queryParamReceived:(NSData *)qryParam {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_queryParamReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_queryParamReceivedListenerCallbackId];
        }
    });
}

//- (void)didSetRegion:(int)status {
//    dispatch_async(dispatch_get_main_queue(),^{
//    if(_didSetRegionListenerCallbackId){
    //        NSLog(@"%s,called",__PRETTY_FUNCTION__);
    //        CDVPluginResult *pluginResult = nil;
    //        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
    //        [pluginResult setKeepCallbackAsBool:YES];
    //        [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetRegionListenerCallbackId];

//    }
//    });
//}

- (void)onOffTimeChanged {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_onOffTimeChangedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_onOffTimeChangedListenerCallbackId];
        }
    });
}

- (void)freqHPTableReceived:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_freqHPTableReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_freqHPTableReceivedListenerCallbackId];
        }
    });
}



- (void)didSetFHmodeChanged {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetFHmodeChangedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetFHmodeChangedListenerCallbackId];
        }
    });
}

- (void)resGetFHmode {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_resGetFHmodeListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_resGetFHmodeListenerCallbackId];
        }
    });
}


- (void)rfidOnOffTimeReceived:(NSData*)data {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_rfidOnOffTimeReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidOnOffTimeReceivedListenerCallbackId];
        }
    });
}

- (void)updatedRegistry:(int)statusCode {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_updatedRegistryListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:statusCode];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_updatedRegistryListenerCallbackId];
        }
    });
}
- (void)fhLbtReceived:(NSData *)fhLb {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_fhLbtReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_fhLbtReceivedListenerCallbackId];
        }
    });
    
}
- (void)didSetOptiFreqHPTable:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetOptiFreqHPTableListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetOptiFreqHPTableListenerCallbackId];
        }
    });
}

- (void)hoppingTableReceived:(NSData *)table {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_hoppingTableReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            NSMutableString *strChannel = [[NSMutableString alloc]init];
            Byte *data = (Byte*) [table bytes];
            int nLen = data[0];
            for (int i=1; i<nLen+1; i++) {
                NSString *str = [NSString stringWithFormat:@"%d,",data[i]];
                [strChannel appendString:str];
            }
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:strChannel];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_hoppingTableReceivedListenerCallbackId];
        }
    });
}

- (void)didSetFreqHPTable:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetFreqHPTableListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetFreqHPTableListenerCallbackId];
        }
    });
}

- (void)didSetFhLbt:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_didSetFhLbtListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_didSetFhLbtListenerCallbackId];
        }
    });
}

- (void)rfidModuleVersionReceived {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_rfidModuleVersionReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidModuleVersionReceivedListenerCallbackId];
        }
    });
}

- (void)readerInfoReceived:(NSData *)data {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_readerInfoReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:data];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_readerInfoReceivedListenerCallbackId];
        }
    });
}

- (void)writtenReceived:(int)statusCode {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_writtenReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:statusCode];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_writtenReceivedListenerCallbackId];
        }
    });
}

- (void)sessionReceived:(int)session {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_sessionReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:session];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_sessionReceivedListenerCallbackId];
        }
    });
}

- (void)tagMemoryReceived:(NSData *)data {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_tagMemoryReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            uint8_t* pData = (uint8_t*)[data bytes];
            uint16_t intData = pData[0] << 8 | pData[1];
            intData = intData >>11;
            NSString *strW = [NSString stringWithFormat:@"%d",intData];
            NSMutableString* strR = [[NSMutableString alloc] init];
            unsigned char* ptr= (unsigned char*) [data bytes];
            for(int i = 0; i < data.length; i++)
                [strR appendFormat:@"%02X", *ptr++ & 0xFF ];
            NSString *str1 = [strW copy];
            NSString *str2 = [strR copy];
            NSMutableDictionary *dic = [NSMutableDictionary dictionary];
            [dic setValue:str1?:@"" forKey:@"strWrite"];
            [dic setValue:str2?:@"" forKey:@"strRead"];
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:dic];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_tagMemoryReceivedListenerCallbackId];
        }
    });
}

- (void)killedReceived:(int)statusCode {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_killedReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:statusCode];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_killedReceivedListenerCallbackId];
        }
    });
}

- (void)lockedReceived:(int)statusCode {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_lockedReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:statusCode];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_lockedReceivedListenerCallbackId];
        }
    });
}

- (void)registeryItemReceived:(NSData *)item {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_registeryItemReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:item];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_registeryItemReceivedListenerCallbackId];
        }
    });
}

- (void)genericReceived:(NSData*)data {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_genericReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:data];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_genericReceivedListenerCallbackId];
        }
    });
}

- (void)responseReboot:(int)status {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_responseRebootListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:status];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_responseRebootListenerCallbackId];
        }
    });
}

- (void)responseFWData:(NSData *)FWData {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_responseFWDataListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:FWData];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_responseFWDataListenerCallbackId];
        }
    });
}

- (void)rfidDataReceived:(NSData *)data {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_rfidDataReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArrayBuffer:data];
            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_rfidDataReceivedListenerCallbackId];
        }
    });
}

#pragma mark - AsReaderNFCProtocol Listener
- (void)setNfcDataReceivedListener:(CDVInvokedUrlCommand *)command {
    NSLog(@"%s,called",__PRETTY_FUNCTION__);
    _nfcDataReceivedListenerCallbackId = command.callbackId;
}

#pragma mark - AsReaderNFCProtocol
- (void)nfcDataReceived:(NSData *)data {
    dispatch_async(dispatch_get_main_queue(),^{
        if (_nfcDataReceivedListenerCallbackId) {
            NSLog(@"%s,called",__PRETTY_FUNCTION__);
            CDVPluginResult *pluginResult = nil;
            unsigned char *ptr = (unsigned char *) [data bytes];
            NSMutableString *tag = [[NSMutableString alloc]init];
            for (int i = 0; i < data.length; i++) {
                [tag appendFormat:@"%02x", *ptr++ & 0xFF ];
            }
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:tag];            [pluginResult setKeepCallbackAsBool:YES];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:_nfcDataReceivedListenerCallbackId];
        }
    });
}

@end
