.class public Lcom/samsung/client/DMApp;
.super Landroid/app/Application;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/client/DMApp$LocaleChangeReceiver;,
        Lcom/samsung/client/DMApp$AirplaneModeReceiver;,
        Lcom/samsung/client/DMApp$OnReceiver;,
        Lcom/samsung/client/DMApp$OffReceiver;,
        Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;
    }
.end annotation


# static fields
.field private static cancelling:Z

.field private static hfaNotification:Z

.field public static isForeground:Z

.field private static isInitialized:Z

.field public static mAirModeState:Z

.field private static mApp:Lcom/samsung/client/DMApp;

.field public static mAppState:I

.field public static mCallState:I

.field public static mIPCavailable:Z

.field public static mNIAProgress:Z

.field public static mPhoneState:I

.field private static mService:Lcom/samsung/client/ISyncmlService;

.field private static mSessionType:I

.field public static niaRetries:I

.field private static sendStatusRetries:I


# instance fields
.field private at_cmds:[B

.field private bc10bc14changed:I

.field public cancelDldSessionTimer:Landroid/os/CountDownTimer;

.field public cancelUpdateSessionTimer:Landroid/os/CountDownTimer;

.field public ctd:Landroid/os/CountDownTimer;

.field private current:I

.field private currentActivity:Landroid/app/Activity;

.field public delayStart:Landroid/os/CountDownTimer;

.field public delayedBgNiaSession:Landroid/os/CountDownTimer;

.field private deviceConfigured:I

.field private downloadInProgress:Z

.field private errCode:I

.field private fumoRunStatus:I

.field public fumoRunTimer:Landroid/os/CountDownTimer;

.field private fumoUpdateStatus:I

.field private fumoUserStart:Z

.field public hangedTimer:Landroid/os/CountDownTimer;

.field private homeLaunchedByApp:Z

.field private instId:I

.field private isRegistered:Z

.field private isUpdateCompleted:Z

.field private localeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field public mHandler:Landroid/os/Handler;

.field private mKeyguardDisabled:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardMgr:Landroid/app/KeyguardManager;

.field private final mListener:Landroid/telephony/PhoneStateListener;

.field private mPowerMgr:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

.field private mStartCntrRunning:Z

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWimaxHandler:Lcom/samsung/client/WimaxHandler;

.field private mdn:I

.field private msid:I

.field private nai:I

.field public numRetries:I

.field private offReceiver:Landroid/content/BroadcastReceiver;

.field private onReceiver:Landroid/content/BroadcastReceiver;

.field private previousActivity:Landroid/app/Activity;

.field private prlUpdated:I

.field public radioResetTimer:Landroid/os/CountDownTimer;

.field private replace:Z

.field public sendStatusRetry:Landroid/os/CountDownTimer;

.field private sessStatus:I

.field private sessUpdate:I

.field private slot:I

.field private total:I

.field public userCancel:Z

.field public userCancelDld:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    .line 112
    sput v1, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 151
    sput v1, Lcom/samsung/client/DMApp;->mAppState:I

    .line 152
    sput-boolean v1, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    .line 153
    sput-boolean v1, Lcom/samsung/client/DMApp;->isForeground:Z

    .line 156
    sput v2, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    .line 157
    const/4 v0, 0x3

    sput v0, Lcom/samsung/client/DMApp;->mPhoneState:I

    .line 158
    sput v1, Lcom/samsung/client/DMApp;->mCallState:I

    .line 159
    sput-boolean v1, Lcom/samsung/client/DMApp;->mAirModeState:Z

    .line 160
    sput-boolean v2, Lcom/samsung/client/DMApp;->mIPCavailable:Z

    .line 162
    sput v1, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 189
    sput-boolean v1, Lcom/samsung/client/DMApp;->isInitialized:Z

    .line 191
    sput-boolean v1, Lcom/samsung/client/DMApp;->hfaNotification:Z

    .line 192
    sput-boolean v1, Lcom/samsung/client/DMApp;->cancelling:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mPowerMgr:Landroid/os/PowerManager;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mKeyguardMgr:Landroid/app/KeyguardManager;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->isUpdateCompleted:Z

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->numRetries:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->previousActivity:Landroid/app/Activity;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->fumoRunStatus:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->fumoUpdateStatus:I

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->total:I

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->current:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->mdn:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->msid:I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->nai:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

    .line 179
    new-instance v0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->offReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->onReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/samsung/client/DMApp$1;

    invoke-direct {v0, p0}, Lcom/samsung/client/DMApp$1;-><init>(Lcom/samsung/client/DMApp;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    .line 364
    new-instance v0, Lcom/samsung/client/DMApp$2;

    invoke-direct {v0, p0}, Lcom/samsung/client/DMApp$2;-><init>(Lcom/samsung/client/DMApp;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    .line 546
    new-instance v0, Lcom/samsung/client/DMApp$3;

    invoke-direct {v0, p0}, Lcom/samsung/client/DMApp$3;-><init>(Lcom/samsung/client/DMApp;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    .line 1564
    new-instance v0, Lcom/samsung/client/DMApp$4;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$4;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->ctd:Landroid/os/CountDownTimer;

    .line 1712
    new-instance v0, Lcom/samsung/client/DMApp$5;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$5;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->delayedBgNiaSession:Landroid/os/CountDownTimer;

    .line 2188
    new-instance v0, Lcom/samsung/client/DMApp$6;

    invoke-direct {v0, p0}, Lcom/samsung/client/DMApp$6;-><init>(Lcom/samsung/client/DMApp;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mListener:Landroid/telephony/PhoneStateListener;

    .line 2408
    new-instance v0, Lcom/samsung/client/DMApp$7;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$7;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    .line 2743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 2868
    new-instance v0, Lcom/samsung/client/DMApp$8;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$8;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->sendStatusRetry:Landroid/os/CountDownTimer;

    .line 2894
    new-instance v0, Lcom/samsung/client/DMApp$9;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$9;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->hangedTimer:Landroid/os/CountDownTimer;

    .line 3105
    new-instance v0, Lcom/samsung/client/DMApp$10;

    const-wide/16 v2, 0x1b58

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$10;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->radioResetTimer:Landroid/os/CountDownTimer;

    .line 3194
    new-instance v0, Lcom/samsung/client/DMApp$11;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$11;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    .line 3214
    new-instance v0, Lcom/samsung/client/DMApp$12;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$12;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->cancelUpdateSessionTimer:Landroid/os/CountDownTimer;

    .line 3235
    new-instance v0, Lcom/samsung/client/DMApp$13;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$13;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->cancelDldSessionTimer:Landroid/os/CountDownTimer;

    .line 195
    const-string v0, "DMApp"

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sput-object p0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    .line 197
    return-void
.end method

.method private NIASessionBlocked()Z
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    .line 1602
    const-string v1, "DMApp"

    const-string v2, "NIASessionBlocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    sget v1, Lcom/samsung/client/DMApp;->mSessionType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1604
    const-string v1, "dc_enable"

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_29

    .line 1617
    :cond_19
    :goto_19
    return v0

    .line 1607
    :cond_1a
    sget v1, Lcom/samsung/client/DMApp;->mSessionType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2b

    .line 1608
    const-string v1, "prl_enable"

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_19

    .line 1617
    :cond_29
    const/4 v0, 0x0

    goto :goto_19

    .line 1611
    :cond_2b
    sget v1, Lcom/samsung/client/DMApp;->mSessionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    .line 1612
    const-string v1, "fumo_enable"

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_29

    goto :goto_19
.end method

.method private SaveWifiStateInSharedPref(Ljava/lang/Boolean;)V
    .registers 5
    .parameter

    .prologue
    .line 2084
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveWifiStateInSharedPref- value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2086
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2087
    const-string v1, "DM_WIFI_DISABLE"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2088
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2089
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/client/DMApp;->total:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->total:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/client/DMApp;->current:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->current:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->replace:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/client/DMApp;->instId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->instId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/client/DMApp;->fumoRunStatus:I

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->fumoRunStatus:I

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/client/DMApp;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/client/DMApp;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->fumoUpdateStatus:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/client/DMApp;)Lcom/samsung/client/WimaxHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2100()I
    .registers 1

    .prologue
    .line 52
    sget v0, Lcom/samsung/client/DMApp;->mSessionType:I

    return v0
.end method

.method static synthetic access$2102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput p0, Lcom/samsung/client/DMApp;->mSessionType:I

    return p0
.end method

.method static synthetic access$2200(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->NIASessionBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    return-void
.end method

.method static synthetic access$2400()Lcom/samsung/client/DMApp;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->hfaProgress()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->fumoProgress()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->prlProgress()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->dcProgress()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->nifumoProgress()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->niprlProgress()V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->nidcProgress()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->handleNIAretry()V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    return v0
.end method

.method static synthetic access$3302(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    return v0
.end method

.method static synthetic access$3402(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    return p1
.end method

.method static synthetic access$3500(Lcom/samsung/client/DMApp;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp;->handleFumoRunStatus(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->handleATCommands()V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/client/DMApp;Lcom/samsung/client/TslcmnSan$TslSanMsg;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp;->startNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/client/DMApp;)Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->next_san_msg()Lcom/samsung/client/TslcmnSan$TslSanMsg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/samsung/client/DMApp;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/samsung/client/DMApp;)Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    return-void
.end method

.method static synthetic access$4400()Z
    .registers 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/samsung/client/DMApp;->hfaNotification:Z

    return v0
.end method

.method static synthetic access$500()Lcom/samsung/client/ISyncmlService;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/client/ISyncmlService;)Lcom/samsung/client/ISyncmlService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    sput-object p0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->errCode:I

    return p1
.end method

.method static synthetic access$902(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    return p1
.end method

.method private checkSet(IB)I
    .registers 4
    .parameter "bitPosition"
    .parameter "b"

    .prologue
    .line 2047
    and-int/lit16 v0, p2, 0xff

    shr-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private dcProgress()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1031
    const-string v0, "DMApp"

    const-string v1, "dcProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1035
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_ce

    .line 1036
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1037
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->mdn:I

    .line 1038
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->msid:I

    .line 1039
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->nai:I

    .line 1040
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 1041
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcProgress() mdn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->mdn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcProgress() msid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->msid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcProgress() nai = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->nai:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcProgress() bc10/bc14 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget v0, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v0, v3, :cond_aa

    iget v0, p0, Lcom/samsung/client/DMApp;->msid:I

    if-eq v0, v3, :cond_aa

    iget v0, p0, Lcom/samsung/client/DMApp;->nai:I

    if-eq v0, v3, :cond_aa

    iget v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v0, v3, :cond_bc

    .line 1048
    :cond_aa
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    .line 1053
    :goto_ad
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1070
    :cond_bb
    :goto_bb
    return-void

    .line 1050
    :cond_bc
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_bf} :catch_c0

    goto :goto_ad

    .line 1065
    :catch_c0
    move-exception v0

    .line 1066
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    invoke-virtual {p0, v5}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_bb

    .line 1056
    :cond_ce
    :try_start_ce
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    if-eqz v0, :cond_bb

    .line 1062
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->gotoFailure(I)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_e1} :catch_c0

    goto :goto_bb
.end method

.method private fumoProgress()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 827
    :try_start_2
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fumoProgress() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-nez v3, :cond_ac

    .line 829
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isUpdateCompleted()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 830
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendstatusfumoProgress() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget v3, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-eqz v3, :cond_5f

    sget v3, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_5f

    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v3, :cond_5f

    .line 835
    sget v3, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    .line 836
    iget-object v3, p0, Lcom/samsung/client/DMApp;->sendStatusRetry:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_72

    .line 1002
    :cond_5e
    :goto_5e
    return-void

    .line 841
    :cond_5f
    :try_start_5f
    const-string v3, "DMApp"

    const-string v4, "abortFumoStatusRetry()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v3}, Lcom/samsung/client/ISyncmlService;->abortFumoStatusRetry()I

    .line 843
    const/4 v3, 0x1

    sput v3, Lcom/samsung/client/DMApp;->sendStatusRetries:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6e} :catch_80

    .line 848
    :goto_6e
    :try_start_6e
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeStatus()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_5e

    .line 998
    :catch_72
    move-exception v0

    .line 999
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    invoke-virtual {p0, v6}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_5e

    .line 844
    .end local v0           #e:Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 845
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_81
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8a} :catch_72

    goto :goto_6e

    .line 851
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8b
    :try_start_8b
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 853
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9c} :catch_a1

    .line 857
    :goto_9c
    const/4 v3, 0x0

    :try_start_9d
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_5e

    .line 854
    :catch_a1
    move-exception v0

    .line 855
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9c

    .line 863
    .end local v0           #e:Ljava/lang/Exception;
    :cond_ac
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    if-ne v3, v7, :cond_108

    .line 864
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fumoProgress() userCancelDld "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ca} :catch_72

    .line 868
    :try_start_ca
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 870
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_db} :catch_ee

    .line 874
    :goto_db
    const/4 v3, 0x0

    :try_start_dc
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 875
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/SendStatus;

    if-eqz v3, :cond_f9

    .line 876
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v3}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    goto/16 :goto_5e

    .line 871
    :catch_ee
    move-exception v0

    .line 872
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_db

    .line 877
    .end local v0           #e:Ljava/lang/Exception;
    :cond_f9
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/UpdateSoftware;

    if-eqz v3, :cond_5e

    .line 878
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/UpdateSoftware;

    invoke-virtual {v3}, Lcom/samsung/fumo/UpdateSoftware;->removeUpdateStatus()V

    goto/16 :goto_5e

    .line 884
    :cond_108
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    if-eqz v3, :cond_18c

    .line 885
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fumoProgress(): Download error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    .line 890
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v3, :cond_159

    .line 891
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v3}, Lcom/samsung/fumo/FirmwareUpdate;->dldError()V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_142} :catch_72

    .line 903
    :goto_142
    :try_start_142
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 905
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_153} :catch_181

    .line 909
    :goto_153
    const/4 v3, 0x0

    :try_start_154
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_5e

    .line 893
    :cond_159
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/SendStatus;

    if-eqz v3, :cond_16b

    .line 894
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v3}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 900
    :cond_166
    :goto_166
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto :goto_142

    .line 895
    :cond_16b
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.client.UserTouch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_166

    .line 897
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    goto :goto_166

    .line 906
    :catch_181
    move-exception v0

    .line 907
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_18b} :catch_72

    goto :goto_153

    .line 914
    .end local v0           #e:Ljava/lang/Exception;
    :cond_18c
    :try_start_18c
    const-string v3, "DMApp"

    const-string v4, "fumoProgress()   removeUpdateSoftware "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/UpdateSoftware;

    if-eqz v3, :cond_1a0

    .line 916
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/UpdateSoftware;

    invoke-virtual {v3}, Lcom/samsung/fumo/UpdateSoftware;->removeUpdateStatus()V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1a0} :catch_1f8

    .line 921
    :cond_1a0
    :goto_1a0
    :try_start_1a0
    iget v3, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v3, :cond_27b

    .line 922
    iget v3, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v2, v3

    .line 923
    .local v2, ses_upd:B
    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    .line 924
    .local v1, fumo:I
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fumoProgress() fumo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    if-ne v1, v7, :cond_203

    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1ca} :catch_72

    if-eqz v3, :cond_203

    .line 927
    :try_start_1cc
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v4, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 928
    iget-object v3, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 931
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 932
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v3, :cond_5e

    .line 933
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/fumo/FirmwareUpdate;->dlprogress(II)V
    :try_end_1ea
    .catch Landroid/os/RemoteException; {:try_start_1cc .. :try_end_1ea} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1ea} :catch_72

    goto/16 :goto_5e

    .line 934
    :catch_1ec
    move-exception v0

    .line 935
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1ed
    const-string v3, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5e

    .line 918
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #fumo:I
    .end local v2           #ses_upd:B
    :catch_1f8
    move-exception v0

    .line 919
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a0

    .line 937
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fumo:I
    .restart local v2       #ses_upd:B
    :cond_203
    if-nez v1, :cond_5e

    .line 939
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fumoProgress() isUpdateCompleted :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isUpdateCompleted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentActivity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v3, :cond_25e

    .line 944
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->replace:Z

    if-eqz v3, :cond_256

    .line 945
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/samsung/fumo/FirmwareUpdate;->gotoFailure(I)V
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_23f} :catch_72

    .line 958
    :goto_23f
    :try_start_23f
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 961
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_250} :catch_270

    .line 967
    :goto_250
    const/4 v3, 0x0

    :try_start_251
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_5e

    .line 947
    :cond_256
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v3}, Lcom/samsung/fumo/FirmwareUpdate;->noUpdateAlert()V

    goto :goto_23f

    .line 950
    :cond_25e
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/SendStatus;

    if-eqz v3, :cond_26b

    .line 951
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v3}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 954
    :cond_26b
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto :goto_23f

    .line 964
    :catch_270
    move-exception v0

    .line 965
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_250

    .line 971
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fumo:I
    .end local v2           #ses_upd:B
    :cond_27b
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fumoProgress() isUpdateCompleted :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isUpdateCompleted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentActivity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-eqz v3, :cond_2c2

    .line 976
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_2ab} :catch_72

    .line 988
    :goto_2ab
    :try_start_2ab
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 991
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2bc} :catch_2e4

    .line 995
    :goto_2bc
    const/4 v3, 0x0

    :try_start_2bd
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_5e

    .line 977
    :cond_2c2
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v3, :cond_2d2

    .line 978
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    iget v4, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v3, v4}, Lcom/samsung/fumo/FirmwareUpdate;->gotoFailure(I)V

    goto :goto_2ab

    .line 980
    :cond_2d2
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/SendStatus;

    if-eqz v3, :cond_2df

    .line 981
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v3}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 984
    :cond_2df
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto :goto_2ab

    .line 992
    :catch_2e4
    move-exception v0

    .line 993
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_2ee} :catch_72

    goto :goto_2bc
