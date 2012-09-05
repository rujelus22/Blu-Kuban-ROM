.class public Landroid/net/fourG/wimax/WimaxStateTracker;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/wimax/WimaxStateTracker$1;,
        Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;,
        Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;,
        Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    }
.end annotation


# static fields
.field public static final ACTION_WIMAX_DHCP_RENEW:Ljava/lang/String; = "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

.field private static final DELAY_SECONDS_AFTER_VI_REQ:I = 0xbb8

.field private static final EVENT_AFTER_VI_REQ_NEED_DELAY:I = 0x6

.field private static final EVENT_AUTH_FAIL:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x5

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0x9

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x3

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x2

.field private static final EVENT_IP_RENEW:I = 0xa

.field private static final EVENT_LINK_WEAK_INFO:I = 0xe

.field private static final EVENT_MOCALL_FAIL:I = 0x10

.field private static final EVENT_MOCALL_INFO:I = 0xf

.field private static final EVENT_OMADM_RESP_DATA:I = 0xc

.field private static final EVENT_POLL_INTERVAL:I = 0x4

.field private static final EVENT_RADIO_INFO_RESP_DATA:I = 0xd

.field private static final EVENT_SCAN_DELAY:I = 0x7

.field private static final EVENT_VI_REQ:I = 0x8

.field private static final EVENT_WIMAX_STATE_CHANGED:I = 0x1

.field private static ICON_WIMAX_CONNECTED:I = 0x0

.field private static ICON_WIMAX_DISCONNECTED:I = 0x0

.field private static LS:Ljava/lang/String; = null

