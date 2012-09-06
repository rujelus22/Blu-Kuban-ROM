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

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    .line 111
    sput v1, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 150
    sput v1, Lcom/samsung/client/DMApp;->mAppState:I

    .line 151
    sput-boolean v1, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    .line 152
    sput-boolean v1, Lcom/samsung/client/DMApp;->isForeground:Z

    .line 155
    sput v2, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    .line 156
    const/4 v0, 0x3

    sput v0, Lcom/samsung/client/DMApp;->mPhoneState:I

    .line 157
    sput v1, Lcom/samsung/client/DMApp;->mCallState:I

    .line 158
    sput-boolean v1, Lcom/samsung/client/DMApp;->mAirModeState:Z

    .line 159
    sput-boolean v2, Lcom/samsung/client/DMApp;->mIPCavailable:Z

    .line 161
    sput v1, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 188
    sput-boolean v1, Lcom/samsung/client/DMApp;->isInitialized:Z

    .line 190
    sput-boolean v1, Lcom/samsung/client/DMApp;->hfaNotification:Z

    .line 191
    sput-boolean v1, Lcom/samsung/client/DMApp;->cancelling:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mPowerMgr:Landroid/os/PowerManager;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mKeyguardMgr:Landroid/app/KeyguardManager;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->isUpdateCompleted:Z

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->numRetries:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->previousActivity:Landroid/app/Activity;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->fumoRunStatus:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->fumoUpdateStatus:I

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->total:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->current:I

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->mdn:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->msid:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->nai:I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

    .line 178
    new-instance v0, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/client/DMApp$DMAppBroadcastReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->offReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->onReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/client/DMApp;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    new-instance v0, Lcom/samsung/client/DMApp$1;

    invoke-direct {v0, p0}, Lcom/samsung/client/DMApp$1;-><init>(Lcom/samsung/client/DMApp;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    .line 363
    new-instance v0, Lcom/samsung/client/DMApp$2;

    invoke-direct {v0, p0}, Lcom/samsung/client/DMApp$2;-><init>(Lcom/samsung/client/DMApp;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    .line 545
    new-instance v0, Lcom/samsung/client/DMApp$3;

    invoke-direct {v0, p0}, Lcom/samsung/client/DMApp$3;-><init>(Lcom/samsung/client/DMApp;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    .line 1563
    new-instance v0, Lcom/samsung/client/DMApp$4;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$4;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->ctd:Landroid/os/CountDownTimer;

    .line 1698
    new-instance v0, Lcom/samsung/client/DMApp$5;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$5;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->delayedBgNiaSession:Landroid/os/CountDownTimer;

    .line 2174
    new-instance v0, Lcom/samsung/client/DMApp$6;

    invoke-direct {v0, p0}, Lcom/samsung/client/DMApp$6;-><init>(Lcom/samsung/client/DMApp;)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->mListener:Landroid/telephony/PhoneStateListener;

    .line 2394
    new-instance v0, Lcom/samsung/client/DMApp$7;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$7;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    .line 2729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 2854
    new-instance v0, Lcom/samsung/client/DMApp$8;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$8;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->sendStatusRetry:Landroid/os/CountDownTimer;

    .line 2880
    new-instance v0, Lcom/samsung/client/DMApp$9;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$9;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->hangedTimer:Landroid/os/CountDownTimer;

    .line 3091
    new-instance v0, Lcom/samsung/client/DMApp$10;

    const-wide/16 v2, 0x1b58

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$10;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->radioResetTimer:Landroid/os/CountDownTimer;

    .line 3180
    new-instance v0, Lcom/samsung/client/DMApp$11;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$11;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    .line 3200
    new-instance v0, Lcom/samsung/client/DMApp$12;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$12;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->cancelUpdateSessionTimer:Landroid/os/CountDownTimer;

    .line 3221
    new-instance v0, Lcom/samsung/client/DMApp$13;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/client/DMApp$13;-><init>(Lcom/samsung/client/DMApp;JJ)V

    iput-object v0, p0, Lcom/samsung/client/DMApp;->cancelDldSessionTimer:Landroid/os/CountDownTimer;

    .line 194
    const-string v0, "DMApp"

    const-string v1, "Constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sput-object p0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    .line 196
    return-void
.end method

.method private NIASessionBlocked()Z
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    .line 1601
    const-string v1, "DMApp"

    const-string v2, "NIASessionBlocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    sget v1, Lcom/samsung/client/DMApp;->mSessionType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1603
    const-string v1, "dc_enable"

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_29

    .line 1616
    :cond_19
    :goto_19
    return v0

    .line 1606
    :cond_1a
    sget v1, Lcom/samsung/client/DMApp;->mSessionType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2b

    .line 1607
    const-string v1, "prl_enable"

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_19

    .line 1616
    :cond_29
    const/4 v0, 0x0

    goto :goto_19

    .line 1610
    :cond_2b
    sget v1, Lcom/samsung/client/DMApp;->mSessionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    .line 1611
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
    .line 2070
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

    .line 2071
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2072
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2073
    const-string v1, "DM_WIFI_DISABLE"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2074
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2075
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/client/DMApp;->total:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->total:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/client/DMApp;->current:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->current:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->replace:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/client/DMApp;->instId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->instId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/client/DMApp;->fumoRunStatus:I

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->fumoRunStatus:I

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/client/DMApp;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/client/DMApp;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->fumoUpdateStatus:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/client/DMApp;)Lcom/samsung/client/WimaxHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/client/DMApp;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2100()I
    .registers 1

    .prologue
    .line 51
    sget v0, Lcom/samsung/client/DMApp;->mSessionType:I

    return v0
.end method

.method static synthetic access$2102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    sput p0, Lcom/samsung/client/DMApp;->mSessionType:I

    return p0
.end method

.method static synthetic access$2200(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->NIASessionBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    return-void
.end method

.method static synthetic access$2400()Lcom/samsung/client/DMApp;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->hfaProgress()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->fumoProgress()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->prlProgress()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->dcProgress()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->nifumoProgress()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->niprlProgress()V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->nidcProgress()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->handleNIAretry()V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    return v0
.end method

.method static synthetic access$3302(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    return v0
.end method

.method static synthetic access$3402(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    return p1
.end method

.method static synthetic access$3500(Lcom/samsung/client/DMApp;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp;->handleFumoRunStatus(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->handleATCommands()V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/client/DMApp;Lcom/samsung/client/TslcmnSan$TslSanMsg;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp;->startNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/client/DMApp;)Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->next_san_msg()Lcom/samsung/client/TslcmnSan$TslSanMsg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/samsung/client/DMApp;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/client/DMApp;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/samsung/client/DMApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/samsung/client/DMApp;)Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/client/DMApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    return-void
.end method

.method static synthetic access$4400()Z
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/samsung/client/DMApp;->hfaNotification:Z

    return v0
.end method

.method static synthetic access$500()Lcom/samsung/client/ISyncmlService;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/client/ISyncmlService;)Lcom/samsung/client/ISyncmlService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    sput-object p0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/client/DMApp;)Lcom/samsung/client/ISyncmlServiceDMCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/client/DMApp;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    return p1
.end method

.method static synthetic access$802(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->errCode:I

    return p1
.end method

.method static synthetic access$902(Lcom/samsung/client/DMApp;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    return p1
.end method

.method private checkSet(IB)I
    .registers 4
    .parameter "bitPosition"
    .parameter "b"

    .prologue
    .line 2033
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

    .line 1030
    const-string v0, "DMApp"

    const-string v1, "dcProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1034
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_ce

    .line 1035
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1036
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->mdn:I

    .line 1037
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->msid:I

    .line 1038
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->nai:I

    .line 1039
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 1040
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

    .line 1041
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

    .line 1042
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

    .line 1043
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

    .line 1045
    iget v0, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v0, v3, :cond_aa

    iget v0, p0, Lcom/samsung/client/DMApp;->msid:I

    if-eq v0, v3, :cond_aa

    iget v0, p0, Lcom/samsung/client/DMApp;->nai:I

    if-eq v0, v3, :cond_aa

    iget v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v0, v3, :cond_bc

    .line 1047
    :cond_aa
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    .line 1052
    :goto_ad
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1069
    :cond_bb
    :goto_bb
    return-void

    .line 1049
    :cond_bc
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_bf} :catch_c0

    goto :goto_ad

    .line 1064
    :catch_c0
    move-exception v0

    .line 1065
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    invoke-virtual {p0, v5}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_bb

    .line 1055
    :cond_ce
    :try_start_ce
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    if-eqz v0, :cond_bb

    .line 1061
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

    .line 826
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

    .line 827
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-nez v3, :cond_ac

    .line 828
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isUpdateCompleted()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 829
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

    .line 831
    iget v3, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-eqz v3, :cond_5f

    sget v3, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_5f

    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v3, :cond_5f

    .line 834
    sget v3, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/samsung/client/DMApp;->sendStatusRetries:I

    .line 835
    iget-object v3, p0, Lcom/samsung/client/DMApp;->sendStatusRetry:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_72

    .line 1001
    :cond_5e
    :goto_5e
    return-void

    .line 840
    :cond_5f
    :try_start_5f
    const-string v3, "DMApp"

    const-string v4, "abortFumoStatusRetry()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v3}, Lcom/samsung/client/ISyncmlService;->abortFumoStatusRetry()I

    .line 842
    const/4 v3, 0x1

    sput v3, Lcom/samsung/client/DMApp;->sendStatusRetries:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6e} :catch_80

    .line 847
    :goto_6e
    :try_start_6e
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeStatus()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_5e

    .line 997
    :catch_72
    move-exception v0

    .line 998
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    invoke-virtual {p0, v6}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_5e

    .line 843
    .end local v0           #e:Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 844
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_81
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8a} :catch_72

    goto :goto_6e

    .line 850
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8b
    :try_start_8b
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 852
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9c} :catch_a1

    .line 856
    :goto_9c
    const/4 v3, 0x0

    :try_start_9d
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_5e

    .line 853
    :catch_a1
    move-exception v0

    .line 854
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9c

    .line 862
    .end local v0           #e:Ljava/lang/Exception;
    :cond_ac
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    if-ne v3, v7, :cond_108

    .line 863
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

    .line 867
    :try_start_ca
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 869
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_db} :catch_ee

    .line 873
    :goto_db
    const/4 v3, 0x0

    :try_start_dc
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 874
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/SendStatus;

    if-eqz v3, :cond_f9

    .line 875
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v3}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    goto/16 :goto_5e

    .line 870
    :catch_ee
    move-exception v0

    .line 871
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_db

    .line 876
    .end local v0           #e:Ljava/lang/Exception;
    :cond_f9
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/UpdateSoftware;

    if-eqz v3, :cond_5e

    .line 877
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/UpdateSoftware;

    invoke-virtual {v3}, Lcom/samsung/fumo/UpdateSoftware;->removeUpdateStatus()V

    goto/16 :goto_5e

    .line 883
    :cond_108
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    if-eqz v3, :cond_18c

    .line 884
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

    .line 887
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    .line 889
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v3, :cond_159

    .line 890
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v3}, Lcom/samsung/fumo/FirmwareUpdate;->dldError()V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_142} :catch_72

    .line 902
    :goto_142
    :try_start_142
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 904
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_153} :catch_181

    .line 908
    :goto_153
    const/4 v3, 0x0

    :try_start_154
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_5e

    .line 892
    :cond_159
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/SendStatus;

    if-eqz v3, :cond_16b

    .line 893
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v3}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 899
    :cond_166
    :goto_166
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto :goto_142

    .line 894
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

    .line 896
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    goto :goto_166

    .line 905
    :catch_181
    move-exception v0

    .line 906
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_18b} :catch_72

    goto :goto_153

    .line 913
    .end local v0           #e:Ljava/lang/Exception;
    :cond_18c
    :try_start_18c
    const-string v3, "DMApp"

    const-string v4, "fumoProgress()   removeUpdateSoftware "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/UpdateSoftware;

    if-eqz v3, :cond_1a0

    .line 915
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/UpdateSoftware;

    invoke-virtual {v3}, Lcom/samsung/fumo/UpdateSoftware;->removeUpdateStatus()V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1a0} :catch_1f8

    .line 920
    :cond_1a0
    :goto_1a0
    :try_start_1a0
    iget v3, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v3, :cond_27b

    .line 921
    iget v3, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v2, v3

    .line 922
    .local v2, ses_upd:B
    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    .line 923
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

    .line 924
    if-ne v1, v7, :cond_203

    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1ca} :catch_72

    if-eqz v3, :cond_203

    .line 926
    :try_start_1cc
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v4, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 927
    iget-object v3, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 930
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 931
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v3, :cond_5e

    .line 932
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/fumo/FirmwareUpdate;->dlprogress(II)V
    :try_end_1ea
    .catch Landroid/os/RemoteException; {:try_start_1cc .. :try_end_1ea} :catch_1ec
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1ea} :catch_72

    goto/16 :goto_5e

    .line 933
    :catch_1ec
    move-exception v0

    .line 934
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1ed
    const-string v3, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5e

    .line 917
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #fumo:I
    .end local v2           #ses_upd:B
    :catch_1f8
    move-exception v0

    .line 918
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a0

    .line 936
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fumo:I
    .restart local v2       #ses_upd:B
    :cond_203
    if-nez v1, :cond_5e

    .line 938
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

    .line 942
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v3, :cond_25e

    .line 943
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->replace:Z

    if-eqz v3, :cond_256

    .line 944
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/samsung/fumo/FirmwareUpdate;->gotoFailure(I)V
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_23f} :catch_72

    .line 957
    :goto_23f
    :try_start_23f
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 960
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_250} :catch_270

    .line 966
    :goto_250
    const/4 v3, 0x0

    :try_start_251
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_5e

    .line 946
    :cond_256
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v3}, Lcom/samsung/fumo/FirmwareUpdate;->noUpdateAlert()V

    goto :goto_23f

    .line 949
    :cond_25e
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/SendStatus;

    if-eqz v3, :cond_26b

    .line 950
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v3}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 953
    :cond_26b
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto :goto_23f

    .line 963
    :catch_270
    move-exception v0

    .line 964
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_250

    .line 970
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

    .line 974
    iget-boolean v3, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-eqz v3, :cond_2c2

    .line 975
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_2ab} :catch_72

    .line 987
    :goto_2ab
    :try_start_2ab
    const-string v3, "DMApp"

    const-string v4, "FUMOshutdownDMSession()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v4, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v3, v4}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 990
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2bc} :catch_2e4

    .line 994
    :goto_2bc
    const/4 v3, 0x0

    :try_start_2bd
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_5e

    .line 976
    :cond_2c2
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v3, :cond_2d2

    .line 977
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/FirmwareUpdate;

    iget v4, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v3, v4}, Lcom/samsung/fumo/FirmwareUpdate;->gotoFailure(I)V

    goto :goto_2ab

    .line 979
    :cond_2d2
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/fumo/SendStatus;

    if-eqz v3, :cond_2df

    .line 980
    iget-object v3, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v3}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 983
    :cond_2df
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto :goto_2ab

    .line 991
    :catch_2e4
    move-exception v0

    .line 992
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
    .line 199
    sget-object v0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method public static getSyncmlService()Lcom/samsung/client/ISyncmlService;
    .registers 1

    .prologue
    .line 321
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

    .line 2197
    const-string v0, "DMApp"

    const-string v1, "handleATCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_1e4

    .line 2292
    :cond_17
    :goto_17
    return-void

    .line 2200
    :pswitch_18
    const-string v0, "DMApp"

    const-string v1, "Command for DC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v2, v0, :cond_32

    .line 2202
    const-string v0, "DMApp"

    const-string v1, "Enable DC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    const-string v0, "dc_enable"

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_17

    .line 2204
    :cond_32
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_45

    .line 2205
    const-string v0, "DMApp"

    const-string v1, "Disable DC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    const-string v0, "dc_enable"

    invoke-virtual {p0, v0, v7, v8}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_17

    .line 2207
    :cond_45
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v5, v0, :cond_6c

    .line 2208
    const-string v0, "DMApp"

    const-string v1, "Start DC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const-string v0, "dc_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2210
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2212
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2214
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_17

    .line 2216
    :cond_6c
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_17

    .line 2217
    const-string v0, "DMApp"

    const-string v1, "Enable Logging already done at ARM9 side"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2223
    :pswitch_7b
    const-string v0, "DMApp"

    const-string v1, "Command for PRL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v2, v0, :cond_95

    .line 2225
    const-string v0, "DMApp"

    const-string v1, "Enable PRL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_17

    .line 2227
    :cond_95
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_b5

    .line 2228
    const-string v0, "DMApp"

    const-string v1, "Disable PRL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0, v7, v8}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.PRL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "prl_interval"

    invoke-direct {p0, v0, v1}, Lcom/samsung/client/DMApp;->removeAlarm(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2232
    :cond_b5
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v5, v0, :cond_dd

    .line 2233
    const-string v0, "DMApp"

    const-string v1, "Start PRL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2236
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2238
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2239
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 2241
    :cond_dd
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_106

    .line 2242
    const-string v0, "DMApp"

    const-string v1, "Check every 90 days"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2244
    const-wide/32 v0, 0x493e0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.client.PRL_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "prl_interval"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2247
    :cond_106
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_17

    .line 2248
    const-string v0, "DMApp"

    const-string v1, "Check every 180 days"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    const-string v0, "prl_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2250
    const-wide/32 v0, 0x927c0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.client.PRL_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "prl_interval"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2257
    :pswitch_12f
    const-string v0, "DMApp"

    const-string v1, "Command for FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v2, v0, :cond_14a

    .line 2259
    const-string v0, "DMApp"

    const-string v1, "Enable FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto/16 :goto_17

    .line 2261
    :cond_14a
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_16a

    .line 2262
    const-string v0, "DMApp"

    const-string v1, "Disable FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0, v7, v8}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fumo_interval"

    invoke-direct {p0, v0, v1}, Lcom/samsung/client/DMApp;->removeAlarm(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2266
    :cond_16a
    iget-object v0, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v0, v0, v2

    if-ne v5, v0, :cond_192

    .line 2267
    const-string v0, "DMApp"

    const-string v1, "Start FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2269
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2271
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2273
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 2275
    :cond_192
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_1bb

    .line 2276
    const-string v0, "DMApp"

    const-string v1, "Check every 90 days"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2278
    const-wide/32 v0, 0x493e0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "fumo_interval"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2282
    :cond_1bb
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/samsung/client/DMApp;->at_cmds:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_17

    .line 2283
    const-string v0, "DMApp"

    const-string v1, "Check every 180 days"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    const-string v0, "fumo_enable"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_17

    .line 2285
    const-wide/32 v0, 0x927c0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.client.FUMO_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "fumo_interval"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/client/DMApp;->setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2198
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

    .line 1201
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

    .line 1203
    if-nez p1, :cond_2d

    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-nez v0, :cond_2d

    .line 1264
    :cond_2c
    :goto_2c
    return-void

    .line 1205
    :cond_2d
    if-ne p1, v3, :cond_48

    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-nez v0, :cond_48

    .line 1206
    const-string v0, "DMApp"

    const-string v1, "handleFumoRunStatus():Bootstart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    sput v4, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 1208
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 1209
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_2c

    .line 1224
    :cond_48
    if-ne p1, v3, :cond_90

    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-eqz v0, :cond_90

    .line 1225
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1227
    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 1229
    :try_start_55
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2c

    .line 1230
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-nez v0, :cond_2c

    .line 1232
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_78

    .line 1233
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/fumo/FirmwareUpdate;->dlprogress(II)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6c} :catch_6d

    goto :goto_2c

    .line 1241
    :catch_6d
    move-exception v0

    .line 1242
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1237
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

    .line 1238
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->bringUItoForeground(Landroid/app/Activity;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8f} :catch_6d

    goto :goto_2c

    .line 1244
    :cond_90
    if-nez p1, :cond_2c

    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    if-eqz v0, :cond_2c

    .line 1246
    :try_start_96
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_2c

    .line 1247
    new-instance v0, Lcom/samsung/client/Tsldm_ses_opt_binder;

    invoke-direct {v0}, Lcom/samsung/client/Tsldm_ses_opt_binder;-><init>()V

    .line 1248
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->enc:I

    .line 1249
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->ver:I

    .line 1251
    const/16 v1, 0x1800

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_msg_sz:I

    .line 1252
    const v1, 0x8c00

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_obj_sz:I

    .line 1253
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->cookie:I

    .line 1254
    const-string v1, "Device"

    iput-object v1, v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->disp_name:Ljava/lang/String;

    .line 1256
    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v2, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v1, v2, v0}, Lcom/samsung/client/ISyncmlService;->setupDMSession(Lcom/samsung/client/ISyncmlServiceDMCallback;Lcom/samsung/client/Tsldm_ses_opt_binder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I

    .line 1257
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    const/4 v1, 0x2

    iget v2, p0, Lcom/samsung/client/DMApp;->instId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/client/ISyncmlService;->startDMSession(IILcom/samsung/client/Tsldm_start_parm_binder;)I
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_c8} :catch_ca

    goto/16 :goto_2c

    .line 1259
    :catch_ca
    move-exception v0

    .line 1260
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c
.end method