.end method

.method public static getInstance()Lcom/samsung/client/DMApp;
    .registers 1

    .prologue
    .line 200
    sget-object v0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method public static getSyncmlService()Lcom/samsung/client/ISyncmlService;
    .registers 1

    .prologue
    .line 322
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    return-object v0
.end method

.method private handleATCommands()V
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    const/high16 v6, 0x1000

    const/4 v5, 0x2

    const-wide/16 v3, 0x1

    const/4 v2, 0x1

    .line 2211
    const-string v0, "DMApp"

    const-string v1, "handleATCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_1e4

    .line 2306
    :cond_17
    :goto_17
    return-void

    .line 2214
    :pswitch_18
    const-string v0, "DMApp"

    const-string v1, "Command for DC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v2, v0, :cond_32

    .line 2216
    const-string v0, "DMApp"

    const-string v1, "Enable DC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const-string v0, "dc_enable"

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_17

    .line 2218
    :cond_32
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_45

    .line 2219
    const-string v0, "DMApp"

    const-string v1, "Disable DC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    const-string v0, "dc_enable"

    invoke-virtual {p0, v0, v7, v8}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_17

    .line 2221
    :cond_45
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v5, v0, :cond_6c

    .line 2222
    const-string v0, "DMApp"

    const-string v1, "Start DC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const-string v0, "dc_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2224
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2226
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2228
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_17

    .line 2230
    :cond_6c
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_17

    .line 2231
    const-string v0, "DMApp"

    const-string v1, "Enable Logging already done at ARM9 side"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2237
    :pswitch_7b
    const-string v0, "DMApp"

    const-string v1, "Command for PRL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v2, v0, :cond_95

    .line 2239
    const-string v0, "DMApp"

    const-string v1, "Enable PRL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_17

    .line 2241
    :cond_95
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_b5

    .line 2242
    const-string v0, "DMApp"

    const-string v1, "Disable PRL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0, v7, v8}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.PRL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "prl_interval"

    invoke-direct {p0, v0, v1}, Lcom/samsung/client/DMApp;->removeAlarm(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2246
    :cond_b5
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v5, v0, :cond_dd

    .line 2247
    const-string v0, "DMApp"

    const-string v1, "Start PRL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2250
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2252
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2253
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 2255
    :cond_dd
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_106

    .line 2256
    const-string v0, "DMApp"

    const-string v1, "Check every 90 days"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2258
    const-wide/32 v0, 0x493e0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.client.PRL_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "prl_interval"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2261
    :cond_106
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_17

    .line 2262
    const-string v0, "DMApp"

    const-string v1, "Check every 180 days"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2264
    const-wide/32 v0, 0x927c0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.client.PRL_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "prl_interval"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2271
    :pswitch_12f
    const-string v0, "DMApp"

    const-string v1, "Command for FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v2, v0, :cond_14a

    .line 2273
    const-string v0, "DMApp"

    const-string v1, "Enable FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto/16 :goto_17

    .line 2275
    :cond_14a
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_16a

    .line 2276
    const-string v0, "DMApp"

    const-string v1, "Disable FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0, v7, v8}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fumo_interval"

    invoke-direct {p0, v0, v1}, Lcom/samsung/client/DMApp;->removeAlarm(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2280
    :cond_16a
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v5, v0, :cond_192

    .line 2281
    const-string v0, "DMApp"

    const-string v1, "Start FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2283
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2285
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2287
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 2289
    :cond_192
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_1bb

    .line 2290
    const-string v0, "DMApp"

    const-string v1, "Check every 90 days"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2292
    const-wide/32 v0, 0x493e0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "fumo_interval"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2296
    :cond_1bb
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_17

    .line 2297
    const-string v0, "DMApp"

    const-string v1, "Check every 180 days"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2299
    const-wide/32 v0, 0x927c0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "fumo_interval"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2212
    :pswitch_data_1e4
    .packed-switch 0x1
        :pswitch_18
        :pswitch_7b
        :pswitch_12f
    .end packed-switch
.end method

.method private handleFumoRunStatus(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1202
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFumoRunStatus() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    if-nez p1, :cond_2d

    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-nez v0, :cond_2d

    .line 1265
    :cond_2c
    :goto_2c
    return-void

    .line 1206
    :cond_2d
    if-ne p1, v3, :cond_48

    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-nez v0, :cond_48

    .line 1207
    const-string v0, "DMApp"

    const-string v1, "handleFumoRunStatus():Bootstart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    sput v4, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 1209
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 1210
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_2c

    .line 1225
    :cond_48
    if-ne p1, v3, :cond_90

    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-eqz v0, :cond_90

    .line 1226
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1228
    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 1230
    :try_start_55
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2c

    .line 1231
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-nez v0, :cond_2c

    .line 1233
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_78

    .line 1234
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/fumo/FirmwareUpdate;->dlprogress(II)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6c} :catch_6d

    goto :goto_2c

    .line 1242
    :catch_6d
    move-exception v0

    .line 1243
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1238
    :cond_78
    :try_start_78
    const-string v0, "com.samsung.client.UserTouch"

    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1239
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->bringUItoForeground(Landroid/app/Activity;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8f} :catch_6d

    goto :goto_2c

    .line 1245
    :cond_90
    if-nez p1, :cond_2c

    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-eqz v0, :cond_2c

    .line 1247
    :try_start_96
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_2c

    .line 1248
    new-instance v0, Lcom/samsung/client/Tsldm_ses_opt_binder;

    invoke-direct {v0}, Lcom/samsung/client/Tsldm_ses_opt_binder;-><init>()V

    .line 1249
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->enc:I

    .line 1250
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->ver:I

    .line 1252
    const/16 v1, 0x1800

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_msg_sz:I

    .line 1253
    const v1, 0x8c00

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_obj_sz:I

    .line 1254
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->cookie:I

    .line 1255
    const-string v1, "Device"

    iput-object v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->disp_name:Ljava/lang/String;

    .line 1257
    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v2, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v1, v2, v0}, Lcom/samsung/client/ISyncmlService;->setupDMSession(Lcom/samsung/client/ISyncmlServiceDMCallback;Lcom/samsung/client/Tsldm_ses_opt_binder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I

    .line 1258
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    const/4 v1, 0x2

    iget v2, p0, Lcom/samsung/client/DMApp;->instId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/client/ISyncmlService;->startDMSession(IILcom/samsung/client/Tsldm_start_parm_binder;)I
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_c8} :catch_ca

    goto/16 :goto_2c

    .line 1260
    :catch_ca
    move-exception v0

    .line 1261
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c
.end method

.method private handleNIAretry()V
    .registers 4

    .prologue
    .line 1540
    const-string v0, "DMApp"

    const-string v1, "handleNIAretry()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_16

    .line 1543
    const-string v0, "DMApp"

    const-string v1, "handleNIAretry(): session success, removing message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    .line 1562
    :goto_15
    return-void

    .line 1546
    :cond_16
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_25

    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_25

    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5b

    .line 1547
    :cond_25
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_35

    .line 1548
    const-string v0, "DMApp"

    const-string v1, "handleNIAretry(): session error, retries over, removing message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    goto :goto_15

    .line 1553
    :cond_35
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1554
    iget-object v0, p0, Lcom/samsung/client/DMApp;->ctd:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1555
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNIAretry(): session error, retrying again:start Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1559
    :cond_5b
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNIAretry():error_code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    goto :goto_15
.end method

.method private hfaProgress()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 775
    const-string v2, "DMApp"

    const-string v3, "hfaProgress()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :try_start_9
    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/samsung/handsfreeactivation/StartUp;

    if-eqz v2, :cond_16

    .line 778
    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v2, Lcom/samsung/handsfreeactivation/StartUp;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/handsfreeactivation/StartUp;->mAppCancel:Z

    .line 781
    :cond_16
    iget v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_25

    iget v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d8

    .line 782
    :cond_25
    iget v2, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 783
    .local v1, ses_upd:B
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->mdn:I

    .line 784
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->msid:I

    .line 785
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->nai:I

    .line 786
    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 787
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hfaProgress() mdn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/client/DMApp;->mdn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hfaProgress() msid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/client/DMApp;->msid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hfaProgress() nai = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/client/DMApp;->nai:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hfaProgress() bc10/bc14 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget v2, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v2, v5, :cond_ba

    iget v2, p0, Lcom/samsung/client/DMApp;->msid:I

    if-eq v2, v5, :cond_ba

    iget v2, p0, Lcom/samsung/client/DMApp;->nai:I

    if-ne v2, v5, :cond_c2

    .line 793
    :cond_ba
    iget v2, p0, Lcom/samsung/client/DMApp;->nai:I

    if-ne v2, v5, :cond_be

    .line 796
    :cond_be
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->gotoSuccess()V

    .line 816
    .end local v1           #ses_upd:B
    :cond_c1
    :goto_c1
    return-void

    .line 798
    .restart local v1       #ses_upd:B
    :cond_c2
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->gotoFailure()V

    .line 799
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->restoreSlot(I)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c9} :catch_ca

    goto :goto_c1

    .line 812
    .end local v1           #ses_upd:B
    :catch_ca
    move-exception v0

    .line 813
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    invoke-virtual {p0, v6}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_c1

    .line 803
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d8
    const/4 v2, 0x0

    :try_start_d9
    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 805
    iget-boolean v2, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v2, :cond_c1

    .line 808
    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/samsung/handsfreeactivation/StartUp;

    if-eqz v2, :cond_c1

    .line 809
    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v2, Lcom/samsung/handsfreeactivation/StartUp;

    iget v3, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v2, v3}, Lcom/samsung/handsfreeactivation/StartUp;->gotoFailure(I)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_ef} :catch_ca

    goto :goto_c1