.field private static final PDA:[B = null

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field private static final SPRINT_WIMAX_SCAN_ATTEMPT_TIMEOUT:I = 0x2

.field private static final SPRINT_WIMAX_SCAN_RETRY_SECONDS:I = 0x78

.field private static final SPRINT_WIMAX_SCAN_RETRY_SECONDS_MAX:I = 0x708

.field private static final TAG:Ljava/lang/String; = "WimaxStateTracker"

.field private static final USB_PATH:Ljava/lang/String; = "/sys/class/sec/switch/usb_sel"

.field private static final WIMAX_DHCP_RENEW_INTERVAL:I = 0x0

.field private static final WiMAX:[B = null

.field private static final mRunStateNames:[Ljava/lang/String; = null

.field private static final m_nwaitLU:I = 0x5

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private WIMAX_ENTRY_DELAY:I

.field private WIMAX_SCAN_ATTEMPT_TIMEOUT:I

.field private WIMAX_SCAN_RETRY_SECONDS:I

.field private WIMAX_SCAN_RETRY_SECONDS_MAX:I

.field private isHaveLinkInfo:Z

.field private isIdleState:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDataActivity:I

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpEnd:J

.field private mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

.field private mDhcpRenewIntent:Landroid/app/PendingIntent;

.field private mDhcpStart:J

.field private mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

.field private mDiffDhcpTime:I

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field public mIsTetheredmode:Z

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field public mModemReset:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mObtainingIpAddress:Z

.field private mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReconnectByConnMgr:Z

.field private mRunState:I

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mUserDataEnabled:Z

.field private mWM:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

.field private mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

.field private mWimaxNotifyManager:Landroid/app/NotificationManager;

.field private mWimaxSettingIntent:Landroid/app/PendingIntent;

.field private mWimaxState:Landroid/net/fourG/wimax/WimaxState;

.field private mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

.field private mWimaxTemperature:I

.field private m_bEntryDelaySet:Z

.field private m_bExitCriteria:Z

.field private m_bLog:Z

.field public m_bMruWorking:Z

.field private m_bNoBackOff:Z

.field public m_bPoweroff:Z

.field private m_bScreenOff:Z

.field public m_bSkipEntryDelayOnce:Z

.field private m_bUserDisconnect:Z

.field private m_isBootCompleted:Z

.field private mnOldIP:I

.field private nOldSignalLevel:I

.field public nRetryFlag:I

.field public nScanAttempt:I

.field private nwService:Landroid/os/INetworkManagementService;

.field private old_Rxbytes:J

.field private old_Txbytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x4

    .line 193
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Starting"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 202
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 213
    new-array v0, v3, [B

    fill-array-data v0, :array_3e

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->PDA:[B

    .line 214
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->WiMAX:[B

    .line 239
    const v0, 0x1080783

    sput v0, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    .line 244
    const v0, 0x1080784

    sput v0, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_DISCONNECTED:I

    return-void

    .line 213
    :array_3e
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 214
    :array_44
    .array-data 0x1
        0x57t
        0x49t
        0x4dt
        0x41t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 11
    .parameter "netType"
    .parameter "networkName"

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 102
    iput-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    .line 139
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 140
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 141
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 142
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 149
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 151
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 152
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReconnectByConnMgr:Z

    .line 153
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 155
    iput-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    .line 157
    iput-wide v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 158
    iput-wide v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    .line 159
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 160
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I

    .line 161
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 164
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 165
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 166
    iput-wide v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->old_Rxbytes:J

    .line 167
    iput-wide v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->old_Txbytes:J

    .line 170
    iput-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    .line 173
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 174
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 177
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    .line 180
    const/16 v0, 0x78

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    .line 182
    const/16 v0, 0x12c

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    .line 185
    const/16 v0, 0x708

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS_MAX:I

    .line 201
    const-string v0, "wimax.interface"

    const-string v1, "uwbr0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 211
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 216
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    .line 217
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    .line 218
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    .line 219
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    .line 220
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    .line 222
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 223
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 224
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 226
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 249
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    iput-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUserDataEnabled:Z

    .line 254
    iput-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPolicyDataEnabled:Z

    .line 255
    const/16 v0, 0x7e

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDataActivity:I

    .line 282
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v2, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 283
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 284
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 286
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 287
    invoke-virtual {p0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTeardownRequested(Z)V

    .line 288
    invoke-direct {p0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 290
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;-><init>()V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    .line 291
    new-instance v0, Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-direct {v0, p0}, Landroid/net/fourG/wimax/WimaxMonitor;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;)V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    .line 292
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 293
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 296
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    .line 297
    return-void
.end method

.method private CheckRSSILevel(I)I
    .registers 6
    .parameter "nRSSI"

    .prologue
    const/4 v0, 0x3

    const/16 v3, -0x3c

    const/16 v2, -0x4b

    const/16 v1, -0x5d

    .line 1487
    if-ge p1, v1, :cond_b

    .line 1488
    const/4 v0, 0x0

    .line 1496
    :cond_a
    :goto_a
    return v0

    .line 1489
    :cond_b
    if-gt v1, p1, :cond_11

    if-ge p1, v2, :cond_11

    .line 1490
    const/4 v0, 0x1

    goto :goto_a

    .line 1491
    :cond_11
    if-gt v2, p1, :cond_17

    if-ge p1, v3, :cond_17

    .line 1492
    const/4 v0, 0x2

    goto :goto_a

    .line 1493
    :cond_17
    if-gt v3, p1, :cond_a

    goto :goto_a
.end method

.method private RetryProcess()V
    .registers 8

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1249
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1250
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    if-eqz v1, :cond_19

    .line 1251
    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] m_bNoBackOff --return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1253
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestVirtualIdle(IB)V

    .line 1304
    :goto_18
    return-void

    .line 1259
    :cond_19
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isBluetoothConnected()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1260
    :cond_25
    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] isWiFiConnected() || isBluetoothConnected() --return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1262
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->teardown()Z

    .line 1263
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTeardownRequested(Z)V

    goto :goto_18

    .line 1267
    :cond_36
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    if-eqz v1, :cond_45

    .line 1268
    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] m_bMruWorking --return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    goto :goto_18

    .line 1274
    :cond_45
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    if-eqz v1, :cond_58

    .line 1275
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_54

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] >>>>>>>>>>>> About to ENTRY to RetryProcess <<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_54
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 1277
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1280
    :cond_58
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_63

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] >>>>>>>>>>>> WELCOME to RetryProcess <<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_63
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_75

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_80

    .line 1283
    :cond_75
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_80

    const-string v1, "WimaxStateTracker"

    const-string v2, "BACKHAUL mode......!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_80
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RetryProcess] ++++ nRetryFlag =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RetryProcess] ++++ nScanAttempt =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ge v1, v2, :cond_fc

    .line 1290
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-direct {p0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 1292
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v6, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_18

    .line 1294
    :cond_fc
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    iget v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 1295
    .local v0, nWaitTime:I
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++ time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS_MAX:I

    if-ge v0, v1, :cond_134

    .line 1297
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1301
    :goto_12d
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1302
    invoke-virtual {p0, v0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestVirtualIdle(IB)V

    goto/16 :goto_18

    .line 1299
    :cond_134
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS_MAX:I

    goto :goto_12d
.end method

.method static synthetic access$000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    return v0
.end method

.method static synthetic access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    return-wide v0
.end method

.method static synthetic access$502(Landroid/net/fourG/wimax/WimaxStateTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    return-wide p1
.end method

.method static synthetic access$600(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    invoke-static {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkUseStaticIp()Z
    .registers 27

    .prologue
    .line 2188
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 2191
    .local v11, cr:Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .line 2192
    .local v20, msg:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2193
    .local v7, backup_ip:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2194
    .local v6, backup_gateway:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2195
    .local v8, backup_netmask:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2196
    .local v4, backup_dns1:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2198
    .local v5, backup_dns2:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2199
    .local v9, br:Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 2202
    .local v15, fis:Ljava/io/FileInputStream;
    :try_start_1b
    new-instance v16, Ljava/io/FileInputStream;

    const-string v23, "/data/wimax_ip.txt"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_26} :catch_141

    .line 2208
    .end local v15           #fis:Ljava/io/FileInputStream;
    .local v16, fis:Ljava/io/FileInputStream;
    const-string v2, "0.0.0.0"

    .line 2209
    .local v2, EMPTY_IP:Ljava/lang/String;
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v23, Landroid/net/LinkAddress;

    const-string v24, "0.0.0.0"

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 2212
    .local v3, EMPTY_ROUTE:Landroid/net/RouteInfo;
    const-string v19, "0.0.0.0"

    .line 2213
    .local v19, ip:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2214
    .local v21, prefixLength:I
    const-string v12, "0.0.0.0"

    .line 2215
    .local v12, dns1:Ljava/lang/String;
    const-string v13, "0.0.0.0"

    .line 2216
    .local v13, dns2:Ljava/lang/String;
    move-object/from16 v22, v3

    .line 2220
    .local v22, route:Landroid/net/RouteInfo;
    :try_start_4a
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_28b
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_24c

    .line 2221
    .end local v9           #br:Ljava/io/BufferedReader;
    .local v10, br:Ljava/io/BufferedReader;
    :try_start_5a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2222
    if-eqz v20, :cond_154

    .line 2223
    move-object/from16 v19, v20

    .line 2228
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2229
    if-eqz v20, :cond_188

    .line 2231
    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v22

    .line 2238
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2239
    if-eqz v20, :cond_1be

    .line 2240
    invoke-static/range {v20 .. v20}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v21

    .line 2248
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2249
    if-eqz v20, :cond_1f8

    .line 2250
    move-object/from16 v12, v20

    .line 2251
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_ae

    const-string v23, "WimaxStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ":)------dns1-msg--------Use DHCP for WiMAX\n "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_ae
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2257
    if-eqz v20, :cond_22e

    .line 2258
    move-object/from16 v13, v20

    .line 2259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e2

    const-string v23, "WimaxStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ":)------dns21-msg--------Use DHCP for WiMAX\n "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_5a .. :try_end_e2} :catchall_2ac
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_e2} :catch_2af

    .line 2274
    :cond_e2
    :goto_e2
    :try_start_e2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2275
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e8} :catch_232

    .line 2283
    new-instance v23, Landroid/net/DhcpInfoInternal;

    invoke-direct/range {v23 .. v23}, Landroid/net/DhcpInfoInternal;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    .line 2284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v12, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v13, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 2292
    const-string v23, "WimaxStateTracker"

    const-string v24, "Use Static IP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 2294
    const/16 v23, 0x1

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v2           #EMPTY_IP:Ljava/lang/String;
    .end local v3           #EMPTY_ROUTE:Landroid/net/RouteInfo;
    .end local v10           #br:Ljava/io/BufferedReader;
    .end local v12           #dns1:Ljava/lang/String;
    .end local v13           #dns2:Ljava/lang/String;
    .end local v19           #ip:Ljava/lang/String;
    .end local v21           #prefixLength:I
    .end local v22           #route:Landroid/net/RouteInfo;
    .restart local v9       #br:Ljava/io/BufferedReader;
    :goto_140
    return v23

    .line 2203
    :catch_141
    move-exception v17

    .line 2204
    .local v17, fnfe:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_151

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)-------------------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_151
    const/16 v23, 0x0

    goto :goto_140

    .line 2225
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v2       #EMPTY_IP:Ljava/lang/String;
    .restart local v3       #EMPTY_ROUTE:Landroid/net/RouteInfo;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v12       #dns1:Ljava/lang/String;
    .restart local v13       #dns2:Ljava/lang/String;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v19       #ip:Ljava/lang/String;
    .restart local v21       #prefixLength:I
    .restart local v22       #route:Landroid/net/RouteInfo;
    :cond_154
    :try_start_154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_163

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------ip-none----------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_154 .. :try_end_163} :catchall_2ac
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_163} :catch_2af

    .line 2226
    :cond_163
    const/16 v23, 0x0

    .line 2274
    :try_start_165
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2275
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_16b} :catch_16f

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2279
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_140

    .line 2276
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_16f
    move-exception v18

    .line 2277
    .local v18, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17f

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_17f
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2279
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_140

    .line 2234
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_188
    :try_start_188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_197

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------gateway-none-----Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_197
    const-string v19, "0.0.0.0"
    :try_end_199
    .catchall {:try_start_188 .. :try_end_199} :catchall_2ac
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_199} :catch_2af

    .line 2236
    const/16 v23, 0x0

    .line 2274
    :try_start_19b
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2275
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1a1} :catch_1a5

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2279
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_140

    .line 2276
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_1a5
    move-exception v18

    .line 2277
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b5

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_1b5
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2279
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_140

    .line 2242
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_1be
    :try_start_1be
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1cd

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------netmask-none-----Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_1cd
    move-object/from16 v22, v3

    .line 2244
    const-string v19, "0.0.0.0"
    :try_end_1d1
    .catchall {:try_start_1be .. :try_end_1d1} :catchall_2ac
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1d1} :catch_2af

    .line 2246
    const/16 v23, 0x0

    .line 2274
    :try_start_1d3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2275
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1d9} :catch_1de

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2279
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_140

    .line 2276
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_1de
    move-exception v18

    .line 2277
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1ee

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_1ee
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2279
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_140

    .line 2253
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_1f8
    :try_start_1f8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_207

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------dns1-none--------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_207
    .catchall {:try_start_1f8 .. :try_end_207} :catchall_2ac
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_207} :catch_2af

    .line 2254
    :cond_207
    const/16 v23, 0x0

    .line 2274
    :try_start_209
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2275
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20f} :catch_214

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2279
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_140

    .line 2276
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_214
    move-exception v18

    .line 2277
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_224

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_224
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2279
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_140

    .line 2261
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_22e
    :try_start_22e
    const-string v13, "0.0.0.0"
    :try_end_230
    .catchall {:try_start_22e .. :try_end_230} :catchall_2ac
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_230} :catch_2af

    goto/16 :goto_e2

    .line 2276
    :catch_232
    move-exception v18

    .line 2277
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_242

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_242
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2279
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_140

    .line 2263
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_24c
    move-exception v14

    .line 2264
    .local v14, e:Ljava/io/IOException;
    :goto_24d
    :try_start_24d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_25c

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)-------exception---Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :cond_25c
    const-string v19, "0.0.0.0"

    .line 2266
    move-object/from16 v22, v3

    .line 2267
    const/16 v21, 0x0

    .line 2268
    const-string v12, "0.0.0.0"

    .line 2269
    const-string v13, "0.0.0.0"
    :try_end_266
    .catchall {:try_start_24d .. :try_end_266} :catchall_28b

    .line 2271
    const/16 v23, 0x0

    .line 2274
    :try_start_268
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 2275
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_26e
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_26e} :catch_272

    move-object/from16 v15, v16

    .line 2279
    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_140

    .line 2276
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_272
    move-exception v18

    .line 2277
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_282

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_282
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2279
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_140

    .line 2273
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catchall_28b
    move-exception v23

    .line 2274
    :goto_28c
    :try_start_28c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 2275
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_292
    .catch Ljava/io/IOException; {:try_start_28c .. :try_end_292} :catch_293

    .line 2279
    throw v23

    .line 2276
    :catch_293
    move-exception v18

    .line 2277
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2a3

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_2a3
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2279
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_140

    .line 2273
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catchall_2ac
    move-exception v23

    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_28c

    .line 2263
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v10       #br:Ljava/io/BufferedReader;
    :catch_2af
    move-exception v14

    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_24d
.end method

.method private clearDhcpTarget()V
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 1366
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1370
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    if-eqz v1, :cond_3a

    .line 1371
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1372
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1373
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1375
    :cond_21
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v1, v4}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1376
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v1, v4}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1378
    :cond_2e
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 1379
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    .line 1381
    :cond_3a
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1382
    const-string v1, "WimaxStateTracker"

    const-string v2, "[resetInterface] Could not stop DHCP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_49
    :try_start_49
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_5d

    .line 1392
    :goto_50
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 1398
    new-instance v1, Landroid/net/DhcpInfoInternal;

    invoke-direct {v1}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    .line 1412
    return-void

    .line 1387
    :catch_5d
    move-exception v0

    .line 1388
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear addresses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private configureLinkProperties()V
    .registers 4

    .prologue
    .line 2317
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 2318
    :try_start_3
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2319
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_32

    .line 2320
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2321
    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureLinkProperties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    return-void

    .line 2319
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private getMaxDhcpRetries()I
    .registers 2

    .prologue
    .line 2298
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    return v0
.end method