.method private handleNIAretry()V
    .registers 4

    .prologue
    .line 1539
    const-string v0, "DMApp"

    const-string v1, "handleNIAretry()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_16

    .line 1542
    const-string v0, "DMApp"

    const-string v1, "handleNIAretry(): session success, removing message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    .line 1561
    :goto_15
    return-void

    .line 1545
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

    .line 1546
    :cond_25
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_35

    .line 1547
    const-string v0, "DMApp"

    const-string v1, "handleNIAretry(): session error, retries over, removing message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    goto :goto_15

    .line 1552
    :cond_35
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1553
    iget-object v0, p0, Lcom/samsung/client/DMApp;->ctd:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1554
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

    .line 1558
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

    .line 1559
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    goto :goto_15
.end method

.method private hfaProgress()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 774
    const-string v2, "DMApp"

    const-string v3, "hfaProgress()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :try_start_9
    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/samsung/handsfreeactivation/StartUp;

    if-eqz v2, :cond_16

    .line 777
    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v2, Lcom/samsung/handsfreeactivation/StartUp;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/handsfreeactivation/StartUp;->mAppCancel:Z

    .line 780
    :cond_16
    iget v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-eqz v2, :cond_25

    iget v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_25

    iget v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d8

    .line 781
    :cond_25
    iget v2, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 782
    .local v1, ses_upd:B
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->mdn:I

    .line 783
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->msid:I

    .line 784
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->nai:I

    .line 785
    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 786
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

    .line 787
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

    .line 788
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

    .line 789
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

    .line 791
    iget v2, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v2, v5, :cond_ba

    iget v2, p0, Lcom/samsung/client/DMApp;->msid:I

    if-eq v2, v5, :cond_ba

    iget v2, p0, Lcom/samsung/client/DMApp;->nai:I

    if-ne v2, v5, :cond_c2

    .line 792
    :cond_ba
    iget v2, p0, Lcom/samsung/client/DMApp;->nai:I

    if-ne v2, v5, :cond_be

    .line 795
    :cond_be
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->gotoSuccess()V

    .line 815
    .end local v1           #ses_upd:B
    :cond_c1
    :goto_c1
    return-void

    .line 797
    .restart local v1       #ses_upd:B
    :cond_c2
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->gotoFailure()V

    .line 798
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->restoreSlot(I)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c9} :catch_ca

    goto :goto_c1

    .line 811
    .end local v1           #ses_upd:B
    :catch_ca
    move-exception v0

    .line 812
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    invoke-virtual {p0, v6}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_c1

    .line 802
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d8
    const/4 v2, 0x0

    :try_start_d9
    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 804
    iget-boolean v2, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v2, :cond_c1

    .line 807
    iget-object v2, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/samsung/handsfreeactivation/StartUp;

    if-eqz v2, :cond_c1

    .line 808
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
    .line 1597
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

    .line 1741
    const-string v1, "DMApp"

    const-string v2, "nidcProgress()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1746
    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v1, :cond_107

    .line 1748
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1749
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->mdn:I

    .line 1750
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->msid:I

    .line 1751
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->nai:I

    .line 1752
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 1753
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

    .line 1754
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

    .line 1755
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

    .line 1756
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

    .line 1758
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_ee

    .line 1759
    iget v0, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v0, v3, :cond_b0

    iget v0, p0, Lcom/samsung/client/DMApp;->msid:I

    if-eq v0, v3, :cond_b0

    iget v0, p0, Lcom/samsung/client/DMApp;->nai:I

    if-eq v0, v3, :cond_b0

    iget v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v0, v3, :cond_df

    .line 1761
    :cond_b0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I

    .line 1765
    :goto_b3
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1777
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

    .line 1778
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1815
    :cond_de
    :goto_de
    return-void

    .line 1763
    :cond_df
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->deviceConfigured:I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_e2} :catch_e3

    goto :goto_b3

    .line 1812
    :catch_e3
    move-exception v0

    .line 1813
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_de

    .line 1768
    :cond_ee
    :try_start_ee
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    .line 1769
    iget v0, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v0, v3, :cond_f9

    iget v0, p0, Lcom/samsung/client/DMApp;->msid:I

    if-ne v0, v3, :cond_fe

    .line 1771
    :cond_f9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->handleReboot(Z)V

    goto :goto_c1

    .line 1772
    :cond_fe
    iget v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v0, v3, :cond_c1

    .line 1773
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V

    goto :goto_c1

    .line 1780
    :cond_107
    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-eq v1, v5, :cond_115

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_115

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_15a

    .line 1781
    :cond_115
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    if-lt v0, v4, :cond_de

    .line 1782
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

    .line 1783
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/deviceconfiguration/DeviceConfiguration;->gotoFailure(I)V

    .line 1793
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

    .line 1794
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    goto :goto_de

    .line 1798
    :cond_15a
    :goto_15a
    if-ge v0, v5, :cond_164

    .line 1799
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1798
    add-int/lit8 v0, v0, 0x1

    goto :goto_15a

    .line 1801
    :cond_164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1802
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1803
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1804
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 1805
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1806
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1808
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

    .line 1809
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

    .line 1876
    const-string v0, "DMApp"

    const-string v1, "nifumoProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :try_start_8
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_106

    .line 1879
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1880
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    .line 1881
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

    .line 1882
    if-ne v0, v4, :cond_c0

    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_8d

    if-eqz v1, :cond_c0

    .line 1884
    :try_start_34
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 1885
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_43} :catch_82
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_43} :catch_8d

    .line 1891
    :goto_43
    :try_start_43
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_98

    .line 1925
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

    .line 1926
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1954
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

    .line 1955
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1959
    :goto_81
    return-void

    .line 1887
    :catch_82
    move-exception v0

    .line 1888
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_8c} :catch_8d

    goto :goto_43

    .line 1956
    :catch_8d
    move-exception v0

    .line 1957
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    .line 1893
    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_a8

    .line 1894
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/fumo/FirmwareUpdate;->dlprogress(II)V

    goto :goto_47

    .line 1896
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

    .line 1898
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->bringUItoForeground(Landroid/app/Activity;)V

    goto :goto_47

    .line 1900
    :cond_c0
    if-nez v0, :cond_47

    .line 1901
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_f7

    .line 1902
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_d8

    .line 1903
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z

    if-eqz v0, :cond_ef

    .line 1904
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/fumo/FirmwareUpdate;->gotoFailure(I)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d8} :catch_8d

    .line 1915
    :cond_d8
    :goto_d8
    :try_start_d8
    const-string v0, "DMApp"

    const-string v1, "FUMOshutdownDMSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 1918
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e9} :catch_fb

    .line 1922
    :goto_e9
    const/4 v0, 0x0

    :try_start_ea
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto/16 :goto_47

    .line 1907
    :cond_ef
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v0}, Lcom/samsung/fumo/FirmwareUpdate;->noUpdateAlert()V

    goto :goto_d8

    .line 1912
    :cond_f7
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    goto :goto_d8

    .line 1919
    :catch_fb
    move-exception v0

    .line 1920
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_105} :catch_8d

    goto :goto_e9

    .line 1929
    :cond_106
    :try_start_106
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
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_117} :catch_125

    .line 1936
    :goto_117
    const/4 v0, 0x0

    :try_start_118
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1938
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-eqz v0, :cond_130

    .line 1939
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto/16 :goto_64

    .line 1933
    :catch_125
    move-exception v0

    .line 1934
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_117

    .line 1940
    :cond_130
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_64

    .line 1942
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_14a

    .line 1943
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_64

    .line 1944
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/fumo/FirmwareUpdate;->gotoFailure(I)V

    goto/16 :goto_64

    .line 1949
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

    .line 1818
    const-string v0, "DMApp"

    const-string v1, "niprlProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1823
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_c4

    .line 1825
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1826
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    iput v1, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    .line 1827
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    .line 1828
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

    .line 1829
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

    .line 1831
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_a5

    .line 1835
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1846
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

    .line 1848
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1868
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

    .line 1869
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1873
    :goto_a4
    return-void

    .line 1838
    :cond_a5
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    .line 1839
    iget v0, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v0, v3, :cond_bc

    .line 1840
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->handleBC10BC14Changed(Z)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b0} :catch_b1

    goto :goto_6a

    .line 1870
    :catch_b1
    move-exception v0

    .line 1871
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a4

    .line 1841
    :cond_bc
    :try_start_bc
    iget v0, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    if-ne v0, v3, :cond_6a

    .line 1842
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->resetRadio()V

    goto :goto_6a

    .line 1850
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

    .line 1851
    :cond_d3
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    if-lt v0, v2, :cond_87

    .line 1852
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_102

    .line 1853
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/prlupdate/PRLUpdate;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->gotoFailure(I)V

    .line 1857
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

    .line 1858
    const/4 v0, 0x0

    sput v0, Lcom/samsung/client/DMApp;->niaRetries:I

    goto :goto_87

    .line 1855
    :cond_102
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->clearActivity()V

    goto :goto_e4

    .line 1861
    :cond_106
    sget-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    if-eqz v0, :cond_115

    .line 1862
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/prlupdate/PRLUpdate;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->gotoFailure(I)V

    goto/16 :goto_87

    .line 1864
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

    .line 1004
    const-string v0, "DMApp"

    const-string v1, "prlProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :try_start_8
    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_4b

    .line 1007
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1008
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->prlUpdated:I

    .line 1009
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

    .line 1010
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1020
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isHfaInitiated()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1021
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1027
    :cond_4a
    :goto_4a
    return-void

    .line 1012
    :cond_4b
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v0, :cond_40

    .line 1015
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/prlupdate/PRLUpdate;

    iget v1, p0, Lcom/samsung/client/DMApp;->errCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->gotoFailure(I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_58} :catch_59

    goto :goto_40

    .line 1023
    :catch_59
    move-exception v0

    .line 1024
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    invoke-virtual {p0, v5}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_4a
.end method