.end method

.method private next_san_msg()Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .registers 2

    .prologue
    .line 1598
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->next_san_msg(Landroid/content/Context;)Lcom/samsung/client/TslcmnSan$TslSanMsg;

    move-result-object v0

    return-object v0
.end method

.method private nidcProgress()V
    .registers 7

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1755
    const-string v1, "DMApp"

    const-string v2, "nidcProgress()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1760
    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v1, :cond_107

    .line 1762
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1763
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->mdn:I

    .line 1764
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->msid:I

    .line 1765
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->nai:I

    .line 1766
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 1767
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nidcProgress() mdn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->mdn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nidcProgress() msid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->msid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nidcProgress() nai = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->nai:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nidcProgress() bc10/bc14 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_ee

    .line 1773
    iget v0, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v0, v3, :cond_b0

    iget v0, p0, Lcom/samsung/client/DMApp;->msid:I

    if-eq v0, v3, :cond_b0

    iget v0, p0, Lcom/samsung/client/DMApp;->nai:I

    if-eq v0, v3, :cond_b0

    iget v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v0, v3, :cond_df

    .line 1775
    :cond_b0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    .line 1779
    :goto_b3
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1791
    :cond_c1
    :goto_c1
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1..... nidcProgress () niaRetries  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1829
    :cond_de
    :goto_de
    return-void

    .line 1777
    :cond_df
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e2} :catch_e3

    goto :goto_b3

    .line 1826
    :catch_e3
    move-exception v0

    .line 1827
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_de

    .line 1782
    :cond_ee
    :try_start_ee
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    .line 1783
    iget v0, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v0, v3, :cond_f9

    iget v0, p0, Lcom/samsung/client/DMApp;->msid:I

    if-ne v0, v3, :cond_fe

    .line 1785
    :cond_f9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    goto :goto_c1

    .line 1786
    :cond_fe
    iget v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v0, v3, :cond_c1

    .line 1787
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V

    goto :goto_c1

    .line 1794
    :cond_107
    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-eq v1, v5, :cond_115

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_115

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_15a

    .line 1795
    :cond_115
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    if-lt v0, v4, :cond_de

    .line 1796
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nidcProgress() error_code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->gotoFailure(I)V

    .line 1807
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2..... nidcProgress () niaRetries  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    goto :goto_de

    .line 1812
    :cond_15a
    :goto_15a
    if-ge v0, v5, :cond_164

    .line 1813
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1812
    add-int/lit8 v0, v0, 0x1

    goto :goto_15a

    .line 1815
    :cond_164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1816
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1817
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1818
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 1819
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1820
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1822
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3..... nidcProgress () niaRetries  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_19f} :catch_e3

    goto/16 :goto_de
