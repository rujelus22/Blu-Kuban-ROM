.class Lcom/android/internal/telephony/sip/SipCommandInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SipCommandInterface.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "type"
    .parameter "id"
    .parameter "alertType"
    .parameter "AlertFormat"
    .parameter "AlertSrc"
    .parameter "AlertCorrel"
    .parameter "AlertMark"
    .parameter "AlertData"
    .parameter "response"

    .prologue
    .line 475
    return-void
.end method

.method public ModemHangup(I)V
    .registers 2
    .parameter "cid"

    .prologue
    .line 461
    return-void
.end method

.method public OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "type"
    .parameter "id"
    .parameter "Data"
    .parameter "Len"
    .parameter "response"

    .prologue
    .line 477
    return-void
.end method

.method public ServerStartSession(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "type"
    .parameter "session_id"
    .parameter "ID"
    .parameter "response"

    .prologue
    .line 473
    return-void
.end method

.method public SetupSession(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "CB1_ID"
    .parameter "CB2_ID"
    .parameter "CB3_ID"
    .parameter "ENC"
    .parameter "VER"
    .parameter "max_msg_size"
    .parameter "Max_obj_size"
    .parameter "Cookie"
    .parameter "Disp_Name"
    .parameter "response"

    .prologue
    .line 471
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 131
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 558
    return-void
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 454
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "ackPdu"
    .parameter "result"

    .prologue
    .line 230
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 226
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 222
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 310
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 69
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 74
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 62
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 65
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 522
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aidPtr"
    .parameter "response"

    .prologue
    .line 517
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "oldPass"
    .parameter "newPass"
    .parameter "result"

    .prologue
    .line 552
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 118
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 4
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 212
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 204
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 438
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 190
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 187
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 89
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 93
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 441
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 444
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 415
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 137
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 270
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 284
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 382
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 247
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 492
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 406
    return-void
.end method

.method public getCdmaDataProfile(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 463
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 366
    return-void
.end method

.method public getCdmaSystemProperties(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "sysPorpertyID"
    .parameter "response"

    .prologue
    .line 467
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 80
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 86
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 162
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 379
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 369
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 99
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 102
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 96
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 47
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 140
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 147
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 144
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 153
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 347
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 267
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 165
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 450
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .registers 3
    .parameter "fileid"
    .parameter "result"

    .prologue
    .line 447
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 344
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 125
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .registers 4
    .parameter "num_lock_type"
    .parameter "lock_type"
    .parameter "result"

    .prologue
    .line 425
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 156
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 353
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 498
    return-void
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 533
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 457
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 159
    return-void
.end method

.method public getWipiSysInfo(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 541
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 3
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 338
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 106
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 112
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 109
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .registers 3
    .parameter "channel"
    .parameter "response"

    .prologue
    .line 244
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "response"

    .prologue
    .line 238
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 234
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "AID"
    .parameter "response"

    .prologue
    .line 241
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 316
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 319
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 325
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 281
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 278
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 3
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 253
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 388
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 289
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 294
    return-void
.end method

.method public queryLineId(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 428
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 397
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .registers 3
    .parameter "index"
    .parameter "response"

    .prologue
    .line 501
    return-void
.end method

.method public registerForOmaDmSendData(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 479
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 134
    return-void
.end method

.method public releaseWakeLock()V
    .registers 1

    .prologue
    .line 538
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3
    .parameter "available"
    .parameter "result"

    .prologue
    .line 359
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 362
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "nonce"
    .parameter "response"

    .prologue
    .line 525
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 313
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 178
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 403
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 3
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 184
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 168
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .registers 5
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 529
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 331
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 334
    return-void
.end method

.method public sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 435
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 181
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "prefMode"
    .parameter "result"

    .prologue
    .line 549
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 328
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 307
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 3
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 128
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 322
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 3
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 250
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 274
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 4
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 257
    return-void
.end method

.method public setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V
    .registers 3
    .parameter "cb"
    .parameter "result"

    .prologue
    .line 489
    return-void
.end method

.method public setCbsOnOff([BLandroid/os/Message;)V
    .registers 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 545
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 412
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .registers 3
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 409
    return-void
.end method

.method public setCdmaDataProfile(ILandroid/os/Message;)V
    .registers 3
    .parameter "dataConnection"
    .parameter "response"

    .prologue
    .line 465
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 391
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .registers 3
    .parameter "cdmaSubscription"
    .parameter "response"

    .prologue
    .line 394
    return-void
.end method

.method public setCdmaSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "sysPorpertyID"
    .parameter "sysPropertyValue"
    .parameter "response"

    .prologue
    .line 469
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 299
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 304
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 375
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .parameter "config"
    .parameter "response"

    .prologue
    .line 372
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .registers 3
    .parameter "line"
    .parameter "response"

    .prologue
    .line 431
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 350
    return-void
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .registers 3
    .parameter "on"
    .parameter "response"

    .prologue
    .line 419
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 150
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 260
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 264
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 44
    return-void
.end method

.method public setPhoneType(I)V
    .registers 2
    .parameter "phoneType"

    .prologue
    .line 385
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 341
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 122
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 3
    .parameter "on"
    .parameter "result"

    .prologue
    .line 215
    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 423
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 356
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 218
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 3
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 400
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 209
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 201
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 3
    .parameter "c"
    .parameter "result"

    .prologue
    .line 171
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 174
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "passwd"
    .parameter "result"

    .prologue
    .line 555
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 50
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 56
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "pin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 509
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "pin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 486
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 53
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "puk"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 59
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 513
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 505
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 77
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 115
    return-void
.end method

.method public unregisterForOmaDmSendData(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 481
    return-void
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 495
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 196
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 193
    return-void
.end method
