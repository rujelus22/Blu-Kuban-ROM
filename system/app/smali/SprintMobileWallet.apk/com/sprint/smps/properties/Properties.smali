.class public Lcom/sprint/smps/properties/Properties;
.super Ljava/util/Properties;
.source "Properties.java"


# static fields
.field public static PARTNER_URL:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"

.field public static SMPS_2ID_REST_TLS_URL:Ljava/lang/String; = null

.field public static SMPS_2ID_REST_URL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = null

.field public static accountNumber:Ljava/lang/String; = null

.field private static activity:Landroid/app/Activity; = null

.field public static apiCallInProgress:Z = false

.field public static app:Landroid/app/Application; = null

.field public static appPackageName:Ljava/lang/String; = null

.field public static appVersion:I = 0x0

.field public static appVersionName:Ljava/lang/String; = null

.field public static emulatorTesting:Z = false

.field public static encryptedNai:Ljava/lang/String; = null

.field public static encryptedNaiKey:Ljava/lang/String; = null

.field public static initialized:Z = false

.field public static isUserRegisteredContext:Ljava/lang/String; = null

.field public static lastReferenced:J = 0x0L

.field public static localyticsSession:Lcom/Localytics/android/LocalyticsSession; = null

.field public static loggedIn:Z = false

.field public static nai:Ljava/lang/String; = null

.field public static preLogintimeoutPeriodSec:J = 0x0L

.field public static registered:Z = false

.field public static smpsApi:Lcom/sprint/smps/service/SMPSService; = null

.field private static telephonyManager:Landroid/telephony/TelephonyManager; = null

.field public static timeoutPeriodSec:J = 0x0L

.field public static final useRSAforNAI:Z = true

.field public static useTestServer:Z

.field public static useTls:Z

.field public static user:Lcom/sprint/smps/service/ClientResponse;

.field public static virtualMagUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 23
    const-class v0, Lcom/sprint/smps/properties/Properties;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/properties/Properties;->TAG:Ljava/lang/String;

    .line 24
    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->initialized:Z

    .line 25
    sput-object v2, Lcom/sprint/smps/properties/Properties;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 26
    sput-object v2, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    .line 33
    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->emulatorTesting:Z

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/properties/Properties;->useTls:Z

    .line 35
    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->useTestServer:Z

    .line 37
    sput-object v2, Lcom/sprint/smps/properties/Properties;->SMPS_2ID_REST_URL:Ljava/lang/String;

    .line 38
    sput-object v2, Lcom/sprint/smps/properties/Properties;->SMPS_2ID_REST_TLS_URL:Ljava/lang/String;

    .line 39
    sput-object v2, Lcom/sprint/smps/properties/Properties;->PARTNER_URL:Ljava/lang/String;

    .line 40
    sput-object v2, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    .line 41
    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->registered:Z

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sprint/smps/properties/Properties;->lastReferenced:J

    .line 43
    const-wide/16 v0, 0x3c

    sput-wide v0, Lcom/sprint/smps/properties/Properties;->timeoutPeriodSec:J

    .line 44
    const-wide/16 v0, 0xb4

    sput-wide v0, Lcom/sprint/smps/properties/Properties;->preLogintimeoutPeriodSec:J

    .line 45
    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/sprint/smps/properties/Properties;->appVersion:I

    .line 47
    sput-object v2, Lcom/sprint/smps/properties/Properties;->appVersionName:Ljava/lang/String;

    .line 48
    sput-object v2, Lcom/sprint/smps/properties/Properties;->appPackageName:Ljava/lang/String;

    .line 49
    sput-object v2, Lcom/sprint/smps/properties/Properties;->virtualMagUrl:Ljava/lang/String;

    .line 50
    sput-object v2, Lcom/sprint/smps/properties/Properties;->isUserRegisteredContext:Ljava/lang/String;

    .line 51
    sput-object v2, Lcom/sprint/smps/properties/Properties;->app:Landroid/app/Application;

    .line 52
    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->apiCallInProgress:Z

    .line 53
    sput-object v2, Lcom/sprint/smps/properties/Properties;->nai:Ljava/lang/String;

    .line 54
    sput-object v2, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    .line 57
    sput-object v2, Lcom/sprint/smps/properties/Properties;->encryptedNaiKey:Ljava/lang/String;

    .line 58
    sput-object v2, Lcom/sprint/smps/properties/Properties;->encryptedNai:Ljava/lang/String;

    .line 61
    sput-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    .line 64
    sput-object v2, Lcom/sprint/smps/properties/Properties;->accountNumber:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method