.end method

.method private nifumoProgress()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1890
    const-string v0, "DMApp"

    const-string v1, "nifumoProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :try_start_8
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_106

    .line 1893
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1894
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    .line 1895
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nifumoProgress() fumo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    if-ne v0, v4, :cond_c0

    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_8d

    if-eqz v1, :cond_c0

    .line 1898
    :try_start_34
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 1899
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_43} :catch_82
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_43} :catch_8d

    .line 1905
    :goto_43
    :try_start_43
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_98

    .line 1939
    :cond_47
    :goto_47
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1..... niFumo () niaRetries  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1968
    :cond_64
    :goto_64
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3..... nidcProgress () niaRetries  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1973
    :goto_81
    return-void

    .line 1901
    :catch_82
    move-exception v0

    .line 1902
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_8c} :catch_8d

    goto :goto_43

    .line 1970
    :catch_8d
    move-exception v0

    .line 1971
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    .line 1907
    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_a8

    .line 1908
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/fumo/FirmwareUpdate;->dlprogress(II)V

    goto :goto_47

    .line 1910
    :cond_a8
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.client.UserTouch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1912
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->bringUItoForeground(Landroid/app/Activity;)V

    goto :goto_47

    .line 1914
    :cond_c0
    if-nez v0, :cond_47

    .line 1915
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_f7

    .line 1916
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_d8

    .line 1917
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z

    if-eqz v0, :cond_ef

    .line 1918
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/fumo/FirmwareUpdate;->gotoFailure(I)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d8} :catch_8d

    .line 1929
    :cond_d8
    :goto_d8
    :try_start_d8
    const-string v0, "DMApp"

    const-string v1, "FUMOshutdownDMSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 1932
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e9} :catch_fb

    .line 1936
    :goto_e9
    const/4 v0, 0x0

    :try_start_ea
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_47

    .line 1921
    :cond_ef
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v0}, Lcom/samsung/fumo/FirmwareUpdate;->noUpdateAlert()V

    goto :goto_d8

    .line 1926
    :cond_f7
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    goto :goto_d8

    .line 1933
    :catch_fb
    move-exception v0

    .line 1934
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_105} :catch_8d

    goto :goto_e9

    .line 1943
    :cond_106
    :try_start_106
    const-string v0, "DMApp"

    const-string v1, "FUMOshutdownDMSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 1946
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_117} :catch_125

    .line 1950
    :goto_117
    const/4 v0, 0x0

    :try_start_118
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1952
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-eqz v0, :cond_130

    .line 1953
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto/16 :goto_64

    .line 1947
    :catch_125
    move-exception v0

    .line 1948
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_117

    .line 1954
    :cond_130
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_64

    .line 1956
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_14a

    .line 1957
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_64

    .line 1958
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/fumo/FirmwareUpdate;->gotoFailure(I)V

    goto/16 :goto_64

    .line 1963
    :cond_14a
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_14d} :catch_8d

    goto/16 :goto_64
.end method

.method private niprlProgress()V
    .registers 6

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 1832
    const-string v0, "DMApp"

    const-string v1, "niprlProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1837
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_c4

    .line 1839
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1840
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    .line 1841
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 1842
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..... niprlProgress() prlUpdated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " .....niprlProgress() bc10bc14  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_a5

    .line 1849
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1860
    :cond_6a
    :goto_6a
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..... niprlProgress() niaRetries  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1882
    :cond_87
    :goto_87
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 3..... niprlProgress() niaRetries  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1887
    :goto_a4
    return-void

    .line 1852
    :cond_a5
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    .line 1853
    iget v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v0, v3, :cond_bc

    .line 1854
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b0} :catch_b1

    goto :goto_6a

    .line 1884
    :catch_b1
    move-exception v0

    .line 1885
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a4

    .line 1855
    :cond_bc
    :try_start_bc
    iget v0, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    if-ne v0, v3, :cond_6a

    .line 1856
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->resetRadio()V

    goto :goto_6a

    .line 1864
    :cond_c4
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d3

    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d3

    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_106

    .line 1865
    :cond_d3
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    if-lt v0, v2, :cond_87

    .line 1866
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_102

    .line 1867
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/prlupdate/PRLUpdate;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->gotoFailure(I)V

    .line 1871
    :goto_e4
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..... 2 niprlProgress() niaRetries  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/client/DMApp;->niaRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    goto :goto_87

    .line 1869
    :cond_102
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    goto :goto_e4

    .line 1875
    :cond_106
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_115

    .line 1876
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/prlupdate/PRLUpdate;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->gotoFailure(I)V

    goto/16 :goto_87

    .line 1878
    :cond_115
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_118} :catch_b1

    goto/16 :goto_87
.end method

.method private prlProgress()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1005
    const-string v0, "DMApp"

    const-string v1, "prlProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :try_start_8
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_4b

    .line 1008
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1009
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    .line 1010
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prlProgress() prl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1021
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isHfaInitiated()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1022
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1028
    :cond_4a
    :goto_4a
    return-void

    .line 1013
    :cond_4b
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v0, :cond_40

    .line 1016
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/prlupdate/PRLUpdate;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->gotoFailure(I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_58} :catch_59

    goto :goto_40

    .line 1024
    :catch_59
    move-exception v0

    .line 1025
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    invoke-virtual {p0, v5}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_4a
.end method

.method private reconnectSyncmlService()V
    .registers 4

    .prologue
    .line 2626
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-nez v0, :cond_15

    .line 2627
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/client/ISyncmlService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/DMApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2631
    :cond_15
    return-void
.end method

