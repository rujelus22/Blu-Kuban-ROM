.class public Lcom/android/sprintmenu/Advanced_View;
.super Landroid/preference/PreferenceActivity;
.source "Advanced_View.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private ACCOLC_Pref:Landroid/preference/Preference;

.field private ESN_Pref:Landroid/preference/Preference;

.field private EVRC_B_Pref:Landroid/preference/Preference;

.field private FNID_Pref:Landroid/preference/Preference;

.field private FSID_Reg_Pref:Landroid/preference/Preference;

.field private HomeOrgin_Pref:Landroid/preference/Preference;

.field private HomePage_Pref:Landroid/preference/Preference;

.field private Home_NID_Pref:Landroid/preference/Preference;

.field private Home_SID_Pref:Landroid/preference/Preference;

.field private Home_Sys_Reg_Pref:Landroid/preference/Preference;

.field private MCC_Pref:Landroid/preference/Preference;

.field private MEID_Pref:Landroid/preference/Preference;

.field private MNC_Pref:Landroid/preference/Preference;

.field private P_REV_Pref:Landroid/preference/Preference;

.field private RoamOrigin_Pref:Landroid/preference/Preference;

.field private SCM_Pref:Landroid/preference/Preference;

.field private SlottedIndexPrefvalues:[Ljava/lang/String;

.field private Slotted_Index_Pref:Landroid/preference/Preference;

.field private Slotted_Mode_Pref:Landroid/preference/Preference;

.field private mArResultString:Ljava/lang/String;

.field private mEVRCValues:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefValues:[Ljava/lang/String;

.field meid:Ljava/lang/StringBuilder;

.field private tmpACCOLCPref:Ljava/lang/String;

.field private tmpESNPref:Ljava/lang/String;

.field private tmpEVRCBPref:Ljava/lang/String;

.field private tmpFNIDPref:Ljava/lang/String;

.field private tmpFSIDRegPref:Ljava/lang/String;

.field private tmpHomeNIDPref:Ljava/lang/String;

.field private tmpHomeOriginPref:Ljava/lang/String;

.field private tmpHomePagePref:Ljava/lang/String;

.field private tmpHomeSIDPref:Ljava/lang/String;

.field private tmpHomeSysRegPref:Ljava/lang/String;

.field private tmpMCCPref:Ljava/lang/String;

.field private tmpMEIDPref:Ljava/lang/String;

.field private tmpMNCPref:Ljava/lang/String;

.field private tmpPREVPref:Ljava/lang/String;

.field private tmpRoamOriginPref:Ljava/lang/String;

.field private tmpSCMPref:Ljava/lang/String;

.field private tmpSlottedIndexPref:Ljava/lang/String;

.field private tmpSlottedModePref:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/android/sprintmenu/Advanced_View;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    .line 91
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/Advanced_View;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EVRC"

    aput-object v1, v0, v2

    const-string v1, "13K"

    aput-object v1, v0, v3

    const-string v1, "4GV"

    aput-object v1, v0, v4

    const-string v1, "Wild"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Enabled"

    aput-object v1, v0, v2

    const-string v1, "Disabled"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "2"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_View;->SlottedIndexPrefvalues:[Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_View;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 457
    new-instance v0, Lcom/android/sprintmenu/Advanced_View$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/Advanced_View$1;-><init>(Lcom/android/sprintmenu/Advanced_View;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Advanced_View;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/sprintmenu/Advanced_View;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/Advanced_View;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/sprintmenu/Advanced_View;->updatePreference()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 95
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 96
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/Advanced_View;->sNotSet:Ljava/lang/String;

    .line 98
    .end local p1
    :cond_a
    return-object p1
.end method

.method private convertDecESNtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7
    .parameter "esnno"

    .prologue
    const/4 v4, 0x3

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, hmfcode:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, hserialno:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 521
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_6c

    .line 540
    :goto_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 525
    :pswitch_4d
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 528
    :pswitch_53
    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 531
    :pswitch_59
    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 534
    :pswitch_5f
    const-string v2, "0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 537
    :pswitch_65
    const-string v2, "00000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 523
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
    .end packed-switch
.end method

.method private convertDecMEIDtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 8
    .parameter "meidno"

    .prologue
    const/16 v5, 0xa

    .line 544
    new-instance v3, Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, hmfcode:Ljava/lang/String;
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, hserialno:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v0, hexaMEID:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_94

    .line 570
    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_a6

    .line 588
    :goto_47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    .line 549
    :pswitch_4c
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 552
    :pswitch_52
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 555
    :pswitch_58
    const-string v3, "000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 558
    :pswitch_5e
    const-string v3, "0000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 561
    :pswitch_64
    const-string v3, "00000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 564
    :pswitch_6a
    const-string v3, "000000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 567
    :pswitch_70
    const-string v3, "0000000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 573
    :pswitch_76
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 576
    :pswitch_7c
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 579
    :pswitch_82
    const-string v3, "000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 582
    :pswitch_88
    const-string v3, "0000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 585
    :pswitch_8e
    const-string v3, "00000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 547
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6a
        :pswitch_64
        :pswitch_5e
        :pswitch_58
        :pswitch_52
        :pswitch_4c
    .end packed-switch

    .line 571
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_88
        :pswitch_82
        :pswitch_7c
        :pswitch_76
    .end packed-switch
.end method

.method private convertDeviceIdtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "devID"

    .prologue
    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 499
    .local v0, len:I
    const/4 v1, 0x0

    .line 501
    .local v1, out:Ljava/lang/StringBuilder;
    const/16 v2, 0xb

    if-ne v0, v2, :cond_e

    .line 502
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/Advanced_View;->convertDecESNtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 506
    :cond_d
    :goto_d
    return-object v1

    .line 503
    :cond_e
    const/16 v2, 0x12

    if-ne v0, v2, :cond_d

    .line 504
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/Advanced_View;->convertDecMEIDtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_d
.end method

.method private getOemData(I)V
    .registers 8
    .parameter "subOemid"

    .prologue
    .line 437
    sget-object v3, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getOemData called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 439
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 442
    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0xc

    :try_start_13
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 443
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 444
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 445
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 446
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 447
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_51

    .line 453
    sget-object v3, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

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

    .line 454
    iget-object v3, p0, Lcom/android/sprintmenu/Advanced_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 455
    :goto_50
    return-void

    .line 449
    :catch_51
    move-exception v2

    .line 450
    .local v2, e:Ljava/io/IOException;
    sget-object v3, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

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

.method private updatePreference()V
    .registers 18

    .prologue
    .line 258
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    const-string v15, "updatePreference called"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->meid:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpMEIDPref:Ljava/lang/String;

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/sprintmenu/Advanced_View;->convertDecESNtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpESNPref:Ljava/lang/String;

    .line 263
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mArResultString = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x4

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpPREVPref:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->P_REV_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpPREVPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpPREVPref = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpPREVPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/4 v15, 0x4

    const/16 v16, 0x8

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    .line 270
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpHomeOriginPref_value = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "0001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "01"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_64e

    .line 272
    :cond_e2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    .line 278
    :cond_ed
    :goto_ed
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpHomeOriginPref = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->HomeOrgin_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x8

    const/16 v16, 0xc

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    .line 283
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpHomePagePref_value = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "0000"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "000"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6cd

    .line 285
    :cond_17a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    .line 293
    :cond_185
    :goto_185
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpHomePagePref = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->HomePage_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0xc

    const/16 v16, 0x10

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    .line 298
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpRoamOriginPref_value = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "0001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_212

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_212

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "01"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_212

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_784

    .line 300
    :cond_212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    .line 306
    :cond_21d
    :goto_21d
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpRoamOriginPref = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->RoamOrigin_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x10

    const/16 v16, 0x14

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    .line 311
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpEVRCBPref_value = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    const-string v15, "0001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2aa

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2aa

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    const-string v15, "01"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2aa

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    const-string v15, "001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7fe

    .line 313
    :cond_2aa
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    .line 317
    :goto_2b5
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpEVRCBPref = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->EVRC_B_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x14

    const/16 v16, 0x18

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSCMPref:Ljava/lang/String;

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSCMPref:Ljava/lang/String;

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 323
    .local v12, mSCMDecimalValue:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->SCM_Pref:Landroid/preference/Preference;

    invoke-static {v12}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x1c

    const/16 v16, 0x20

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    const-string v15, "0001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_349

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_349

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    const-string v15, "01"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_349

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    const-string v15, "001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_80b

    .line 329
    :cond_349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    .line 333
    :goto_354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Mode_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x20

    const/16 v16, 0x24

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedIndexPref:Ljava/lang/String;

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Index_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedIndexPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x28

    const/16 v16, 0x2c

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeNIDPref:Ljava/lang/String;

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeNIDPref:Ljava/lang/String;

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 340
    .local v2, mDecimalValue:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->Home_NID_Pref:Landroid/preference/Preference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x24

    const/16 v16, 0x28

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSIDPref:Ljava/lang/String;

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSIDPref:Ljava/lang/String;

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 344
    .local v13, mSIDDecimalValue:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->Home_SID_Pref:Landroid/preference/Preference;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x2c

    const/16 v16, 0x30

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpMCCPref:Ljava/lang/String;

    .line 347
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpMCCPref = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpMCCPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpMCCPref:Ljava/lang/String;

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 349
    .local v3, mMCCDecimalValue:I
    div-int/lit8 v14, v3, 0x64

    rem-int/lit8 v14, v14, 0xa

    add-int/lit8 v4, v14, 0x1

    .line 350
    .local v4, mMCCFirstValue:I
    div-int/lit8 v14, v3, 0xa

    rem-int/lit8 v14, v14, 0xa

    add-int/lit8 v5, v14, 0x1

    .line 351
    .local v5, mMCCSecondValue:I
    rem-int/lit8 v14, v3, 0xa

    add-int/lit8 v6, v14, 0x1

    .line 352
    .local v6, mMCCThirdValue:I
    const/16 v14, 0xa

    if-ne v4, v14, :cond_423

    .line 353
    const/4 v4, 0x0

    .line 355
    :cond_423
    const/16 v14, 0xa

    if-ne v5, v14, :cond_428

    .line 356
    const/4 v5, 0x0

    .line 358
    :cond_428
    const/16 v14, 0xa

    if-ne v6, v14, :cond_42d

    .line 359
    const/4 v6, 0x0

    .line 361
    :cond_42d
    mul-int/lit8 v14, v4, 0x64

    mul-int/lit8 v15, v5, 0xa

    add-int/2addr v14, v15

    add-int v7, v14, v6

    .line 362
    .local v7, mMCCTotalValue:I
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mMCCDecimalValue = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mMCCTotalValue = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->MCC_Pref:Landroid/preference/Preference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x30

    const/16 v16, 0x34

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpMNCPref:Ljava/lang/String;

    .line 367
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpMNCPref = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpMNCPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpMNCPref:Ljava/lang/String;

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 369
    .local v8, mMNCDecimalValue:I
    div-int/lit8 v14, v8, 0xa

    rem-int/lit8 v14, v14, 0xa

    add-int/lit8 v9, v14, 0x1

    .line 370
    .local v9, mMNCFirstValue:I
    rem-int/lit8 v14, v8, 0xa

    add-int/lit8 v10, v14, 0x1

    .line 371
    .local v10, mMNCSecondValue:I
    const/16 v14, 0xa

    if-ne v9, v14, :cond_4b6

    .line 372
    const/4 v9, 0x0

    .line 374
    :cond_4b6
    const/16 v14, 0xa

    if-ne v10, v14, :cond_4bb

    .line 375
    const/4 v10, 0x0

    .line 377
    :cond_4bb
    mul-int/lit8 v14, v9, 0xa

    add-int v11, v14, v10

    .line 378
    .local v11, mMNCTotalValue:I
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mMNCDecimalValue = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mMNCTotalValue = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->MNC_Pref:Landroid/preference/Preference;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x34

    const/16 v16, 0x38

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpACCOLCPref:Ljava/lang/String;

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->ACCOLC_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpACCOLCPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x38

    const/16 v16, 0x3c

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    const-string v15, "0001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_55b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_55b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    const-string v15, "01"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_55b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    const-string v15, "001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_818

    .line 387
    :cond_55b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    .line 391
    :goto_566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->Home_Sys_Reg_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x3c

    const/16 v16, 0x40

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    const-string v15, "0001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5b7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5b7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    const-string v15, "01"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5b7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    const-string v15, "001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_825

    .line 395
    :cond_5b7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    .line 399
    :goto_5c2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->FSID_Reg_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mArResultString:Ljava/lang/String;

    const/16 v15, 0x40

    const/16 v16, 0x44

    invoke-static/range {v14 .. v16}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    const-string v15, "0001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_613

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_613

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    const-string v15, "01"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_613

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    const-string v15, "001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_832

    .line 403
    :cond_613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    .line 407
    :goto_61e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->FNID_Pref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    sget-object v14, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tmpHomePagePref = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v2           #mDecimalValue:I
    .end local v3           #mMCCDecimalValue:I
    .end local v4           #mMCCFirstValue:I
    .end local v5           #mMCCSecondValue:I
    .end local v6           #mMCCThirdValue:I
    .end local v7           #mMCCTotalValue:I
    .end local v8           #mMNCDecimalValue:I
    .end local v9           #mMNCFirstValue:I
    .end local v10           #mMNCSecondValue:I
    .end local v11           #mMNCTotalValue:I
    .end local v12           #mSCMDecimalValue:I
    .end local v13           #mSIDDecimalValue:I
    :goto_64d
    return-void

    .line 273
    :cond_64e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "0002"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_67e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_67e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "02"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_67e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "002"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_690

    .line 274
    :cond_67e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;
    :try_end_689
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_689} :catch_68b

    goto/16 :goto_ed

    .line 412
    :catch_68b
    move-exception v1

    .line 413
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_64d

    .line 275
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_690
    :try_start_690
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "0004"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6c0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6c0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "04"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6c0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "004"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ed

    .line 276
    :cond_6c0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    goto/16 :goto_ed

    .line 286
    :cond_6cd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "0001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6fd

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6fd

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "01"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6fd

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_70a

    .line 287
    :cond_6fd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    goto/16 :goto_185

    .line 288
    :cond_70a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "0002"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_73a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_73a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "02"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_73a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "002"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_747

    .line 289
    :cond_73a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    goto/16 :goto_185

    .line 290
    :cond_747
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "0004"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_777

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_777

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "04"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_777

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    const-string v15, "004"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_185

    .line 291
    :cond_777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    goto/16 :goto_185

    .line 301
    :cond_784
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "0002"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7b4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7b4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "02"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7b4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "002"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7c1

    .line 302
    :cond_7b4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    goto/16 :goto_21d

    .line 303
    :cond_7c1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "0004"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7f1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    const-string v15, "4"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7f1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "04"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7f1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    const-string v15, "004"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21d

    .line 304
    :cond_7f1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mPrefValues:[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    goto/16 :goto_21d

    .line 315
    :cond_7fe
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    goto/16 :goto_2b5

    .line 331
    .restart local v12       #mSCMDecimalValue:I
    :cond_80b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    goto/16 :goto_354

    .line 389
    .restart local v2       #mDecimalValue:I
    .restart local v3       #mMCCDecimalValue:I
    .restart local v4       #mMCCFirstValue:I
    .restart local v5       #mMCCSecondValue:I
    .restart local v6       #mMCCThirdValue:I
    .restart local v7       #mMCCTotalValue:I
    .restart local v8       #mMNCDecimalValue:I
    .restart local v9       #mMNCFirstValue:I
    .restart local v10       #mMNCSecondValue:I
    .restart local v11       #mMNCTotalValue:I
    .restart local v13       #mSIDDecimalValue:I
    :cond_818
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    goto/16 :goto_566

    .line 397
    :cond_825
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    goto/16 :goto_5c2

    .line 405
    :cond_832
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->mEVRCValues:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;
    :try_end_83d
    .catch Ljava/lang/NullPointerException; {:try_start_690 .. :try_end_83d} :catch_68b

    goto/16 :goto_61e
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    sget-object v5, Lcom/android/sprintmenu/Advanced_View;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 108
    const/16 v5, 0x28

    invoke-direct {p0, v5}, Lcom/android/sprintmenu/Advanced_View;->getOemData(I)V

    .line 111
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDMA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 112
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, msidNumber:Ljava/lang/String;
    const-string v1, ""

    .line 115
    .local v1, formattedNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 116
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_35
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, devId:Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->meid:Ljava/lang/StringBuilder;

    .line 122
    :cond_44
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->meid:Ljava/lang/StringBuilder;

    const-string v6, "Dec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nHex:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/sprintmenu/Advanced_View;->convertDeviceIdtoHexa(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 125
    .end local v0           #devId:Ljava/lang/String;
    .end local v1           #formattedNumber:Ljava/lang/String;
    .end local v3           #msidNumber:Ljava/lang/String;
    :cond_5d
    invoke-virtual {p0}, Lcom/android/sprintmenu/Advanced_View;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 128
    .local v4, root:Landroid/preference/PreferenceScreen;
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 129
    .local v2, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v5, 0x7f0500ad

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 130
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 132
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MEID_Pref:Landroid/preference/Preference;

    .line 133
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MEID_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500ae

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 134
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MEID_Pref:Landroid/preference/Preference;

    const-string v6, "MEID_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 135
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MEID_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->meid:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MEID_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 138
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ESN_Pref:Landroid/preference/Preference;

    .line 139
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ESN_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500af

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 140
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ESN_Pref:Landroid/preference/Preference;

    const-string v6, "ESN_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 141
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ESN_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->meid:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ESN_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 144
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->P_REV_Pref:Landroid/preference/Preference;

    .line 145
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->P_REV_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 146
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->P_REV_Pref:Landroid/preference/Preference;

    const-string v6, "P_REV_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->P_REV_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpPREVPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->P_REV_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 150
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomeOrgin_Pref:Landroid/preference/Preference;

    .line 151
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomeOrgin_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b2

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 152
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomeOrgin_Pref:Landroid/preference/Preference;

    const-string v6, "HomeOrgin_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 153
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomeOrgin_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeOriginPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomeOrgin_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 156
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomePage_Pref:Landroid/preference/Preference;

    .line 157
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomePage_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b3

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 158
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomePage_Pref:Landroid/preference/Preference;

    const-string v6, "HomePage_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomePage_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpHomePagePref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->HomePage_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->RoamOrigin_Pref:Landroid/preference/Preference;

    .line 163
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->RoamOrigin_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b4

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 164
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->RoamOrigin_Pref:Landroid/preference/Preference;

    const-string v6, "RoamOrigin_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->RoamOrigin_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpRoamOriginPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->RoamOrigin_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 168
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->EVRC_B_Pref:Landroid/preference/Preference;

    .line 169
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->EVRC_B_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 170
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->EVRC_B_Pref:Landroid/preference/Preference;

    const-string v6, "EVRC_B_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 171
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->EVRC_B_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpEVRCBPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->EVRC_B_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 174
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->SCM_Pref:Landroid/preference/Preference;

    .line 175
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->SCM_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 176
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->SCM_Pref:Landroid/preference/Preference;

    const-string v6, "SCM_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->SCM_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpSCMPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->SCM_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Mode_Pref:Landroid/preference/Preference;

    .line 181
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Mode_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b7

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 182
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Mode_Pref:Landroid/preference/Preference;

    const-string v6, "Slotted_Mode_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Mode_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedModePref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Mode_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Index_Pref:Landroid/preference/Preference;

    .line 187
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Index_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b8

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 188
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Index_Pref:Landroid/preference/Preference;

    const-string v6, "Slotted_Index_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 189
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Index_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpSlottedIndexPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Slotted_Index_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_NID_Pref:Landroid/preference/Preference;

    .line 193
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_NID_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500b9

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 194
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_NID_Pref:Landroid/preference/Preference;

    const-string v6, "Home_NID_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_NID_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeNIDPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_NID_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 198
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_SID_Pref:Landroid/preference/Preference;

    .line 199
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_SID_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500ba

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 200
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_SID_Pref:Landroid/preference/Preference;

    const-string v6, "Home_SID_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_SID_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSIDPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_SID_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MCC_Pref:Landroid/preference/Preference;

    .line 205
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MCC_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500bb

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 206
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MCC_Pref:Landroid/preference/Preference;

    const-string v6, "MCC_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 207
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MCC_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpMCCPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MCC_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MNC_Pref:Landroid/preference/Preference;

    .line 211
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MNC_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500bc

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 212
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MNC_Pref:Landroid/preference/Preference;

    const-string v6, "MNC_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 213
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MNC_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpMNCPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->MNC_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ACCOLC_Pref:Landroid/preference/Preference;

    .line 217
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ACCOLC_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500bd

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 218
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ACCOLC_Pref:Landroid/preference/Preference;

    const-string v6, "ACCOLC_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ACCOLC_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpACCOLCPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->ACCOLC_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_Sys_Reg_Pref:Landroid/preference/Preference;

    .line 223
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_Sys_Reg_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500be

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 224
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_Sys_Reg_Pref:Landroid/preference/Preference;

    const-string v6, "Home_Sys_Reg_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_Sys_Reg_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpHomeSysRegPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->Home_Sys_Reg_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FSID_Reg_Pref:Landroid/preference/Preference;

    .line 229
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FSID_Reg_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500bf

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 230
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FSID_Reg_Pref:Landroid/preference/Preference;

    const-string v6, "FSID_Reg_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FSID_Reg_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpFSIDRegPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FSID_Reg_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 234
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FNID_Pref:Landroid/preference/Preference;

    .line 235
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FNID_Pref:Landroid/preference/Preference;

    const v6, 0x7f0500c0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 236
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FNID_Pref:Landroid/preference/Preference;

    const-string v6, "FNID_Pref"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 237
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FNID_Pref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/Advanced_View;->tmpFNIDPref:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/sprintmenu/Advanced_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v5, p0, Lcom/android/sprintmenu/Advanced_View;->FNID_Pref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    invoke-virtual {p0, v4}, Lcom/android/sprintmenu/Advanced_View;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 254
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/sprintmenu/Advanced_View;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 429
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 430
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 421
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 422
    invoke-virtual {p0}, Lcom/android/sprintmenu/Advanced_View;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 423
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 434
    return-void
.end method
