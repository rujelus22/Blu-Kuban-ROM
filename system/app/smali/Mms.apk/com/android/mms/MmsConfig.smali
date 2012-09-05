.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field public static SMS_DB_COUNT:I

.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static mAllowAttachAudio:Z

.field private static mAllowSplitBarMove:Z

.field private static mCallbackOption:Z

.field private static mComposeMaxLengthLimit:I

.field private static mDefaultMMSMessagesPerThread:I

.field private static mDefaultSMSMessagesPerThread:I

.field private static mDisableEndterKey:I

.field private static mDisableSmsSettingNetworkLock:I

.field private static mEmailGateway:Ljava/lang/String;

.field private static mEnableAuthMdn:Z

.field private static mEnableEmailAndSegmentedSms:Z

.field private static mEnablePrefixFwd:Z

.field private static mEnableSaveEmptyRecipient:Z

.field private static mEnableSignature:Z

.field private static mHttpParams:Ljava/lang/String;

.field private static mHttpParamsLine1Key:Ljava/lang/String;

.field private static mHttpSocketTimeout:I

.field private static mInputModeAuto:I

.field private static mInternational_SMS_Guard:I

.field private static mMaxImageHeight:I

.field private static mMaxImageHeight_HighResolution:I

.field private static mMaxImageWidth:I

.field private static mMaxImageWidth_HighResolution:I

.field private static mMaxMessageCountPerThread:I

.field private static mMaxMessageSize:I

.field private static mMaxMessageSize_mir:I

.field private static mMaxMessageSize_tel:I

.field private static mMaxSizeScaleForPendingMmsAllowed:I

.field private static mMaxTextViewSize:I

.field private static mMinMessageCountPerThread:I

.field private static mMinimumSlideElementDuration:I

.field private static mMmsEnabled:I

.field private static mMmsHeaderSize:I

.field private static mNotifyWapMMSC:Z

.field private static mNotifyWapMMSC_Telefonica:Z

.field private static mOptionalFieldAttendance:Z

.field private static mRecipientLimit:I

.field private static mSavePdu:Z

.field private static mScreenOnOffOption:Z

.field private static mSendAnimationJpn:I

.field private static mSignatureSettings:Z

.field private static mSmsExpiredDate:I

.field private static mSmsToMmsTextThreshold:I

.field private static mSprintFeature:I

.field private static mSubjectSMS:I

.field private static mSupportEmoji:I

.field private static mSupportHD:Z

.field private static mTetheringmode:Z

.field private static mTransIdEnabled:Z

.field private static mTransactionLoggable:Z

.field private static mUSAATTUaProfUrl:Ljava/lang/String;

.field private static mUSAATTUserAgent:Ljava/lang/String;

.field private static mUSATMOUaProfUrl:Ljava/lang/String;

.field private static mUSATMOUserAgent:Ljava/lang/String;

.field private static mUaDebugSet:Z

.field private static mUaProfTagName:Ljava/lang/String;

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUaProfUrlDebug:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mUserAgentDebug:Ljava/lang/String;

.field private static mUserNai:Ljava/lang/String;

.field private static mVibrationOption:Z