.method private getValue()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_2a

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValue() called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wimax_networks_available_notification_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2a
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wimax_networks_available_notification_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_39

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38
.end method

.method private isBluetoothConnected()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2355
    :try_start_1
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_22

    .line 2356
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    .line 2358
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_22

    .line 2359
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_20

    const-string v2, "WimaxStateTracker"

    const-string v4, "isBluetoothConnected mConnManager == null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move v2, v3

    .line 2378
    :goto_21
    return v2

    .line 2364
    :cond_22
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2365
    .local v1, mBluetooth:Landroid/net/NetworkInfo;
    if-nez v1, :cond_38

    .line 2366
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_36

    const-string v2, "WimaxStateTracker"

    const-string v4, "isBluetoothConnected mBluetooth == null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    move v2, v3

    .line 2367
    goto :goto_21

    .line 2370
    :cond_38
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_3b} :catch_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_5f

    move-result v2

    if-eqz v2, :cond_5d

    .line 2371
    const/4 v2, 0x1

    goto :goto_21

    .line 2373
    .end local v1           #mBluetooth:Landroid/net/NetworkInfo;
    :catch_40
    move-exception v0

    .line 2374
    .local v0, e:Ljava/lang/NullPointerException;
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_5d

    const-string v2, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5d
    :goto_5d
    move v2, v3

    .line 2378
    goto :goto_21

    .line 2375
    :catch_5f
    move-exception v0

    .line 2376
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_5d

    const-string v2, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method private isWifiConnected()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2326
    :try_start_2
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_23

    .line 2327
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    .line 2329
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_23

    .line 2330
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_21

    const-string v2, "WimaxStateTracker"

    const-string v4, "isWifiConnected mConnManager == null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move v2, v3

    .line 2349
    :goto_22
    return v2

    .line 2335
    :cond_23
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2336
    .local v1, mWifi:Landroid/net/NetworkInfo;
    if-nez v1, :cond_39

    .line 2337
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_37

    const-string v2, "WimaxStateTracker"

    const-string v4, "isWifiConnected mWifi == null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move v2, v3

    .line 2338
    goto :goto_22

    .line 2341
    :cond_39
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_3c} :catch_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_60

    move-result v2

    if-eqz v2, :cond_5e

    move v2, v4

    .line 2342
    goto :goto_22

    .line 2344
    .end local v1           #mWifi:Landroid/net/NetworkInfo;
    :catch_41
    move-exception v0

    .line 2345
    .local v0, e:Ljava/lang/NullPointerException;
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_5e

    const-string v2, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5e
    :goto_5e
    move v2, v3

    .line 2349
    goto :goto_22

    .line 2346
    :catch_60
    move-exception v0

    .line 2347
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_5e

    const-string v2, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 1030
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1034
    return-void
.end method

.method private removeMsg(I)V
    .registers 5
    .parameter "what"

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 651
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_28

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeMsg] removeMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_28
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 654
    :cond_2b
    return-void
.end method