.method public static getDataConnectionState()I
    .registers 2

    .prologue
    .line 116
    const/4 v0, -0x1

    .line 117
    .local v0, state:I
    sget-object v1, Lcom/sprint/smps/properties/Properties;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_b

    .line 118
    sget-object v1, Lcom/sprint/smps/properties/Properties;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 120
    :cond_b
    return v0
.end method

.method public static hasDataConnection()Z
    .registers 2

    .prologue
    .line 125
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->getDataConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static initialize(Landroid/app/Activity;)V
    .registers 5
    .parameter "act"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 70
    sget-boolean v0, Lcom/sprint/smps/properties/Properties;->initialized:Z

    if-nez v0, :cond_68

    .line 73
    sput-boolean v2, Lcom/sprint/smps/properties/Properties;->initialized:Z

    .line 75
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 76
    sput-boolean v2, Lcom/sprint/smps/properties/Properties;->emulatorTesting:Z

    .line 78
    :cond_1c
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/properties/Properties;->app:Landroid/app/Application;

    .line 79
    invoke-static {p0}, Lcom/sprint/smps/util/Utilities;->getNai(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/properties/Properties;->nai:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/Localytics/android/LocalyticsSession;

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    const v2, 0x7f06000c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/Localytics/android/LocalyticsSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    .line 85
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    invoke-virtual {v0}, Lcom/Localytics/android/LocalyticsSession;->open()V

    .line 86
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    invoke-virtual {v0}, Lcom/Localytics/android/LocalyticsSession;->upload()V

    .line 88
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/properties/Properties;->encryptedNaiKey:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/sprint/smps/util/Utilities;->getEncryptedNAI()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/properties/Properties;->encryptedNai:Ljava/lang/String;

    .line 95
    sput-object p0, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    .line 96
    invoke-static {p0}, Lcom/sprint/smps/properties/Properties;->setGlobalProperties(Landroid/app/Activity;)V

    .line 97
    sget-object v0, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/sprint/smps/properties/Properties;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 99
    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->registered:Z

    .line 100
    sput-boolean v3, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    .line 104
    :cond_68
    return-void
.end method

.method public static referenced()V
    .registers 2

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sprint/smps/properties/Properties;->lastReferenced:J

    .line 110
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->isRunning()Z

    move-result v0

    if-nez v0, :cond_17

    .line 111
    new-instance v0, Lcom/sprint/smps/TimeOutThread;

    invoke-direct {v0}, Lcom/sprint/smps/TimeOutThread;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sprint/smps/TimeOutThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    :cond_17
    return-void
.end method

.method public static restoreTimeout()V
    .registers 2

    .prologue
    .line 160
    sget-object v0, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/sprint/smps/properties/Properties;->timeoutPeriodSec:J

    .line 161
    return-void
.end method

.method private static setGlobalProperties(Landroid/app/Activity;)V
    .registers 6
    .parameter "act"

    .prologue
    .line 132
    sget-object v3, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 134
    sput-object v2, Lcom/sprint/smps/properties/Properties;->virtualMagUrl:Ljava/lang/String;

    .line 136
    :cond_d
    const/4 v3, -0x1

    sput v3, Lcom/sprint/smps/properties/Properties;->appVersion:I

    .line 138
    :try_start_10
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 139
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 140
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lcom/sprint/smps/properties/Properties;->appVersion:I

    .line 141
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/sprint/smps/properties/Properties;->appVersionName:Ljava/lang/String;

    .line 142
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/sprint/smps/properties/Properties;->appPackageName:Ljava/lang/String;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_29} :catch_7d

    .line 145
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_29
    sget-object v3, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sprint/smps/properties/Properties;->SMPS_2ID_REST_TLS_URL:Ljava/lang/String;

    .line 146
    sget-object v3, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sprint/smps/properties/Properties;->SMPS_2ID_REST_URL:Ljava/lang/String;

    .line 147
    sget-object v3, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    const v4, 0x7f06000a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sput-wide v3, Lcom/sprint/smps/properties/Properties;->timeoutPeriodSec:J

    .line 148
    sget-object v3, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    const v4, 0x7f06000b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sput-wide v3, Lcom/sprint/smps/properties/Properties;->preLogintimeoutPeriodSec:J

    .line 152
    :try_start_65
    sget-object v3, Lcom/sprint/smps/properties/Properties;->activity:Landroid/app/Activity;

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/smps/service/SMPSService;

    sput-object v3, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7a} :catch_7b

    .line 156
    :goto_7a
    return-void

    .line 155
    :catch_7b
    move-exception v3

    goto :goto_7a

    .line 143
    :catch_7d
    move-exception v3

    goto :goto_29
.end method
