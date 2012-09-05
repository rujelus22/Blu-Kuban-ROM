.class public Lcom/google/android/gsf/checkin/CheckinRequestBuilder;
.super Ljava/lang/Object;
.source "CheckinRequestBuilder.java"


# static fields
.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static ESN_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x41b

    .line 112
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 117
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 122
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 127
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_INTENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 255
    const-string v0, "^(([0-9]{15})|([0-9a-fA-F]{14}))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 258
    const-string v0, "^([0-9a-fA-F]{8})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->ESN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccountInfo(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 12
    .parameter "context"
    .parameter "request"

    .prologue
    const/16 v9, 0xb

    .line 458
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 459
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v7, "com.google"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 460
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_53

    aget-object v0, v3, v4

    .line 461
    .local v0, a:Landroid/accounts/Account;
    const-string v7, "ac2dm"

    invoke-virtual {v2, v0, v7}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, token:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 463
    const-string v7, "SID"

    invoke-virtual {v2, v0, v7}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 469
    :cond_25
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v9, v7}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 470
    if-eqz v6, :cond_50

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 471
    invoke-virtual {p1, v9, v6}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 460
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 477
    .end local v0           #a:Landroid/accounts/Account;
    .end local v6           #token:Ljava/lang/String;
    :cond_53
    array-length v7, v1

    if-nez v7, :cond_5b

    .line 478
    const-string v7, ""

    invoke-virtual {p1, v9, v7}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 480
    :cond_5b
    return-void
.end method