.method private declared-synchronized requestConnectionTime(Landroid/net/fourG/wimax/Wimax4GInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 1639
    monitor-enter p0

    const/4 v1, 0x0

    .line 1642
    .local v1, rev_time:Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getConnectionTime()Ljava/lang/String;

    move-result-object v1

    .line 1643
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1645
    .local v0, newTime:I
    invoke-direct {p0, v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendConnectionTimeChangeBroadcast(I)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 1646
    monitor-exit p0

    return-void

    .line 1639
    .end local v0           #newTime:I
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V
    .registers 30
    .parameter "info"

    .prologue
    .line 1505
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    move/from16 v24, v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_35

    if-eqz v24, :cond_b

    .line 1631
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 1509
    :cond_b
    const/4 v14, 0x0

    .line 1510
    .local v14, sBsid:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, nTxpower:I
    const/4 v6, 0x0

    .local v6, nCF:I
    const/16 v16, 0x0

    .local v16, sRssi:I
    const/4 v15, 0x0

    .local v15, sCinr:I
    const/16 v23, 0x0

    .local v23, ulspeed:I
    const/4 v5, 0x0

    .line 1511
    .local v5, dlspeed:I
    const/4 v11, 0x0

    .local v11, rev_info:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1512
    .local v12, rev_time:Ljava/lang/String;
    const/16 v4, 0x7e

    .line 1514
    .local v4, dataActivity:I
    :try_start_18
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkInfo()Ljava/lang/String;

    move-result-object v11

    .line 1515
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getConnectionTime()Ljava/lang/String;

    move-result-object v12

    .line 1516
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getRadioInfo()Z

    .line 1517
    if-nez v11, :cond_38

    .line 1518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    const-string v24, "WimaxStateTracker"

    const-string v25, "[requestPolledInfo] getLinkInfo() returns null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_35

    goto :goto_9

    .line 1505
    .end local v4           #dataActivity:I
    .end local v5           #dlspeed:I
    .end local v6           #nCF:I
    .end local v8           #nTxpower:I
    .end local v11           #rev_info:Ljava/lang/String;
    .end local v12           #rev_time:Ljava/lang/String;
    .end local v14           #sBsid:Ljava/lang/String;
    .end local v15           #sCinr:I
    .end local v16           #sRssi:I
    .end local v23           #ulspeed:I
    :catchall_35
    move-exception v24

    monitor-exit p0

    throw v24

    .line 1521
    .restart local v4       #dataActivity:I
    .restart local v5       #dlspeed:I
    .restart local v6       #nCF:I
    .restart local v8       #nTxpower:I
    .restart local v11       #rev_info:Ljava/lang/String;
    .restart local v12       #rev_time:Ljava/lang/String;
    .restart local v14       #sBsid:Ljava/lang/String;
    .restart local v15       #sCinr:I
    .restart local v16       #sRssi:I
    .restart local v23       #ulspeed:I
    :cond_38
    :try_start_38
    new-instance v17, Ljava/util/StringTokenizer;

    const-string v24, "#"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v11, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    .local v17, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_a9

    .line 1525
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1526
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_a9

    .line 1527
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1528
    const/16 v24, -0x7b

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 1529
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_a9

    .line 1530
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1531
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_a9

    .line 1532
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1533
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_a9

    .line 1534
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1535
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_a9

    .line 1536
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1537
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_a9

    .line 1538
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 1549
    :cond_a9
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getBSID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_bf

    .line 1550
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 1551
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendBSIDChangeBroadcast(Ljava/lang/String;)V

    .line 1555
    :cond_bf
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getFREQ()I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v6, :cond_d1

    .line 1556
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 1557
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendFrequencyChangeBroadcast(I)V

    .line 1562
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v10

    .line 1563
    .local v10, oldRssi:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v9

    .line 1568
    .local v9, oldCinr:I
    move/from16 v0, v16

    if-ne v10, v0, :cond_df

    if-eq v9, v15, :cond_13c

    .line 1569
    :cond_df
    move/from16 v0, v16

    if-eq v10, v0, :cond_f1

    .line 1570
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 1571
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSignalChangeBroadcast(I)V

    .line 1573
    :cond_f1
    if-eq v9, v15, :cond_fd

    .line 1574
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 1575
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendCINRSignalChangeBroadcast(I)V

    .line 1581
    :cond_fd
    const/16 v24, 0x4

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v15, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->calculateSignalLevel(III)I

    move-result v7

    .line 1582
    .local v7, nNewSignalLevel:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v7, :cond_13c

    .line 1583
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v24, v0

    if-eqz v24, :cond_133

    const-string v24, "WimaxStateTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "nNewSignalLevel ====> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_133
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSignalLevelChangeBroadcast(I)V

    .line 1585
    move-object/from16 v0, p0

    iput v7, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1589
    .end local v7           #nNewSignalLevel:I
    :cond_13c
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getTxPower()I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v8, :cond_149

    .line 1590
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 1593
    :cond_149
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getLinkSpeed()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_15a

    .line 1594
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setLinkSpeed(I)V

    .line 1598
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/fourG/wimax/Wimax4GManager;->createConnectionStatistics()Landroid/net/fourG/net4GManager$ConnectionStatistics;

    move-result-object v3

    .line 1599
    .local v3, cs:Landroid/net/fourG/net4GManager$ConnectionStatistics;
    invoke-virtual {v3}, Landroid/net/fourG/net4GManager$ConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v18

    .line 1600
    .local v18, totalRx:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->old_Rxbytes:J

    move-wide/from16 v24, v0

    cmp-long v24, v18, v24

    if-lez v24, :cond_1ec

    .line 1601
    const/4 v13, 0x1

    .line 1604
    .local v13, rx:Z
    :goto_173
    invoke-virtual {v3}, Landroid/net/fourG/net4GManager$ConnectionStatistics;->getTotalTxBytes()J

    move-result-wide v20

    .line 1605
    .local v20, totalTx:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->old_Txbytes:J

    move-wide/from16 v24, v0

    cmp-long v24, v20, v24

    if-lez v24, :cond_1ee

    .line 1606
    const/16 v22, 0x1

    .line 1610
    .local v22, tx:Z
    :goto_183
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/fourG/wimax/WimaxStateTracker;->old_Rxbytes:J

    .line 1611
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/fourG/wimax/WimaxStateTracker;->old_Txbytes:J

    .line 1615
    if-eqz v13, :cond_1f1

    if-eqz v22, :cond_1f1

    .line 1616
    const/16 v4, 0x7d

    .line 1625
    :cond_195
    :goto_195
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1d7

    const-string v24, "Speed"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dataActivity ====> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ulspeed "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->old_Rxbytes:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "dlspeed "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->old_Txbytes:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_1d7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDataActivity:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v4, v0, :cond_9

    .line 1628
    move-object/from16 v0, p0

    iput v4, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDataActivity:I

    .line 1629
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendDataActivity(I)V
    :try_end_1ea
    .catchall {:try_start_38 .. :try_end_1ea} :catchall_35

    goto/16 :goto_9

    .line 1603
    .end local v13           #rx:Z
    .end local v20           #totalTx:J
    .end local v22           #tx:Z
    :cond_1ec
    const/4 v13, 0x0

    .restart local v13       #rx:Z
    goto :goto_173

    .line 1608
    .restart local v20       #totalTx:J
    :cond_1ee
    const/16 v22, 0x0

    .restart local v22       #tx:Z
    goto :goto_183

    .line 1617
    :cond_1f1
    if-nez v13, :cond_1f8

    if-nez v22, :cond_1f8

    .line 1618
    const/16 v4, 0x7e

    goto :goto_195

    .line 1619
    :cond_1f8
    if-eqz v13, :cond_1fd

    .line 1620
    const/16 v4, 0x7c

    goto :goto_195

    .line 1621
    :cond_1fd
    if-eqz v22, :cond_195

    .line 1622
    const/16 v4, 0x7b

    goto :goto_195
.end method

.method private sendBSIDChangeBroadcast(Ljava/lang/String;)V
    .registers 5
    .parameter "newBsid"

    .prologue
    .line 1657
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.NET_4G_HANDOVER_COMPLETE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1659
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newBSID"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1660
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1662
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method private sendCINRSignalChangeBroadcast(I)V
    .registers 4
    .parameter "newCINR"

    .prologue
    .line 1691
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1692
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.CINR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1693
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newCINR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1694
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1696
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendConnectionTimeChangeBroadcast(I)V
    .registers 4
    .parameter "newTime"

    .prologue
    .line 1799
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1800
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.TIME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1801
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1802
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1804
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendDHCPTimeBroadcast(I)V
    .registers 4
    .parameter "newDHCPTime"

    .prologue
    .line 1811
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1812
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_DHCP_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1813
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newDHCPTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1814
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1816
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendDataActivity(I)V
    .registers 4
    .parameter "dataActivity"

    .prologue
    .line 1649
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1650
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.NET_4G_DATA_ACTIVITY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1651
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_4G_ACTIVITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1652
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1654
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendFrequencyChangeBroadcast(I)V
    .registers 4
    .parameter "newFreq"

    .prologue
    .line 1665
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.FREQUENCY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newFrequency"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1668
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1670
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendModeChangeBroadcast(I)V
    .registers 4
    .parameter "usbMode"

    .prologue
    .line 1710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1711
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1712
    const-string v1, "usbMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1713
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1714
    return-void
.end method

.method private sendNetworkStateChangeBroadcast()V
    .registers 7

    .prologue
    .line 1761
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_1e

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNetworkStateChangeBroadcast  entered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.fourG.wimax.NETWORK_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1766
    const-string v3, "linkProperties"

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1767
    const-string v3, "networkInfo"

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1768
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_49

    .line 1769
    const-string v3, "fourG_info"

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1771
    :cond_49
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1775
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 1776
    .local v2, state:Landroid/net/NetworkInfo$State;
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    if-ne v3, v2, :cond_59

    .line 1784
    :goto_58
    return-void

    .line 1779
    :cond_59
    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 1781
    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending EVENT_STATE_CHANGED state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1783
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_58
.end method

.method private sendSignalChangeBroadcast(I)V
    .registers 4
    .parameter "newRssi"

    .prologue
    .line 1678
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1680
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newRSSI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1681
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1683
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendSignalLevelChangeBroadcast(I)V
    .registers 4
    .parameter "newSignalLevel"

    .prologue
    .line 1702
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1703
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newSignalLevel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1705
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1707
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendSupplicantStateChangeBroadcast()V
    .registers 4

    .prologue
    .line 1787
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_b

    const-string v1, "WimaxStateTracker"

    const-string v2, "sendSupplicantStateChangeBroadcast  entered: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.NET_4G_SUPPLICANT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1789
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1790
    const-string v1, "4g_supplicant_state"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->getSupplicantState()Landroid/net/fourG/net4GSupplicantState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1791
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1792
    return-void
.end method

.method private sendWimaxOMADMResponseBroadcast(Ljava/nio/ByteBuffer;II)V
    .registers 7
    .parameter "respDataAray"
    .parameter "nRetType"
    .parameter "odbMngState"

    .prologue
    .line 1849
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1850
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxOMADMRespData"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1851
    const-string v1, "WimaxOMADMRespState"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1852
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1853
    return-void
.end method

.method private sendWimaxRadioInfoTemperatureResponseBroadcast()V
    .registers 5

    .prologue
    .line 1856
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    .line 1858
    .local v1, radioInfoObj:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->getCurrent()I

    move-result v2

    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 1859
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->isRadioOverheat()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 1860
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.RADIO_OVERHEAT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1861
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "radio_temperature"

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1862
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1864
    .end local v0           #intent:Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method private sendWimaxStateChangeBroadcast()V
    .registers 5

    .prologue
    .line 1725
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_2a

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWimaxStateChangeBroadcast() : mWimaxState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWimaxStateDetail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1727
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1730
    const-string v1, "WimaxState"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1733
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_4f

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_4f

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_5e

    .line 1735
    :cond_4f
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v1, :cond_5e

    .line 1736
    const-string v1, "WimaxStateDetail"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1738
    :cond_5e
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1739
    return-void
.end method

.method private declared-synchronized setPollTimer()V
    .registers 4

    .prologue
    .line 618
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 622
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 619
    :cond_7
    const/4 v0, 0x4

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 620
    const/4 v0, 0x4

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 618
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTornDownByConnMgr(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 428
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 429
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 430
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .registers 10
    .parameter "addrString"

    .prologue
    const/4 v6, -0x1

    .line 2169
    :try_start_1
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2170
    .local v5, parts:[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_c

    .line 2182
    .end local v5           #parts:[Ljava/lang/String;
    :goto_b
    return v6

    .line 2174
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2175
    .local v0, a:I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v1, v7, 0x8

    .line 2176
    .local v1, b:I
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v2, v7, 0x10

    .line 2177
    .local v2, c:I
    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2b} :catch_33

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 2179
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    goto :goto_b

    .line 2180
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c:I
    .end local v3           #d:I
    .end local v5           #parts:[Ljava/lang/String;
    :catch_33
    move-exception v4

    .line 2181
    .local v4, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_b
.end method

.method private updateNetworkInfo()V
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 558
    return-void
.end method

.method private updateWimaxNotiMsg()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 349
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wimax_network"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 351
    .local v0, network:I
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wimax_network_selector_app_installed"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 352
    .local v1, networkSelectorAppInstalled:I
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_3b

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValue() within updateWimaxNotiMsg() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3b
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 354
    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker$1;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_dc

    .line 379
    :cond_4e
    :goto_4e
    return-void

    .line 357
    :pswitch_4f
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_6f

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4G Network Connected :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_6f
    if-ne v1, v5, :cond_84

    if-ne v0, v5, :cond_84

    .line 359
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    sget v3, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const v5, 0x10406f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v6, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_4e

    .line 362
    :cond_84
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    sget v3, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const v5, 0x10406ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v6, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_4e

    .line 368
    :pswitch_95
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_b5

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4G Network Disconnected :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_b5
    if-ne v1, v5, :cond_ca

    if-ne v0, v5, :cond_ca

    .line 370
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    sget v3, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const v5, 0x10406f2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v6, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_4e

    .line 373
    :cond_ca
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    sget v3, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const v5, 0x10406f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v6, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 354
    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_95
    .end packed-switch
.end method


# virtual methods
.method public SendWimaxLinkStateChangeBroadcast()V
    .registers 5

    .prologue
    .line 1019
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    if-ne v1, v2, :cond_f

    .line 1027
    :cond_e
    :goto_e
    return-void

    .line 1022
    :cond_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.LINK_STATE_DETAIL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "link_state_detail"

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1025
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public SetNoBackOff(Z)V
    .registers 2
    .parameter "bNoBackOff"

    .prologue
    .line 1241
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    .line 1242
    return-void
.end method

.method public SetScreenOff(Z)V
    .registers 4
    .parameter "bScreenOff"

    .prologue
    .line 1454
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    .line 1456
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-eqz v0, :cond_7

    .line 1468
    :cond_6
    :goto_6
    return-void

    .line 1458
    :cond_7
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_27

    .line 1460
    :cond_1f
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    if-nez v0, :cond_27

    .line 1461
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setLinkInfo(Z)V

    .line 1465
    :cond_27
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    if-eqz v0, :cond_6

    .line 1466
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setLinkInfo(Z)V

    goto :goto_6
.end method

.method public acquire_WakeLock()V
    .registers 4

    .prologue
    .line 630
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_5

    .line 640
    :cond_4
    :goto_4
    return-void

    .line 631
    :cond_5
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 632
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock already acquired----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_4

    .line 637
    :catch_19
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/NullPointerException;
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock NullPointerException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 634
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_26
    :try_start_26
    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock will be acquired----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_32} :catch_19

    goto :goto_4
.end method

.method public calculateSignalLevel(III)I
    .registers 6
    .parameter "nRSSI"
    .parameter "nCINR"
    .parameter "numLevels"

    .prologue
    .line 1478
    const/4 v1, 0x4

    if-eq p3, v1, :cond_5

    .line 1479
    const/4 v0, -0x1

    .line 1483
    :goto_4
    return v0

    .line 1480
    :cond_5
    const/4 v0, 0x0

    .line 1482
    .local v0, dwRssiStep:I
    invoke-direct {p0, p1}, Landroid/net/fourG/wimax/WimaxStateTracker;->CheckRSSILevel(I)I

    move-result v0

    .line 1483
    goto :goto_4
.end method

.method public clearRetryFlag()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1307
    const-string v0, "WimaxStateTracker"

    const-string v1, "[clearRetryFlag] Called ********** "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1309
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1310
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 1312
    return-void
.end method

.method public configureInterface()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1315
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1317
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v4, :cond_25

    .line 1318
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-nez v4, :cond_24

    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    if-nez v4, :cond_24

    .line 1319
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_1c

    const-string v4, "WimaxStateTracker"

    const-string v5, "[configureInterface] !mHaveIpAddress && !mObtainingIpAddress"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_1c
    iput-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1321
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1347
    :cond_24
    :goto_24
    return-void

    .line 1324
    :cond_25
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-nez v4, :cond_24

    .line 1327
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1328
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 1329
    const-string v4, "[up]"

    iput-object v4, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1331
    :try_start_3a
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1332
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1333
    const/4 v1, 0x2

    .line 1334
    .local v1, event:I
    const-string v4, "WimaxStateTracker"

    const-string v5, "Static IP configuration succeeded"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4c} :catch_50
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_4c} :catch_6d

    .line 1344
    :goto_4c
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessage(I)Z

    goto :goto_24

    .line 1335
    .end local v1           #event:I
    :catch_50
    move-exception v3

    .line 1336
    .local v3, re:Landroid/os/RemoteException;
    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Static IP configuration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1338
    const/4 v1, 0x3

    .line 1343
    .restart local v1       #event:I
    goto :goto_4c

    .line 1339
    .end local v1           #event:I
    .end local v3           #re:Landroid/os/RemoteException;
    :catch_6d
    move-exception v0

    .line 1340
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Static IP configuration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1342
    const/4 v1, 0x3

    .restart local v1       #event:I
    goto :goto_4c