.method private reconnectSyncmlService()V
    .registers 4

    .prologue
    .line 2612
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-nez v0, :cond_15

    .line 2613
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/client/ISyncmlService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/DMApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2617
    :cond_15
    return-void
.end method

.method private removeAlarm(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 2329
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2331
    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2334
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2336
    invoke-virtual {p0, p2, v4, v5}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2337
    const-string v0, "prl_interval"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2338
    const-string v0, "prl_next_time"

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2343
    :cond_26
    :goto_26
    return-void

    .line 2339
    :cond_27
    const-string v0, "fumo_interval"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2340
    const-string v0, "fumo_next_time"

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    goto :goto_26
.end method

.method private removeSanMessage_startService()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1984
    const-string v0, "DMApp"

    const-string v1, "removeSanMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->remove_san_msg(Landroid/content/Context;)V

    .line 1987
    sput v2, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1988
    sput-boolean v2, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    .line 1989
    const-string v0, "DMApp"

    const-string v1, "Start SAN service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    sget v0, Lcom/samsung/client/DMApp;->mSessionType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 1993
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 1994
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 1997
    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.SAN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1998
    return-void
.end method

.method private removeStatus()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1375
    const-string v0, "DMApp"

    const-string v1, "removeStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :try_start_8
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/samsung/client/DMApp;->errCode:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/samsung/client/DMApp;->fumoUpdateStatus:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3d

    .line 1380
    :cond_16
    const-string v0, "DMApp"

    const-string v1, "removeStatus FUMOshutdownDMSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/SendStatus;

    if-eqz v0, :cond_2a

    .line 1382
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v0}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 1385
    :cond_2a
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 1386
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I

    .line 1388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1391
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    .line 1438
    :goto_3c
    return-void

    .line 1394
    :cond_3d
    iget v0, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 1395
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/client/DMApp;->checkSet(IB)I

    move-result v1

    .line 1396
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

    .line 1397
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/SendStatus;

    if-eqz v0, :cond_6c

    .line 1398
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/SendStatus;

    invoke-virtual {v0}, Lcom/samsung/fumo/SendStatus;->removeUpdateStatus()V

    .line 1400
    :cond_6c
    if-ne v1, v4, :cond_b4

    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_b4

    .line 1401
    const-string v0, "DMApp"

    const-string v1, "removeStatus() fumoRun() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 1404
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 1408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.START_CIFUMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1410
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1411
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1413
    const-string v1, "firmware_download_started"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a8} :catch_a9

    goto :goto_3c

    .line 1435
    :catch_a9
    move-exception v0

    .line 1436
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 1416
    :cond_b4
    :try_start_b4
    const-string v0, "DMApp"

    const-string v1, "removeStatus FUMOshutdownDMSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->shutdownDMSession(I)I

    .line 1418
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/client/DMApp;->instId:I

    .line 1420
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->startFumoNoSlotChange()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 1421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->updateCompleted(Z)V

    goto/16 :goto_3c

    .line 1426
    :cond_d5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.START_CIFUMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1427
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1428
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1429
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1431
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

    .line 2038
    .line 2041
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2042
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

    .line 2045
    if-eqz v0, :cond_7a

    .line 2047
    :try_start_25
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 2048
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

    .line 2050
    if-ne p1, v5, :cond_64

    if-eq v1, v7, :cond_64

    if-eq v1, v6, :cond_64

    .line 2052
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2062
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

    .line 2067
    :goto_63
    return-void

    .line 2053
    :cond_64
    if-nez p1, :cond_4b

    if-eq v1, v7, :cond_6a

    if-ne v1, v6, :cond_4b

    .line 2055
    :cond_6a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6e} :catch_6f

    goto :goto_4b

    .line 2063
    :catch_6f
    move-exception v0

    .line 2064
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 2060
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

    .line 1626
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

    .line 1629
    :try_start_20
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_6a

    .line 1635
    :goto_27
    sput v4, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 1637
    iget v0, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    if-ne v0, v3, :cond_75

    .line 1639
    sput-boolean v4, Lcom/samsung/client/DMApp;->isForeground:Z

    .line 1645
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 1646
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/client/UserTouch;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1647
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1648
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1650
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1668
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->acquireWakeLock()V

    .line 1669
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->disableKeyGuard()V

    .line 1671
    sput-boolean v3, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    .line 1672
    sput v3, Lcom/samsung/client/DMApp;->niaRetries:I

    .line 1674
    iput-object p1, p0, Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

    .line 1676
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 1677
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1680
    sget-object v0, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1681
    sget-object v0, Lcom/samsung/client/SanService;->mSanWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1683
    :cond_69
    return-void

    .line 1630
    :catch_6a
    move-exception v0

    .line 1631
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 1652
    :cond_75
    iget v0, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    if-eqz v0, :cond_83

    iget v0, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_83

    iget v0, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->uiMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_45

    .line 1656
    :cond_83
    sput-boolean v3, Lcom/samsung/client/DMApp;->isForeground:Z

    .line 1661
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-class v2, Lcom/samsung/deviceconfiguration/DeviceConfiguration;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1662
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1663
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1665
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_45
.end method