.method private removeAlarm(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 2343
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2345
    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2348
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2350
    invoke-virtual {p0, p2, v4, v5}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2351
    const-string v0, "prl_interval"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2352
    const-string v0, "prl_next_time"

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2357
    :cond_26
    :goto_26
    return-void

    .line 2353
    :cond_27
    const-string v0, "fumo_interval"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2354
    const-string v0, "fumo_next_time"

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_26
.end method

.method private removeSanMessage_startService()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1998
    const-string v0, "DMApp"

    const-string v1, "removeSanMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->remove_san_msg(Landroid/content/Context;)V

    .line 2001
    sput v2, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 2002
    sput-boolean v2, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    .line 2003
    const-string v0, "DMApp"

    const-string v1, "Start SAN service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    sget v0, Lcom/samsung/client/DMApp;->mSessionType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 2007
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 2008
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 2011
    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.SAN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2012
    return-void
.end method

.method private removeStatus()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1376
    const-string v0, "DMApp"

    const-string v1, "removeStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :try_start_8
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/samsung/client/DMApp;->fumoUpdateStatus:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3d

    .line 1381
    :cond_16
    const-string v0, "DMApp"

    const-string v1, "removeStatus FUMOshutdownDMSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/SendStatus;

    if-eqz v0, :cond_2a

    .line 1383
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v0}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 1386
    :cond_2a
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 1387
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I

    .line 1389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1392
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    .line 1439
    :goto_3c
    return-void

    .line 1395
    :cond_3d
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1396
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    .line 1397
    const-string v0, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStatus() fumo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/SendStatus;

    if-eqz v0, :cond_6c

    .line 1399
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v0}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 1401
    :cond_6c
    if-ne v1, v4, :cond_b4

    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_b4

    .line 1402
    const-string v0, "DMApp"

    const-string v1, "removeStatus() fumoRun() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 1405
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 1409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.START_CIFUMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1410
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1411
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1412
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1414
    const-string v1, "firmware_download_started"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1415
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a8} :catch_a9

    goto :goto_3c

    .line 1436
    :catch_a9
    move-exception v0

    .line 1437
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 1417
    :cond_b4
    :try_start_b4
    const-string v0, "DMApp"

    const-string v1, "removeStatus FUMOshutdownDMSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 1419
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I

    .line 1421
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->startFumoNoSlotChange()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 1422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto/16 :goto_3c

    .line 1427
    :cond_d5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.START_CIFUMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1428
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1429
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1430
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1432
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_ef} :catch_a9

    goto/16 :goto_3c
.end method

.method private setWIFIenabled(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2052
    .line 2055
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2056
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###setWIFIenabled  set="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    if-eqz v0, :cond_7a

    .line 2061
    :try_start_25
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 2062
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###setWIFIenabled  state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    if-ne p1, v5, :cond_64

    if-eq v1, v7, :cond_64

    if-eq v1, v6, :cond_64

    .line 2066
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2076
    :cond_4b
    :goto_4b
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###setWIFIenabled  end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :goto_63
    return-void

    .line 2067
    :cond_64
    if-nez p1, :cond_4b

    if-eq v1, v7, :cond_6a

    if-ne v1, v6, :cond_4b

    .line 2069
    :cond_6a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6e} :catch_6f

    goto :goto_4b

    .line 2077
    :catch_6f
    move-exception v0

    .line 2078
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 2074
    :cond_7a
    :try_start_7a
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###setWIFIenabled  ### mWifiManager  null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_92} :catch_6f

    goto :goto_4b
.end method

.method private startNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V
    .registers 9
    .parameter

    .prologue
    const/high16 v6, 0x1000

    const/high16 v5, 0x80

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1627
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNIASession() UI Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :try_start_20
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_6a

    .line 1636
    :goto_27
    sput v4, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 1638
    iget v0, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    if-ne v0, v3, :cond_75

    .line 1640
    sput-boolean v4, Lcom/samsung/client/DMApp;->isForeground:Z

    .line 1648
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 1649
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/client/UserTouch;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1650
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1651
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1653
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1682
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    .line 1683
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 1685
    sput-boolean v3, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    .line 1686
    sput v3, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1688
    iput-object p1, p0, Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

    .line 1690
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 1691
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1694
    sget-object v0, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1695
    sget-object v0, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1697
    :cond_69
    return-void

    .line 1631
    :catch_6a
    move-exception v0

    .line 1632
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 1655
    :cond_75
    iget v0, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    if-eqz v0, :cond_83

    iget v0, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_83

    iget v0, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_45

    .line 1659
    :cond_83
    sput-boolean v3, Lcom/samsung/client/DMApp;->isForeground:Z

    .line 1675
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1676
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1677
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1679
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_45
.end method

.method private storeSlot()I
    .registers 5

    .prologue
    .line 2092
    const-string v0, "DMApp"

    const-string v1, "!!!storeSlot !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/4 v0, -0x1

    .line 2094
    new-instance v1, Lcom/sprint/internal/ConnectionManager;

    invoke-direct {v1, p0}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 2096
    if-eqz v1, :cond_13

    .line 2098
    :try_start_f
    invoke-virtual {v1}, Lcom/sprint/internal/ConnectionManager;->getDataProfile()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_2c

    move-result v0

    .line 2103
    :cond_13
    :goto_13
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeSlot: ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    return v0

    .line 2100
    :catch_2c
    move-exception v1

    .line 2101
    const-string v2, "DMApp"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method


# virtual methods
.method public AreFullScreensReqd()Z
    .registers 2

    .prologue
    .line 3145
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isHfaInitiated()Z

    move-result v0

    return v0
.end method

.method public SaveSharedPreferenceWimaxHandler(Ljava/lang/Boolean;)V
    .registers 7
    .parameter "value"

    .prologue
    .line 327
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SaveSharedPreferenceWimaxHandler = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 330
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 331
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DM_WIMAX_DISABLE"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    return-void
.end method

.method public acquireWakeLock()V
    .registers 4

    .prologue
    .line 2612
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock wl.isHeld() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2614
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2616
    :cond_2b
    return-void
.end method

.method public bringUItoForeground(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 1700
    const-string v0, "DMApp"

    const-string v1, "bringUItoForeground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    iput-object p1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    .line 1703
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1705
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_15

    iget v0, p0, Lcom/samsung/client/DMApp;->instId:I

    if-eqz v0, :cond_1d

    .line 1706
    :cond_15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    .line 1708
    iget-object v0, p0, Lcom/samsung/client/DMApp;->delayedBgNiaSession:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1710
    :cond_1d
    return-void
.end method

.method public cancelDld()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1268
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDld() downloadInProgress ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    if-nez v0, :cond_78

    .line 1273
    :try_start_20
    const-string v0, "DMApp"

    const-string v1, "FumoRunTimer.cancel().... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_62

    .line 1279
    :goto_2c
    :try_start_2c
    const-string v0, "DMApp"

    const-string v1, "Session progress CLEAN UP FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v0}, Lcom/samsung/client/ISyncmlService;->fumoAbort()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_6d

    .line 1285
    :goto_38
    const-string v0, "DMApp"

    const-string v1, "restoreSlot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {p0, v4}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1298
    :goto_42
    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 1299
    iput-boolean v4, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    .line 1301
    sget-boolean v0, Lcom/samsung/client/DMApp;->mAirModeState:Z

    if-nez v0, :cond_61

    .line 1303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.SEND_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1304
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1306
    const-string v1, "cancel_dld_status"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1308
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1312
    :cond_61
    return-void

    .line 1275
    :catch_62
    move-exception v0

    .line 1276
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1281
    :catch_6d
    move-exception v0

    .line 1282
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1290
    :cond_78
    :try_start_78
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_82

    .line 1291
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->cancelDownload(I)I
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_82} :catch_85

    .line 1296
    :cond_82
    :goto_82
    sput-boolean v3, Lcom/samsung/client/DMApp;->cancelling:Z

    goto :goto_42

    .line 1293
    :catch_85
    move-exception v0

    .line 1294
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_82
.end method

.method public cancelUpdate()V
    .registers 3

    .prologue
    .line 2041
    const-string v0, "DMApp"

    const-string v1, "cancelUpdate !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 2043
    iget-object v0, p0, Lcom/samsung/client/DMApp;->cancelUpdateSessionTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2044
    return-void
.end method

.method public checkAirplaneMode()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2635
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 2637
    const-string v2, "DMApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplane mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_23} :catch_26

    .line 2638
    if-ne v1, v0, :cond_30

    .line 2645
    :goto_25
    return v0

    .line 2641
    :catch_26
    move-exception v0

    .line 2642
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2645
    :cond_30
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public checkDunEnabled()Z
    .registers 2

    .prologue
    .line 2660
    const/4 v0, 0x0

    return v0
.end method

.method public checkRadioState_DisplayError()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2173
    const/4 v2, 0x3

    sget v3, Lcom/samsung/client/DMApp;->mPhoneState:I

    if-eq v2, v3, :cond_b

    sget v2, Lcom/samsung/client/DMApp;->mPhoneState:I

    if-ne v0, v2, :cond_28

    .line 2176
    :cond_b
    const/4 v2, 0x7

    iput v2, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    .line 2177
    const/4 v2, -0x2

    iput v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    .line 2178
    iput v1, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    .line 2179
    iget-object v2, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2181
    const-string v0, "DMApp"

    const-string v2, "RADIO NOT AVAILABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2185
    :cond_28
    return v0
.end method