.end method

.method public defaultRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 476
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    return-void
.end method

.method public declared-synchronized disconnectAndStop()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1987
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_d

    const-string v1, "WimaxStateTracker"

    const-string v2, "[disconnectAndStop] called ****** "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_d
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_3f

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_3f

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_3f

    .line 1989
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1992
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 1993
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_3f

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->INITIALIZED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_3f

    .line 1994
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_41

    move-result v0

    .line 1997
    :cond_3f
    monitor-exit p0

    return v0

    .line 1987
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAnyDataEnabled()Z
    .registers 2

    .prologue
    .line 2389
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->getPersistedWimaxEnabled()Z

    move-result v0

    return v0
.end method

.method public getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;
    .registers 2

    .prologue
    .line 1434
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object v0
.end method

.method public getCurrentWimaxStateDetail()I
    .registers 2

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1430
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .registers 3

    .prologue
    .line 493
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 483
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 440
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_22
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getNoBackoff()Z
    .registers 2

    .prologue
    .line 1237
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 501
    const-string v0, "net.tcp.buffersize.wimax"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/16 v10, 0x10

    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1038
    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage] Received msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_3d0

    .line 1234
    :cond_24
    :goto_24
    :pswitch_24
    return-void

    .line 1042
    :pswitch_25
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;

    .line 1044
    .local v3, result:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 1045
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1047
    iget-object v4, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1048
    iget-object v4, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1050
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v4, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v6, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GInfo;->setLinkStateDetailed(Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;)V

    .line 1052
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_66

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] Old state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_66
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_90

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] New state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " New detailed info is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_90
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;)V

    .line 1055
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    .line 1056
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSupplicantStateChangeBroadcast()V

    .line 1057
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v4, v5, :cond_24

    .line 1058
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v4, v5, :cond_ac

    .line 1059
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    .line 1060
    :cond_ac
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->SendWimaxLinkStateChangeBroadcast()V

    goto/16 :goto_24

    .line 1069
    .end local v3           #result:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    :pswitch_b1
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    if-ne v5, v4, :cond_d0

    .line 1070
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-nez v4, :cond_c3

    .line 1071
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 1072
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    goto/16 :goto_24

    .line 1074
    :cond_c3
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_24

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_POLL_INTERVAL] ^^^^^ IDLE MODE ^^^^^"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 1077
    :cond_d0
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_24

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_POLL_INTERVAL] ^^^^^ DISCONNECTED ^^^^^"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 1081
    :pswitch_dd
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    goto/16 :goto_24

    .line 1084
    :pswitch_e2
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan()Z

    goto/16 :goto_24

    .line 1087
    :pswitch_e9
    invoke-virtual {p0, v9, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestVirtualIdle(IB)V

    goto/16 :goto_24

    .line 1091
    :pswitch_ee
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1092
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1094
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_116

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDhcpInfo.netmask:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget v8, v8, Landroid/net/DhcpInfoInternal;->prefixLength:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_116
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget v6, v6, Landroid/net/DhcpInfoInternal;->prefixLength:I

    invoke-static {v6}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v6

    if-ne v6, v9, :cond_12e

    .line 1096
    const-string v6, "WimaxStateTracker"

    const-string v7, "SystemProperties.set wimax_route"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v6, "ctl.start"

    const-string v7, "wimax_route"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_12e
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    .line 1101
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_15d

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage : DhcpEnd is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_15d
    iget-wide v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    iget-wide v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 1105
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_189

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage : DHCP Difference is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_189
    iget v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-direct {p0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendDHCPTimeBroadcast(I)V

    .line 1108
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1109
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1111
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget-object v6, v6, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1113
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_1d1

    const-string v4, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNetworkInfo.getDetailedState() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_1d1
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v6, :cond_229

    .line 1115
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1116
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1117
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1118
    sget-object v4, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1119
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1120
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateWimaxNotiMsg()V

    .line 1121
    sget-object v4, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1145
    :cond_1f2
    :goto_1f2
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureLinkProperties()V

    .line 1146
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    .line 1148
    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] >>> IP configuration << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_224

    .line 1151
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wimax.NETWORK_IP_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1154
    :cond_224
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    goto/16 :goto_24

    .line 1123
    :cond_229
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1130
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1131
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1133
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-eqz v4, :cond_1f2

    .line 1134
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_247

    const-string v4, "WimaxStateTracker"

    const-string v6, "isIdleState == true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_247
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 1136
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1138
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1139
    sget-object v4, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1140
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1141
    sget-object v4, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_1f2

    .line 1159
    :pswitch_25d
    const-string v5, "WimaxStateTracker"

    const-string v6, "[handleMessage] >>> IP configuration...  failed <<< "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 1163
    iput v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 1164
    iget v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-direct {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendDHCPTimeBroadcast(I)V

    .line 1166
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1168
    monitor-enter p0

    .line 1169
    :try_start_271
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_27d

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_284

    .line 1170
    :cond_27d
    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_INTERFACE_CONFIGURATION_FAILED] b4 disconnectWimax()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_284
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    .line 1172
    monitor-exit p0

    goto/16 :goto_24

    :catchall_28a
    move-exception v4

    monitor-exit p0
    :try_end_28c
    .catchall {:try_start_271 .. :try_end_28c} :catchall_28a

    throw v4

    .line 1175
    :pswitch_28d
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_2e3

    move v1, v4

    .line 1176
    .local v1, driverStarted:Z
    :goto_292
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_2b4

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage:EVENT_DRIVER_STATE_CHANGED] ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_2b4
    if-nez v1, :cond_24

    .line 1178
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 1179
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1181
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 1183
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 1184
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 1186
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2e5

    .line 1187
    const-string v4, "WimaxStateTracker"

    const-string v5, "!!!!!!!!!!!!!!!!!set FAILED state When 4G is turned off  before scanning step!!!!!!!!!!!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    sget-object v4, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1196
    :goto_2de
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    goto/16 :goto_24

    .end local v1           #driverStarted:Z
    :cond_2e3
    move v1, v5

    .line 1175
    goto :goto_292

    .line 1190
    .restart local v1       #driverStarted:Z
    :cond_2e5
    const-string v4, "WimaxStateTracker"

    const-string v5, "!!!!!!!!!!!!!!!!!set DISCONNECTED state When 4G is turned off  before scanning step!!!!!!!!!!!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1192
    sget-object v4, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1193
    sget-object v4, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_2de

    .line 1200
    .end local v1           #driverStarted:Z
    :pswitch_2fa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;

    .line 1201
    .local v0, auth:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_328

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] AUTH_FAIL  nErrorCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", strError :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->strError:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_328
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1205
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "auth_error"

    iget v6, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    .line 1207
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_24

    .line 1210
    .end local v0           #auth:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_344
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxOMADMResponseBroadcast(Ljava/nio/ByteBuffer;II)V

    goto/16 :goto_24

    .line 1213
    :pswitch_351
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxRadioInfoResponseBroadcast()V

    .line 1214
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxRadioInfoTemperatureResponseBroadcast()V

    goto/16 :goto_24

    .line 1217
    :pswitch_359
    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] EVENT_LINK_WEAK_INFO : 4G will disconnect. (currentState :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1219
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 1220
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    goto/16 :goto_24

    .line 1223
    :pswitch_38a
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_395

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage] EVENT_MOCALL_INFO : wait 5sec. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_395
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1225
    invoke-direct {p0, v10}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 1226
    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v10, v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_24

    .line 1229
    :pswitch_3a2
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_3c6

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] EVENT_MOCALL_FAIL : 4G will disconnect. (currentState :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_3c6
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1231
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    goto/16 :goto_24

    .line 1040
    nop

    :pswitch_data_3d0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_ee
        :pswitch_25d
        :pswitch_b1
        :pswitch_24
        :pswitch_dd
        :pswitch_e2
        :pswitch_e9
        :pswitch_28d
        :pswitch_24
        :pswitch_2fa
        :pswitch_344
        :pswitch_351
        :pswitch_359
        :pswitch_38a
        :pswitch_3a2
    .end packed-switch
.end method

.method public handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;)V
    .registers 14
    .parameter "newWimaxState"

    .prologue
    .line 663
    sget-object v7, Landroid/net/fourG/wimax/WimaxStateTracker$1;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    iget-object v8, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v8}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_5dc

    .line 1016
    :cond_d
    :goto_d
    return-void

    .line 665
    :pswitch_e
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_d

    .line 669
    :pswitch_14
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    if-eqz v7, :cond_59

    .line 670
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    .line 674
    :goto_1c
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 677
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 678
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->INACTIVE:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 680
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v5

    .line 681
    .local v5, nMode:I
    const/4 v7, 0x4

    if-eq v5, v7, :cond_39

    const/4 v7, 0x2

    if-eq v5, v7, :cond_39

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3d

    .line 682
    :cond_39
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    .line 684
    :cond_3d
    const/4 v7, 0x4

    if-eq v5, v7, :cond_43

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5e

    .line 685
    :cond_43
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setDMMode(Z)V

    .line 689
    :goto_47
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 690
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTeardownRequested(Z)V

    .line 691
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 692
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 693
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    goto :goto_d

    .line 672
    .end local v5           #nMode:I
    :cond_59
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    goto :goto_1c

    .line 687
    .restart local v5       #nMode:I
    :cond_5e
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setDMMode(Z)V

    goto :goto_47

    .line 698
    .end local v5           #nMode:I
    :pswitch_63
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 700
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-ne v7, v8, :cond_cc

    .line 701
    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] modified nRetryFlag = 0, nScanAttempt = 0, bUserReq = true m_bSkipEntryDelayOnce = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    if-eqz v7, :cond_157

    .line 703
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    .line 707
    :goto_90
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 710
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 711
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->INACTIVE:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 713
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v5

    .line 714
    .restart local v5       #nMode:I
    const/4 v7, 0x4

    if-eq v5, v7, :cond_ad

    const/4 v7, 0x2

    if-eq v5, v7, :cond_ad

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b1

    .line 715
    :cond_ad
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    .line 717
    :cond_b1
    const/4 v7, 0x4

    if-eq v5, v7, :cond_b7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_15d

    .line 718
    :cond_b7
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setDMMode(Z)V

    .line 722
    :goto_bb
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 723
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTeardownRequested(Z)V

    .line 724
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 725
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 726
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 728
    .end local v5           #nMode:I
    :cond_cc
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    if-ne v7, v8, :cond_d8

    .line 729
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 730
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 732
    :cond_d8
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 734
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getOdbConfigData()[I

    move-result-object v6

    .line 735
    .local v6, nOdbCfgData:[I
    if-eqz v6, :cond_f0

    .line 736
    const/4 v7, 0x1

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    .line 737
    const/4 v7, 0x2

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    .line 738
    const/4 v7, 0x5

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    .line 740
    :cond_f0
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v1

    .line 741
    .local v1, devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 742
    .local v4, macAddress:Ljava/lang/String;
    const-string v7, "net.wimax.mac.address"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_11b

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "macAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_11b
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->checkUseStaticIp()Z

    .line 756
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const-string v8, "WimaxStateTracker"

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;

    move-result-object v3

    .line 757
    .local v3, l:Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->acquire()V

    .line 758
    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->release()V

    .line 760
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 761
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 763
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 764
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 766
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->SCANNING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 768
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    if-nez v7, :cond_163

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v7

    if-nez v7, :cond_163

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isBluetoothConnected()Z

    move-result v7

    if-nez v7, :cond_163

    .line 770
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan()Z

    goto/16 :goto_d

    .line 705
    .end local v1           #devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .end local v3           #l:Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    .end local v4           #macAddress:Ljava/lang/String;
    .end local v6           #nOdbCfgData:[I
    :cond_157
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    goto/16 :goto_90

    .line 720
    .restart local v5       #nMode:I
    :cond_15d
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setDMMode(Z)V

    goto/16 :goto_bb

    .line 772
    .end local v5           #nMode:I
    .restart local v1       #devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .restart local v3       #l:Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    .restart local v4       #macAddress:Ljava/lang/String;
    .restart local v6       #nOdbCfgData:[I
    :cond_163
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 773
    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestVirtualIdle(IB)V

    goto/16 :goto_d

    .line 778
    .end local v1           #devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .end local v3           #l:Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    .end local v4           #macAddress:Ljava/lang/String;
    .end local v6           #nOdbCfgData:[I
    :pswitch_16d
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 779
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 780
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->SCANNING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 785
    :pswitch_17a
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_198

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleWimaxStateChanged : READY] WIMAX SCAN ATTEMPT TIMEOUT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_198
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ne v7, v8, :cond_1b0

    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    if-eqz v7, :cond_1b0

    .line 787
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_1ad

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] Reset m_bExitCriteria "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_1ad
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 791
    :cond_1b0
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v5

    .line 792
    .restart local v5       #nMode:I
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_1e4

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] >>>> READY : WimaxMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m_bSkipEntryDelayOnce = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <<<<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_1e4
    const/4 v7, 0x1

    if-eq v5, v7, :cond_1ed

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1ed

    const/4 v7, 0x4

    if-ne v5, v7, :cond_25b

    :cond_1ed
    const/4 v0, 0x1

    .line 794
    .local v0, bTethering:Z
    :goto_1ee
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_218

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[READY] >>>> m_bExitCriteria ***********<<<<  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[READY] >>>> m_bEntryDelaySet ***********<<<<  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_218
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    if-eqz v7, :cond_25d

    if-nez v0, :cond_25d

    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    if-nez v7, :cond_25d

    .line 796
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_22d

    const-string v7, "WimaxStateTracker"

    const-string v8, "[RetryProcess] >>>> m_bExitCriteria <<<<"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_22d
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestVirtualIdle(IB)V

    .line 799
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 800
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 801
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_244

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] m_bExitCriteria ON."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_244
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 803
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 805
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 806
    sget-object v7, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Not_Met_Entry_Criteria:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 807
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 793
    .end local v0           #bTethering:Z
    :cond_25b
    const/4 v0, 0x0

    goto :goto_1ee

    .line 811
    .restart local v0       #bTethering:Z
    :cond_25d
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ne v7, v8, :cond_271

    .line 812
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_26e

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] WIMAX SCAN ATTEMPT TIMEOUT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_26e
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 817
    :cond_271
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->INACTIVE:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 819
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 820
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 822
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 823
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 825
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v7, :cond_291

    .line 826
    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] USER Disconnect!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 830
    :cond_291
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 832
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/net/fourG/wimax/Wimax4GManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_d

    .line 833
    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] connect() returns fail."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 835
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 837
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 838
    sget-object v7, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 840
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 845
    .end local v0           #bTethering:Z
    .end local v5           #nMode:I
    :pswitch_2c4
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 850
    :pswitch_2cb
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 853
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 854
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_2fd

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage : DhcpStart is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_2fd
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->COMPLETED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 863
    :pswitch_304
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_322

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHaveIpAddress :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_322
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_332

    .line 866
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 867
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 868
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 871
    :cond_332
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-eqz v7, :cond_3a2

    .line 872
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_35a

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] nRetryFlag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_35a
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 874
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_366

    .line 875
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 877
    :cond_366
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 878
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v8}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->set4GBaseStationInfo(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)V

    .line 879
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    .line 904
    :goto_379
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-nez v7, :cond_d

    .line 905
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_39b

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CONNECTED] m_bScreenOff :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_39b
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    goto/16 :goto_d

    .line 881
    :cond_3a2
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_3ad

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged]  No IP Address -> setDetailedState.OBTAINING_IPADDR"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_3ad
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v7, :cond_3c6

    .line 887
    new-instance v2, Landroid/os/HandlerThread;

    const-string v7, "WiMAX DHCP Handler Thread"

    invoke-direct {v2, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 888
    .local v2, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 889
    new-instance v7, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8, p0}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    .line 892
    .end local v2           #dhcpThread:Landroid/os/HandlerThread;
    :cond_3c6
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 893
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 897
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 900
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 901
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->COMPLETED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_379

    .line 911
    :pswitch_3e1
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    goto/16 :goto_d

    .line 914
    :pswitch_3e6
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 916
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 918
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v7, :cond_417

    .line 919
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_417

    .line 920
    const-string v7, "WimaxStateTracker"

    const-string v8, "-------- Abnormal_State  ----------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_410

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    if-nez v7, :cond_48d

    .line 923
    :cond_410
    const-string v7, "WimaxStateTracker"

    const-string v8, "-------- discard Abnormal_State  ----------"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_417
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 944
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetLinkStatusInfo()V

    .line 946
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_4c7

    .line 947
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_432

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] ^^^ DetailedState.DISCONNECTED ^^^"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_432
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 954
    :goto_437
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v7, :cond_4de

    .line 955
    const-string v7, "WimaxStateTracker"

    const-string v8, "USER Disconnect!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    if-eqz v7, :cond_45b

    .line 957
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_455

    const-string v7, "WimaxStateTracker"

    const-string v8, "setWimaxStatus(NET_4G_STATE_DISABLING)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_455
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 960
    :cond_45b
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 961
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 963
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 965
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v7

    if-nez v7, :cond_471

    .line 966
    const-string v7, "WimaxStateTracker"

    const-string v8, "Failed to stop Wimax."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_471
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v7

    if-nez v7, :cond_4d9

    .line 970
    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] Failed to unload Wimax driver."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 972
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    .line 976
    :goto_488
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    goto/16 :goto_d

    .line 926
    :cond_48d
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    .line 927
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 928
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 929
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 930
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 931
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 932
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 933
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/16 v8, -0x270f

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 934
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 935
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 936
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 937
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    goto/16 :goto_d

    .line 950
    :cond_4c7
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_4d2

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] ^^^ DetailedState.FAILED ^^^"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_4d2
    sget-object v7, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_437

    .line 974
    :cond_4d9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStateChange(I)V

    goto :goto_488

    .line 978
    :cond_4de
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v7, v8, :cond_52f

    .line 980
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_502

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " connection fail :: newWimaxState.info ********  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_502
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_50d

    const-string v7, "WimaxStateTracker"

    const-string v8, " !!!!!!!!!!!!!!!!!!!!!!!!!WimaxState.DISCONNECTED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_50d
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    if-nez v7, :cond_51f

    .line 984
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_51c

    const-string v7, "WimaxStateTracker"

    const-string v8, " m_bEntryDelaySet!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_51c
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 988
    :cond_51f
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_52a

    const-string v7, "WimaxStateTracker"

    const-string v8, "Fail for Connect command !!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_52a
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 991
    :cond_52f
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_Sync:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_53b

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_55e

    .line 993
    :cond_53b
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_559

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection Time out !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_559
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 995
    :cond_55e
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_56a

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_MAC:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_58d

    .line 997
    :cond_56a
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_588

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync Fail !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_588
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 999
    :cond_58d
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_Device:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_599

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_User:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_5bc

    .line 1001
    :cond_599
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_5b7

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auth Fail !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_5b7
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1004
    :cond_5bc
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_5c7

    const-string v7, "WimaxStateTracker"

    const-string v8, "Virtual IDLE!!!!!!!!!!!!!! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_5c7
    const/16 v7, 0x8

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 1006
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1007
    const/4 v7, 0x6

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 663
    nop

    :pswitch_data_5dc
    .packed-switch 0x1
        :pswitch_304
        :pswitch_3e6
        :pswitch_e
        :pswitch_14
        :pswitch_63
        :pswitch_16d
        :pswitch_17a
        :pswitch_2c4
        :pswitch_2cb
        :pswitch_3e1
    .end packed-switch