.method private storeSlot()I
    .registers 5

    .prologue
    .line 2078
    const-string v0, "DMApp"

    const-string v1, "!!!storeSlot !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const/4 v0, -0x1

    .line 2080
    new-instance v1, Lcom/sprint/internal/ConnectionManager;

    invoke-direct {v1, p0}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 2082
    if-eqz v1, :cond_13

    .line 2084
    :try_start_f
    invoke-virtual {v1}, Lcom/sprint/internal/ConnectionManager;->getDataProfile()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_2c

    move-result v0

    .line 2089
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

    .line 2090
    return v0

    .line 2086
    :catch_2c
    move-exception v1

    .line 2087
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
    .line 3131
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isHfaInitiated()Z

    move-result v0

    return v0
.end method

.method public SaveSharedPreferenceWimaxHandler(Ljava/lang/Boolean;)V
    .registers 7
    .parameter "value"

    .prologue
    .line 326
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

    .line 327
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 329
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DM_WIMAX_DISABLE"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method

.method public acquireWakeLock()V
    .registers 4

    .prologue
    .line 2598
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

    .line 2599
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2600
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2602
    :cond_2b
    return-void
.end method

.method public bringUItoForeground(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 1686
    const-string v0, "DMApp"

    const-string v1, "bringUItoForeground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iput-object p1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    .line 1689
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 1691
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_15

    iget v0, p0, Lcom/samsung/client/DMApp;->instId:I

    if-eqz v0, :cond_1d

    .line 1692
    :cond_15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/DMApp;->isForeground:Z

    .line 1694
    iget-object v0, p0, Lcom/samsung/client/DMApp;->delayedBgNiaSession:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1696
    :cond_1d
    return-void
.end method

.method public cancelDld()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1267
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

    .line 1269
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    if-nez v0, :cond_78

    .line 1272
    :try_start_20
    const-string v0, "DMApp"

    const-string v1, "FumoRunTimer.cancel().... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2c} :catch_62

    .line 1278
    :goto_2c
    :try_start_2c
    const-string v0, "DMApp"

    const-string v1, "Session progress CLEAN UP FUMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v0}, Lcom/samsung/client/ISyncmlService;->fumoAbort()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_6d

    .line 1284
    :goto_38
    const-string v0, "DMApp"

    const-string v1, "restoreSlot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {p0, v4}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1297
    :goto_42
    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 1298
    iput-boolean v4, p0, Lcom/samsung/client/DMApp;->downloadInProgress:Z

    .line 1300
    sget-boolean v0, Lcom/samsung/client/DMApp;->mAirModeState:Z

    if-nez v0, :cond_61

    .line 1302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.SEND_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1303
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1305
    const-string v1, "cancel_dld_status"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1307
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1311
    :cond_61
    return-void

    .line 1274
    :catch_62
    move-exception v0

    .line 1275
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1280
    :catch_6d
    move-exception v0

    .line 1281
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1289
    :cond_78
    :try_start_78
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_82

    .line 1290
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->cancelDownload(I)I
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_82} :catch_85

    .line 1295
    :cond_82
    :goto_82
    sput-boolean v3, Lcom/samsung/client/DMApp;->cancelling:Z

    goto :goto_42

    .line 1292
    :catch_85
    move-exception v0

    .line 1293
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_82
.end method