.method public checkTopActivity([Landroid/content/Intent;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2755
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2756
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2758
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2759
    const-string v1, "DMApp"

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    const-string v1, "DMApp"

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move v2, v3

    .line 2764
    :goto_2f
    array-length v1, p1

    if-ge v2, v1, :cond_62

    .line 2765
    aget-object v1, p1, v2

    const/high16 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2767
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2768
    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2769
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2770
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 2771
    const-string v0, "DMApp"

    const-string v1, "HOME SCREEN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2779
    :cond_62
    return v3

    .line 2774
    :cond_63
    const-string v7, "DMApp"

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const-string v7, "DMApp"

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 2764
    :cond_72
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f
.end method

.method public clearActivity()V
    .registers 4

    .prologue
    .line 1976
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearActivity()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1f

    .line 1995
    :goto_1e
    return-void

    .line 1982
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2b

    .line 1983
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1982
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1985
    :cond_2b
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1986
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1987
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1989
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1990
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 1991
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1993
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 1994
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    goto :goto_1e
.end method

.method public dcStartSession()V
    .registers 3

    .prologue
    .line 718
    const-string v0, "DMApp"

    const-string v1, "dcStartSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v0

    if-nez v0, :cond_e

    .line 726
    :goto_d
    return-void

    .line 724
    :cond_e
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 725
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_d
.end method

.method public disableKeyGuard()V
    .registers 4

    .prologue
    .line 2602
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableKeyGuard() mKeyguardLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    if-nez v0, :cond_2d

    .line 2605
    const-string v0, "DMApp"

    const-string v1, "disabled KeyGuard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 2607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    .line 2609
    :cond_2d
    return-void
.end method

.method public enableKeyGuard()V
    .registers 4

    .prologue
    .line 2590
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableKeyGuard() mKeyguardLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    if-eqz v0, :cond_2d

    .line 2593
    const-string v0, "DMApp"

    const-string v1, "enabled KeyGuard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    .line 2595
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 2599
    :cond_2d
    return-void
.end method

.method public fumoStartSession()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 729
    const-string v2, "DMApp"

    const-string v3, "fumoStartSession()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 731
    iput-boolean v4, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 733
    :try_start_d
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 735
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "UpgradePending"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 736
    const-string v2, "DMApp"

    const-string v3, "Upgrade Pending"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v2, "FUMO_DESCRIPTION"

    const-string v3, "Firmware Update Package"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->gotoUpdate(Ljava/lang/String;)V

    .line 764
    :cond_2f
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 765
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 772
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_3a
    :goto_3a
    return-void

    .line 740
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_3b
    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-string v5, "fumo_enable"

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3a

    .line 744
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 748
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 752
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 756
    sget-object v2, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v2, :cond_2f

    .line 758
    sget-object v2, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v2}, Lcom/samsung/client/ISyncmlService;->isBatteryLow()Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_68} :catch_6c

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_3a

    .line 767
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :catch_6c
    move-exception v0

    .line 768
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    goto :goto_3a
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getErrorString(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 2553
    packed-switch p1, :pswitch_data_4c

    .line 2571
    :pswitch_3
    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 2555
    :pswitch_b
    const v0, 0x7f05006a

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2557
    :pswitch_13
    const v0, 0x7f05006b

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2559
    :pswitch_1b
    const v0, 0x7f05006c

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2561
    :pswitch_23
    const v0, 0x7f05006d

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2563
    :pswitch_2b
    const v0, 0x7f05006e

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2565
    :pswitch_33
    const v0, 0x7f05006f

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2567
    :pswitch_3b
    const v0, 0x7f050070

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2569
    :pswitch_43
    const v0, 0x7f050071

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2553
    nop

    :pswitch_data_4c
    .packed-switch -0x2
        :pswitch_43
        :pswitch_3b
        :pswitch_3
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_23
        :pswitch_2b
        :pswitch_33
    .end packed-switch
.end method

.method public gotoFailure()V
    .registers 4

    .prologue
    .line 1141
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoFailure()...currentActivity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/handsfreeactivation/StartUp;

    if-eqz v0, :cond_2c

    .line 1146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/handsfreeactivation/ActFail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1149
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1151
    :cond_2c
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1152
    return-void
.end method

.method public gotoSuccess()V
    .registers 4

    .prologue
    .line 1128
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoSuccess() currentActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1131
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/handsfreeactivation/ActSuccess;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1135
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1136
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/DMApp;->hfaNotification:Z

    .line 1138
    return-void
.end method

.method public gotoUpdate(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1315
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoUpdate() currentActivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :try_start_1a
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1321
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1322
    const-string v1, "FUMO_DESCRIPTION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1323
    const-string v1, "UpgradePending"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1326
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3c

    .line 1327
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1330
    :cond_3c
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_56

    .line 1331
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v0}, Lcom/samsung/fumo/FirmwareUpdate;->gotosuccess()V

    .line 1336
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/fumo/UpdateSoftware;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1338
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1358
    :goto_55
    return-void

    .line 1340
    :cond_56
    sget-boolean v0, Lcom/samsung/client/DMApp;->cancelling:Z

    if-nez v0, :cond_80

    .line 1341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.UPDATE_FIRMWARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1342
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1343
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1344
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1346
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_74} :catch_75

    goto :goto_55

    .line 1354
    :catch_75
    move-exception v0

    .line 1355
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1349
    :cond_80
    :try_start_80
    const-string v0, "DMApp"

    const-string v1, "update firmware avoided, handling cancel case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/DMApp;->cancelling:Z

    .line 1351
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->cancelUpdate()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8d} :catch_75

    goto :goto_55
.end method