.end method

.method public declared-synchronized isAvailable()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 547
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    if-nez v1, :cond_20

    .line 548
    .local v0, bRet:Z
    :cond_6
    :goto_6
    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable() !!!!!!!!!!!!!!!!!!!!!!!! return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_2a

    .line 549
    monitor-exit p0

    return v0

    .line 547
    .end local v0           #bRet:Z
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2a

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isBootCompleted(Z)V
    .registers 2
    .parameter "bCompleted"

    .prologue
    .line 1934
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    .line 1935
    return-void
.end method

.method public isDataDisabledExternally()Z
    .registers 2

    .prologue
    .line 2393
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardown()Z
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTeardownRequested()Z
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method notifyAuthFail(ILjava/lang/String;)V
    .registers 6
    .parameter "nErrorCode"
    .parameter "strError"

    .prologue
    .line 583
    const/16 v1, 0xb

    new-instance v2, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;

    invoke-direct {v2, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 585
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 586
    return-void
.end method

.method public notifyDriverStateChange(I)V
    .registers 4
    .parameter "nDriverState"

    .prologue
    .line 594
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 595
    return-void
.end method

.method public notifyIpRenew()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 572
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v0, :cond_22

    .line 573
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_22

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 575
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 576
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 580
    :cond_22
    return-void
.end method

.method public notifyLinkWeakInformation()V
    .registers 2

    .prologue
    .line 606
    const/16 v0, 0xe

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 607
    return-void
.end method

.method public notifyMoCallInformation()V
    .registers 2

    .prologue
    .line 610
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 611
    return-void
.end method

.method public notifyOMADMResponse(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .parameter "bDataArray"
    .parameter "nDataLen"
    .parameter "odbMngState"

    .prologue
    .line 598
    const/16 v0, 0xc

    invoke-static {p0, v0, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 599
    return-void
.end method

.method public notifyRadioInfoResponse()V
    .registers 2

    .prologue
    .line 602
    const/16 v0, 0xd

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 603
    return-void
.end method

.method public notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 6
    .parameter "newWimaxState"
    .parameter "newInfo"

    .prologue
    .line 566
    const/4 v1, 0x1

    new-instance v2, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;

    invoke-direct {v2, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;-><init>(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 569
    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 462
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 463
    return-void
.end method

.method public reconnect()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1941
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isBluetoothConnected()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1942
    :cond_e
    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] isAvailable false ignore reconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1975
    :cond_16
    :goto_16
    return v0

    .line 1945
    :cond_17
    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reconnect] isTeardownRequested() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isTeardownRequested()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTornDownByConnMgr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getCurrentWimaxState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getWimaxStatus()  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-nez v2, :cond_63

    move v0, v1

    .line 1950
    goto :goto_16

    .line 1953
    :cond_63
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getPersistedWimaxEnabled()Z

    move-result v2

    if-nez v2, :cond_74

    .line 1954
    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] This is NOT by User request.... reject..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1955
    goto :goto_16

    .line 1957
    :cond_74
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    if-nez v2, :cond_81

    .line 1958
    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] m_isBootCompleted is false "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1959
    goto :goto_16

    .line 1962
    :cond_81
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_93

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ad

    .line 1963
    :cond_93
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v2, :cond_a3

    .line 1964
    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] m_bUserDisconnect is true."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReconnectByConnMgr:Z

    move v0, v1

    .line 1966
    goto/16 :goto_16

    .line 1968
    :cond_a3
    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] 4G want to reconnect by backoff algorithm."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1969
    goto/16 :goto_16

    .line 1971
    :cond_ad
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v5}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v0

    .line 1972
    .local v0, bRet:Z
    if-eqz v0, :cond_16

    .line 1973
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    goto/16 :goto_16
.end method