.method public cancelUpdate()V
    .registers 3

    .prologue
    .line 2027
    const-string v0, "DMApp"

    const-string v1, "cancelUpdate !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 2029
    iget-object v0, p0, Lcom/samsung/client/DMApp;->cancelUpdateSessionTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2030
    return-void
.end method

.method public checkAirplaneMode()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2621
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 2623
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

    .line 2624
    if-ne v1, v0, :cond_30

    .line 2631
    :goto_25
    return v0

    .line 2627
    :catch_26
    move-exception v0

    .line 2628
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2631
    :cond_30
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public checkDunEnabled()Z
    .registers 2

    .prologue
    .line 2646
    const/4 v0, 0x0

    return v0
.end method

.method public checkRadioState_DisplayError()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2159
    const/4 v2, 0x3

    sget v3, Lcom/samsung/client/DMApp;->mPhoneState:I

    if-eq v2, v3, :cond_b

    sget v2, Lcom/samsung/client/DMApp;->mPhoneState:I

    if-ne v0, v2, :cond_28

    .line 2162
    :cond_b
    const/4 v2, 0x7

    iput v2, p0, Lcom/samsung/client/DMApp;->sessStatus:I

    .line 2163
    const/4 v2, -0x2

    iput v2, p0, Lcom/samsung/client/DMApp;->errCode:I

    .line 2164
    iput v1, p0, Lcom/samsung/client/DMApp;->sessUpdate:I

    .line 2165
    iget-object v2, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2167
    const-string v0, "DMApp"

    const-string v2, "RADIO NOT AVAILABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2171
    :cond_28
    return v0
.end method

