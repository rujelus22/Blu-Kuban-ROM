.class public Lcom/swype/android/inputmethod/SwypeApplication;
.super Landroid/app/Application;
.source "SwypeApplication.java"

# interfaces
.implements Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;


# static fields
.field public static final ASSET_DATA_FILES_FOLDER:Ljava/lang/String; = "files"

.field public static final BASE_HELP_URI:Landroid/net/Uri; = null

.field private static final BITMAP_CACHE_CAPACITY:I = 0x2

.field public static DEFAULT_NATIVE_LIB_FILE_NAME:Ljava/lang/String; = null

.field private static final DEFAULT_TIP_DURATION:Ljava/lang/String; = "3"

.field static final FILE_SUFFIX_TO_DELETE:[Ljava/lang/String; = null

.field private static final INACTIVE_LANGUAGES_LIST_FILE:Ljava/lang/String; = "inactivelang.txt"

.field private static final LICENSE_FILE:Ljava/lang/String; = "license.dat"

.field private static final LICENSE_FILE_ON_APK:Ljava/lang/String; = "files/license.dat"

.field private static LICENSE_FILE_ON_FILESYSTEM:Ljava/lang/String; = null

.field public static NATIVE_DATA_FILE_DIR:Ljava/lang/String; = null

.field private static NATIVE_DATA_FILE_UDB_DIR:Ljava/lang/String; = null

.field public static final NATIVE_DATA_FILE_URI:Landroid/net/Uri; = null

.field private static NATIVE_DATA_TUTORIAL_DIR:Ljava/lang/String; = null

.field public static NATIVE_LIB_FILE_DIR:Ljava/lang/String; = null

.field public static NATIVE_LIB_VERSION_FILE_NAME:Ljava/lang/String; = null

.field private static final SWYPE_PREF_KEY_VERSION:Ljava/lang/String; = "SWYPE_VERSION"

.field public static SWYPE_VERSION:Ljava/lang/String; = null

.field public static SYSTEM_NATIVE_LIB_FILE_DIR:Ljava/lang/String; = null

.field private static final WAIT_TIME_AFTER_LANGUAGE_CHANGE:J = 0x3e8L


# instance fields
.field private final choiceWindowBitmapCache:Lcom/swype/android/util/BitmapCache;

.field protected connectClient:Lcom/swype/android/service/SwypeConnect;

.field private fontFlags:I

.field private final inputWindowBitmapCache:Lcom/swype/android/util/BitmapCache;

.field private isConnectEnabled:Z

.field private isHapticOn:Z

.field private isSilentMode:Z

.field private languageChangeFlag:Z

.field private languageChangeTimestamp:J

.field private license:Lcom/swype/android/security/License;

.field private settingsManager:Lcom/swype/android/settings/SettingsManager;

.field private swypeCore:Lcom/swype/android/jni/SwypeCore;

.field private swypeIMHandler:Landroid/os/Handler;

.field private taskRunner:Lcom/swype/android/inputmethod/PeriodicTaskRunner;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 544
    const-string v0, "/data/data/com.swype.android.inputmethod/lib"

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_FILE_DIR:Ljava/lang/String;

    .line 545
    const-string v0, "/system/lib"

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->SYSTEM_NATIVE_LIB_FILE_DIR:Ljava/lang/String;

    .line 549
    const-string v0, "libSwypeCore.so"

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->DEFAULT_NATIVE_LIB_FILE_NAME:Ljava/lang/String;

    .line 552
    const-string v0, "libSwypeCore.so"

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_VERSION_FILE_NAME:Ljava/lang/String;

    .line 554
    const-string v0, "/data/data/com.swype.android.inputmethod/swypedata"

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Tutorial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_TUTORIAL_DIR:Ljava/lang/String;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/udb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_UDB_DIR:Ljava/lang/String;

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "license.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->LICENSE_FILE_ON_FILESYSTEM:Ljava/lang/String;

    .line 562
    const-string v0, "file:///android_asset/files/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->BASE_HELP_URI:Landroid/net/Uri;

    .line 563
    const-string v0, "file:///data/data/com.swype.android.inputmethod/swypedata/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_URI:Landroid/net/Uri;

    .line 564
    const-string v0, ""

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->SWYPE_VERSION:Ljava/lang/String;

    .line 667
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".zdb.le"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".zkb.le"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".htm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".lst"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".dat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".ini"

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->FILE_SUFFIX_TO_DELETE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 161
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    .line 76
    new-instance v0, Lcom/swype/android/util/BitmapCache;

    invoke-direct {v0, v1}, Lcom/swype/android/util/BitmapCache;-><init>(I)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->choiceWindowBitmapCache:Lcom/swype/android/util/BitmapCache;

    .line 77
    new-instance v0, Lcom/swype/android/util/BitmapCache;

    invoke-direct {v0, v1}, Lcom/swype/android/util/BitmapCache;-><init>(I)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->inputWindowBitmapCache:Lcom/swype/android/util/BitmapCache;

    .line 162
    new-instance v0, Lcom/swype/android/inputmethod/PeriodicTaskRunner;

    invoke-direct {v0}, Lcom/swype/android/inputmethod/PeriodicTaskRunner;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->taskRunner:Lcom/swype/android/inputmethod/PeriodicTaskRunner;

    .line 163
    return-void
.end method

.method private broadcastCurrentLanguage(Ljava/lang/String;)V
    .registers 5
    .parameter "langName"

    .prologue
    .line 979
    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    if-eqz v1, :cond_19

    .line 980
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1, p1}, Lcom/swype/android/jni/SwypeCore;->getLanguageCodeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, langCode:Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 982
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 986
    .end local v0           #langCode:Ljava/lang/String;
    :cond_19
    return-void