.method public release_WakeLock()V
    .registers 3

    .prologue
    .line 643
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 644
    const-string v0, "WimaxStateTracker"

    const-string v1, "------release WakeLock----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 647
    :cond_14
    return-void
.end method

.method public requestConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 4

    .prologue
    .line 1446
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 1447
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget-object v2, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1448
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v0

    .line 1449
    .local v0, devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1450
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    return-object v1
.end method

.method public requestVirtualIdle(IB)V
    .registers 6
    .parameter "iInterval"
    .parameter "bStop"

    .prologue
    const/4 v2, 0x6

    .line 657
    invoke-static {p1, p2}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 658
    invoke-direct {p0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMsg(I)V

    .line 659
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 660
    return-void
.end method

.method public resetInterface()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1419
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1420
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1421
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1422
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1424
    const-string v0, "WimaxStateTracker"

    const-string v1, "Stopping DHCP and clearing IP"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearDhcpTarget()V

    .line 1427
    return-void
.end method

.method public resetLinkStatusInfo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1353
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 1355
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/16 v1, -0x270f

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 1356
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 1357
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 1358
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1359
    return-void
.end method

.method public resetOldState()V
    .registers 2

    .prologue
    .line 1362
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxMonitor;->resetOldState()V

    .line 1363
    return-void
.end method

.method sendMruListBroadcast(I)V
    .registers 4
    .parameter "nlistSize"

    .prologue
    .line 1819
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1820
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1821
    const-string v1, "MruList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1822
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1823
    return-void
.end method

.method sendMruUpdateBroadcast(II)V
    .registers 5
    .parameter "subType"
    .parameter "ErrorValue"

    .prologue
    .line 1826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1827
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1828
    const-string v1, "subType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1829
    const-string v1, "ErrorValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1830
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1831
    return-void
.end method

.method sendWimaxBSListBroadcast(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1867
    .local p1, nlist:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.SCAN_RESULTS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1868
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bs_scan_result"

    check-cast p1, Landroid/os/Parcelable;

    .end local p1           #nlist:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1869
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1870
    return-void
.end method

.method sendWimaxRadioInfoResponseBroadcast()V
    .registers 5

    .prologue
    .line 1834
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    .line 1836
    .local v1, radioInfoObj:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->getCurrent()I

    move-result v2

    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 1837
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1838
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "WimaxRadioInfo"

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1839
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1840
    return-void
.end method

.method public sendWimaxStatusChangeBroadcast(II)V
    .registers 9
    .parameter "Wimax4GState"
    .parameter "previousWimaxStatus"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1742
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_28

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWimaxStatusChangeBroadcast() : Wimax4GState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previousWimaxStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_28
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 1745
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1746
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1747
    const-string v1, "4g_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1748
    const-string v1, "4G_previous_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1749
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1751
    if-ne p1, v5, :cond_68

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReconnectByConnMgr:Z

    if-eqz v1, :cond_68

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-eqz v1, :cond_68

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getPersistedWimaxEnabled()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1752
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v5}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1753
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTeardownRequested(Z)V

    .line 1754
    invoke-direct {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 1755
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReconnectByConnMgr:Z

    .line 1758
    :cond_68
    return-void
.end method

.method public sendWorkModeBroadCast(I)V
    .registers 4
    .parameter "workMode"

    .prologue
    .line 1843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_WORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxWorkMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1845
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1846
    return-void
.end method

.method public setDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 448
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnabled: IGNORING enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1c
    return-void
.end method

.method public setDependencyMet(Z)V
    .registers 2
    .parameter "met"

    .prologue
    .line 2314
    return-void
.end method

.method public setEnableLog(Z)V
    .registers 4
    .parameter "blog"

    .prologue
    .line 2006
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    .line 2007
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setEnableLog(Z)V

    .line 2008
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/WimaxMonitor;->setEnableLog(Z)V

    .line 2009
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    if-nez v0, :cond_18

    .line 2010
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 2012
    :cond_18
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->enableLog(Z)V

    .line 2013
    return-void
.end method

.method public setHaveLinkInfo(Z)V
    .registers 2
    .parameter "mHaveLinkInfo"

    .prologue
    .line 2305
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 2306
    return-void
.end method

.method public setIdleState(Z)V
    .registers 2
    .parameter "mIdleState"

    .prologue
    .line 2309
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 2310
    return-void
.end method

.method public setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "iconID"
    .parameter "bodyMessage"
    .parameter "tickerMessage"

    .prologue
    .line 397
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_20

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() within setNotificationVisible :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_20
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 399
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->icon:I

    .line 401
    if-eqz p4, :cond_30

    .line 402
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    iput-object p4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 404
    :cond_30
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxSettingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 405
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 407
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 409
    :cond_44
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 301
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyDataEnable but ignore it ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_22
    return-void
.end method

.method public setRadio(Z)Z
    .registers 5
    .parameter "turnOn"

    .prologue
    .line 2001
    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRadio]  nWimaxStatus ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setTeardownRequested(Z)V
    .registers 5
    .parameter "isRequested"

    .prologue
    .line 418
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 419
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 420
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_2a

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTeardownRequested.set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_2a
    return-void
.end method

.method public setUSBTo(Z)V
    .registers 9
    .parameter "enable"

    .prologue
    .line 1874
    if-eqz p1, :cond_32

    .line 1875
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->WiMAX:[B

    .line 1878
    .local v0, data:[B
    :goto_4
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_20

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUSBTo  enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_20
    const/4 v2, 0x0

    .line 1882
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_21
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_44
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_38

    .line 1883
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_28
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_50

    .line 1887
    if-eqz v3, :cond_53

    .line 1888
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_35

    move-object v2, v3

    .line 1891
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_31
    :goto_31
    return-void

    .line 1877
    .end local v0           #data:[B
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_32
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->PDA:[B

    .restart local v0       #data:[B
    goto :goto_4

    .line 1888
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_35
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_31

    .line 1884
    :catch_38
    move-exception v1

    .line 1885
    .local v1, e:Ljava/io/IOException;
    :goto_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 1887
    if-eqz v2, :cond_31

    .line 1888
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_31

    :catch_42
    move-exception v4

    goto :goto_31

    .line 1887
    .end local v1           #e:Ljava/io/IOException;
    :catchall_44
    move-exception v4

    :goto_45
    if-eqz v2, :cond_4a

    .line 1888
    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    :cond_4a
    :goto_4a
    throw v4

    :catch_4b
    move-exception v5

    goto :goto_4a

    .line 1887
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_4d
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_45

    .line 1884
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_50
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_39

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_53
    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_31
.end method

.method public setUserDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_22
    return-void
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 2
    .parameter "wl"

    .prologue
    .line 625
    sput-object p1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 626
    return-void
.end method

.method public startEventLoop()V
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxMonitor;->startMonitoring()V

    .line 535
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 12
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 509
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    .line 510
    iput-object p2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    .line 514
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v2

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 516
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-direct {v0, v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 518
    .local v0, DhcpRenewIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    .line 523
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    .line 524
    new-instance v2, Landroid/app/Notification;

    sget v5, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_DISCONNECTED:I

    const-wide/16 v6, 0x0

    invoke-direct {v2, v5, v8, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    .line 525
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.WIMAX_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxSettingIntent:Landroid/app/PendingIntent;

    .line 527
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 528
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    .line 530
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mobile_data"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6e

    move v2, v3

    :goto_6b
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUserDataEnabled:Z

    .line 531
    return-void

    :cond_6e
    move v2, v4

    .line 530
    goto :goto_6b
.end method

.method public teardown()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1897
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-nez v3, :cond_ba

    .line 1899
    iput-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReconnectByConnMgr:Z

    .line 1900
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1901
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_29

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_29

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_29

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_29

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-ne v3, v4, :cond_59

    .line 1904
    :cond_29
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_4d

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[teardown] state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") DisconnectWimax"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_4d
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 1906
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 1907
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 1930
    :cond_58
    :goto_58
    return v1

    .line 1911
    :cond_59
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 1912
    .local v0, wimaxStatus:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_65

    const/4 v3, 0x2

    if-ne v0, v3, :cond_ae

    .line 1913
    :cond_65
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 1914
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_8b

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[teardown] state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") stopWimax"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_8b
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v3

    if-nez v3, :cond_98

    .line 1916
    const-string v3, "WimaxStateTracker"

    const-string v4, "[teardown] fail to stop wimax.."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_98
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 1919
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 1920
    invoke-virtual {p0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStateChange(I)V

    .line 1921
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    goto :goto_58

    .line 1924
    :cond_a7
    const-string v2, "WimaxStateTracker"

    const-string v3, "[teardown] fail to turn wimax off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_ae
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_58

    const-string v2, "WimaxStateTracker"

    const-string v3, "[teardown] already turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .end local v0           #wimaxStatus:I
    :cond_ba
    move v1, v2

    .line 1930
    goto :goto_58
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2017
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2018
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2019
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2020
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2021
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisableRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isTeardownRequested()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 2025
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateNetworkState(Landroid/net/fourG/net4GSupplicantState;)V
    .registers 6
    .parameter "supplicantState"

    .prologue
    const/4 v3, 0x0

    .line 1717
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_3d

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState() : curSupplicantState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->getSupplicantState()Landroid/net/fourG/net4GSupplicantState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSupplicantState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DetailedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-static {p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getDetailedStateOf(Landroid/net/fourG/net4GSupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_3d
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1720
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-static {p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getDetailedStateOf(Landroid/net/fourG/net4GSupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1722
    return-void
.end method