.field private static mWapPush:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x1388

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    sput v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android-mms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 70
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    .line 72
    sput v4, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 74
    const v0, 0xfa000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 75
    const v0, 0x96000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    .line 76
    const v0, 0xfa000

    sput v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    .line 78
    const/16 v0, 0x1400

    sput v0, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android-mms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 81
    sput-object v3, Lcom/android/mms/MmsConfig;->mUserNai:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/android/mms/MmsConfig;->DEFAULT_USER_AGENT:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUSAATTUserAgent:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/android/mms/MmsConfig;->DEFAULT_USER_AGENT:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUSATMOUserAgent:Ljava/lang/String;

    .line 85
    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    .line 87
    sput-object v3, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 88
    sput-object v3, Lcom/android/mms/MmsConfig;->mUSAATTUaProfUrl:Ljava/lang/String;

    .line 89
    sput-object v3, Lcom/android/mms/MmsConfig;->mUSATMOUaProfUrl:Ljava/lang/String;

    .line 90
    sput-object v3, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    .line 92
    sput-object v3, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    .line 94
    const-string v0, "6245"

    sput-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    .line 96
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    .line 98
    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    .line 100
    const/16 v0, 0x4b0

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageHeight_HighResolution:I

    .line 102
    const/16 v0, 0x640

    sput v0, Lcom/android/mms/MmsConfig;->mMaxImageWidth_HighResolution:I

    .line 104
    const v0, 0x7fffffff

    sput v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 106
    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    .line 108
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    .line 110
    sput v5, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    .line 112
    sput v6, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    .line 114
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 116
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 118
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    .line 120
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    .line 121
    sput-boolean v4, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC_Telefonica:Z

    .line 123
    sput-boolean v4, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 124
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTetheringmode:Z

    .line 127
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    .line 129
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    .line 131
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 133
    sput-object v3, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 135
    sput-object v3, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 138
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    .line 144
    const/16 v0, 0xa

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    .line 147
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    .line 149
    sput v5, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    .line 151
    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    .line 154
    sput v2, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    .line 156
    sput v2, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    .line 158
    sput v2, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    .line 160
    sput v2, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    .line 162
    sput v2, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    .line 164
    sput v4, Lcom/android/mms/MmsConfig;->mWapPush:I

    .line 166
    sput v2, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    .line 168
    sput v2, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    .line 170
    sput v4, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    .line 172
    sput v4, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    .line 176
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mAllowSplitBarMove:Z

    .line 177
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSupportHD:Z

    .line 179
    sput v6, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    .line 181
    sput v2, Lcom/android/mms/MmsConfig;->mSprintFeature:I

    .line 183
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    .line 184
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    .line 185
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    .line 186
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    .line 187
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    .line 190
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    .line 191
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    .line 192
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    .line 193
    sput-boolean v2, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 566
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 570
    :cond_a
    if-eq v0, v2, :cond_14

    .line 571
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 575
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_45
    return-void
.end method

.method public static getAliasMaxChars()I
    .registers 1

    .prologue
    .line 395
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .registers 1

    .prologue
    .line 391
    sget v0, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .registers 1

    .prologue
    .line 399
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getCallbackOption()Z
    .registers 1

    .prologue
    .line 412
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    return v0
.end method

.method public static getComposeMaxLengthLimit()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 491
    sget v1, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .registers 1

    .prologue
    .line 345
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .registers 1

    .prologue
    .line 341
    sget v0, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    return v0
.end method

.method public static getDisableEndterKey()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 485
    sget v1, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .registers 1

    .prologue
    .line 301
    sget-object v0, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static final getEnableAuthMdn()Z
    .registers 1

    .prologue
    .line 823
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    return v0
.end method

.method public static final getEnableEmailAndSegmentedSms()Z
    .registers 1

    .prologue
    .line 831
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    return v0
.end method

.method public static final getEnablePrefixFwd()Z
    .registers 1

    .prologue
    .line 819
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    return v0
.end method

.method public static final getEnableSaveEmptyRecipient()Z
    .registers 1

    .prologue
    .line 827
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    return v0
.end method

.method public static final getEnableSignature()Z
    .registers 1

    .prologue
    .line 835
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    return v0
.end method

.method public static getEnableSmsToMmsThreshold()Z
    .registers 1

    .prologue
    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .registers 1

    .prologue
    .line 293
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .registers 1

    .prologue
    .line 297
    sget-object v0, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .registers 1

    .prologue
    .line 368
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getInputModeAuto()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 497
    sget v1, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getInternational_SMS_Guard()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 539
    sget v1, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getMaxContentsSize()I
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 239
    const-string v0, "XEC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_15

    .line 240
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    sget v1, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v0, v1

    .line 244
    :goto_14
    return v0

    .line 241
    :cond_15
    const-string v0, "MIR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_29

    .line 242
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    sget v1, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v0, v1

    goto :goto_14

    .line 244
    :cond_29
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    sget v1, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    sub-int/2addr v0, v1

    goto :goto_14