.method public handleBC10BC14Changed(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1462
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBC10BC14Changed ..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-virtual {p0, v6}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.EMERGENCY_CALL_DLG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1468
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1469
    const/high16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1472
    if-eqz p1, :cond_39

    .line 1473
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1482
    :goto_38
    return-void

    .line 1475
    :cond_39
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1476
    const/high16 v2, 0x800

    invoke-static {p0, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_38
.end method

.method public handleReboot(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1442
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReboot ..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.REBOOTDLG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1446
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1447
    const/high16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1449
    if-eqz p1, :cond_36

    .line 1450
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1459
    :goto_35
    return-void

    .line 1452
    :cond_36
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1453
    const/high16 v2, 0x800

    invoke-static {p0, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_35
.end method

.method public hfaStartSession()Z
    .registers 5

    .prologue
    .line 2928
    const-string v0, "DMApp"

    const-string v1, "hfaStartSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2931
    const/4 v0, 0x0

    .line 2934
    :goto_e
    return v0

    .line 2933
    :cond_f
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2934
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public isBC10BC14Changed()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2583
    iget v1, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v1, v0, :cond_6

    .line 2586
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDMSessionNotActive()Z
    .registers 4

    .prologue
    .line 2159
    const-string v0, "DMApp"

    const-string v1, "isDMSessionNotActive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_1f

    .line 2163
    :try_start_b
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v0}, Lcom/samsung/client/ISyncmlService;->areResourcesCleaned()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v0

    .line 2169
    :goto_11
    return v0

    .line 2164
    :catch_12
    move-exception v0

    .line 2165
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2166
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    .line 2169
    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isHfaInitiated()Z
    .registers 4

    .prologue
    .line 3149
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3151
    const-string v1, "HFA_INITIATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHomeLaunchedByApp()Z
    .registers 2

    .prologue
    .line 2746
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    return v0
.end method

.method public isInRestrictLockMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3131
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_pattern_autolock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3133
    if-ne v2, v0, :cond_27

    .line 3134
    :goto_e
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInRestrictLockMode()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    return v0

    :cond_27
    move v0, v1

    .line 3133
    goto :goto_e
.end method

.method public isMdnMsidChanged()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2576
    iget v1, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v1, v0, :cond_9

    iget v1, p0, Lcom/samsung/client/DMApp;->msid:I

    if-ne v1, v0, :cond_a

    .line 2579
    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isServiceConnected()Z
    .registers 2

    .prologue
    .line 2918
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-nez v0, :cond_9

    .line 2919
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    .line 2920
    const/4 v0, 0x0

    .line 2922
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public isUpdateCompleted()Z
    .registers 2

    .prologue
    .line 3183
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->isUpdateCompleted:Z

    return v0
.end method

.method public ishomeScreenLaunched()I
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2682
    const-string v0, "DMApp"

    const-string v3, "ishomeScreenLaunched...... "

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    move v0, v1

    .line 2687
    :goto_12
    array-length v4, v3

    if-ge v0, v4, :cond_4b

    .line 2688
    const-string v4, "DMApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stack element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onUserLeaveHint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 2697
    :cond_4b
    array-length v3, v3

    if-ge v0, v3, :cond_7d

    .line 2698
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2699
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 2700
    const/4 v1, 0x2

    .line 2740
    :cond_58
    :goto_58
    return v1

    .line 2687
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2728
    :cond_5c
    new-array v0, v2, [Landroid/content/Intent;

    .line 2729
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2730
    aget-object v2, v0, v1

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2731
    aget-object v2, v0, v1

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2733
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2734
    const/4 v1, 0x3

    goto :goto_58

    :cond_7d
    move v1, v2

    .line 2740
    goto :goto_58
.end method

.method public launchDSAapp()V
    .registers 4

    .prologue
    .line 1188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1189
    const v1, 0x7f050062

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const v1, 0x7f050064

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HFA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1196
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1197
    return-void
.end method

.method public launchHomeScreen()V
    .registers 3

    .prologue
    .line 2783
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2784
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2785
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2786
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 2787
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1e

    .line 2788
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2793
    :goto_1d
    return-void

    .line 2791
    :cond_1e
    const-string v0, "DMApp"

    const-string v1, "DMApp.java - launchHomeScreen - currentActivity is null !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public lowBattery()Z
    .registers 4

    .prologue
    .line 2665
    :try_start_0
    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v1, :cond_b

    .line 2667
    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v1}, Lcom/samsung/client/ISyncmlService;->isBatteryLow()Z

    move-result v1

    .line 2677
    :goto_a
    return v1

    .line 2671
    :cond_b
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    .line 2677
    :goto_e
    const/4 v1, 0x0

    goto :goto_a

    .line 2674
    :catch_10
    move-exception v0

    .line 2675
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 205
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.INIT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    return-void
.end method

.method public onInit()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 211
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInit() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v3, "DMApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInit() isInitialized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/client/DMApp;->isInitialized:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-boolean v3, Lcom/samsung/client/DMApp;->isInitialized:Z

    if-eqz v3, :cond_41

    .line 215
    const-string v3, "DMApp"

    const-string v4, "onInit(): Already Initialized return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_40
    return-void

    .line 220
    :cond_41
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-nez v3, :cond_55

    .line 221
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/samsung/client/ISyncmlService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v7}, Lcom/samsung/client/DMApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 226
    :cond_55
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mPowerMgr:Landroid/os/PowerManager;

    .line 227
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mPowerMgr:Landroid/os/PowerManager;

    const v4, 0x3000000a

    const-string v5, "My PowerLock"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mKeyguardMgr:Landroid/app/KeyguardManager;

    .line 232
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mKeyguardMgr:Landroid/app/KeyguardManager;

    const-string v4, "DMApp"

    invoke-virtual {v3, v4}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 233
    iput-boolean v6, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    .line 236
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 237
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/samsung/client/DMApp;->mListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 241
    new-instance v3, Lcom/samsung/client/DMApp$OffReceiver;

    invoke-direct {v3, p0, v8}, Lcom/samsung/client/DMApp$OffReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    iput-object v3, p0, Lcom/samsung/client/DMApp;->offReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    iget-object v3, p0, Lcom/samsung/client/DMApp;->offReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    new-instance v3, Lcom/samsung/client/DMApp$OnReceiver;

    invoke-direct {v3, p0, v8}, Lcom/samsung/client/DMApp$OnReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    iput-object v3, p0, Lcom/samsung/client/DMApp;->onReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    iget-object v3, p0, Lcom/samsung/client/DMApp;->onReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    new-instance v0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;

    invoke-direct {v0, p0, v8}, Lcom/samsung/client/DMApp$AirplaneModeReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    .line 249
    .local v0, airModeReceiver:Lcom/samsung/client/DMApp$AirplaneModeReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    new-instance v3, Lcom/samsung/client/DMApp$LocaleChangeReceiver;

    invoke-direct {v3, p0, v8}, Lcom/samsung/client/DMApp$LocaleChangeReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    iput-object v3, p0, Lcom/samsung/client/DMApp;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    iget-object v3, p0, Lcom/samsung/client/DMApp;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    sput-boolean v7, Lcom/samsung/client/DMApp;->isInitialized:Z

    .line 264
    sput-boolean v6, Lcom/samsung/client/DMApp;->cancelling:Z

    .line 266
    new-instance v3, Lcom/samsung/client/WimaxHandler;

    invoke-direct {v3}, Lcom/samsung/client/WimaxHandler;-><init>()V

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    .line 269
    :try_start_e8
    const-string v3, "DMAPP_STATE"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 271
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "DM_WIMAX_DISABLE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_10f

    .line 272
    const-string v3, "DMApp"

    const-string v4, " Wimax enable pending .... enabling now ...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    if-eqz v3, :cond_10f

    .line 275
    const-string v3, "DMApp"

    const-string v4, " Wimax .... mWimaxHandler.enableJavaWimaxDmApp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    invoke-virtual {v3}, Lcom/samsung/client/WimaxHandler;->enableJavaWimaxDmApp()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_10f} :catch_142

    .line 284
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_10f
    :goto_10f
    const-string v3, "DMApp"

    const-string v4, " Wimax already enabled ...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_116
    const-string v3, "DMAPP_STATE"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 290
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    const-string v3, "DM_WIFI_DISABLE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_139

    .line 291
    const-string v3, "DMApp"

    const-string v4, " Wifi enable pending .... enabling now ...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/client/DMApp;->setWIFIenabled(Z)V

    .line 293
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/client/DMApp;->SaveWifiStateInSharedPref(Ljava/lang/Boolean;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_139} :catch_14d

    .line 300
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_139
    :goto_139
    const-string v3, "DMApp"

    const-string v4, " Wifi already enabled ...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 281
    :catch_142
    move-exception v1

    .line 282
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10f

    .line 297
    .end local v1           #e:Ljava/lang/Exception;
    :catch_14d
    move-exception v1

    .line 298
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_139
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 3123
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 3124
    const-string v0, "DMApp"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    return-void
.end method

.method public onTerminate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 305
    :try_start_1
    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v2, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v1, v2}, Lcom/samsung/client/ISyncmlService;->unregisterDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_2a

    .line 309
    :goto_8
    iget-object v1, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 310
    sput-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    .line 311
    iput-object v3, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    .line 312
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 313
    iput-object v3, p0, Lcom/samsung/client/DMApp;->mPowerMgr:Landroid/os/PowerManager;

    .line 314
    iput-object v3, p0, Lcom/samsung/client/DMApp;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 315
    iput-object v3, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    .line 316
    iget-object v1, p0, Lcom/samsung/client/DMApp;->onReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    iget-object v1, p0, Lcom/samsung/client/DMApp;->offReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    iget-object v1, p0, Lcom/samsung/client/DMApp;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    return-void

    .line 306
    :catch_2a
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public postHfaStartSession()Z
    .registers 3

    .prologue
    .line 2938
    const-string v0, "DMApp"

    const-string v1, "postHfaStartSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 2941
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 2945
    const/4 v0, 0x1

    return v0
.end method

.method public postNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V
    .registers 5
    .parameter

    .prologue
    .line 1621
    const-string v0, "DMApp"

    const-string v1, "postNIASession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1624
    return-void
.end method

.method public prlStartSession()V
    .registers 3

    .prologue
    .line 707
    const-string v0, "DMApp"

    const-string v1, "prlStartSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v0

    if-nez v0, :cond_e

    .line 715
    :goto_d
    return-void

    .line 713
    :cond_e
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 714
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_d
.end method

.method public readFromPreference(Ljava/lang/String;)J
    .registers 5
    .parameter "key"

    .prologue
    .line 2317
    const-string v1, "DMAPP_STATE"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2319
    .local v0, sp:Landroid/content/SharedPreferences;
    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public rebootDevice()V
    .registers 3

    .prologue
    .line 2023
    const-string v0, "DMApp"

    const-string v1, "Rebooting the device  !!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2026
    invoke-virtual {v0}, Landroid/os/PowerManager;->systemReboot()V

    .line 2027
    return-void
.end method

.method public rebootFotaDevice()V
    .registers 3

    .prologue
    .line 2015
    const-string v0, "DMApp"

    const-string v1, "Rebooting Fota device arm9_fota!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2018
    const-string v1, "arm9_fota"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->systemFotaReboot(Ljava/lang/String;)V

    .line 2019
    return-void
.end method

.method public releaseWakeLock()V
    .registers 4

    .prologue
    .line 2619
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock wl.isHeld() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2621
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2623
    :cond_2b
    return-void
.end method

.method public resetRadio()V
    .registers 4

    .prologue
    .line 2031
    const-string v0, "DMApp"

    const-string v1, "Resetting Radio !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :try_start_7
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v0}, Lcom/samsung/client/ISyncmlService;->resetRadio()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2038
    :goto_c
    return-void

    .line 2035
    :catch_d
    move-exception v0

    .line 2036
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public restoreSlot(I)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x1

    .line 2108
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! restoreSlot: == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    new-instance v0, Lcom/sprint/internal/ConnectionManager;

    invoke-direct {v0, p0}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 2111
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRegistered - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    if-ne p1, v5, :cond_68

    iget-boolean v1, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    if-nez v1, :cond_68

    .line 2114
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2116
    iget-object v2, p0, Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2117
    iput-boolean v4, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    .line 2118
    const-string v1, "DMApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRegistered - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_68
    if-eqz v0, :cond_7e

    .line 2124
    if-nez p1, :cond_a4

    .line 2125
    :try_start_6c
    invoke-virtual {v0}, Lcom/sprint/internal/ConnectionManager;->release()V

    .line 2127
    const-string v0, "DMApp"

    const-string v1, "SaveWifiStateInSharedPref = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/client/DMApp;->SaveWifiStateInSharedPref(Ljava/lang/Boolean;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7e} :catch_c8

    .line 2143
    :cond_7e
    :goto_7e
    if-nez p1, :cond_95

    sget-boolean v0, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-nez v0, :cond_95

    .line 2144
    const-string v0, "DMApp"

    const-string v1, "NIA Start after change of slot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.SAN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2148
    :cond_95
    if-ne p1, v5, :cond_a3

    .line 2149
    const-string v0, "DMApp"

    const-string v1, "hangedTimer.start()..... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :try_start_9e
    iget-object v0, p0, Lcom/samsung/client/DMApp;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a3} :catch_d3

    .line 2156
    :cond_a3
    :goto_a3
    return-void

    .line 2131
    :cond_a4
    :try_start_a4
    invoke-virtual {v0, p1}, Lcom/sprint/internal/ConnectionManager;->requestDataProfile(I)V

    .line 2133
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveWifiStateInSharedPref = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/client/DMApp;->SaveWifiStateInSharedPref(Ljava/lang/Boolean;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_c7} :catch_c8

    goto :goto_7e

    .line 2138
    :catch_c8
    move-exception v0

    .line 2139
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    .line 2152
    :catch_d3
    move-exception v0

    .line 2153
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3
.end method