.method public static addBuildProperties(Landroid/content/SharedPreferences;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 11
    .parameter "storage"
    .parameter "request"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 154
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 155
    .local v1, checkin:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 156
    .local v0, build:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_16

    .line 157
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v0           #build:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v4, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 158
    .restart local v0       #build:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 161
    :cond_16
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getRadioVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, currentRadioVersion:Ljava/lang/String;
    const-string v4, "CheckinTask_lastRadio"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, storedRadioVersion:Ljava/lang/String;
    if-nez v2, :cond_92

    .line 165
    move-object v2, v3

    .line 172
    :cond_31
    :goto_31
    invoke-virtual {v0, v6, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 173
    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 174
    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 175
    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 176
    const/16 v4, 0x9

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 177
    const/16 v4, 0xb

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 178
    const/16 v4, 0xc

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 179
    const/16 v4, 0xd

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 180
    const/4 v4, 0x7

    sget-wide v5, Landroid/os/Build;->TIME:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 181
    const/16 v4, 0xa

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 183
    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addOtaCerts(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 184
    return-void

    .line 167
    :cond_92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 168
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "CheckinTask_lastRadio"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_31
.end method

.method public static addDeviceConfiguration(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 28
    .parameter "context"
    .parameter "request"

    .prologue
    .line 695
    const/16 v24, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 697
    .local v7, deviceConfig:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v7, :cond_1e

    .line 698
    new-instance v7, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v7           #deviceConfig:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v24, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->DEVICE_CONFIGURATION_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 699
    .restart local v7       #deviceConfig:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v24, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 702
    :cond_1e
    const-string v24, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 703
    .local v3, am:Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v5

    .line 706
    .local v5, ci:Landroid/content/pm/ConfigurationInfo;
    const/16 v24, 0x1

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->touchScreenFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 707
    const/16 v24, 0x2

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->keyboardFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 708
    const/16 v24, 0x3

    invoke-static {v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->navigationFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 711
    .local v6, config:Landroid/content/res/Configuration;
    const/16 v24, 0x4

    invoke-static {v6}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->screenLayoutFromConfig(Landroid/content/res/Configuration;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 713
    const/16 v25, 0x5

    iget v0, v5, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-lez v24, :cond_104

    const/16 v24, 0x1

    :goto_76
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 715
    const/16 v25, 0x6

    iget v0, v5, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x2

    if-lez v24, :cond_108

    const/16 v24, 0x1

    :goto_89
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 719
    const-string v24, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 720
    .local v23, wm:Landroid/view/WindowManager;
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 721
    .local v18, metrics:Landroid/util/DisplayMetrics;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 722
    const/16 v24, 0x7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 723
    const/16 v24, 0xc

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 724
    const/16 v24, 0xd

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 727
    const/16 v24, 0x8

    iget v0, v5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 731
    .local v22, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v14

    .line 732
    .local v14, libraries:[Ljava/lang/String;
    if-eqz v14, :cond_10c

    .line 733
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 734
    move-object v4, v14

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_f6
    if-ge v12, v13, :cond_10c

    aget-object v15, v4, v12

    .line 735
    .local v15, library:Ljava/lang/String;
    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-virtual {v7, v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 734
    add-int/lit8 v12, v12, 0x1

    goto :goto_f6

    .line 713
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #libraries:[Ljava/lang/String;
    .end local v15           #library:Ljava/lang/String;
    .end local v18           #metrics:Landroid/util/DisplayMetrics;
    .end local v22           #pm:Landroid/content/pm/PackageManager;
    .end local v23           #wm:Landroid/view/WindowManager;
    :cond_104
    const/16 v24, 0x0

    goto/16 :goto_76

    .line 715
    :cond_108
    const/16 v24, 0x0

    goto/16 :goto_89

    .line 740
    .restart local v14       #libraries:[Ljava/lang/String;
    .restart local v18       #metrics:Landroid/util/DisplayMetrics;
    .restart local v22       #pm:Landroid/content/pm/PackageManager;
    .restart local v23       #wm:Landroid/view/WindowManager;
    :cond_10c
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v10

    .line 743
    .local v10, features:[Landroid/content/pm/FeatureInfo;
    if-eqz v10, :cond_15b

    .line 744
    array-length v0, v10

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 745
    .local v21, names:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 746
    .local v19, n:I
    move-object v4, v10

    .local v4, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    move/from16 v20, v19

    .end local v19           #n:I
    .local v20, n:I
    :goto_122
    if-ge v12, v13, :cond_13d

    aget-object v9, v4, v12

    .line 747
    .local v9, f:Landroid/content/pm/FeatureInfo;
    iget-object v0, v9, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1bf

    .line 748
    add-int/lit8 v19, v20, 0x1

    .end local v20           #n:I
    .restart local v19       #n:I
    iget-object v0, v9, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v21, v20

    .line 746
    :goto_138
    add-int/lit8 v12, v12, 0x1

    move/from16 v20, v19

    .end local v19           #n:I
    .restart local v20       #n:I
    goto :goto_122

    .line 751
    .end local v9           #f:Landroid/content/pm/FeatureInfo;
    :cond_13d
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 752
    const/4 v11, 0x0

    .local v11, i:I
    :goto_149
    move/from16 v0, v20

    if-ge v11, v0, :cond_15b

    .line 753
    const/16 v24, 0xa

    aget-object v25, v21, v11

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 752
    add-int/lit8 v11, v11, 0x1

    goto :goto_149

    .line 758
    .end local v4           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v11           #i:I
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v20           #n:I
    .end local v21           #names:[Ljava/lang/String;
    :cond_15b
    const/16 v24, 0xb

    sget-object v25, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 763
    sget-object v24, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v25, "unknown"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_17b

    .line 764
    const/16 v24, 0xb

    sget-object v25, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 768
    :cond_17b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v17

    .line 769
    .local v17, locales:[Ljava/lang/String;
    if-eqz v17, :cond_1a2

    .line 770
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 771
    move-object/from16 v4, v17

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v12, 0x0

    .restart local v12       #i$:I
    :goto_18c
    if-ge v12, v13, :cond_1a2

    aget-object v16, v4, v12

    .line 772
    .local v16, locale:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_19f

    .line 773
    const/16 v24, 0xe

    move/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 771
    :cond_19f
    add-int/lit8 v12, v12, 0x1

    goto :goto_18c

    .line 779
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v16           #locale:Ljava/lang/String;
    :cond_1a2
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getGlExtensions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1aa
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1be

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 780
    .local v8, extension:Ljava/lang/String;
    const/16 v24, 0xf

    move/from16 v0, v24

    invoke-virtual {v7, v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_1aa

    .line 782
    .end local v8           #extension:Ljava/lang/String;
    :cond_1be
    return-void

    .end local v17           #locales:[Ljava/lang/String;
    .local v4, arr$:[Landroid/content/pm/FeatureInfo;
    .restart local v9       #f:Landroid/content/pm/FeatureInfo;
    .local v12, i$:I
    .restart local v13       #len$:I
    .restart local v20       #n:I
    .restart local v21       #names:[Ljava/lang/String;
    :cond_1bf
    move/from16 v19, v20

    .end local v20           #n:I
    .restart local v19       #n:I
    goto/16 :goto_138
.end method

.method public static addEvents(Landroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/common/io/protocol/ProtoBuf;)J
    .registers 29
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            ")J"
        }
    .end annotation

    .prologue
    .line 812
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 813
    const/4 v4, 0x0

    .line 818
    const/4 v3, 0x4

    :try_start_4
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v13

    .line 819
    const/4 v3, 0x2

    move-wide/from16 v0, p4

    invoke-virtual {v13, v3, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 822
    const-string v3, "checkin_dropbox_upload"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 823
    if-eqz v3, :cond_ae

    sget-object v7, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_ae

    const/4 v3, 0x1

    move v12, v3

    .line 828
    :goto_2a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_2de
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_32} :catch_300

    move-result-object v6

    .line 829
    :try_start_33
    const-string v3, "event_log"

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_2f3
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_300

    move-result-object v5

    .line 830
    :try_start_3d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 831
    const/4 v8, 0x0

    .line 832
    const-wide/16 v9, -0x1

    .line 834
    const/16 v3, 0x1000

    new-array v15, v3, [B

    .line 835
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_2f7
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4e} :catch_300

    .line 836
    const/4 v3, 0x0

    move v11, v3

    move-object v7, v6

    move-object v3, v8

    move-object/from16 v19, v4

    move-object v4, v5

    move-object/from16 v5, v19

    move-wide/from16 v20, v9

    move-wide/from16 v8, v20

    .line 838
    :goto_5b
    move/from16 v0, p1

    if-ge v11, v0, :cond_2cd

    if-nez v4, :cond_63

    if-eqz v7, :cond_2cd

    :cond_63
    move-object v6, v4

    move-wide/from16 v19, v8

    move-wide/from16 v9, v19

    move-object v8, v3

    .line 841
    :cond_69
    :goto_69
    if-eqz v6, :cond_10f

    :try_start_6b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_76

    cmp-long v3, v9, p4

    if-gtz v3, :cond_10f

    .line 842
    :cond_76
    if-nez v8, :cond_8b

    .line 843
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 844
    if-eqz v4, :cond_8b

    .line 845
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x1000

    invoke-direct {v3, v8, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v8, v3

    .line 849
    :cond_8b
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 850
    if-eqz v8, :cond_96

    invoke-static {v8, v14}, Lcom/google/android/common/Csv;->parseLine(Ljava/io/BufferedReader;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_b2

    .line 851
    :cond_96
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v3

    .line 852
    if-eqz v8, :cond_9f

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 853
    :cond_9f
    const/4 v8, 0x0

    .line 854
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 855
    const-string v17, "event_log"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v6

    goto :goto_69

    .line 823
    :cond_ae
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_2a

    .line 856
    :cond_b2
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_b5
    .catchall {:try_start_6b .. :try_end_b5} :catchall_2fb
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_b5} :catch_303

    move-result v3

    if-nez v3, :cond_69

    .line 858
    const/4 v3, 0x0

    :try_start_b9
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 859
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 860
    const/4 v9, -0x1

    if-ne v4, v9, :cond_d2

    :goto_c8
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v9, v3

    .line 864
    goto :goto_69

    .line 860
    :cond_d2
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_d6
    .catchall {:try_start_b9 .. :try_end_d6} :catchall_2fb
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_d6} :catch_d8
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_d6} :catch_303

    move-result-object v3

    goto :goto_c8

    .line 861
    :catch_d8
    move-exception v3

    move-object v4, v3

    .line 862
    :try_start_da
    const-string v9, "CheckinRequestBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t parse event_log timestamp: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    const-wide/16 v3, -0x1

    move-wide v9, v3

    .line 864
    goto/16 :goto_69

    .line 886
    :cond_fe
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v3

    .line 887
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 888
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v7

    .line 868
    :cond_10f
    if-eqz v7, :cond_150

    .line 870
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 871
    const-string v4, "event_log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_125

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_fe

    .line 873
    :cond_125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "checkin_dropbox_upload:"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 875
    if-eqz v3, :cond_19c

    sget-object v4, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 892
    :cond_150
    :goto_150
    if-eqz v6, :cond_204

    if-eqz v7, :cond_15c

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v3

    cmp-long v3, v9, v3

    if-gez v3, :cond_204

    .line 894
    :cond_15c
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    :try_end_163
    .catchall {:try_start_da .. :try_end_163} :catchall_2fb
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_163} :catch_303

    .line 895
    const/4 v3, 0x3

    :try_start_164
    invoke-virtual {v13, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 896
    const/4 v5, 0x1

    const/4 v3, 0x3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 897
    const/4 v3, 0x3

    invoke-virtual {v4, v3, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 901
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1ad

    .line 903
    const/4 v5, 0x2

    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 915
    :cond_188
    :goto_188
    invoke-virtual {v4}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v11

    .line 916
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_192
    .catchall {:try_start_164 .. :try_end_192} :catchall_2fb
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_192} :catch_1ec

    move v11, v3

    move-object v5, v4

    move-object v3, v8

    move-object v4, v6

    move-wide/from16 v19, v9

    move-wide/from16 v8, v19

    goto/16 :goto_5b

    .line 879
    :cond_19c
    if-eqz v12, :cond_fe

    if-eqz v3, :cond_150

    :try_start_1a0
    sget-object v4, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1a9
    .catchall {:try_start_1a0 .. :try_end_1a9} :catchall_2fb
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a9} :catch_303

    move-result v3

    if-nez v3, :cond_fe

    goto :goto_150

    .line 904
    :cond_1ad
    :try_start_1ad
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x5

    if-le v3, v5, :cond_188

    .line 906
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 908
    const/4 v3, 0x5

    move v5, v3

    :goto_1c7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_1e3

    .line 909
    const-string v3, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 908
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1c7

    .line 912
    :cond_1e3
    const/4 v3, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V
    :try_end_1eb
    .catchall {:try_start_1ad .. :try_end_1eb} :catchall_2fb
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1eb} :catch_1ec

    goto :goto_188

    .line 954
    :catch_1ec
    move-exception v3

    move-object v5, v6

    move-object v6, v7

    .line 955
    :goto_1ef
    :try_start_1ef
    const-string v7, "CheckinRequestBuilder"

    const-string v8, "Can\'t copy dropbox data"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f6
    .catchall {:try_start_1ef .. :try_end_1f6} :catchall_2f7

    .line 957
    if-eqz v6, :cond_1fb

    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 958
    :cond_1fb
    if-eqz v5, :cond_312

    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    move-object v5, v4

    .line 961
    :cond_201
    :goto_201
    if-nez v5, :cond_2ec

    :goto_203
    return-wide p4

    .line 917
    :cond_204
    if-eqz v7, :cond_315

    if-eqz v6, :cond_210

    :try_start_208
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-gtz v3, :cond_315

    .line 919
    :cond_210
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    :try_end_217
    .catchall {:try_start_208 .. :try_end_217} :catchall_2fb
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_217} :catch_303

    .line 920
    const/4 v3, 0x3

    :try_start_218
    invoke-virtual {v13, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 921
    const/4 v3, 0x1

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 922
    const/4 v3, 0x3

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v4, v3, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 925
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 926
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 927
    :cond_234
    if-eqz v3, :cond_29c

    invoke-virtual {v3, v15}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_29c

    .line 928
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v17

    sub-int v17, p2, v17

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 929
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 930
    move/from16 v0, v17

    if-ge v0, v5, :cond_234

    .line 931
    const-string v5, "CheckinRequestBuilder"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Truncating "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " entry to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bytes for upload"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_29c

    .line 934
    const-string v5, "\n=== TRUNCATED FOR UPLOAD ===\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 939
    :cond_29c
    if-eqz v3, :cond_2a1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 941
    :cond_2a1
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 942
    array-length v5, v3

    if-lez v5, :cond_2ac

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 944
    :cond_2ac
    invoke-virtual {v4}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v11

    .line 945
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v17

    .line 946
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 947
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_2c2
    .catchall {:try_start_218 .. :try_end_2c2} :catchall_2fb
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_2c2} :catch_1ec

    move-result-object v7

    move v11, v3

    move-object v5, v4

    move-object v3, v8

    move-object v4, v6

    move-wide/from16 v19, v9

    move-wide/from16 v8, v19

    .line 948
    goto/16 :goto_5b

    .line 951
    :cond_2cd
    if-eqz v3, :cond_2d2

    .line 952
    :try_start_2cf
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2d2
    .catchall {:try_start_2cf .. :try_end_2d2} :catchall_2fd
    .catch Ljava/io/IOException; {:try_start_2cf .. :try_end_2d2} :catch_309

    .line 957
    :cond_2d2
    if-eqz v7, :cond_2d7

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 958
    :cond_2d7
    if-eqz v4, :cond_201

    invoke-virtual {v4}, Landroid/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_201

    .line 957
    :catchall_2de
    move-exception v3

    move-object v7, v6

    move-object v6, v5

    :goto_2e1
    if-eqz v7, :cond_2e6

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 958
    :cond_2e6
    if-eqz v6, :cond_2eb

    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V

    :cond_2eb
    throw v3

    .line 961
    :cond_2ec
    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide p4

    goto/16 :goto_203

    .line 957
    :catchall_2f3
    move-exception v3

    move-object v7, v6

    move-object v6, v5

    goto :goto_2e1

    :catchall_2f7
    move-exception v3

    move-object v7, v6

    move-object v6, v5

    goto :goto_2e1

    :catchall_2fb
    move-exception v3

    goto :goto_2e1

    :catchall_2fd
    move-exception v3

    move-object v6, v4

    goto :goto_2e1

    .line 954
    :catch_300
    move-exception v3

    goto/16 :goto_1ef

    :catch_303
    move-exception v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1ef

    :catch_309
    move-exception v3

    move-object v6, v7

    move-object/from16 v19, v4

    move-object v4, v5

    move-object/from16 v5, v19

    goto/16 :goto_1ef

    :cond_312
    move-object v5, v4

    goto/16 :goto_201

    :cond_315
    move-object v3, v8

    move-object v4, v6

    move-wide/from16 v19, v9

    move-wide/from16 v8, v19

    goto/16 :goto_5b
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .registers 16
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "surfaceSize"
    .parameter "contextAttribs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p5, glExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, v7, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 586
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v7, :cond_b

    .line 615
    :goto_a
    return-void

    .line 591
    :cond_b
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    .line 592
    .local v6, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v7, :cond_17

    .line 593
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_a

    .line 598
    :cond_17
    invoke-interface {p0, p1, v6, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 601
    const/16 v7, 0x1f03

    invoke-static {v7}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, extensionList:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 605
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2e
    if-ge v4, v5, :cond_38

    aget-object v2, v0, v4

    .line 606
    .local v2, extension:Ljava/lang/String;
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 611
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #extension:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_38
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 613
    invoke-interface {p0, p1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 614
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_a
.end method

.method public static addIdProperties(Landroid/content/Context;JLcom/google/common/io/protocol/ProtoBuf;)V
    .registers 14
    .parameter "context"
    .parameter "securityToken"
    .parameter "request"

    .prologue
    const-wide/16 v8, 0x0

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 375
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/google/android/gsf/settings/IdUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v0

    .line 376
    .local v0, androidId:J
    const/4 v7, 0x2

    invoke-virtual {p3, v7, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 378
    cmp-long v7, p1, v8

    if-eqz v7, :cond_17

    .line 379
    const/16 v7, 0xd

    invoke-virtual {p3, v7, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 385
    :cond_17
    cmp-long v7, p1, v8

    if-nez v7, :cond_1f

    cmp-long v7, v0, v8

    if-nez v7, :cond_26

    .line 386
    :cond_1f
    const/16 v7, 0xe

    const-wide/16 v8, 0x2

    invoke-virtual {p3, v7, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 389
    :cond_26
    invoke-static {p0}, Lcom/google/android/gsf/settings/IdUtils;->getLoggingId(Landroid/content/Context;)J

    move-result-wide v2

    .line 390
    .local v2, loggingId:J
    const/4 v7, 0x7

    invoke-virtual {p3, v7, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 394
    const-string v7, "digest"

    invoke-static {v5, v7}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, pd:Ljava/lang/String;
    const/4 v7, 0x3

    if-nez v4, :cond_39

    const-string v4, ""

    .end local v4           #pd:Ljava/lang/String;
    :cond_39
    invoke-virtual {p3, v7, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 397
    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, serial:Ljava/lang/String;
    if-eqz v6, :cond_51

    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 399
    const/16 v7, 0x10

    invoke-virtual {p3, v7, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 401
    :cond_51
    return-void
.end method

.method public static addLocaleProperty(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter "locale"
    .parameter "request"

    .prologue
    .line 354
    const/4 v1, 0x6

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p1, v1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 355
    return-void

    .line 354
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static addMarketProperty(Ljava/lang/String;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter "marketData"
    .parameter "request"

    .prologue
    .line 450
    const/16 v0, 0x8

    invoke-virtual {p1, v0, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 451
    return-void
.end method

.method public static addNetworkProperties(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkInfo;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 14
    .parameter "tm"
    .parameter "wm"
    .parameter "ni"
    .parameter "request"

    .prologue
    .line 277
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 278
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 279
    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 280
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 282
    const/4 v7, 0x4

    invoke-virtual {p3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 283
    .local v0, checkin:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 284
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 286
    if-eqz p0, :cond_6d

    .line 287
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, id:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getCurrentPhoneType(Landroid/telephony/TelephonyManager;)I

    move-result v5

    .line 290
    .local v5, phoneType:I
    packed-switch v5, :pswitch_data_112

    .line 320
    const-string v7, "CheckinRequestBuilder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_55
    :goto_55
    const/4 v7, 0x6

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 325
    const/4 v7, 0x7

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 328
    .end local v1           #id:Ljava/lang/String;
    .end local v5           #phoneType:I
    :cond_6d
    if-nez p2, :cond_f6

    const-string v2, "unknown"

    .line 330
    .local v2, isMobile:Ljava/lang/String;
    :goto_71
    if-nez p0, :cond_104

    const-string v3, "unknown"

    .line 332
    .local v3, isRoaming:Ljava/lang/String;
    :goto_75
    const/16 v7, 0x8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 334
    if-eqz p1, :cond_b0

    .line 338
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 339
    .local v6, wi:Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_b0

    .line 340
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, mac:Ljava/lang/String;
    if-eqz v4, :cond_b0

    .line 342
    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    const/16 v7, 0x9

    invoke-static {v4}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 347
    .end local v4           #mac:Ljava/lang/String;
    .end local v6           #wi:Landroid/net/wifi/WifiInfo;
    :cond_b0
    return-void

    .line 292
    .end local v2           #isMobile:Ljava/lang/String;
    .end local v3           #isRoaming:Ljava/lang/String;
    .restart local v1       #id:Ljava/lang/String;
    .restart local v5       #phoneType:I
    :pswitch_b1
    if-eqz v1, :cond_d8

    sget-object v7, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->ESN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_d8

    .line 296
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "80"

    if-ne v7, v8, :cond_d1

    .line 297
    const-string v7, "CheckinRequestBuilder"

    const-string v8, "TelephonyManager.getDeviceId() is returning a pseudo-ESN instead of an MEID"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 300
    :cond_d1
    const/16 v7, 0x11

    invoke-virtual {p3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto/16 :goto_55

    .line 308
    :cond_d8
    :pswitch_d8
    if-eqz v1, :cond_55

    .line 309
    sget-object v7, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_ed

    .line 310
    const/16 v7, 0xa

    invoke-virtual {p3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto/16 :goto_55

    .line 312
    :cond_ed
    const-string v7, "CheckinRequestBuilder"

    const-string v8, "TelephonyManager.getDeviceId() must return a 15-decimal-digit IMEI, a 14-hex-digit MEID or an 8-hex-digit ESN "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 328
    .end local v1           #id:Ljava/lang/String;
    .end local v5           #phoneType:I
    :cond_f6
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_100

    const-string v2, "mobile"

    goto/16 :goto_71

    :cond_100
    const-string v2, "notmobile"

    goto/16 :goto_71

    .line 330
    .restart local v2       #isMobile:Ljava/lang/String;
    :cond_104
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_10e

    const-string v3, "roaming"

    goto/16 :goto_75

    :cond_10e
    const-string v3, "notroaming"

    goto/16 :goto_75

    .line 290
    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_b1
    .end packed-switch
.end method

.method private static addOtaCerts(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 15
    .parameter "request"

    .prologue
    const/16 v13, 0xf

    .line 191
    const/4 v9, 0x0

    .line 192
    .local v9, zip:Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 195
    .local v1, count:I
    :try_start_4
    new-instance v10, Ljava/util/zip/ZipFile;

    sget-object v11, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEFAULT_KEYSTORE:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_84

    .line 196
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .local v10, zip:Ljava/util/zip/ZipFile;
    :try_start_b
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 197
    .local v3, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/16 v11, 0x800

    new-array v8, v11, [B

    .line 198
    .local v8, temp:[B
    :goto_13
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 199
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 200
    .local v4, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 201
    .local v5, is:Ljava/io/InputStream;
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 203
    .local v6, md:Ljava/security/MessageDigest;
    :goto_29
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-lez v7, :cond_53

    .line 204
    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_34

    goto :goto_29

    .line 212
    .end local v3           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #md:Ljava/security/MessageDigest;
    .end local v7           #read:I
    .end local v8           #temp:[B
    :catchall_34
    move-exception v11

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :goto_36
    if-eqz v9, :cond_3b

    :try_start_38
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    :cond_3b
    throw v11
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_3c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_38 .. :try_end_3c} :catch_7f

    .line 214
    :catch_3c
    move-exception v2

    .line 215
    .local v2, e:Ljava/io/IOException;
    :goto_3d
    const-string v11, "CheckinRequestBuilder"

    const-string v12, "error reading OTA certs"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const-string v11, "--IOException--"

    invoke-virtual {p0, v13, v11}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 223
    .end local v2           #e:Ljava/io/IOException;
    :goto_4b
    if-nez v1, :cond_52

    .line 224
    const-string v11, "--no-output--"

    invoke-virtual {p0, v13, v11}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 226
    :cond_52
    return-void

    .line 206
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #md:Ljava/security/MessageDigest;
    .restart local v7       #read:I
    .restart local v8       #temp:[B
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :cond_53
    :try_start_53
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 207
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, cert:Ljava/lang/String;
    const/16 v11, 0xf

    invoke-virtual {p0, v11, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_34

    .line 209
    add-int/lit8 v1, v1, 0x1

    .line 210
    goto :goto_13

    .line 212
    .end local v0           #cert:Ljava/lang/String;
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #md:Ljava/security/MessageDigest;
    .end local v7           #read:I
    :cond_67
    if-eqz v10, :cond_6c

    :try_start_69
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_81
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_69 .. :try_end_6c} :catch_6e

    :cond_6c
    move-object v9, v10

    .line 222
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_4b

    .line 218
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_6e
    move-exception v2

    move-object v9, v10

    .line 219
    .end local v3           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8           #temp:[B
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :goto_70
    const-string v11, "CheckinRequestBuilder"

    const-string v12, "no support for SHA-1?"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const-string v11, "--NoSuchAlgorithmException--"

    invoke-virtual {p0, v13, v11}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 218
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_7f
    move-exception v2

    goto :goto_70

    .line 214
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v8       #temp:[B
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_81
    move-exception v2

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_3d

    .line 212
    .end local v3           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8           #temp:[B
    :catchall_84
    move-exception v11

    goto :goto_36
.end method

.method public static addPackageProperties(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 10
    .parameter "context"
    .parameter "request"

    .prologue
    const/4 v6, 0x1

    .line 233
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 234
    .local v1, checkin:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 235
    .local v0, build:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_16

    .line 236
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v0           #build:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v5, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 237
    .restart local v0       #build:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 240
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "client_id"

    invoke-static {v5, v6}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, client:Ljava/lang/String;
    if-eqz v2, :cond_26

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 244
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, packageName:Ljava/lang/String;
    const/16 v5, 0x8

    :try_start_2c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_3a} :catch_3b

    .line 251
    :goto_3a
    return-void

    .line 248
    :catch_3b
    move-exception v3

    .line 249
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "CheckinRequestBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Our own package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method public static addTimeZone(Ljava/util/TimeZone;Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter "tz"
    .parameter "request"

    .prologue
    .line 362
    if-eqz p0, :cond_b

    .line 363
    const/16 v0, 0xc

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 365
    :cond_b
    return-void
.end method

.method private static getCurrentPhoneType(Landroid/telephony/TelephonyManager;)I
    .registers 6
    .parameter "tm"

    .prologue
    .line 263
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCurrentPhoneType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1b

    move-result v2

    .line 266
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_1a
    return v2

    .line 265
    :catch_1b
    move-exception v1

    .line 266
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    goto :goto_1a
.end method

.method public static getGlExtensions(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v2, sortedExtensions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 552
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "CheckinService_cachedGlExt"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, cachedExtensions:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->wasSystemUpgraded(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 554
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 566
    :goto_29
    return-object v2

    .line 557
    :cond_2a
    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v4

    .line 560
    .local v4, unsortedExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 561
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 562
    const-string v5, " "

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, flattened:Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "CheckinService_cachedGlExt"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_29
.end method

.method private static getGlExtensionsFromDriver()Ljava/util/Set;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 621
    .local v5, glExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 622
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    if-nez v0, :cond_15

    .line 623
    const-string v2, "CheckinRequestBuilder"

    const-string v4, "Couldn\'t get EGL"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_14
    return-object v5

    .line 628
    :cond_15
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 629
    .local v1, display:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 630
    .local v14, version:[I
    invoke-interface {v0, v1, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 633
    const/4 v2, 0x1

    new-array v13, v2, [I

    .line 634
    .local v13, numConfigs:[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_34

    .line 635
    const-string v2, "CheckinRequestBuilder"

    const-string v4, "Couldn\'t get EGL config count"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 640
    :cond_34
    const/4 v2, 0x0

    aget v2, v13, v2

    new-array v10, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 641
    .local v10, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x0

    aget v2, v13, v2

    invoke-interface {v0, v1, v10, v2, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 642
    const-string v2, "CheckinRequestBuilder"

    const-string v4, "Couldn\'t get EGL configs"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 649
    :cond_4a
    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_aa

    .line 656
    .local v3, surfaceSize:[I
    const/16 v6, 0x3098

    .line 657
    .local v6, EGL_CONTEXT_CLIENT_VERSION:I
    const/4 v2, 0x3

    new-array v11, v2, [I

    fill-array-data v11, :array_b8

    .line 660
    .local v11, gles2:[I
    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 662
    .local v9, attrib:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_5c
    const/4 v2, 0x0

    aget v2, v13, v2

    if-ge v12, v2, :cond_a4

    .line 664
    aget-object v2, v10, v12

    const/16 v4, 0x3027

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 665
    const/4 v2, 0x0

    aget v2, v9, v2

    const/16 v4, 0x3050

    if-ne v2, v4, :cond_72

    .line 662
    :cond_6f
    :goto_6f
    add-int/lit8 v12, v12, 0x1

    goto :goto_5c

    .line 672
    :cond_72
    aget-object v2, v10, v12

    const/16 v4, 0x3033

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 673
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6f

    .line 677
    const/4 v8, 0x1

    .line 678
    .local v8, EGL_OPENGL_ES_BIT:I
    const/4 v7, 0x4

    .line 679
    .local v7, EGL_OPENGL_ES2_BIT:I
    aget-object v2, v10, v12

    const/16 v4, 0x3040

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 680
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_96

    .line 681
    aget-object v2, v10, v12

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 683
    :cond_96
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6f

    .line 684
    aget-object v2, v10, v12

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_6f

    .line 689
    .end local v7           #EGL_OPENGL_ES2_BIT:I
    .end local v8           #EGL_OPENGL_ES_BIT:I
    :cond_a4
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto/16 :goto_14

    .line 649
    nop

    :array_aa
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 657
    :array_b8
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private static getRadioVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 143
    :try_start_0
    const-string v3, "android.os.Build"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 144
    .local v0, c:Ljava/lang/Class;
    const-string v3, "getRadioVersion"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 145
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 148
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_18
    return-object v3

    .line 146
    :catch_19
    move-exception v2

    .line 148
    .local v2, t:Ljava/lang/Throwable;
    sget-object v3, Landroid/os/Build;->RADIO:Ljava/lang/String;

    goto :goto_18
.end method

.method private static keyboardFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .registers 2
    .parameter "ci"

    .prologue
    .line 496
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    packed-switch v0, :pswitch_data_e

    .line 505
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 498
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 500
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_6

    .line 502
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_6

    .line 496
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private static navigationFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .registers 2
    .parameter "ci"

    .prologue
    .line 509
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    packed-switch v0, :pswitch_data_10

    .line 520
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 511
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 513
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_6

    .line 515
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_6

    .line 517
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_6

    .line 509
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public static newRequest()Lcom/google/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 135
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 136
    .local v0, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x4

    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 138
    return-object v0
.end method

.method private static opt(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"

    .prologue
    .line 965
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    const/4 p0, 0x0

    goto :goto_8
.end method

.method private static screenLayoutFromConfig(Landroid/content/res/Configuration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 524
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 526
    .local v0, sizeBits:I
    packed-switch v0, :pswitch_data_12

    .line 537
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 528
    :pswitch_9
    const/4 v1, 0x1

    goto :goto_8

    .line 530
    :pswitch_b
    const/4 v1, 0x2

    goto :goto_8

    .line 532
    :pswitch_d
    const/4 v1, 0x3

    goto :goto_8

    .line 534
    :pswitch_f
    const/4 v1, 0x4

    goto :goto_8

    .line 526
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private static touchScreenFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .registers 2
    .parameter "ci"

    .prologue
    .line 483
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    packed-switch v0, :pswitch_data_e

    .line 492
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 485
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 487
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_6

    .line 489
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_6

    .line 483
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method
