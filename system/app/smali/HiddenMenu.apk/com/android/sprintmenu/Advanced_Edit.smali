.class public Lcom/android/sprintmenu/Advanced_Edit;
.super Landroid/preference/PreferenceActivity;
.source "Advanced_Edit.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private ACCOLC_Pref:Landroid/preference/EditTextPreference;

.field private EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

.field private HomeOrginPrefValues:[Ljava/lang/String;

.field private HomeOrgin_Pref:Landroid/preference/ListPreference;

.field private HomePagePrefValues:[Ljava/lang/String;

.field private HomePage_Pref:Landroid/preference/ListPreference;

.field private Home_NID_Pref:Landroid/preference/EditTextPreference;

.field private Home_SID_Pref:Landroid/preference/EditTextPreference;

.field Lock_Code_Pref:Landroid/preference/Preference;

.field private MCC_Pref:Landroid/preference/EditTextPreference;

.field private MNC_Pref:Landroid/preference/EditTextPreference;

.field private RoamOrginPrefValues:[Ljava/lang/String;

.field private RoamOrigin_Pref:Landroid/preference/ListPreference;

.field private SlottedIndexPrefvalues:[Ljava/lang/String;

.field private mArResultString:Ljava/lang/String;

.field private mEVRCValues:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefValues:[Ljava/lang/String;

.field private mSprintExtension:Landroid/os/SystemProperties;

.field private savedInstanceState:Landroid/os/Bundle;

.field private tmpACCOLCPref:Ljava/lang/String;

.field private tmpEVRCBPref:Ljava/lang/String;

.field private tmpHomeNIDPref:Ljava/lang/String;

.field private tmpHomeOriginPref:Ljava/lang/String;

.field private tmpHomePagePref:Ljava/lang/String;

.field private tmpHomeSIDPref:Ljava/lang/String;

.field private tmpLockCodePref:Ljava/lang/String;

.field private tmpMCCPref:Ljava/lang/String;

.field private tmpMNCPref:Ljava/lang/String;

.field private tmpRoamOriginPref:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/android/sprintmenu/Advanced_Edit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    .line 99
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/Advanced_Edit;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 38
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "EVRC"

    aput-object v1, v0, v2

    const-string v1, "13K"

    aput-object v1, v0, v3

    const-string v1, "4GV"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrginPrefValues:[Ljava/lang/String;

    .line 39
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "EVRC"

    aput-object v1, v0, v2

    const-string v1, "13K"

    aput-object v1, v0, v3

    const-string v1, "4GV"

    aput-object v1, v0, v4

    const-string v1, "Wild"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePagePrefValues:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "EVRC"

    aput-object v1, v0, v2

    const-string v1, "13K"

    aput-object v1, v0, v3

    const-string v1, "4GV"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrginPrefValues:[Ljava/lang/String;

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->SlottedIndexPrefvalues:[Ljava/lang/String;

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "EVRC"

    aput-object v1, v0, v2

    const-string v1, "13K"

    aput-object v1, v0, v3

    const-string v1, "4GV"

    aput-object v1, v0, v4

    const-string v1, "Wild"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ON"

    aput-object v1, v0, v2

    const-string v1, "OFF"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->mEVRCValues:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->mSprintExtension:Landroid/os/SystemProperties;

    .line 606
    new-instance v0, Lcom/android/sprintmenu/Advanced_Edit$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/Advanced_Edit$1;-><init>(Lcom/android/sprintmenu/Advanced_Edit;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_Edit;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/sprintmenu/Advanced_Edit;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/Advanced_Edit;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/sprintmenu/Advanced_Edit;->updatePreference()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 103
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 104
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/Advanced_Edit;->sNotSet:Ljava/lang/String;

    .line 106
    .end local p1
    :cond_a
    return-object p1
.end method

.method private getOemData(I)V
    .registers 8
    .parameter "subOemid"

    .prologue
    .line 586
    sget-object v3, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getOemData called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 588
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 591
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0xc

    :try_start_13
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 592
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 593
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 594
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 595
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 596
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_51

    .line 602
    sget-object v3, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getOemData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_Edit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 604
    :goto_50
    return-void

    .line 598
    :catch_51
    move-exception v2

    .line 599
    .local v2, e:Ljava/io/IOException;
    sget-object v3, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private sendToRil_WriteAdvancedResult(BLjava/lang/String;)V
    .registers 10
    .parameter "change_flag"
    .parameter "set_value"

    .prologue
    .line 448
    sget-object v4, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v5, "sendToRil_SpeakerTestResult"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 450
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 451
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x8

    .line 452
    .local v3, fileSize:I
    sget-object v4, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set_value is intial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/16 v4, 0xc

    :try_start_2d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 455
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 456
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 457
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 458
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 459
    sget-object v4, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set_value is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_62} :catch_74

    .line 464
    :goto_62
    iget-object v4, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 465
    sget-object v4, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Send to RIL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 461
    :catch_74
    move-exception v2

    .line 462
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while writing to stream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method private updatePreference()V
    .registers 16

    .prologue
    .line 469
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v13, "updatePreference called"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :try_start_7
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mArResultString = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/4 v13, 0x4

    const/16 v14, 0x8

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    .line 476
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpHomeOriginPref_value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "0001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6e

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6e

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "01"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6e

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37c

    .line 478
    :cond_6e
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    .line 484
    :cond_75
    :goto_75
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpHomeOriginPref = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0x8

    const/16 v14, 0xc

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    .line 489
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpHomePagePref_value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "0000"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e8

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e8

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "00"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e8

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "000"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e3

    .line 491
    :cond_e8
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    .line 499
    :cond_ef
    :goto_ef
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpHomePagePref = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0xc

    const/16 v14, 0x10

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    .line 504
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpRoamOriginPref_value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "0001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_162

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_162

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "01"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_162

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_476

    .line 506
    :cond_162
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    .line 512
    :cond_169
    :goto_169
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpRoamOriginPref = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    iget-object v13, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0x10

    const/16 v14, 0x14

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    .line 517
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpEVRCBPref_value = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    const-string v13, "0001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1dc

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1dc

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    const-string v13, "01"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1dc

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    const-string v13, "001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4d8

    .line 519
    :cond_1dc
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mEVRCValues:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    .line 520
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 525
    :goto_1e9
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpEVRCBPref = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    iget-object v13, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0x18

    const/16 v14, 0x1c

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpLockCodePref:Ljava/lang/String;

    .line 531
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0x28

    const/16 v14, 0x2c

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeNIDPref:Ljava/lang/String;

    .line 532
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeNIDPref:Ljava/lang/String;

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 533
    .local v1, mDecimalValue:I
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0x24

    const/16 v14, 0x28

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeSIDPref:Ljava/lang/String;

    .line 536
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeSIDPref:Ljava/lang/String;

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 537
    .local v11, mSIDDecimalValue:I
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0x2c

    const/16 v14, 0x30

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    .line 540
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpMCCPref = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 542
    .local v2, mMMCDecimalValue:I
    div-int/lit8 v12, v2, 0x64

    rem-int/lit8 v12, v12, 0xa

    add-int/lit8 v3, v12, 0x1

    .line 543
    .local v3, mMMCFirstValue:I
    div-int/lit8 v12, v2, 0xa

    rem-int/lit8 v12, v12, 0xa

    add-int/lit8 v4, v12, 0x1

    .line 544
    .local v4, mMMCSecondValue:I
    rem-int/lit8 v12, v2, 0xa

    add-int/lit8 v5, v12, 0x1

    .line 545
    .local v5, mMMCThirdValue:I
    const/16 v12, 0xa

    if-ne v3, v12, :cond_29b

    .line 546
    const/4 v3, 0x0

    .line 548
    :cond_29b
    const/16 v12, 0xa

    if-ne v4, v12, :cond_2a0

    .line 549
    const/4 v4, 0x0

    .line 551
    :cond_2a0
    const/16 v12, 0xa

    if-ne v5, v12, :cond_2a5

    .line 552
    const/4 v5, 0x0

    .line 554
    :cond_2a5
    mul-int/lit8 v12, v3, 0x64

    mul-int/lit8 v13, v4, 0xa

    add-int/2addr v12, v13

    add-int v6, v12, v5

    .line 555
    .local v6, mMMCTotalValue:I
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mMMCDecimalValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mMMCTotalValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0x30

    const/16 v14, 0x34

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    .line 560
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tmpMNCPref = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 562
    .local v7, mMNCDecimalValue:I
    div-int/lit8 v12, v7, 0xa

    rem-int/lit8 v12, v12, 0xa

    add-int/lit8 v8, v12, 0x1

    .line 563
    .local v8, mMNCFirstValue:I
    rem-int/lit8 v12, v7, 0xa

    add-int/lit8 v9, v12, 0x1

    .line 564
    .local v9, mMNCSecondValue:I
    const/16 v12, 0xa

    if-ne v8, v12, :cond_322

    .line 565
    const/4 v8, 0x0

    .line 567
    :cond_322
    const/16 v12, 0xa

    if-ne v9, v12, :cond_327

    .line 568
    const/4 v9, 0x0

    .line 570
    :cond_327
    mul-int/lit8 v12, v8, 0xa

    add-int v10, v12, v9

    .line 571
    .local v10, mMNCTotalValue:I
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mMNCDecimalValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget-object v12, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mMNCTotalValue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mArResultString:Ljava/lang/String;

    const/16 v13, 0x34

    const/16 v14, 0x38

    invoke-static {v12, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpACCOLCPref:Ljava/lang/String;

    .line 577
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    iget-object v13, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpACCOLCPref:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 583
    .end local v1           #mDecimalValue:I
    .end local v2           #mMMCDecimalValue:I
    .end local v3           #mMMCFirstValue:I
    .end local v4           #mMMCSecondValue:I
    .end local v5           #mMMCThirdValue:I
    .end local v6           #mMMCTotalValue:I
    .end local v7           #mMNCDecimalValue:I
    .end local v8           #mMNCFirstValue:I
    .end local v9           #mMNCSecondValue:I
    .end local v10           #mMNCTotalValue:I
    .end local v11           #mSIDDecimalValue:I
    :goto_37b
    return-void

    .line 479
    :cond_37c
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "0002"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a4

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a4

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "02"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a4

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "002"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3b2

    .line 480
    :cond_3a4
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;
    :try_end_3ab
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_3ab} :catch_3ad

    goto/16 :goto_75

    .line 579
    :catch_3ad
    move-exception v0

    .line 580
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_37b

    .line 481
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3b2
    :try_start_3b2
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "0004"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3da

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "4"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3da

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "04"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3da

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "004"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_75

    .line 482
    :cond_3da
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    goto/16 :goto_75

    .line 492
    :cond_3e3
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "0001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_40b

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_40b

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "01"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_40b

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_414

    .line 493
    :cond_40b
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    goto/16 :goto_ef

    .line 494
    :cond_414
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "0002"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_43c

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_43c

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "02"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_43c

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "002"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_445

    .line 495
    :cond_43c
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    goto/16 :goto_ef

    .line 496
    :cond_445
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "0004"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_46d

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "4"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_46d

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "04"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_46d

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v13, "004"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ef

    .line 497
    :cond_46d
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    goto/16 :goto_ef

    .line 507
    :cond_476
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "0002"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_49e

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_49e

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "02"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_49e

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "002"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4a7

    .line 508
    :cond_49e
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    goto/16 :goto_169

    .line 509
    :cond_4a7
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "0004"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4cf

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v13, "4"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4cf

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "04"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4cf

    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v13, "004"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_169

    .line 510
    :cond_4cf
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPrefValues:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    goto/16 :goto_169

    .line 522
    :cond_4d8
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->mEVRCValues:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iput-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpEVRCBPref:Ljava/lang/String;

    .line 523
    iget-object v12, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_4e5
    .catch Ljava/lang/NullPointerException; {:try_start_3b2 .. :try_end_4e5} :catch_3ad

    goto/16 :goto_1e9
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0500ba

    const v7, 0x7f0500b9

    const v6, 0x7f0500b4

    const v5, 0x7f0500b3

    const v4, 0x7f0500b2

    .line 262
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    sget-object v2, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 266
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/android/sprintmenu/Advanced_Edit;->getOemData(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/sprintmenu/Advanced_Edit;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 270
    .local v1, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v2, 0x7f0500ad

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 272
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 275
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    .line 276
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrginPrefValues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrginPrefValues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 279
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    const-string v3, "HomeOrgin_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 281
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 283
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomeOrgin_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    .line 286
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePagePrefValues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePagePrefValues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 289
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    const-string v3, "HomePage_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 291
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 293
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->HomePage_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    .line 296
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrginPrefValues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrginPrefValues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 299
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    const-string v3, "RoamOrigin_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 301
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 303
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->RoamOrigin_Pref:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 306
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    .line 307
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0500b5

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 308
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    const-string v3, "EVRC_B_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_235

    .line 310
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f050066

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 313
    :goto_123
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 316
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Lock_Code_Pref:Landroid/preference/Preference;

    .line 317
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Lock_Code_Pref:Landroid/preference/Preference;

    const v3, 0x7f0500c3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 318
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Lock_Code_Pref:Landroid/preference/Preference;

    const-string v3, "Lock_Code_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Lock_Code_Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    .line 345
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v7}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 346
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v7}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 347
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    const-string v3, "Home_NID_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 352
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    .line 353
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v8}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 354
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v8}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 355
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    const-string v3, "Home_SID_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    .line 361
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    const v3, 0x7f0500bb

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 362
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    const v3, 0x7f0500bb

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 363
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    const-string v3, "MCC_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 368
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    .line 369
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    const v3, 0x7f0500bc

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 370
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    const v3, 0x7f0500bc

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 371
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    const-string v3, "MNC_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 376
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-direct {v2, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    .line 377
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    const v3, 0x7f0500bd

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 378
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    const v3, 0x7f0500bd

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 379
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    const-string v3, "ACCOLC_Pref"

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 429
    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/Advanced_Edit;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 431
    return-void

    .line 312
    :cond_235
    iget-object v2, p0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f050067

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_123
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/sprintmenu/Advanced_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 445
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 446
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 115
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, key:Ljava/lang/String;
    const v2, 0x7f0500c3

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 118
    sget-object v2, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onPreferenceTreeClick Advanced_Lock_Code_Pref is Called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/Advanced_Edit;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    :cond_29
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 436
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 437
    invoke-virtual {p0}, Lcom/android/sprintmenu/Advanced_Edit;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 438
    invoke-direct {p0}, Lcom/android/sprintmenu/Advanced_Edit;->updatePreference()V

    .line 439
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 21
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 128
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/sprintmenu/Advanced_Edit;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 131
    .local v12, pref:Landroid/preference/Preference;
    const/4 v14, 0x0

    .line 132
    .local v14, tmpHomeOriginPref1:Ljava/lang/String;
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onSharedPreferenceChanged : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-eqz v12, :cond_70

    .line 136
    const v15, 0x7f0500b2

    :try_start_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8f

    .line 137
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "HomeOrgin_Pref is Set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v15, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v16, "EVRC"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_71

    .line 141
    const-string v14, "0001"

    .line 147
    :cond_6a
    :goto_6a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    .line 257
    :cond_70
    :goto_70
    return-void

    .line 142
    :cond_71
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v16, "13K"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_80

    .line 143
    const-string v14, "0002"

    goto :goto_6a

    .line 144
    :cond_80
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v16, "4GV"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6a

    .line 145
    const-string v14, "0004"

    goto :goto_6a

    .line 148
    :cond_8f
    const v15, 0x7f0500b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_121

    .line 149
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "HomePage_Pref is Set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v15, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v16, "EVRC"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f4

    .line 153
    const-string v14, "0001"

    .line 161
    :cond_d2
    :goto_d2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_d8} :catch_d9

    goto :goto_70

    .line 252
    :catch_d9
    move-exception v2

    .line 253
    .local v2, e:Ljava/lang/Exception;
    const-string v15, "Invalid Input, Try again"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->savedInstanceState:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_70

    .line 154
    .end local v2           #e:Ljava/lang/Exception;
    :cond_f4
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v16, "13K"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_103

    .line 155
    const-string v14, "0002"

    goto :goto_d2

    .line 156
    :cond_103
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v16, "4GV"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_112

    .line 157
    const-string v14, "0004"

    goto :goto_d2

    .line 158
    :cond_112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomePagePref:Ljava/lang/String;

    const-string v16, "Wild"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d2

    .line 159
    const-string v14, "0000"

    goto :goto_d2

    .line 162
    :cond_121
    const v15, 0x7f0500b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18a

    .line 163
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "RoamOrigin_Pref is Set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v15, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v16, "EVRC"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16c

    .line 167
    const-string v14, "0001"

    .line 173
    :cond_164
    :goto_164
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    goto/16 :goto_70

    .line 168
    :cond_16c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v16, "13K"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17b

    .line 169
    const-string v14, "0002"

    goto :goto_164

    .line 170
    :cond_17b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v16, "4GV"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_164

    .line 171
    const-string v14, "0004"

    goto :goto_164

    .line 174
    :cond_18a
    const v15, 0x7f0500b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1cf

    .line 175
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "EVRC-B is set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v15}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_1c2

    .line 178
    const-string v13, "0001"

    .line 179
    .local v13, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f050066

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 184
    :goto_1ba
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    goto/16 :goto_70

    .line 181
    .end local v13           #result:Ljava/lang/String;
    :cond_1c2
    const-string v13, "0000"

    .line 182
    .restart local v13       #result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->EVRC_B_Pref:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f050067

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1ba

    .line 185
    .end local v13           #result:Ljava/lang/String;
    :cond_1cf
    const v15, 0x7f0500b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_212

    .line 186
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Advanced_Home_NID_Pref is Set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->Home_NID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v15}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeNIDPref:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeNIDPref:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeNIDPref:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    goto/16 :goto_70

    .line 190
    :cond_212
    const v15, 0x7f0500ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_255

    .line 191
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Advanced_Home_SID_Pref is Set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->Home_SID_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v15}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeSIDPref:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeSIDPref:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpHomeSIDPref:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    goto/16 :goto_70

    .line 195
    :cond_255
    const v15, 0x7f0500bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_333

    .line 196
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Advanced_MCC_Pref is Set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->MCC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v15}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    sget-object v16, Lcom/android/sprintmenu/Advanced_Edit;->sNotSet:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2a2

    .line 201
    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    goto/16 :goto_70

    .line 203
    :cond_2a2
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tmpMCCPref = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMCCPref:Ljava/lang/String;

    const/16 v16, 0xa

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 205
    .local v3, mMCCDecimalValue:I
    div-int/lit8 v15, v3, 0x64

    rem-int/lit8 v15, v15, 0xa

    add-int/lit8 v4, v15, -0x1

    .line 206
    .local v4, mMCCFirstValue:I
    div-int/lit8 v15, v3, 0xa

    rem-int/lit8 v15, v15, 0xa

    add-int/lit8 v5, v15, -0x1

    .line 207
    .local v5, mMCCSecondValue:I
    rem-int/lit8 v15, v3, 0xa

    add-int/lit8 v6, v15, -0x1

    .line 208
    .local v6, mMCCThirdValue:I
    const/4 v15, -0x1

    if-ne v4, v15, :cond_2df

    .line 209
    const/16 v4, 0x9

    .line 211
    :cond_2df
    const/4 v15, -0x1

    if-ne v5, v15, :cond_2e4

    .line 212
    const/16 v5, 0x9

    .line 214
    :cond_2e4
    const/4 v15, -0x1

    if-ne v6, v15, :cond_2e9

    .line 215
    const/16 v6, 0x9

    .line 217
    :cond_2e9
    mul-int/lit8 v15, v4, 0x64

    mul-int/lit8 v16, v5, 0xa

    add-int v15, v15, v16

    add-int v7, v15, v6

    .line 218
    .local v7, mMCCTotalValue:I
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mMCCDecimalValue = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mMCCTotalValue = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    goto/16 :goto_70

    .line 222
    .end local v3           #mMCCDecimalValue:I
    .end local v4           #mMCCFirstValue:I
    .end local v5           #mMCCSecondValue:I
    .end local v6           #mMCCThirdValue:I
    .end local v7           #mMCCTotalValue:I
    :cond_333
    const v15, 0x7f0500bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_404

    .line 223
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Advanced_MNC_Pref is Set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->MNC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v15}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    .line 225
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    sget-object v16, Lcom/android/sprintmenu/Advanced_Edit;->sNotSet:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_381

    .line 228
    const/16 v15, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    goto/16 :goto_70

    .line 230
    :cond_381
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tmpMNCPref = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpMNCPref:Ljava/lang/String;

    const/16 v16, 0xa

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 232
    .local v8, mMNCDecimalValue:I
    div-int/lit8 v15, v8, 0xa

    rem-int/lit8 v15, v15, 0xa

    add-int/lit8 v9, v15, -0x1

    .line 233
    .local v9, mMNCFirstValue:I
    rem-int/lit8 v15, v8, 0xa

    add-int/lit8 v10, v15, -0x1

    .line 234
    .local v10, mMNCSecondValue:I
    const/4 v15, -0x1

    if-ne v9, v15, :cond_3b8

    .line 235
    const/16 v9, 0x9

    .line 237
    :cond_3b8
    const/4 v15, -0x1

    if-ne v10, v15, :cond_3bd

    .line 238
    const/16 v10, 0x9

    .line 240
    :cond_3bd
    mul-int/lit8 v15, v9, 0xa

    add-int v11, v15, v10

    .line 241
    .local v11, mMNCTotalValue:I
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mMNCDecimalValue = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mMNCTotalValue = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v15, 0x8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V

    goto/16 :goto_70

    .line 245
    .end local v8           #mMNCDecimalValue:I
    .end local v9           #mMNCFirstValue:I
    .end local v10           #mMNCSecondValue:I
    .end local v11           #mMNCTotalValue:I
    :cond_404
    const v15, 0x7f0500bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_70

    .line 246
    sget-object v15, Lcom/android/sprintmenu/Advanced_Edit;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Advanced_ACCOLC_Pref is Set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->ACCOLC_Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v15}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_Edit;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpACCOLCPref:Ljava/lang/String;

    .line 248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpACCOLCPref:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    const/16 v15, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_Edit;->tmpACCOLCPref:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/sprintmenu/Advanced_Edit;->sendToRil_WriteAdvancedResult(BLjava/lang/String;)V
    :try_end_446
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_446} :catch_d9

    goto/16 :goto_70
.end method