.end method

.method public static getMaxImageHeight()I
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 305
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, cscCode:Ljava/lang/String;
    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_25

    const-string v1, "SFR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_25

    const-string v1, "MIR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_25

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 311
    :cond_25
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageHeight_HighResolution:I

    .line 313
    :goto_27
    return v1

    :cond_28
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto :goto_27
.end method

.method public static getMaxImageWidth()I
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 317
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, cscCode:Ljava/lang/String;
    const-string v1, "XEC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_25

    const-string v1, "SFR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_25

    const-string v1, "MIR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_25

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 323
    :cond_25
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageWidth_HighResolution:I

    .line 325
    :goto_27
    return v1

    :cond_28
    sget v1, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto :goto_27
.end method

.method public static getMaxMessageCountPerThread()I
    .registers 1

    .prologue
    .line 353
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 230
    const-string v0, "XEC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_12

    .line 231
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    .line 235
    :goto_11
    return v0

    .line 232
    :cond_12
    const-string v0, "MIR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_23

    .line 233
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize_mir:I

    goto :goto_11

    .line 235
    :cond_23
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto :goto_11
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .registers 1

    .prologue
    .line 383
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static final getMaxTextViewSize()I
    .registers 1

    .prologue
    .line 815
    sget v0, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    return v0
.end method

.method public static getMinMessageCountPerThread()I
    .registers 1

    .prologue
    .line 349
    sget v0, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .registers 1

    .prologue
    .line 372
    sget v0, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 226
    sget v1, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getNetWorkLock()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 521
    sget v1, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getNotifyWapMMSC()Z
    .registers 2

    .prologue
    .line 376
    const-string v0, "XEC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 377
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC_Telefonica:Z

    .line 379
    :goto_11
    return v0

    :cond_12
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z

    goto :goto_11
.end method

.method public static getOptionalFieldAttendance()Z
    .registers 1

    .prologue
    .line 465
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    return v0
.end method

.method public static getProxyAuth()Ljava/lang/String;
    .registers 1

    .prologue
    .line 218
    const-string v0, "Proxy-Authorization"

    return-object v0
.end method

.method public static getRecipientLimit()I
    .registers 1

    .prologue
    .line 329
    sget v0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    return v0
.end method

.method public static getSavePduFiles()Z
    .registers 1

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    return v0
.end method

.method public static getScreenOnOffOption()Z
    .registers 1

    .prologue
    .line 403
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    return v0
.end method

.method public static getSendAnimationJpn()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 509
    sget v1, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getSignatureSettings()Z
    .registers 1

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    return v0
.end method

.method public static getSmsExpiredDate()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 503
    sget v1, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getSmsToMmsTextThreshold()I
    .registers 1

    .prologue
    .line 357
    sget v0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    return v0
.end method

.method public static getSubjectSMS()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 533
    sget v1, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getSupportEmoji()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 527
    sget v1, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getTetheringMode()Z
    .registers 1

    .prologue
    .line 337
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTetheringmode:Z

    return v0
.end method

.method public static getTransIdEnabled()Z
    .registers 1

    .prologue
    .line 253
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z

    return v0
.end method

.method public static getTransactionLoggable()Z
    .registers 1

    .prologue
    .line 420
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 275
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 279
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    if-eqz v0, :cond_7

    .line 280
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 281
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto :goto_6
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    if-eqz v0, :cond_7

    .line 262
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 263
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    goto :goto_6
.end method

.method public static getUserNai()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, ProxyString:Ljava/lang/String;
    const-string v1, "ril.cdma.usernai"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsConfig;->mUserNai:Ljava/lang/String;

    .line 213
    sget-object v1, Lcom/android/mms/MmsConfig;->mUserNai:Ljava/lang/String;

    return-object v1
.end method