.method public checkTopActivity([Landroid/content/Intent;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2741
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2742
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2744
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2745
    const-string v1, "DMApp"

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    const-string v1, "DMApp"

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move v2, v3

    .line 2750
    :goto_2f
    array-length v1, p1

    if-ge v2, v1, :cond_62

    .line 2751
    aget-object v1, p1, v2

    const/high16 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2753
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2754
    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2755
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2756
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 2757
    const-string v0, "DMApp"

    const-string v1, "HOME SCREEN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2765
    :cond_62
    return v3

    .line 2760
    :cond_63
    const-string v7, "DMApp"

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    const-string v7, "DMApp"

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 2750
    :cond_72
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f
.end method

.method public clearActivity()V
    .registers 4

    .prologue
    .line 1962
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

    .line 1964
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1f

    .line 1981
    :goto_1e
    return-void

    .line 1968
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2b

    .line 1969
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1968
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1971
    :cond_2b
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1972
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1973
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1974
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1975
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1976
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 1977
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1979
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 1980
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    goto :goto_1e
.end method

.method public dcStartSession()V
    .registers 3

    .prologue
    .line 717
    const-string v0, "DMApp"

    const-string v1, "dcStartSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v0

    if-nez v0, :cond_e

    .line 725
    :goto_d
    return-void

    .line 723
    :cond_e
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 724
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_d
.end method

.method public disableKeyGuard()V
    .registers 4

    .prologue
    .line 2588
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

    .line 2590
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    if-nez v0, :cond_2d

    .line 2591
    const-string v0, "DMApp"

    const-string v1, "disabled KeyGuard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 2593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    .line 2595
    :cond_2d
    return-void
.end method

.method public enableKeyGuard()V
    .registers 4

    .prologue
    .line 2576
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

    .line 2578
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    if-eqz v0, :cond_2d

    .line 2579
    const-string v0, "DMApp"

    const-string v1, "enabled KeyGuard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    .line 2581
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 2585
    :cond_2d
    return-void
.end method

.method public fumoStartSession()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 728
    const-string v2, "DMApp"

    const-string v3, "fumoStartSession()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 730
    iput-boolean v4, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 732
    :try_start_d
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 734
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "UpgradePending"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 735
    const-string v2, "DMApp"

    const-string v3, "Upgrade Pending"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v2, "FUMO_DESCRIPTION"

    const-string v3, "Firmware Update Package"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->gotoUpdate(Ljava/lang/String;)V

    .line 763
    :cond_2f
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v2

    iput v2, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 764
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 771
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_3a
    :goto_3a
    return-void

    .line 739
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_3b
    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-string v5, "fumo_enable"

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3a

    .line 743
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 747
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 751
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 755
    sget-object v2, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v2, :cond_2f

    .line 757
    sget-object v2, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v2}, Lcom/samsung/client/ISyncmlService;->isBatteryLow()Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_68} :catch_6c

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_3a

    .line 766
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :catch_6c
    move-exception v0

    .line 767
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    goto :goto_3a
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getErrorString(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 2539
    packed-switch p1, :pswitch_data_4c

    .line 2557
    :pswitch_3
    const v0, 0x7f050072

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 2541
    :pswitch_b
    const v0, 0x7f05006a

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2543
    :pswitch_13
    const v0, 0x7f05006b

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2545
    :pswitch_1b
    const v0, 0x7f05006c

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2547
    :pswitch_23
    const v0, 0x7f05006d

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2549
    :pswitch_2b
    const v0, 0x7f05006e

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2551
    :pswitch_33
    const v0, 0x7f05006f

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2553
    :pswitch_3b
    const v0, 0x7f050070

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2555
    :pswitch_43
    const v0, 0x7f050071

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 2539
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
    .line 1140
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

    .line 1141
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/handsfreeactivation/StartUp;

    if-eqz v0, :cond_2c

    .line 1145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/handsfreeactivation/ActFail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1148
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1150
    :cond_2c
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1151
    return-void
.end method

.method public gotoSuccess()V
    .registers 4

    .prologue
    .line 1127
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

    .line 1129
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1130
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/handsfreeactivation/ActSuccess;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1134
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1135
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/DMApp;->hfaNotification:Z

    .line 1137
    return-void
.end method

.method public gotoUpdate(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1314
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

    .line 1317
    :try_start_1a
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1320
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1321
    const-string v1, "FUMO_DESCRIPTION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1322
    const-string v1, "UpgradePending"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1325
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3c

    .line 1326
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1329
    :cond_3c
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/fumo/FirmwareUpdate;

    if-eqz v0, :cond_56

    .line 1330
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/fumo/FirmwareUpdate;

    invoke-virtual {v0}, Lcom/samsung/fumo/FirmwareUpdate;->gotosuccess()V

    .line 1335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/fumo/UpdateSoftware;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1337
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1357
    :goto_55
    return-void

    .line 1339
    :cond_56
    sget-boolean v0, Lcom/samsung/client/DMApp;->cancelling:Z

    if-nez v0, :cond_80

    .line 1340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.UPDATE_FIRMWARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1342
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1343
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1345
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_74} :catch_75

    goto :goto_55

    .line 1353
    :catch_75
    move-exception v0

    .line 1354
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 1348
    :cond_80
    :try_start_80
    const-string v0, "DMApp"

    const-string v1, "update firmware avoided, handling cancel case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/DMApp;->cancelling:Z

    .line 1350
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

    .line 1461
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

    .line 1463
    invoke-virtual {p0, v6}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.EMERGENCY_CALL_DLG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1466
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1467
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1468
    const/high16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1471
    if-eqz p1, :cond_39

    .line 1472
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1481
    :goto_38
    return-void

    .line 1474
    :cond_39
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1475
    const/high16 v2, 0x800

    invoke-static {p0, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1478
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

    .line 1441
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

    .line 1443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.REBOOTDLG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1445
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1446
    const/high16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1448
    if-eqz p1, :cond_36

    .line 1449
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1458
    :goto_35
    return-void

    .line 1451
    :cond_36
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1452
    const/high16 v2, 0x800

    invoke-static {p0, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1455
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
    .line 2914
    const-string v0, "DMApp"

    const-string v1, "hfaStartSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2917
    const/4 v0, 0x0

    .line 2920
    :goto_e
    return v0

    .line 2919
    :cond_f
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2920
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public isBC10BC14Changed()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2569
    iget v1, p0, Lcom/samsung/client/DMApp;->bc10bc14changed:I

    if-ne v1, v0, :cond_6

    .line 2572
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDMSessionNotActive()Z
    .registers 4

    .prologue
    .line 2145
    const-string v0, "DMApp"

    const-string v1, "isDMSessionNotActive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_1f

    .line 2149
    :try_start_b
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v0}, Lcom/samsung/client/ISyncmlService;->areResourcesCleaned()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v0

    .line 2155
    :goto_11
    return v0

    .line 2150
    :catch_12
    move-exception v0

    .line 2151
    const-string v1, "DMApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2152
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    .line 2155
    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isHfaInitiated()Z
    .registers 4

    .prologue
    .line 3135
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3137
    const-string v1, "HFA_INITIATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHomeLaunchedByApp()Z
    .registers 2

    .prologue
    .line 2732
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    return v0
.end method

.method public isInRestrictLockMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3117
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_pattern_autolock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3119
    if-ne v2, v0, :cond_27

    .line 3120
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

    .line 3121
    return v0

    :cond_27
    move v0, v1

    .line 3119
    goto :goto_e
.end method

.method public isMdnMsidChanged()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2562
    iget v1, p0, Lcom/samsung/client/DMApp;->mdn:I

    if-eq v1, v0, :cond_9

    iget v1, p0, Lcom/samsung/client/DMApp;->msid:I

    if-ne v1, v0, :cond_a

    .line 2565
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
    .line 2904
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-nez v0, :cond_9

    .line 2905
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V

    .line 2906
    const/4 v0, 0x0

    .line 2908
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public isUpdateCompleted()Z
    .registers 2

    .prologue
    .line 3169
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->isUpdateCompleted:Z

    return v0
.end method

.method public ishomeScreenLaunched()I
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2668
    const-string v0, "DMApp"

    const-string v3, "ishomeScreenLaunched...... "

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    move v0, v1

    .line 2673
    :goto_12
    array-length v4, v3

    if-ge v0, v4, :cond_4b

    .line 2674
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

    .line 2677
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onUserLeaveHint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 2683
    :cond_4b
    array-length v3, v3

    if-ge v0, v3, :cond_7d

    .line 2684
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2685
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 2686
    const/4 v1, 0x2

    .line 2726
    :cond_58
    :goto_58
    return v1

    .line 2673
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2714
    :cond_5c
    new-array v0, v2, [Landroid/content/Intent;

    .line 2715
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 2716
    aget-object v2, v0, v1

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2717
    aget-object v2, v0, v1

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2719
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2720
    const/4 v1, 0x3

    goto :goto_58

    :cond_7d
    move v1, v2

    .line 2726
    goto :goto_58
.end method

.method public launchDSAapp()V
    .registers 4

    .prologue
    .line 1187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1188
    const v1, 0x7f050062

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    const v1, 0x7f050064

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HFA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1195
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1196
    return-void
.end method

.method public launchHomeScreen()V
    .registers 3

    .prologue
    .line 2769
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2770
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2771
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2772
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 2773
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1e

    .line 2774
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2779
    :goto_1d
    return-void

    .line 2777
    :cond_1e
    const-string v0, "DMApp"

    const-string v1, "DMApp.java - launchHomeScreen - currentActivity is null !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public lowBattery()Z
    .registers 4

    .prologue
    .line 2651
    :try_start_0
    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v1, :cond_b

    .line 2653
    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v1}, Lcom/samsung/client/ISyncmlService;->isBatteryLow()Z

    move-result v1

    .line 2663
    :goto_a
    return v1

    .line 2657
    :cond_b
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->reconnectSyncmlService()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    .line 2663
    :goto_e
    const/4 v1, 0x0

    goto :goto_a

    .line 2660
    :catch_10
    move-exception v0

    .line 2661
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
    .line 204
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

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.INIT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 206
    return-void
.end method

.method public onInit()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
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

    .line 211
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

    .line 213
    sget-boolean v3, Lcom/samsung/client/DMApp;->isInitialized:Z

    if-eqz v3, :cond_41

    .line 214
    const-string v3, "DMApp"

    const-string v4, "onInit(): Already Initialized return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_40
    return-void

    .line 219
    :cond_41
    sget-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-nez v3, :cond_55

    .line 220
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/samsung/client/ISyncmlService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v7}, Lcom/samsung/client/DMApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 225
    :cond_55
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mPowerMgr:Landroid/os/PowerManager;

    .line 226
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mPowerMgr:Landroid/os/PowerManager;

    const v4, 0x3000000a

    const-string v5, "My PowerLock"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mKeyguardMgr:Landroid/app/KeyguardManager;

    .line 231
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mKeyguardMgr:Landroid/app/KeyguardManager;

    const-string v4, "DMApp"

    invoke-virtual {v3, v4}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 232
    iput-boolean v6, p0, Lcom/samsung/client/DMApp;->mKeyguardDisabled:Z

    .line 235
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 236
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/samsung/client/DMApp;->mListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 240
    new-instance v3, Lcom/samsung/client/DMApp$OffReceiver;

    invoke-direct {v3, p0, v8}, Lcom/samsung/client/DMApp$OffReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    iput-object v3, p0, Lcom/samsung/client/DMApp;->offReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    iget-object v3, p0, Lcom/samsung/client/DMApp;->offReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    new-instance v3, Lcom/samsung/client/DMApp$OnReceiver;

    invoke-direct {v3, p0, v8}, Lcom/samsung/client/DMApp$OnReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    iput-object v3, p0, Lcom/samsung/client/DMApp;->onReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    iget-object v3, p0, Lcom/samsung/client/DMApp;->onReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    new-instance v0, Lcom/samsung/client/DMApp$AirplaneModeReceiver;

    invoke-direct {v0, p0, v8}, Lcom/samsung/client/DMApp$AirplaneModeReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    .line 248
    .local v0, airModeReceiver:Lcom/samsung/client/DMApp$AirplaneModeReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    new-instance v3, Lcom/samsung/client/DMApp$LocaleChangeReceiver;

    invoke-direct {v3, p0, v8}, Lcom/samsung/client/DMApp$LocaleChangeReceiver;-><init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V

    iput-object v3, p0, Lcom/samsung/client/DMApp;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    iget-object v3, p0, Lcom/samsung/client/DMApp;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    sput-boolean v7, Lcom/samsung/client/DMApp;->isInitialized:Z

    .line 263
    sput-boolean v6, Lcom/samsung/client/DMApp;->cancelling:Z

    .line 265
    new-instance v3, Lcom/samsung/client/WimaxHandler;

    invoke-direct {v3}, Lcom/samsung/client/WimaxHandler;-><init>()V

    iput-object v3, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    .line 268
    :try_start_e8
    const-string v3, "DMAPP_STATE"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 270
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "DM_WIMAX_DISABLE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_10f

    .line 271
    const-string v3, "DMApp"

    const-string v4, " Wimax enable pending .... enabling now ...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    if-eqz v3, :cond_10f

    .line 274
    const-string v3, "DMApp"

    const-string v4, " Wimax .... mWimaxHandler.enableJavaWimaxDmApp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    invoke-virtual {v3}, Lcom/samsung/client/WimaxHandler;->enableJavaWimaxDmApp()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_10f} :catch_142

    .line 283
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_10f
    :goto_10f
    const-string v3, "DMApp"

    const-string v4, " Wimax already enabled ...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :try_start_116
    const-string v3, "DMAPP_STATE"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 289
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    const-string v3, "DM_WIFI_DISABLE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_139

    .line 290
    const-string v3, "DMApp"

    const-string v4, " Wifi enable pending .... enabling now ...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/client/DMApp;->setWIFIenabled(Z)V

    .line 292
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/client/DMApp;->SaveWifiStateInSharedPref(Ljava/lang/Boolean;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_139} :catch_14d

    .line 299
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_139
    :goto_139
    const-string v3, "DMApp"

    const-string v4, " Wifi already enabled ...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    .line 280
    :catch_142
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DMApp"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10f

    .line 296
    .end local v1           #e:Ljava/lang/Exception;
    :catch_14d
    move-exception v1

    .line 297
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
    .line 3109
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 3110
    const-string v0, "DMApp"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    return-void
.end method

.method public onTerminate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 304
    :try_start_1
    sget-object v1, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v2, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v1, v2}, Lcom/samsung/client/ISyncmlService;->unregisterDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_2a

    .line 308
    :goto_8
    iget-object v1, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 309
    sput-object v3, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    .line 310
    iput-object v3, p0, Lcom/samsung/client/DMApp;->mConnection:Landroid/content/ServiceConnection;

    .line 311
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 312
    iput-object v3, p0, Lcom/samsung/client/DMApp;->mPowerMgr:Landroid/os/PowerManager;

    .line 313
    iput-object v3, p0, Lcom/samsung/client/DMApp;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 314
    iput-object v3, p0, Lcom/samsung/client/DMApp;->mWimaxHandler:Lcom/samsung/client/WimaxHandler;

    .line 315
    iget-object v1, p0, Lcom/samsung/client/DMApp;->onReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iget-object v1, p0, Lcom/samsung/client/DMApp;->offReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    iget-object v1, p0, Lcom/samsung/client/DMApp;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    return-void

    .line 305
    :catch_2a
    move-exception v0

    .line 306
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
    .line 2924
    const-string v0, "DMApp"

    const-string v1, "postHfaStartSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 2927
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 2931
    const/4 v0, 0x1

    return v0