.method public retryNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V
    .registers 4
    .parameter

    .prologue
    .line 1587
    const-string v0, "DMApp"

    const-string v1, "retryNIASession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 1589
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1592
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    .line 1593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 1594
    iput-object p1, p0, Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

    .line 1595
    return-void
.end method

.method public retrySession()V
    .registers 3

    .prologue
    .line 1155
    const-string v0, "DMApp"

    const-string v1, "retrySession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/handsfreeactivation/StartUp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1159
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1160
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1161
    return-void
.end method

.method public setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2323
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2325
    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const/high16 v2, 0x800

    invoke-static {v1, v4, p3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2331
    invoke-virtual {p0, p4, p1, p2}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2332
    const-string v0, "prl_interval"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2333
    const-string v0, "prl_next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2340
    :cond_2e
    :goto_2e
    return-void

    .line 2335
    :cond_2f
    const-string v0, "fumo_interval"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2336
    const-string v0, "fumo_next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_2e
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .registers 5
    .parameter "newActivity"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/client/DMApp;->previousActivity:Landroid/app/Activity;

    .line 696
    iput-object p1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    .line 697
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_28

    .line 698
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_28
    return-void
.end method

.method public setFumoAlarm()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3081
    const-string v0, "DMApp"

    const-string v1, "setFumoAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    const/4 v0, 0x2

    sput v0, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 3084
    sget-object v0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v2, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 3085
    sget-object v0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v2, v0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 3087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 3088
    iput-boolean v2, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 3090
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.START_CIFUMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3091
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3092
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3093
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3095
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 3096
    iget-object v0, p0, Lcom/samsung/client/DMApp;->radioResetTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 3103
    return-void
.end method

.method public setHfaInitiated(Z)V
    .registers 5
    .parameter

    .prologue
    .line 3155
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3157
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3158
    const-string v1, "HFA_INITIATED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3162
    :try_start_13
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v0, p1}, Lcom/samsung/client/ISyncmlService;->setHfaInitiated(Z)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    .line 3166
    :goto_18
    return-void

    .line 3163
    :catch_19
    move-exception v0

    .line 3164
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public setHfaRebooted(Z)V
    .registers 4
    .parameter

    .prologue
    .line 3175
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3178
    const-string v1, "HFA_REBOOTED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3180
    return-void
.end method

.method public setHomeLaunchedByApp(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 2750
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 2751
    return-void
.end method

.method public setNotification()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1164
    const-string v0, "DMApp"

    const-string v1, "setNotification() numRetries = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iput v6, p0, Lcom/samsung/client/DMApp;->numRetries:I

    .line 1166
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1167
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020004

    const v3, 0x7f050074

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1169
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/handsfreeactivation/StartUp;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1171
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1172
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1174
    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1175
    const/high16 v3, 0x800

    invoke-static {p0, v6, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1177
    const v3, 0x7f050075

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f050076

    invoke-virtual {p0, v4}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1180
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1181
    const/16 v2, 0x4d

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/DMApp;->hfaNotification:Z

    .line 1183
    return-void
.end method

.method public setSessionType(I)V
    .registers 2
    .parameter "sessionType"

    .prologue
    .line 691
    sput p1, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 692
    return-void
.end method

.method public setUpdateCompleted(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 3187
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->isUpdateCompleted:Z

    .line 3188
    return-void
.end method

.method public startFumoNoSlotChange()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3013
    const-string v2, "DMApp"

    const-string v3, "start_fumo_Noslot"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    const/4 v2, 0x2

    sput v2, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 3016
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v0, v2, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 3017
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v0, v2, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 3019
    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 3020
    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 3022
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3024
    const-string v3, "UpgradePending"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3025
    const-string v1, "DMApp"

    const-string v3, "Upgrade Pending"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const-string v1, "FUMO_DESCRIPTION"

    const-string v3, "Firmware Update Package"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->gotoUpdate(Ljava/lang/String;)V

    .line 3077
    :cond_39
    :goto_39
    return v0

    .line 3031
    :cond_3a
    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-string v5, "fumo_enable"

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_39

    .line 3035
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v2

    if-nez v2, :cond_39

    .line 3039
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3043
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v2

    if-nez v2, :cond_39

    .line 3049
    :try_start_5e
    sget-object v2, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v2}, Lcom/samsung/client/ISyncmlService;->isBatteryLow()Z
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_6f

    move-result v2

    if-nez v2, :cond_39

    .line 3074
    :goto_66
    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    .line 3075
    iget-object v0, p0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move v0, v1

    .line 3077
    goto :goto_39

    .line 3052
    :catch_6f
    move-exception v0

    .line 3053
    const-string v2, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66
.end method

.method public start_hfa_prl()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2949
    const-string v2, "DMApp"

    const-string v3, "start_hfa_prl"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    const/4 v2, 0x3

    sput v2, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 2952
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v0, v2, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 2954
    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-string v5, "prl_enable"

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    .line 2986
    :cond_1e
    :goto_1e
    return v0

    .line 2958
    :cond_1f
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2962
    sget v2, Lcom/samsung/client/DMApp;->mCallState:I

    if-nez v2, :cond_1e

    .line 2966
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2970
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.START_CIPRL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2971
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2972
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2973
    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2975
    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 2977
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 2978
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 2980
    const-string v0, "DMApp"

    const-string v2, "IN PRL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    .line 2984
    iget-object v0, p0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move v0, v1

    .line 2986
    goto :goto_1e
.end method

.method public stopSession()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1073
    const-string v0, "DMApp"

    const-string v1, "stopSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegistered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    if-eqz v0, :cond_4a

    .line 1080
    :try_start_26
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_bd

    .line 1084
    :goto_2b
    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    .line 1085
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegistered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1088
    :cond_4a
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStartCntrRunning - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    if-eqz v0, :cond_8c

    .line 1090
    iget-object v0, p0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1091
    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    .line 1092
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStartCntrRunning - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1097
    :cond_8c
    iget-object v0, p0, Lcom/samsung/client/DMApp;->ctd:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1098
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    if-eqz v0, :cond_98

    .line 1099
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    .line 1102
    :cond_98
    const-string v0, "DMApp"

    const-string v1, "hangedTimer.cancel().... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :try_start_9f
    iget-object v0, p0, Lcom/samsung/client/DMApp;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a4} :catch_c9

    .line 1110
    :goto_a4
    :try_start_a4
    const-string v0, "DMApp"

    const-string v1, "FumoRunTimer.cancel().... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b0} :catch_d4

    .line 1117
    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_bc

    .line 1118
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/client/ISyncmlService;->stopDMSession(II)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bc} :catch_df

    .line 1124
    :cond_bc
    :goto_bc
    return-void

    .line 1081
    :catch_bd
    move-exception v0

    .line 1082
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1105
    :catch_c9
    move-exception v0

    .line 1106
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a4

    .line 1112
    :catch_d4
    move-exception v0

    .line 1114
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b0

    .line 1120
    :catch_df
    move-exception v0

    .line 1121
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    goto :goto_bc
.end method

.method public updateCompleted(Z)V
    .registers 9
    .parameter

    .prologue
    const/high16 v4, 0x1000

    const/high16 v3, 0x80

    const/4 v6, 0x0

    .line 1485
    const-string v0, "DMApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCompleted ..... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isUpdateCompleted()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1487
    if-eqz p1, :cond_44

    .line 1488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.UPDATE_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1490
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1491
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1493
    const-string v1, "fwUpdateDialog"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1494
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1531
    :goto_40
    invoke-virtual {p0, v6}, Lcom/samsung/client/DMApp;->setUpdateCompleted(Z)V

    .line 1536
    :goto_43
    return-void

    .line 1518
    :cond_44
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1519
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/fumo/FWUpdateComplete;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1520
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1521
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1523
    const-string v2, "fwUpdateDialog"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1524
    const/high16 v2, 0x800

    invoke-static {p0, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_40

    .line 1533
    :cond_6f
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 1534
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    goto :goto_43
.end method

.method public updateSoftware()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1361
    const-string v0, "DMApp"

    const-string v1, "updateSoftware()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const-string v0, "DMAPP_STATE"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1364
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1365
    const-string v1, "UpgradePending"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1368
    :try_start_1a
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 1369
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->updateFw(I)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28

    .line 1373
    :goto_27
    return-void

    .line 1370
    :catch_28
    move-exception v0

    .line 1371
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method public writeToPreferences(Ljava/lang/String;J)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2309
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2311
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2312
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2314
    return-void
.end method