.method public static getVibrationOption()Z
    .registers 1

    .prologue
    .line 409
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    return v0
.end method

.method public static getWapPush()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 515
    sget v1, Lcom/android/mms/MmsConfig;->mWapPush:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 196
    const-string v1, "Mms/MmsConfig"

    const-string v2, "MmsConfig.init()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.debugsettingready"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method public static isAliasEnabled()Z
    .registers 1

    .prologue
    .line 387
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z

    return v0
.end method

.method public static isDTFeature()Z
    .registers 2

    .prologue
    .line 544
    const-string v0, "DTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "DTR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "TNL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "TMZ"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "MAX"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "TRG"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "CRO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "TMS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "MBM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "TPL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "COS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "TMT"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "TMH"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 557
    :cond_b6
    const/4 v0, 0x1

    .line 559
    :goto_b7
    return v0

    :cond_b8
    const/4 v0, 0x0

    goto :goto_b7
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .registers 22
    .parameter "context"

    .prologue
    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f050003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 591
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    const-string v18, "Mms/MmsConfig"

    const-string v19, "[loadMmsSettings] "

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :try_start_12
    const-string v18, "mms_config"

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 596
    :cond_19
    :goto_19
    invoke-static {v10}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 597
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_1f} :catch_d0
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_fc
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_125

    move-result-object v13

    .line 598
    .local v13, tag:Ljava/lang/String;
    if-nez v13, :cond_55

    .line 782
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 785
    .end local v13           #tag:Ljava/lang/String;
    :goto_25
    const/4 v7, 0x0

    .line 787
    .local v7, errorStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v18

    if-eqz v18, :cond_32

    sget-object v18, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    if-nez v18, :cond_32

    .line 788
    const-string v7, "uaProfUrl"

    .line 791
    :cond_32
    if-eqz v7, :cond_64c

    .line 792
    const-string v18, "MmsConfig.loadMmsSettings mms_config.xml missing %s setting"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v7, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 794
    .local v6, err:Ljava/lang/String;
    const-string v18, "Mms/MmsConfig"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    new-instance v18, Lcom/android/mms/ContentRestrictionException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 601
    .end local v6           #err:Ljava/lang/String;
    .end local v7           #errorStr:Ljava/lang/String;
    .restart local v13       #tag:Ljava/lang/String;
    :cond_55
    const/16 v18, 0x0

    :try_start_57
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 602
    .local v9, name:Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 603
    .local v16, value:Ljava/lang/String;
    const/4 v14, 0x0

    .line 604
    .local v14, text:Ljava/lang/String;
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_76

    .line 605
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v14

    .line 609
    :cond_76
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 610
    .local v11, s:Ljava/lang/StringBuffer;
    const-string v18, "Mms/MmsConfig"

    const-string v19, "tag: "

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, " value: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 614
    const-string v18, "bool"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_391

    .line 616
    const-string v18, "enabledMMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e4

    .line 617
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e1

    const/16 v18, 0x1

    :goto_cc
    sput v18, Lcom/android/mms/MmsConfig;->mMmsEnabled:I
    :try_end_ce
    .catchall {:try_start_57 .. :try_end_ce} :catchall_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_ce} :catch_d0
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_ce} :catch_fc
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_ce} :catch_125

    goto/16 :goto_19

    .line 775
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catch_d0
    move-exception v5

    .line 776
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d1
    const-string v18, "Mms/MmsConfig"

    const-string v19, "loadMmsSettings caught "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_dc
    .catchall {:try_start_d1 .. :try_end_dc} :catchall_14e

    .line 782
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_25

    .line 617
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/StringBuffer;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_e1
    const/16 v18, 0x0

    goto :goto_cc

    .line 618
    :cond_e4
    :try_start_e4
    const-string v18, "enabledTransID"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10d

    .line 619
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mTransIdEnabled:Z
    :try_end_fa
    .catchall {:try_start_e4 .. :try_end_fa} :catchall_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_fa} :catch_d0
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_fa} :catch_fc
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_fa} :catch_125

    goto/16 :goto_19

    .line 777
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catch_fc
    move-exception v5

    .line 778
    .local v5, e:Ljava/lang/NumberFormatException;
    :try_start_fd
    const-string v18, "Mms/MmsConfig"

    const-string v19, "loadMmsSettings caught "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_108
    .catchall {:try_start_fd .. :try_end_108} :catchall_14e

    .line 782
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_25

    .line 620
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/StringBuffer;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_10d
    :try_start_10d
    const-string v18, "enabledNotifyWapMMSC"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_136

    .line 621
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mNotifyWapMMSC:Z
    :try_end_123
    .catchall {:try_start_10d .. :try_end_123} :catchall_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10d .. :try_end_123} :catch_d0
    .catch Ljava/lang/NumberFormatException; {:try_start_10d .. :try_end_123} :catch_fc
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_123} :catch_125

    goto/16 :goto_19

    .line 779
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catch_125
    move-exception v5

    .line 780
    .local v5, e:Ljava/io/IOException;
    :try_start_126
    const-string v18, "Mms/MmsConfig"

    const-string v19, "loadMmsSettings caught "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_131
    .catchall {:try_start_126 .. :try_end_131} :catchall_14e

    .line 782
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_25

    .line 622
    .end local v5           #e:Ljava/io/IOException;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/StringBuffer;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_136
    :try_start_136
    const-string v18, "aliasEnabled"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_153

    .line 623
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mAliasEnabled:Z
    :try_end_14c
    .catchall {:try_start_136 .. :try_end_14c} :catchall_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_136 .. :try_end_14c} :catch_d0
    .catch Ljava/lang/NumberFormatException; {:try_start_136 .. :try_end_14c} :catch_fc
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_14c} :catch_125

    goto/16 :goto_19

    .line 782
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :catchall_14e
    move-exception v18

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    throw v18

    .line 624
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #s:Ljava/lang/StringBuffer;
    .restart local v13       #tag:Ljava/lang/String;
    .restart local v14       #text:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_153
    :try_start_153
    const-string v18, "allowAttachAudio"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16b

    .line 625
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    goto/16 :goto_19

    .line 626
    :cond_16b
    const-string v18, "disableEndterKey"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18a

    .line 627
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_187

    const/16 v18, 0x1

    :goto_183
    sput v18, Lcom/android/mms/MmsConfig;->mDisableEndterKey:I

    goto/16 :goto_19

    :cond_187
    const/16 v18, 0x0

    goto :goto_183

    .line 628
    :cond_18a
    const-string v18, "composeMaxLengthLimit"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1a9

    .line 629
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1a6

    const/16 v18, 0x1

    :goto_1a2
    sput v18, Lcom/android/mms/MmsConfig;->mComposeMaxLengthLimit:I

    goto/16 :goto_19

    :cond_1a6
    const/16 v18, 0x0

    goto :goto_1a2

    .line 630
    :cond_1a9
    const-string v18, "inputModeAuto"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c8

    .line 631
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c5

    const/16 v18, 0x1

    :goto_1c1
    sput v18, Lcom/android/mms/MmsConfig;->mInputModeAuto:I

    goto/16 :goto_19

    :cond_1c5
    const/16 v18, 0x0

    goto :goto_1c1

    .line 632
    :cond_1c8
    const-string v18, "smsExpiryDate"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e7

    .line 633
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e4

    const/16 v18, 0x1

    :goto_1e0
    sput v18, Lcom/android/mms/MmsConfig;->mSmsExpiredDate:I

    goto/16 :goto_19

    :cond_1e4
    const/16 v18, 0x0

    goto :goto_1e0

    .line 634
    :cond_1e7
    const-string v18, "sendAnimationJpn"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_206

    .line 635
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_203

    const/16 v18, 0x1

    :goto_1ff
    sput v18, Lcom/android/mms/MmsConfig;->mSendAnimationJpn:I

    goto/16 :goto_19

    :cond_203
    const/16 v18, 0x0

    goto :goto_1ff

    .line 636
    :cond_206
    const-string v18, "wapPush"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_225

    .line 637
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_222

    const/16 v18, 0x1

    :goto_21e
    sput v18, Lcom/android/mms/MmsConfig;->mWapPush:I

    goto/16 :goto_19

    :cond_222
    const/16 v18, 0x0

    goto :goto_21e

    .line 638
    :cond_225
    const-string v18, "disable_sms_setting_networklock"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_244

    .line 639
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_241

    const/16 v18, 0x1

    :goto_23d
    sput v18, Lcom/android/mms/MmsConfig;->mDisableSmsSettingNetworkLock:I

    goto/16 :goto_19

    :cond_241
    const/16 v18, 0x0

    goto :goto_23d

    .line 640
    :cond_244
    const-string v18, "supportEmoji"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_263

    .line 641
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_260

    const/16 v18, 0x1

    :goto_25c
    sput v18, Lcom/android/mms/MmsConfig;->mSupportEmoji:I

    goto/16 :goto_19

    :cond_260
    const/16 v18, 0x0

    goto :goto_25c

    .line 642
    :cond_263
    const-string v18, "supportHD"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_27b

    .line 643
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mSupportHD:Z

    goto/16 :goto_19

    .line 644
    :cond_27b
    const-string v18, "enable_prefix_fwd"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_293

    .line 645
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mEnablePrefixFwd:Z

    goto/16 :goto_19

    .line 646
    :cond_293
    const-string v18, "enable_auth_mdn"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2ab

    .line 647
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mEnableAuthMdn:Z

    goto/16 :goto_19

    .line 648
    :cond_2ab
    const-string v18, "enable_save_empty_recipient"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2c3

    .line 649
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mEnableSaveEmptyRecipient:Z

    goto/16 :goto_19

    .line 650
    :cond_2c3
    const-string v18, "enable_screen_onoff_option"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2db

    .line 651
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mScreenOnOffOption:Z

    goto/16 :goto_19

    .line 652
    :cond_2db
    const-string v18, "enable_signature_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2f3

    .line 653
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mSignatureSettings:Z

    goto/16 :goto_19

    .line 654
    :cond_2f3
    const-string v18, "enable_vibration_option"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_30b

    .line 655
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mVibrationOption:Z

    goto/16 :goto_19

    .line 656
    :cond_30b
    const-string v18, "enable_email_segmented_sms"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_323

    .line 657
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mEnableEmailAndSegmentedSms:Z

    goto/16 :goto_19

    .line 658
    :cond_323
    const-string v18, "enable_signature"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_33b

    .line 659
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mEnableSignature:Z

    goto/16 :goto_19

    .line 660
    :cond_33b
    const-string v18, "enable_callback_option"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_353

    .line 661
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    sput-boolean v18, Lcom/android/mms/MmsConfig;->mCallbackOption:Z

    goto/16 :goto_19

    .line 662
    :cond_353
    const-string v18, "SubjectSMS"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_372

    .line 663
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_36f

    const/16 v18, 0x1

    :goto_36b
    sput v18, Lcom/android/mms/MmsConfig;->mSubjectSMS:I

    goto/16 :goto_19

    :cond_36f
    const/16 v18, 0x0

    goto :goto_36b

    .line 664
    :cond_372
    const-string v18, "International_SMS_Guard"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 665
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_38e

    const/16 v18, 0x1

    :goto_38a
    sput v18, Lcom/android/mms/MmsConfig;->mInternational_SMS_Guard:I

    goto/16 :goto_19

    :cond_38e
    const/16 v18, 0x0

    goto :goto_38a

    .line 667
    :cond_391
    const-string v18, "int"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_56d

    .line 669
    const-string v18, "maxMessageSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3c9

    .line 670
    const-string v18, "XEC"

    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3c1

    .line 671
    sget v18, Lcom/android/mms/MmsConfig;->mMaxMessageSize_tel:I

    sput v18, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_19

    .line 673
    :cond_3c1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    goto/16 :goto_19

    .line 674
    :cond_3c9
    const-string v18, "ATTmaxMessageSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3d5

    .line 676
    :cond_3d5
    const-string v18, "TMOmaxMessageSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3e1

    .line 678
    :cond_3e1
    const-string v18, "mmsHeaderSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3f5

    .line 679
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMmsHeaderSize:I

    goto/16 :goto_19

    .line 680
    :cond_3f5
    const-string v18, "maxImageHeight"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_409

    .line 681
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMaxImageHeight:I

    goto/16 :goto_19

    .line 682
    :cond_409
    const-string v18, "maxImageWidth"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_41d

    .line 683
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMaxImageWidth:I

    goto/16 :goto_19

    .line 684
    :cond_41d
    const-string v18, "defaultSMSMessagesPerThread"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_431

    .line 685
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mDefaultSMSMessagesPerThread:I

    goto/16 :goto_19

    .line 686
    :cond_431
    const-string v18, "defaultMMSMessagesPerThread"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_445

    .line 687
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mDefaultMMSMessagesPerThread:I

    goto/16 :goto_19

    .line 688
    :cond_445
    const-string v18, "minMessageCountPerThread"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_459

    .line 689
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMinMessageCountPerThread:I

    goto/16 :goto_19

    .line 690
    :cond_459
    const-string v18, "maxMessageCountPerThread"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_46d

    .line 691
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMaxMessageCountPerThread:I

    goto/16 :goto_19

    .line 692
    :cond_46d
    const-string v18, "smsToMmsTextThreshold"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4a7

    .line 693
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 694
    .local v4, defaultThreshold:I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 696
    .local v12, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v18, "csc_pref_key_threshold"

    move-object/from16 v0, v18

    invoke-interface {v12, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 698
    const-string v18, "Mms/MmsConfig"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[loadMmsSettings] mSmsToMmsTextThreshold= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 700
    .end local v4           #defaultThreshold:I
    .end local v12           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_4a7
    const-string v18, "recipientLimit"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4f5

    .line 701
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 702
    .local v3, defaultMax:I
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 704
    .restart local v12       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v18, "csc_pref_key_max_recipient"

    move-object/from16 v0, v18

    invoke-interface {v12, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 706
    sget v18, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    if-gez v18, :cond_4ce

    .line 707
    const v18, 0x7fffffff

    sput v18, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 709
    :cond_4ce
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "MmsRecipientLimit"

    sget v20, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 711
    const-string v18, "Mms/MmsConfig"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[loadMmsSettings] mRecipientLimit= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 712
    .end local v3           #defaultMax:I
    .end local v12           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_4f5
    const-string v18, "httpSocketTimeout"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_509

    .line 713
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    goto/16 :goto_19

    .line 714
    :cond_509
    const-string v18, "minimumSlideElementDuration"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_51d

    .line 715
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMinimumSlideElementDuration:I

    goto/16 :goto_19

    .line 716
    :cond_51d
    const-string v18, "maxSizeScaleForPendingMmsAllowed"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_531

    .line 717
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_19

    .line 718
    :cond_531
    const-string v18, "aliasMinChars"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_545

    .line 719
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mAliasRuleMinChars:I

    goto/16 :goto_19

    .line 720
    :cond_545
    const-string v18, "aliasMaxChars"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_559

    .line 721
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mAliasRuleMaxChars:I

    goto/16 :goto_19

    .line 722
    :cond_559
    const-string v18, "mMaxTextViewSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 723
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/mms/MmsConfig;->mMaxTextViewSize:I

    goto/16 :goto_19

    .line 725
    :cond_56d
    const-string v18, "string"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 727
    const-string v18, "userAgent"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5b5

    .line 728
    const-string v2, "SAMSUNG-"

    .line 729
    .local v2, baseurl:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 730
    .local v15, uap:Ljava/lang/StringBuffer;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    const-string v18, "REL"

    sget-object v19, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5a9

    .line 732
    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 733
    .local v8, model:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_5a9

    .line 734
    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 735
    const-string v18, "-Mms/2.0"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    .end local v8           #model:Ljava/lang/String;
    :cond_5a9
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    .line 739
    sget-object v18, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v18, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    goto/16 :goto_19

    .line 740
    .end local v2           #baseurl:Ljava/lang/String;
    .end local v15           #uap:Ljava/lang/StringBuffer;
    :cond_5b5
    const-string v18, "USAATTUserAgent"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5c1

    .line 747
    :cond_5c1
    const-string v18, "USATMOUserAgent"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5cd

    .line 754
    :cond_5cd
    const-string v18, "uaProfTagName"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5dd

    .line 755
    sput-object v14, Lcom/android/mms/MmsConfig;->mUaProfTagName:Ljava/lang/String;

    goto/16 :goto_19

    .line 756
    :cond_5dd
    const-string v18, "uaProfUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_61c

    .line 759
    const-string v18, "ro.build.version.incremental"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 762
    .local v17, version:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".rdf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    goto/16 :goto_19

    .line 765
    .end local v17           #version:Ljava/lang/String;
    :cond_61c
    const-string v18, "httpParams"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_62c

    .line 766
    sput-object v14, Lcom/android/mms/MmsConfig;->mHttpParams:Ljava/lang/String;

    goto/16 :goto_19

    .line 767
    :cond_62c
    const-string v18, "httpParamsLine1Key"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_63c

    .line 768
    sput-object v14, Lcom/android/mms/MmsConfig;->mHttpParamsLine1Key:Ljava/lang/String;

    goto/16 :goto_19

    .line 769
    :cond_63c
    const-string v18, "emailGatewayNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 770
    sput-object v14, Lcom/android/mms/MmsConfig;->mEmailGateway:Ljava/lang/String;
    :try_end_64a
    .catchall {:try_start_153 .. :try_end_64a} :catchall_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_153 .. :try_end_64a} :catch_d0
    .catch Ljava/lang/NumberFormatException; {:try_start_153 .. :try_end_64a} :catch_fc
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_64a} :catch_125

    goto/16 :goto_19

    .line 797
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/StringBuffer;
    .end local v13           #tag:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    .restart local v7       #errorStr:Ljava/lang/String;
    :cond_64c
    return-void
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 587
    :cond_a
    return-void