.end method

.method public postNIASession(Lcom/samsung/client/TslcmnSan$TslSanMsg;)V
    .registers 5
    .parameter

    .prologue
    .line 1620
    const-string v0, "DMApp"

    const-string v1, "postNIASession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1623
    return-void
.end method

.method public prlStartSession()V
    .registers 3

    .prologue
    .line 706
    const-string v0, "DMApp"

    const-string v1, "prlStartSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v0

    if-nez v0, :cond_e

    .line 714
    :goto_d
    return-void

    .line 712
    :cond_e
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 713
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    goto :goto_d
.end method

.method public readFromPreference(Ljava/lang/String;)J
    .registers 5
    .parameter "key"

    .prologue
    .line 2303
    const-string v1, "DMAPP_STATE"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2305
    .local v0, sp:Landroid/content/SharedPreferences;
    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public rebootDevice()V
    .registers 3

    .prologue
    .line 2009
    const-string v0, "DMApp"

    const-string v1, "Rebooting the device  !!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2012
    invoke-virtual {v0}, Landroid/os/PowerManager;->systemReboot()V

    .line 2013
    return-void
.end method

.method public rebootFotaDevice()V
    .registers 3

    .prologue
    .line 2001
    const-string v0, "DMApp"

    const-string v1, "Rebooting Fota device arm9_fota!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2004
    const-string v1, "arm9_fota"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->systemFotaReboot(Ljava/lang/String;)V

    .line 2005
    return-void
.end method

.method public releaseWakeLock()V
    .registers 4

    .prologue
    .line 2605
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

    .line 2606
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2607
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2609
    :cond_2b
    return-void
.end method

.method public resetRadio()V
    .registers 4

    .prologue
    .line 2017
    const-string v0, "DMApp"

    const-string v1, "Resetting Radio !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :try_start_7
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v0}, Lcom/samsung/client/ISyncmlService;->resetRadio()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2024
    :goto_c
    return-void

    .line 2021
    :catch_d
    move-exception v0

    .line 2022
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

    .line 2094
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

    .line 2095
    new-instance v0, Lcom/sprint/internal/ConnectionManager;

    invoke-direct {v0, p0}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 2097
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

    .line 2098
    if-ne p1, v5, :cond_68

    iget-boolean v1, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    if-nez v1, :cond_68

    .line 2100
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2102
    iget-object v2, p0, Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/client/DMApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2103
    iput-boolean v4, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    .line 2104
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

    .line 2108
    :cond_68
    if-eqz v0, :cond_7e

    .line 2110
    if-nez p1, :cond_a4

    .line 2111
    :try_start_6c
    invoke-virtual {v0}, Lcom/sprint/internal/ConnectionManager;->release()V

    .line 2113
    const-string v0, "DMApp"

    const-string v1, "SaveWifiStateInSharedPref = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/client/DMApp;->SaveWifiStateInSharedPref(Ljava/lang/Boolean;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7e} :catch_c8

    .line 2129
    :cond_7e
    :goto_7e
    if-nez p1, :cond_95

    sget-boolean v0, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    if-nez v0, :cond_95

    .line 2130
    const-string v0, "DMApp"

    const-string v1, "NIA Start after change of slot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.client.SAN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2134
    :cond_95
    if-ne p1, v5, :cond_a3

    .line 2135
    const-string v0, "DMApp"

    const-string v1, "hangedTimer.start()..... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    :try_start_9e
    iget-object v0, p0, Lcom/samsung/client/DMApp;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a3} :catch_d3

    .line 2142
    :cond_a3
    :goto_a3
    return-void

    .line 2117
    :cond_a4
    :try_start_a4
    invoke-virtual {v0, p1}, Lcom/sprint/internal/ConnectionManager;->requestDataProfile(I)V

    .line 2119
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

    .line 2120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/client/DMApp;->SaveWifiStateInSharedPref(Ljava/lang/Boolean;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_c7} :catch_c8

    goto :goto_7e

    .line 2124
    :catch_c8
    move-exception v0

    .line 2125
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    .line 2138
    :catch_d3
    move-exception v0

    .line 2139
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
    .line 1586
    const-string v0, "DMApp"

    const-string v1, "retryNIASession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->storeSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/DMApp;->slot:I

    .line 1588
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1591
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/DMApp;->mNIAProgress:Z

    .line 1592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 1593
    iput-object p1, p0, Lcom/samsung/client/DMApp;->mSan:Lcom/samsung/client/TslcmnSan$TslSanMsg;

    .line 1594
    return-void
.end method

.method public retrySession()V
    .registers 3

    .prologue
    .line 1154
    const-string v0, "DMApp"

    const-string v1, "retrySession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/handsfreeactivation/StartUp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1158
    iget-object v1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1159
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1160
    return-void
.end method