.end method

.method private checkIsSwypeVersionNewer()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 936
    const/4 v0, 0x0

    .line 937
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 938
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2}, Lcom/swype/android/jni/SwypeCore;->getVersionString()Ljava/lang/String;

    move-result-object v2

    .line 939
    if-nez v2, :cond_17

    .line 940
    const-string v2, "Swype"

    const-string v3, "Unable to get installed Swype version!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v2, "0"

    .line 943
    :cond_17
    const-string v3, "SWYPE_VERSION"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 944
    if-nez v3, :cond_30

    move v0, v6

    .line 956
    :cond_21
    :goto_21
    if-eqz v0, :cond_2f

    .line 958
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 959
    const-string v3, "SWYPE_VERSION"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 960
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 962
    :cond_2f
    return v0

    .line 947
    :cond_30
    if-eqz v2, :cond_21

    .line 948
    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lcom/swype/android/inputmethod/SwypeApplication;->compareVersionStr(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 949
    if-gez v4, :cond_21

    .line 950
    const-string v0, "Swype"

    const-string v4, "New Swype version detected..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v0, "Swype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v0, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 953
    goto :goto_21
.end method

.method public static compareVersionStr(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 995
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 996
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 997
    array-length v2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 998
    array-length v3, v1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 999
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1000
    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_34

    .line 1001
    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1002
    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1003
    invoke-virtual {v6, v7}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v6

    .line 1004
    if-eqz v6, :cond_31

    move v0, v6

    .line 1009
    :goto_30
    return v0

    .line 1000
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1009
    :cond_34
    sub-int v0, v2, v3

    goto :goto_30
.end method

.method private static isUp(Landroid/net/NetworkInfo;)Z
    .registers 3
    .parameter

    .prologue
    .line 1032
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isValidLicense([B)Z
    .registers 3
    .parameter "digest_in_license_file"

    .prologue
    .line 769
    if-eqz p1, :cond_16

    .line 770
    invoke-static {p1}, Lcom/swype/android/security/License;->createFromDigest([B)Lcom/swype/android/security/License;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    .line 772
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    invoke-virtual {v0, p0}, Lcom/swype/android/security/License;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 774
    const/4 v0, 0x1

    .line 777
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private declared-synchronized setNextAppropriateLanguage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Boolean;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    monitor-enter p0

    const/4 v0, 0x0

    .line 301
    if-eqz p2, :cond_a4

    :try_start_6
    array-length v1, p2

    if-lez v1, :cond_a4

    move-object v1, v0

    move v0, v4

    .line 304
    :goto_b
    array-length v2, p2

    if-ge v0, v2, :cond_b8

    .line 305
    if-nez v1, :cond_1a

    aget-object v2, p3, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 306
    aget-object v1, p2, v0

    .line 308
    :cond_1a
    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    move v0, v5

    .line 317
    :goto_23
    if-nez v0, :cond_b5

    .line 318
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 319
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/swype/android/jni/SwypeCore;->getLanguageForLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v4

    .line 323
    :goto_38
    array-length v3, p2

    if-ge v2, v3, :cond_b2

    .line 324
    aget-object v3, p2, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 326
    aget-object v2, p3, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_af

    move v2, v5

    move v3, v5

    .line 333
    :goto_4d
    if-nez v2, :cond_91

    if-eqz v1, :cond_91

    move v0, v5

    .line 341
    :goto_52
    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->setMessageLanguage(Ljava/lang/String;)V

    .line 346
    :goto_55
    if-eqz v0, :cond_a4

    .line 347
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v4

    .line 348
    :goto_5d
    array-length v3, p3

    if-ge v2, v3, :cond_9b

    .line 349
    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 350
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p3, v2

    .line 352
    :cond_6f
    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_87

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_82

    .line 354
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :cond_82
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 304
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 323
    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 336
    :cond_91
    if-nez v3, :cond_ac

    if-nez v2, :cond_ac

    .line 338
    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v1, v0

    move v0, v5

    goto :goto_52

    .line 359
    :cond_9b
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/swype/android/jni/SwypeCore;->setListOfInactiveLanguages(Ljava/lang/String;)V

    .line 364
    :cond_a4
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->broadcastCurrentLanguage()V
    :try_end_a7
    .catchall {:try_start_6 .. :try_end_a7} :catchall_a9

    .line 365
    monitor-exit p0

    return-void

    .line 300
    :catchall_a9
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ac
    move-object v1, v0

    move v0, v4

    goto :goto_52

    :cond_af
    move v2, v4

    move v3, v5

    goto :goto_4d

    :cond_b2
    move v2, v4

    move v3, v4

    goto :goto_4d

    :cond_b5
    move v0, v4

    move-object v1, p1

    goto :goto_55

    :cond_b8
    move v0, v4

    goto/16 :goto_23
.end method


# virtual methods
.method public alwaysShowCancelInHelp()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1041
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    if-nez v0, :cond_7

    move v0, v2

    .line 1046
    :goto_6
    return v0

    .line 1045
    :cond_7
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSetting(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/oem/CarrierID;->fromString(Ljava/lang/String;)Lcom/swype/android/oem/CarrierID;

    move-result-object v0

    .line 1046
    if-eqz v0, :cond_1b

    sget-object v1, Lcom/swype/android/oem/CarrierID;->T_MOBILE_USA:Lcom/swype/android/oem/CarrierID;

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_6

    :cond_1b
    move v0, v2

    goto :goto_6
.end method

.method public broadcastCurrentLanguage()V
    .registers 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->broadcastCurrentLanguage(Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method public cancelLanguageDownload(Ljava/lang/String;)V
    .registers 3
    .parameter "lang"

    .prologue
    .line 1175
    const/16 v0, 0x76

    invoke-virtual {p0, v0, p1}, Lcom/swype/android/inputmethod/SwypeApplication;->sendConnectMessage(ILjava/lang/String;)V

    .line 1176
    return-void
.end method

.method public checkLocaleChange()V
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->checkLocaleChange(Z)V

    .line 239
    return-void
.end method

.method public declared-synchronized checkLocaleChange(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 250
    monitor-enter p0

    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 256
    const-string v4, "LastLocale"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 257
    const-string v4, "LastLocale"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    if-eqz v4, :cond_46

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a1

    :cond_46
    move v4, v6

    .line 266
    :goto_47
    if-eqz v4, :cond_9c

    .line 267
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 268
    const-string v4, "LastLocale"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    const-string v4, "LastLocale"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/swype/android/jni/SwypeCore;->setLocale(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->languageChangeFlag:Z

    .line 274
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v1, :cond_77

    .line 275
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/swype/android/service/SwypeConnect;->setLocale(Ljava/lang/String;)V

    .line 278
    :cond_77
    if-eqz v2, :cond_9c

    .line 279
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v0

    .line 281
    iget-object v1, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Boolean;

    .line 282
    const/4 v3, 0x0

    :goto_85
    iget-object v4, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    array-length v4, v4

    if-ge v3, v4, :cond_97

    .line 283
    iget-object v4, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    aget-boolean v4, v4, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 286
    :cond_97
    iget-object v0, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->setNextAppropriateLanguage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Boolean;)V
    :try_end_9c
    .catchall {:try_start_2 .. :try_end_9c} :catchall_9e

    .line 289
    :cond_9c
    monitor-exit p0

    return-void

    .line 250
    :catchall_9e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a1
    move v4, p1

    goto :goto_47
.end method

.method public declared-synchronized cleanupOldFiles()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 670
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 672
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 673
    if-eqz v1, :cond_49

    .line 674
    array-length v0, v1

    move v2, v9

    :goto_17
    if-ge v2, v0, :cond_4c

    aget-object v3, v1, v2

    .line 675
    sget-object v4, Lcom/swype/android/inputmethod/SwypeApplication;->FILE_SUFFIX_TO_DELETE:[Ljava/lang/String;

    array-length v5, v4

    move v6, v9

    :goto_1f
    if-ge v6, v5, :cond_46

    aget-object v7, v4, v6

    .line 676
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    iget-object v7, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v7}, Lcom/swype/android/jni/SwypeCore;->isRunningTrialBuild()Z

    move-result v7

    if-eqz v7, :cond_39

    const-string v7, "license.dat"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    .line 680
    :cond_39
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 675
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 674
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 688
    :cond_49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 691
    :cond_4c
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_TUTORIAL_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 694
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 695
    array-length v2, v1

    move v3, v9

    :goto_5f
    if-ge v3, v2, :cond_6e

    aget-object v4, v1, v3

    .line 696
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 695
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 699
    :cond_6e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 703
    :cond_71
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_FILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 707
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 708
    array-length v2, v1

    move v3, v9

    :goto_8a
    if-ge v3, v2, :cond_e2

    aget-object v4, v1, v3

    .line 710
    if-eqz v4, :cond_be

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_be

    sget-object v5, Lcom/swype/android/inputmethod/SwypeApplication;->DEFAULT_NATIVE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_be

    sget-object v5, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_VERSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_be

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

    const-string v5, "libSwypeCore."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_b3
    .catchall {:try_start_2 .. :try_end_b3} :catchall_df

    move-result v5

    if-eqz v5, :cond_be

    .line 716
    :try_start_b6
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_df
    .catch Ljava/lang/SecurityException; {:try_start_b6 .. :try_end_be} :catch_c1

    .line 708
    :cond_be
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 718
    :catch_c1
    move-exception v4

    .line 719
    :try_start_c2
    const-string v5, "Swype"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Error removing file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_c2 .. :try_end_de} :catchall_df

    goto :goto_be

    .line 670
    :catchall_df
    move-exception v0

    monitor-exit p0

    throw v0

    .line 725
    :cond_e2
    monitor-exit p0

    return-void
.end method

.method public closeLicense()V
    .registers 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    if-eqz v0, :cond_c

    .line 818
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    invoke-virtual {v0, p0}, Lcom/swype/android/security/License;->onDestroy(Landroid/content/Context;)V

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    .line 821
    :cond_c
    return-void
.end method

.method public getAPKFileContents(Ljava/lang/String;)[B
    .registers 4
    .parameter

    .prologue
    .line 853
    :try_start_0
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1b

    move-result-object v0

    .line 855
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 856
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_16

    .line 859
    :try_start_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    .line 863
    :goto_15
    return-object v0

    .line 859
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_1b

    .line 863
    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getBitmap(III)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "whichWindow"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 229
    const-string v1, "%dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, key:Ljava/lang/String;
    if-nez p1, :cond_20

    .line 231
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->inputWindowBitmapCache:Lcom/swype/android/util/BitmapCache;

    invoke-virtual {v1, v0, p2, p3}, Lcom/swype/android/util/BitmapCache;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 233
    :goto_1f
    return-object v1

    :cond_20
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->choiceWindowBitmapCache:Lcom/swype/android/util/BitmapCache;

    invoke-virtual {v1, v0, p2, p3}, Lcom/swype/android/util/BitmapCache;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1f
.end method

.method public getConnect()Lcom/swype/android/service/SwypeConnect;
    .registers 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v0, :cond_b

    .line 1138
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    .line 1141
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLicense()Lcom/swype/android/security/License;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicenseDigest(Z)[B

    move-result-object v0

    .line 787
    invoke-static {v0}, Lcom/swype/android/security/License;->createFromDigest([B)Lcom/swype/android/security/License;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_24

    invoke-virtual {v0, p0}, Lcom/swype/android/security/License;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 790
    const-string v1, "DEVICE_STATUS"

    invoke-virtual {v0, v1}, Lcom/swype/android/security/License;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 791
    if-eqz v1, :cond_23

    const-string v2, "DISABLED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v0, v3

    .line 810
    :cond_23
    :goto_23
    return-object v0

    .line 799
    :cond_24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicenseDigest(Z)[B

    move-result-object v0

    .line 800
    invoke-static {v0}, Lcom/swype/android/security/License;->createFromDigest([B)Lcom/swype/android/security/License;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_47

    invoke-virtual {v0, p0}, Lcom/swype/android/security/License;->isValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 803
    const-string v1, "DEVICE_STATUS"

    invoke-virtual {v0, v1}, Lcom/swype/android/security/License;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    if-eqz v1, :cond_23

    const-string v2, "DISABLED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v0, v3

    .line 805
    goto :goto_23

    :cond_47
    move-object v0, v3

    .line 810
    goto :goto_23
.end method

.method public getLicenseDigest(Z)[B
    .registers 3
    .parameter "isFromAPK"

    .prologue
    .line 874
    if-nez p1, :cond_8

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicenseFromFileSystem(Ljava/lang/String;)[B

    move-result-object v0

    .line 879
    :goto_7
    return-object v0

    :cond_8
    const-string v0, "files/license.dat"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getAPKFileContents(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_7
.end method

.method public getLicenseFromFileSystem(Ljava/lang/String;)[B
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 888
    if-nez p1, :cond_43

    .line 889
    sget-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->LICENSE_FILE_ON_FILESYSTEM:Ljava/lang/String;

    .line 893
    :goto_5
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 894
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_24

    .line 895
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 897
    if-lez v1, :cond_1f

    .line 898
    new-array v1, v1, [B

    .line 899
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_41

    .line 909
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_36

    :goto_1d
    move-object v0, v1

    .line 917
    :goto_1e
    return-object v0

    .line 909
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_38

    :cond_22
    :goto_22
    move-object v0, v2

    .line 917
    goto :goto_1e

    .line 909
    :catch_24
    move-exception v0

    move-object v0, v2

    :goto_26
    if-eqz v0, :cond_22

    .line 911
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_22

    .line 914
    :catch_2c
    move-exception v0

    goto :goto_22

    .line 909
    :catchall_2e
    move-exception v0

    move-object v1, v2

    :goto_30
    if-eqz v1, :cond_35

    .line 911
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3a

    .line 914
    :cond_35
    :goto_35
    throw v0

    :catch_36
    move-exception v0

    goto :goto_1d

    :catch_38
    move-exception v0

    goto :goto_22

    :catch_3a
    move-exception v1

    goto :goto_35

    .line 909
    :catchall_3c
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_30

    :catch_41
    move-exception v1

    goto :goto_26

    :cond_43
    move-object v0, p1

    goto :goto_5
.end method

.method public getLicenseValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    if-eqz v0, :cond_b

    .line 831
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    invoke-virtual {v0, p1}, Lcom/swype/android/security/License;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMessageLanguage(Z)Ljava/lang/String;
    .registers 4
    .parameter "checkLocale"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, currentLanguage:Ljava/lang/String;
    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    .line 423
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->checkLocaleChange()V

    .line 424
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v0

    .line 426
    :cond_13
    return-object v0
.end method

.method public getSettingsManager()Lcom/swype/android/settings/SettingsManager;
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->settingsManager:Lcom/swype/android/settings/SettingsManager;

    if-nez v0, :cond_d

    .line 194
    new-instance v0, Lcom/swype/android/settings/SettingsManager;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-direct {v0, p0, v1}, Lcom/swype/android/settings/SettingsManager;-><init>(Landroid/content/Context;Lcom/swype/android/jni/SwypeCore;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->settingsManager:Lcom/swype/android/settings/SettingsManager;

    .line 196
    :cond_d
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->settingsManager:Lcom/swype/android/settings/SettingsManager;

    return-object v0
.end method

.method public getSwypeCore()Lcom/swype/android/jni/SwypeCore;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    return-object v0
.end method

.method public getTaskRunner()Lcom/swype/android/inputmethod/PeriodicTaskRunner;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->taskRunner:Lcom/swype/android/inputmethod/PeriodicTaskRunner;

    return-object v0
.end method

.method public hideKeyboard()V
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 524
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 526
    :cond_b
    return-void
.end method

.method public initSettings()V
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    if-nez v0, :cond_a

    .line 514
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->updateHapticSetting()Z

    .line 515
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->updateSilentMode()Z

    .line 517
    :cond_a
    return-void
.end method

.method public declared-synchronized initializeDirectories()V
    .registers 4

    .prologue
    .line 608
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_41

    .line 610
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 620
    :cond_11
    :goto_11
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_UDB_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 629
    :cond_21
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_UDB_DIR:Ljava/lang/String;

    const-string v2, "inactivelang.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 632
    const-string v0, "files/inactivelang.txt"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getAPKFileContents(Ljava/lang/String;)[B

    move-result-object v0

    .line 634
    if-eqz v0, :cond_3f

    .line 635
    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_UDB_DIR:Ljava/lang/String;

    const-string v2, "inactivelang.txt"

    invoke-virtual {p0, v1, v2, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4b

    .line 638
    :cond_3f
    monitor-exit p0

    return-void

    .line 614
    :cond_41
    :try_start_41
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->checkIsSwypeVersionNewer()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 616
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->cleanupOldFiles()V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4b

    goto :goto_11

    .line 608
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApplyingFakeBoldFont()Z
    .registers 2

    .prologue
    .line 1195
    iget v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->fontFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isConnect()Z
    .registers 2

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    return v0
.end method

.method public isConnectBound()Z
    .registers 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v0, :cond_f

    .line 1127
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->isEnabled()Z

    move-result v0

    .line 1129
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isForcingNonBoldFont()Z
    .registers 2

    .prologue
    .line 1199
    iget v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->fontFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHapticOn()Z
    .registers 2

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isHapticOn:Z

    return v0
.end method

.method public isHoneycomb()Z
    .registers 3

    .prologue
    .line 1096
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isHoneycombOrGreater()Z
    .registers 3

    .prologue
    .line 1102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isInAirplaneMode()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_10

    move v0, v3

    :goto_f
    return v0

    :cond_10
    move v0, v2

    goto :goto_f
.end method

.method public isInAssets(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 1224
    const/4 v0, 0x0

    .line 1225
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1226
    if-eqz v1, :cond_19

    .line 1227
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1228
    if-eqz v1, :cond_19

    .line 1229
    const/4 v2, 0x0

    .line 1231
    :try_start_e
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_1d

    move-result-object v0

    .line 1232
    const/4 v1, 0x1

    .line 1236
    if-eqz v0, :cond_2f

    .line 1238
    :try_start_15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1a

    move v0, v1

    .line 1246
    :cond_19
    :goto_19
    return v0

    .line 1240
    :catch_1a
    move-exception v0

    move v0, v1

    goto :goto_19

    .line 1236
    :catch_1d
    move-exception v1

    if-eqz v2, :cond_19

    .line 1238
    :try_start_20
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_19

    .line 1240
    :catch_24
    move-exception v1

    goto :goto_19

    .line 1236
    :catchall_26
    move-exception v0

    if-eqz v2, :cond_2c

    .line 1238
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 1240
    :cond_2c
    :goto_2c
    throw v0

    :catch_2d
    move-exception v1

    goto :goto_2c

    :cond_2f
    move v0, v1

    goto :goto_19
.end method

.method public isNetworkUp()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1016
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1017
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->isUp(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    .line 1023
    :goto_15
    return v1

    .line 1020
    :cond_16
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->isUp(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v2

    .line 1021
    goto :goto_15

    :cond_22
    move v1, v3

    .line 1023
    goto :goto_15
.end method

.method public isSilentMode()Z
    .registers 2

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isSilentMode:Z

    return v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 173
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->updateSystemPaths()V

    .line 175
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    if-nez v0, :cond_16

    .line 176
    new-instance v0, Lcom/swype/android/jni/SwypeCore;

    invoke-direct {v0, p0}, Lcom/swype/android/jni/SwypeCore;-><init>(Lcom/swype/android/inputmethod/SwypeApplication;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    .line 177
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registgerLicenseCallback(Lcom/swype/android/jni/SwypeCore$LicenseManagerCallback;)V

    .line 179
    :cond_16
    return-void
.end method

.method public onInputMethodCreate(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 4
    .parameter "ime"

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    .line 1067
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v0, :cond_27

    .line 1068
    new-instance v0, Lcom/swype/android/service/SwypeConnect;

    invoke-direct {v0, p1}, Lcom/swype/android/service/SwypeConnect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    .line 1069
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/service/SwypeConnect;->setLocale(Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->bind()V

    .line 1072
    :cond_27
    return-void
.end method

.method public onInputMethodDestroy()V
    .registers 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->choiceWindowBitmapCache:Lcom/swype/android/util/BitmapCache;

    invoke-virtual {v0}, Lcom/swype/android/util/BitmapCache;->clear()Z

    .line 1079
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->inputWindowBitmapCache:Lcom/swype/android/util/BitmapCache;

    invoke-virtual {v0}, Lcom/swype/android/util/BitmapCache;->clear()Z

    .line 1080
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->closeLicense()V

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    .line 1083
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v0, :cond_19

    .line 1084
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->unbind()V

    .line 1087
    :cond_19
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 218
    invoke-static {}, Lcom/swype/android/widget/KeyboardBitmapManager;->clearCache()V

    .line 219
    return-void
.end method

.method public openLicense()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 739
    invoke-virtual {p0, v4}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicenseDigest(Z)[B

    move-result-object v0

    .line 740
    .local v0, digest_in_license_file:[B
    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isValidLicense([B)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 741
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    const-string v3, "DEVICE_STATUS"

    invoke-virtual {v2, v3}, Lcom/swype/android/security/License;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, status:Ljava/lang/String;
    if-eqz v1, :cond_20

    const-string v2, "DISABLED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v4

    .line 765
    .end local v1           #status:Ljava/lang/String;
    :goto_1f
    return v2

    .restart local v1       #status:Ljava/lang/String;
    :cond_20
    move v2, v5

    .line 746
    goto :goto_1f

    .line 750
    .end local v1           #status:Ljava/lang/String;
    :cond_22
    invoke-virtual {p0, v5}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicenseDigest(Z)[B

    move-result-object v0

    .line 751
    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isValidLicense([B)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 753
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->license:Lcom/swype/android/security/License;

    const-string v3, "DEVICE_STATUS"

    invoke-virtual {v2, v3}, Lcom/swype/android/security/License;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 754
    .restart local v1       #status:Ljava/lang/String;
    if-eqz v1, :cond_40

    const-string v2, "DISABLED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    move v2, v4

    .line 756
    goto :goto_1f

    :cond_40
    move v2, v5

    .line 758
    goto :goto_1f

    .line 761
    .end local v1           #status:Ljava/lang/String;
    :cond_42
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v2, :cond_4f

    iget-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v2, :cond_4f

    .line 762
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v2}, Lcom/swype/android/service/SwypeConnect;->requestLicense()V

    :cond_4f
    move v2, v4

    .line 765
    goto :goto_1f
.end method

.method public recentLanguageChange()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1215
    iget-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->languageChangeFlag:Z

    if-eqz v2, :cond_d

    .line 1216
    iput-wide v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->languageChangeTimestamp:J

    .line 1217
    iput-boolean v4, p0, Lcom/swype/android/inputmethod/SwypeApplication;->languageChangeFlag:Z

    .line 1220
    :cond_d
    iget-wide v2, p0, Lcom/swype/android/inputmethod/SwypeApplication;->languageChangeTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    move v0, v4

    goto :goto_17
.end method

.method public registerHapticSettingsObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .registers 6
    .parameter "handler"

    .prologue
    .line 127
    new-instance v0, Lcom/swype/android/inputmethod/SwypeApplication$1;

    invoke-direct {v0, p0, p1}, Lcom/swype/android/inputmethod/SwypeApplication$1;-><init>(Lcom/swype/android/inputmethod/SwypeApplication;Landroid/os/Handler;)V

    .line 133
    .local v0, observer:Landroid/database/ContentObserver;
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    return-object v0
.end method

.method public registerTouchToneSettingsObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .registers 6
    .parameter "handler"

    .prologue
    .line 142
    new-instance v0, Lcom/swype/android/inputmethod/SwypeApplication$2;

    invoke-direct {v0, p0, p1}, Lcom/swype/android/inputmethod/SwypeApplication$2;-><init>(Lcom/swype/android/inputmethod/SwypeApplication;Landroid/os/Handler;)V

    .line 148
    .local v0, observer:Landroid/database/ContentObserver;
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    return-object v0
.end method

.method public replaceLicense(Ljava/io/File;)Z
    .registers 4
    .parameter "newLicense"

    .prologue
    .line 921
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->LICENSE_FILE_ON_FILESYSTEM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 922
    .local v0, oldFile:Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 923
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->checkLicense()V

    .line 924
    const/4 v1, 0x1

    .line 926
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public sendConnectMessage(I)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, -0x8000

    .line 1145
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v0, :cond_10

    .line 1146
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 1148
    :cond_10
    return-void
.end method

.method public sendConnectMessage(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v0, :cond_e

    .line 1158
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 1160
    :cond_e
    return-void
.end method

.method public sendConnectMessage(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 1151
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v0, :cond_f

    .line 1152
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 1154
    :cond_f
    return-void
.end method

.method public sendConnectMessage(ILjava/lang/String;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v0, :cond_d

    .line 1164
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 1166
    :cond_d
    return-void
.end method

.method public sendConnectMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isConnectEnabled:Z

    if-eqz v0, :cond_d

    .line 1170
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->connectClient:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0, p1}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(Landroid/os/Message;)Z

    .line 1172
    :cond_d
    return-void
.end method

.method public sendToastMessage(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    .line 1184
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1185
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1186
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1187
    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    .line 1188
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1189
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1191
    :cond_1e
    return-void
.end method

.method public setFontFlags(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 1203
    iput p1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->fontFlags:I

    .line 1204
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeIMHandler:Landroid/os/Handler;

    .line 446
    return-void
.end method

.method public declared-synchronized setMessageLanguage(Ljava/lang/String;)V
    .registers 3
    .parameter "langName"

    .prologue
    .line 434
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->languageChangeFlag:Z

    .line 435
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore;->setMessageLanguage(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/swype/android/inputmethod/SwypeApplication;->broadcastCurrentLanguage(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 438
    monitor-exit p0

    return-void

    .line 434
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterSettingsObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    return-void
.end method

.method public declared-synchronized updateHapticSetting()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 491
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    :goto_f
    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isHapticOn:Z

    .line 495
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 496
    .local v0, core:Lcom/swype/android/jni/SwypeCore;
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isHapticOn:Z

    if-eqz v1, :cond_21

    .line 497
    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isHapticOn:Z
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_21} :catch_2f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_21} :catch_27

    .line 505
    .end local v0           #core:Lcom/swype/android/jni/SwypeCore;
    :cond_21
    :goto_21
    :try_start_21
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isHapticOn:Z
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_2c

    monitor-exit p0

    return v1

    :cond_25
    move v1, v3

    .line 491
    goto :goto_f

    .line 503
    :catch_27
    move-exception v1

    const/4 v1, 0x0

    :try_start_29
    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isHapticOn:Z
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2c

    goto :goto_21

    .line 491
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 504
    :catch_2f
    move-exception v1

    goto :goto_21
.end method

.method public declared-synchronized updateSilentMode()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 469
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isSilentMode:Z
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_1c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_11} :catch_17

    .line 474
    :goto_11
    :try_start_11
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isSilentMode:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_1c

    monitor-exit p0

    return v0

    :cond_15
    move v0, v2

    .line 469
    goto :goto_f

    .line 472
    :catch_17
    move-exception v0

    const/4 v0, 0x0

    :try_start_19
    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->isSilentMode:Z
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_11

    .line 469
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateSystemPaths()V
    .registers 5

    .prologue
    .line 581
    :try_start_0
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 584
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->SWYPE_VERSION:Ljava/lang/String;

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libSwypeCore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->SWYPE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_VERSION_FILE_NAME:Ljava/lang/String;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_LIB_FILE_DIR:Ljava/lang/String;

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/swypedata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_b0

    .line 594
    :goto_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Tutorial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_TUTORIAL_DIR:Ljava/lang/String;

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/udb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_UDB_DIR:Ljava/lang/String;

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "license.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->LICENSE_FILE_ON_FILESYSTEM:Ljava/lang/String;

    .line 598
    return-void

    .line 590
    :catch_b0
    move-exception v0

    .line 591
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading package data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method

.method public declared-synchronized validateActiveLanguage([Ljava/lang/String;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 373
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v2

    .line 376
    array-length v0, p1

    move v1, v9

    :goto_b
    if-ge v1, v0, :cond_7a

    aget-object v3, p1, v1

    .line 377
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    move v0, v10

    .line 383
    :goto_16
    if-eqz v0, :cond_72

    .line 385
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeApplication;->swypeCore:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 388
    array-length v4, p1

    move v5, v9

    :goto_2a
    if-ge v5, v4, :cond_5d

    aget-object v6, p1, v5

    .line 391
    iget-object v7, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v7, v7

    sub-int/2addr v7, v10

    :goto_32
    if-ltz v7, :cond_77

    .line 392
    iget-object v8, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    move v6, v7

    move v7, v10

    .line 398
    :goto_40
    if-eqz v7, :cond_54

    .line 399
    iget-object v7, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v7, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    aget-boolean v6, v7, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 376
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 391
    :cond_5a
    add-int/lit8 v7, v7, -0x1

    goto :goto_32

    .line 404
    :cond_5d
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Boolean;

    invoke-direct {p0, v2, v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->setNextAppropriateLanguage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Boolean;)V
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_74

    .line 406
    :cond_72
    monitor-exit p0

    return-void

    .line 373
    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_77
    move v6, v9

    move v7, v9

    goto :goto_40

    :cond_7a
    move v0, v9

    goto :goto_16
.end method

.method public writeDataToFile(Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 652
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 653
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 654
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    .line 655
    const/4 v0, 0x1

    .line 659
    :goto_14
    return v0

    .line 657
    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 659
    const/4 v0, 0x0

    goto :goto_14
.end method