.end method

.method public static setOptionalFieldAttendance(Z)V
    .registers 1
    .parameter "set"

    .prologue
    .line 469
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mOptionalFieldAttendance:Z

    .line 470
    return-void
.end method

.method public static setSavePduFiles(Z)V
    .registers 1
    .parameter "set"

    .prologue
    .line 435
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mSavePdu:Z

    .line 436
    return-void
.end method

.method public static setSmsMmsMaxRecipient(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 479
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsMaxRecipient] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sput p0, Lcom/android/mms/MmsConfig;->mRecipientLimit:I

    .line 481
    return-void
.end method

.method public static setSmsMmsThreshold(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 474
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSmsMmsThreshold] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sput p0, Lcom/android/mms/MmsConfig;->mSmsToMmsTextThreshold:I

    .line 476
    return-void
.end method

.method public static setTransactionLoggable(Z)V
    .registers 1
    .parameter "set"

    .prologue
    .line 424
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mTransactionLoggable:Z

    .line 425
    return-void
.end method

.method public static setUaOrigin()V
    .registers 1

    .prologue
    .line 455
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 456
    sget-object v0, Lcom/android/mms/MmsConfig;->mUserAgent:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 457
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public static setUaProfUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "set"

    .prologue
    .line 450
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 451
    sput-object p0, Lcom/android/mms/MmsConfig;->mUaProfUrlDebug:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .registers 2
    .parameter "set"

    .prologue
    .line 445
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/MmsConfig;->mUaDebugSet:Z

    .line 446
    sput-object p0, Lcom/android/mms/MmsConfig;->mUserAgentDebug:Ljava/lang/String;

    .line 447
    return-void
.end method