.method public setAlarm(JLandroid/content/Intent;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2309
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2311
    sget-object v1, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const/high16 v2, 0x800

    invoke-static {v1, v4, p3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2317
    invoke-virtual {p0, p4, p1, p2}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2318
    const-string v0, "prl_interval"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2319
    const-string v0, "prl_next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/client/DMApp;->writeToPreferences(Ljava/lang/String;J)V

    .line 2326
    :cond_2e
    :goto_2e
    return-void

    .line 2321
    :cond_2f
    const-string v0, "fumo_interval"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2322
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
    .line 694
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/client/DMApp;->previousActivity:Landroid/app/Activity;

    .line 695
    iput-object p1, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    .line 696
    iget-object v0, p0, Lcom/samsung/client/DMApp;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_28

    .line 697
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

    .line 699
    :cond_28
    return-void
.end method

.method public setFumoAlarm()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3067
    const-string v0, "DMApp"

    const-string v1, "setFumoAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    const/4 v0, 0x2

    sput v0, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 3070
    sget-object v0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v2, v0, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 3071
    sget-object v0, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v2, v0, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 3073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 3074
    iput-boolean v2, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 3076
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.START_CIFUMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3077
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3078
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3079
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3081
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 3082
    iget-object v0, p0, Lcom/samsung/client/DMApp;->radioResetTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 3089
    return-void
.end method

.method public setHfaInitiated(Z)V
    .registers 5
    .parameter

    .prologue
    .line 3141
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3144
    const-string v1, "HFA_INITIATED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3148
    :try_start_13
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v0, p1}, Lcom/samsung/client/ISyncmlService;->setHfaInitiated(Z)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    .line 3152
    :goto_18
    return-void

    .line 3149
    :catch_19
    move-exception v0

    .line 3150
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
    .line 3161
    const-string v0, "DMAPP_STATE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3164
    const-string v1, "HFA_REBOOTED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3166
    return-void
.end method

.method public setHomeLaunchedByApp(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 2736
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->homeLaunchedByApp:Z

    .line 2737
    return-void
.end method

.method public setNotification()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1163
    const-string v0, "DMApp"

    const-string v1, "setNotification() numRetries = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iput v6, p0, Lcom/samsung/client/DMApp;->numRetries:I

    .line 1165
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1166
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020004

    const v3, 0x7f050074

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1168
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/handsfreeactivation/StartUp;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1170
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1171
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1173
    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1174
    const/high16 v3, 0x800

    invoke-static {p0, v6, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1176
    const v3, 0x7f050075

    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f050076

    invoke-virtual {p0, v4}, Lcom/samsung/client/DMApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1179
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1180
    const/16 v2, 0x4d

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1181
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/DMApp;->hfaNotification:Z

    .line 1182
    return-void
.end method

.method public setSessionType(I)V
    .registers 2
    .parameter "sessionType"

    .prologue
    .line 690
    sput p1, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 691
    return-void
.end method

.method public setUpdateCompleted(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 3173
    iput-boolean p1, p0, Lcom/samsung/client/DMApp;->isUpdateCompleted:Z

    .line 3174
    return-void
.end method

.method public startFumoNoSlotChange()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2999
    const-string v2, "DMApp"

    const-string v3, "start_fumo_Noslot"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    const/4 v2, 0x2

    sput v2, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 3002
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v0, v2, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 3003
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v0, v2, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 3005
    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->fumoUserStart:Z

    .line 3006
    iput-boolean v0, p0, Lcom/samsung/client/DMApp;->replace:Z

    .line 3008
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3010
    const-string v3, "UpgradePending"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3011
    const-string v1, "DMApp"

    const-string v3, "Upgrade Pending"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    const-string v1, "FUMO_DESCRIPTION"

    const-string v3, "Firmware Update Package"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->gotoUpdate(Ljava/lang/String;)V

    .line 3063
    :cond_39
    :goto_39
    return v0

    .line 3017
    :cond_3a
    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-string v5, "fumo_enable"

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_39

    .line 3021
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v2

    if-nez v2, :cond_39

    .line 3025
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->checkRadioState_DisplayError()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3029
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v2

    if-nez v2, :cond_39

    .line 3035
    :try_start_5e
    sget-object v2, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    invoke-interface {v2}, Lcom/samsung/client/ISyncmlService;->isBatteryLow()Z
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_6f

    move-result v2

    if-nez v2, :cond_39

    .line 3060
    :goto_66
    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    .line 3061
    iget-object v0, p0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move v0, v1

    .line 3063
    goto :goto_39

    .line 3038
    :catch_6f
    move-exception v0

    .line 3039
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

    .line 2935
    const-string v2, "DMApp"

    const-string v3, "start_hfa_prl"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    const/4 v2, 0x3

    sput v2, Lcom/samsung/client/DMApp;->mSessionType:I

    .line 2938
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    iput-boolean v0, v2, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 2940
    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    const-string v5, "prl_enable"

    invoke-virtual {v4, v5}, Lcom/samsung/client/DMApp;->readFromPreference(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    .line 2972
    :cond_1e
    :goto_1e
    return v0

    .line 2944
    :cond_1f
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkAirplaneMode()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2948
    sget v2, Lcom/samsung/client/DMApp;->mCallState:I

    if-nez v2, :cond_1e

    .line 2952
    sget-object v2, Lcom/samsung/client/DMApp;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v2}, Lcom/samsung/client/DMApp;->checkDunEnabled()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2956
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.START_CIPRL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2957
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2958
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2959
    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2961
    invoke-virtual {p0, v2}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 2963
    invoke-virtual {p0, v1}, Lcom/samsung/client/DMApp;->setHfaInitiated(Z)V

    .line 2964
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->setHfaRebooted(Z)V

    .line 2966
    const-string v0, "DMApp"

    const-string v2, "IN PRL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    iput-boolean v1, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    .line 2970
    iget-object v0, p0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move v0, v1

    .line 2972
    goto :goto_1e
.end method

.method public stopSession()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1072
    const-string v0, "DMApp"

    const-string v1, "stopSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
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

    .line 1077
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    if-eqz v0, :cond_4a

    .line 1079
    :try_start_26
    iget-object v0, p0, Lcom/samsung/client/DMApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_bd

    .line 1083
    :goto_2b
    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->isRegistered:Z

    .line 1084
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

    .line 1085
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1087
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

    .line 1088
    iget-boolean v0, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    if-eqz v0, :cond_8c

    .line 1089
    iget-object v0, p0, Lcom/samsung/client/DMApp;->delayStart:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1090
    iput-boolean v3, p0, Lcom/samsung/client/DMApp;->mStartCntrRunning:Z

    .line 1091
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

    .line 1092
    invoke-virtual {p0, v3}, Lcom/samsung/client/DMApp;->restoreSlot(I)V

    .line 1096
    :cond_8c
    iget-object v0, p0, Lcom/samsung/client/DMApp;->ctd:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1097
    sget v0, Lcom/samsung/client/DMApp;->niaRetries:I

    if-eqz v0, :cond_98

    .line 1098
    invoke-direct {p0}, Lcom/samsung/client/DMApp;->removeSanMessage_startService()V

    .line 1101
    :cond_98
    const-string v0, "DMApp"

    const-string v1, "hangedTimer.cancel().... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :try_start_9f
    iget-object v0, p0, Lcom/samsung/client/DMApp;->hangedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a4} :catch_c9

    .line 1109
    :goto_a4
    :try_start_a4
    const-string v0, "DMApp"

    const-string v1, "FumoRunTimer.cancel().... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/samsung/client/DMApp;->fumoRunTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b0} :catch_d4

    .line 1116
    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    if-eqz v0, :cond_bc

    .line 1117
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget v1, p0, Lcom/samsung/client/DMApp;->instId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/client/ISyncmlService;->stopDMSession(II)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bc} :catch_df

    .line 1123
    :cond_bc
    :goto_bc
    return-void

    .line 1080
    :catch_bd
    move-exception v0

    .line 1081
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1104
    :catch_c9
    move-exception v0

    .line 1105
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a4

    .line 1111
    :catch_d4
    move-exception v0

    .line 1113
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b0

    .line 1119
    :catch_df
    move-exception v0

    .line 1120
    const-string v1, "DMApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
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

    .line 1484
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

    .line 1485
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->isUpdateCompleted()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1486
    if-eqz p1, :cond_44

    .line 1487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.UPDATE_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1489
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1490
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1492
    const-string v1, "fwUpdateDialog"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1493
    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->startActivity(Landroid/content/Intent;)V

    .line 1530
    :goto_40
    invoke-virtual {p0, v6}, Lcom/samsung/client/DMApp;->setUpdateCompleted(Z)V

    .line 1535
    :goto_43
    return-void

    .line 1517
    :cond_44
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/samsung/client/DMApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1518
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/fumo/FWUpdateComplete;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1519
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1520
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1522
    const-string v2, "fwUpdateDialog"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1523
    const/high16 v2, 0x800

    invoke-static {p0, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_40

    .line 1532
    :cond_6f
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 1533
    invoke-virtual {p0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    goto :goto_43
.end method

.method public updateSoftware()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1360
    const-string v0, "DMApp"

    const-string v1, "updateSoftware()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const-string v0, "DMAPP_STATE"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1363
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1364
    const-string v1, "UpgradePending"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1367
    :try_start_1a
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    iget-object v1, p0, Lcom/samsung/client/DMApp;->mCallback:Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->registerDMCallback(Lcom/samsung/client/ISyncmlServiceDMCallback;)V

    .line 1368
    sget-object v0, Lcom/samsung/client/DMApp;->mService:Lcom/samsung/client/ISyncmlService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/client/ISyncmlService;->updateFw(I)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28

    .line 1372
    :goto_27
    return-void

    .line 1369
    :catch_28
    move-exception v0

    .line 1370
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
    .line 2295
    const-string v2, "DMAPP_STATE"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/client/DMApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2297
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2298
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2300
    return-void
.end method
