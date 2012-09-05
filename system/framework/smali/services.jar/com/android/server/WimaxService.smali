.class public Lcom/android/server/WimaxService;
.super Landroid/net/fourG/wimax/IWimax4GManager$Stub;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WimaxService$Multicaster;,
        Lcom/android/server/WimaxService$DeathRecipient;,
        Lcom/android/server/WimaxService$LockList;,
        Lcom/android/server/WimaxService$Lock;,
        Lcom/android/server/WimaxService$WimaxHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final MESSAGE_DISABLE_WIMAX:I = 0x1

.field private static final MESSAGE_ENABLE_WIMAX:I = 0x0

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x4

.field private static final MESSAGE_START_WIMAX:I = 0x3

.field private static final MESSAGE_STOP_WIMAX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WimaxService"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WimaxService"

.field private static mIsBackhaulMode:Z

.field private static mIsDMmode:Z

.field private static mIsTetheredmode:Z

.field private static mbUSBTethered:Z

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

.field private mAirplaneModeOverwridden:Z

.field private mAvailableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

.field mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

.field private mContext:Landroid/content/Context;

.field mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mLastEnableUid:I

.field private final mLocks:Lcom/android/server/WimaxService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WimaxService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxStart:J

.field private mSprintExtension:Lcom/sprint/internal/SystemProperties;

.field private mStartTime:J

.field private mWimax4GState:I

.field private final mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

.field private final mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

.field private m_bLog:Z

.field private m_isAirplaneModeOn:Z

.field private m_nPluggedType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 161
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    .line 162
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsDMmode:Z

    .line 163
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    .line 164
    sput-boolean v0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxStateTracker;)V
    .registers 12
    .parameter "context"
    .parameter "tracker"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 172
    invoke-direct {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;-><init>()V

    .line 104
    iput-boolean v5, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    .line 117
    new-instance v3, Lcom/android/server/WimaxService$LockList;

    invoke-direct {v3, p0, v6}, Lcom/android/server/WimaxService$LockList;-><init>(Lcom/android/server/WimaxService;Lcom/android/server/WimaxService$1;)V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    .line 126
    iput-wide v7, p0, Lcom/android/server/WimaxService;->mStartTime:J

    .line 127
    iput-wide v7, p0, Lcom/android/server/WimaxService;->mRxStart:J

    .line 129
    iput-object v6, p0, Lcom/android/server/WimaxService;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    .line 156
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GConfiguration;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GConfiguration;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

    .line 157
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 158
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    .line 159
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    .line 170
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    .line 1005
    new-instance v3, Lcom/android/server/WimaxService$4;

    invoke-direct {v3, p0}, Lcom/android/server/WimaxService$4;-><init>(Lcom/android/server/WimaxService;)V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput-object p1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    .line 177
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "WimaxService"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, WimaxThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v3, Lcom/android/server/WimaxService$WimaxHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/WimaxService$WimaxHandler;-><init>(Lcom/android/server/WimaxService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    .line 181
    iput v4, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 182
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iput-boolean v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 184
    new-instance v3, Lcom/sprint/internal/SystemProperties;

    iget-object v6, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/WimaxService;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    .line 186
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 187
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v3, "WimaxService"

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 189
    const-string v6, "WimaxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WimaxService starting up with Wimax "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getPersistedWimaxEnabled()Z

    move-result v3

    if-eqz v3, :cond_10e

    const-string v3, "enabled"

    :goto_9d
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->isBootCompleted(Z)V

    .line 192
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v6, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 194
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_111

    move v3, v4

    :goto_c3
    iput-boolean v3, p0, Lcom/android/server/WimaxService;->m_isAirplaneModeOn:Z

    .line 195
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WimaxService$1;

    invoke-direct {v4, p0}, Lcom/android/server/WimaxService$1;-><init>(Lcom/android/server/WimaxService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WimaxService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WimaxService$2;-><init>(Lcom/android/server/WimaxService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/WimaxService$3;

    invoke-direct {v4, p0}, Lcom/android/server/WimaxService$3;-><init>(Lcom/android/server/WimaxService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.samsung.internal.READ_ESN_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    invoke-direct {p0}, Lcom/android/server/WimaxService;->getEnableLog()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    .line 271
    return-void

    .line 189
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_10e
    const-string v3, "disabled"

    goto :goto_9d

    :cond_111
    move v3, v5

    .line 194
    goto :goto_c3
.end method

.method static synthetic access$1000(Lcom/android/server/WimaxService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/WimaxService;->getEnableLog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/WimaxService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/WimaxService;)Lcom/android/server/WimaxService$LockList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/WimaxService;Landroid/os/IBinder;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->releaseLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/WimaxService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/WimaxService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/WimaxService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WimaxService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_isAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/WimaxService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/WimaxService;->m_isAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/WimaxService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WimaxService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/WimaxService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WimaxService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WimaxService;ZZI)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WimaxService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/WimaxService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    return p1
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    sput-boolean p0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    return p0
.end method

.method private acquireLockLocked(Lcom/android/server/WimaxService$Lock;)Z
    .registers 8
    .parameter "Lock"

    .prologue
    .line 1411
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_1c

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_1c
    iget-object v3, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->addLock(Lcom/android/server/WimaxService$Lock;)V
    invoke-static {v3, p1}, Lcom/android/server/WimaxService$LockList;->access$1400(Lcom/android/server/WimaxService$LockList;Lcom/android/server/WimaxService$Lock;)V

    .line 1414
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1415
    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1416
    .local v0, ident:J
    iget v3, p1, Lcom/android/server/WimaxService$Lock;->mMode:I

    packed-switch v3, :pswitch_data_3a

    .line 1421
    :goto_2e
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    .line 1422
    const/4 v3, 0x1

    return v3

    .line 1418
    :pswitch_33
    iget v3, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    goto :goto_2e

    .line 1416
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_33
    .end packed-switch
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_4G_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_4G_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIMAX_MULTICAST_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method private enforceRadioDisablePermission()V
    .registers 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_4G_RADIO_DISABLE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method private getEnableLog()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 1554
    const/4 v8, 0x0

    .line 1556
    .local v8, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1557
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 1559
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/data/4G.txt"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_38

    .line 1565
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_82
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_4c

    .line 1566
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_a1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_a4

    move-result-object v8

    .line 1572
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1573
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_3a

    .line 1581
    const/4 v6, 0x0

    .local v6, i:I
    :goto_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_9e

    .line 1582
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "F"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 1583
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1585
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #i:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_37
    return v9

    .line 1560
    :catch_38
    move-exception v5

    .line 1561
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_37

    .line 1574
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3a
    move-exception v7

    .line 1575
    .local v7, ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_46

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_46
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1577
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 1567
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4c
    move-exception v2

    .line 1568
    .local v2, e:Ljava/io/IOException;
    :goto_4d
    :try_start_4d
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_69

    const-string v10, "WimaxService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_82

    .line 1572
    :cond_69
    :try_start_69
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1573
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6f} :catch_71

    move-object v3, v4

    .line 1577
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 1574
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_71
    move-exception v7

    .line 1575
    .restart local v7       #ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_7d

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_7d
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1577
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 1571
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_82
    move-exception v10

    .line 1572
    :goto_83
    :try_start_83
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1573
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_89} :catch_8a

    .line 1577
    throw v10

    .line 1574
    :catch_8a
    move-exception v7

    .line 1575
    .restart local v7       #ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_96

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_96
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1577
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 1581
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #i:I
    :cond_9b
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_9e
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1585
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 1571
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_a1
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_83

    .line 1567
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_a4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4d
.end method

.method private isAirplaneModeOn()Z
    .registers 2

    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneSensitive()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_isAirplaneModeOn:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isAirplaneSensitive()Z
    .registers 4

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isAirplaneToggleable()Z
    .registers 4

    .prologue
    .line 1236
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_18

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isFactoryTest()Z
    .registers 5

    .prologue
    .line 290
    const-string v1, "gsm.default.esn"

    const-string v2, "FALSE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, ESN:Ljava/lang/String;
    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFactoryTest:PROPERTY_DEFAULT_ESN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 293
    const/4 v1, 0x1

    .line 295
    :goto_29
    return v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method

.method private persistWimaxEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wimax_on"

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    return-void

    .line 300
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private registerForBroadcasts()V
    .registers 4

    .prologue
    .line 1214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1215
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1216
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1218
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1219
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1220
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1221
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v1, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1225
    return-void
.end method

.method private releaseLockLocked(Landroid/os/IBinder;)Z
    .registers 10
    .parameter "lock"

    .prologue
    .line 1435
    iget-object v5, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;
    invoke-static {v5, p1}, Lcom/android/server/WimaxService$LockList;->access$1500(Lcom/android/server/WimaxService$LockList;Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;

    move-result-object v4

    .line 1437
    .local v4, wimaxLock:Lcom/android/server/WimaxService$Lock;
    iget-boolean v5, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v5, :cond_22

    const-string v5, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseLockLocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_22
    if-eqz v4, :cond_38

    const/4 v0, 0x1

    .line 1440
    .local v0, hadLock:Z
    :goto_25
    if-eqz v0, :cond_34

    .line 1441
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1442
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1443
    .local v1, ident:J
    iget v5, v4, Lcom/android/server/WimaxService$Lock;->mMode:I

    packed-switch v5, :pswitch_data_42

    .line 1450
    .end local v1           #ident:J
    .end local v3           #uid:I
    :cond_34
    :goto_34
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    .line 1451
    return v0

    .line 1438
    .end local v0           #hadLock:Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_25

    .line 1445
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    .restart local v3       #uid:I
    :pswitch_3a
    iget v5, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    goto :goto_34

    .line 1443
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .registers 7
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 1538
    iget-object v2, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Multicaster;

    .line 1539
    .local v1, removed:Lcom/android/server/WimaxService$Multicaster;
    if-eqz v1, :cond_d

    .line 1540
    invoke-virtual {v1}, Lcom/android/server/WimaxService$Multicaster;->unlinkDeathRecipient()V

    .line 1542
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1543
    .local v0, ident:Ljava/lang/Long;
    return-void
.end method

.method private sendEnableMessage(ZZI)V
    .registers 9
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1185
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    if-eqz p1, :cond_11

    move v3, v2

    :goto_7
    if-eqz p2, :cond_13

    :goto_9
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 1188
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1189
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    move v3, v1

    .line 1185
    goto :goto_7

    :cond_13
    move v1, v2

    goto :goto_9
.end method

.method private setWimaxEnabledBlocking(ZZI)Z
    .registers 14
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v0

    .line 350
    .local v0, nWimaxEnabledState:I
    if-nez p1, :cond_1a

    if-eq v0, v4, :cond_e

    if-nez v0, :cond_1a

    .line 352
    :cond_e
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_19

    const-string v3, "WimaxService"

    const-string v5, "[setWimaxEnabledBlocking] already disabled"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_19
    :goto_19
    return v4

    .line 357
    :cond_1a
    if-eqz p1, :cond_44

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_44

    move v3, v4

    :goto_29
    iput-boolean v3, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    .line 358
    if-eqz p1, :cond_46

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-boolean v3, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v3, :cond_46

    .line 359
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_42

    const-string v3, "WimaxService"

    const-string v4, "[setWimaxEnabledBlocking] can\'t enable 4G because isAirplaneModeOn() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move v4, v5

    .line 360
    goto :goto_19

    :cond_44
    move v3, v5

    .line 357
    goto :goto_29

    .line 363
    :cond_46
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v3, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    if-nez v3, :cond_5f

    .line 364
    if-ne p1, v4, :cond_5f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_53

    if-ne v0, v6, :cond_5f

    .line 366
    :cond_53
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_19

    const-string v3, "WimaxService"

    const-string v5, "[setWimaxEnabledBlocking] already enabled"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 372
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getWorkModeState()I

    move-result v1

    .line 373
    .local v1, nWorkModeState:I
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_7f

    const-string v3, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setWimaxEnabledBlocking] Workmode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_7f
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 382
    if-eqz p1, :cond_159

    move v3, v6

    :goto_87
    invoke-direct {p0, v3, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 383
    iget-object v7, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v7

    .line 384
    if-eqz p1, :cond_17e

    .line 385
    :try_start_8f
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_d3

    const-string v3, "WimaxService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wimax ON --- mModemReset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v9, v9, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIsDMmode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/WimaxService;->mIsDMmode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mbUSBTethered = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m_nPluggedType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_d3
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v3, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    if-nez v3, :cond_15c

    .line 388
    invoke-direct {p0}, Lcom/android/server/WimaxService;->registerForBroadcasts()V

    .line 389
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->startEventLoop()V

    .line 393
    :goto_e1
    sget-boolean v3, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    if-eqz v3, :cond_165

    iget v3, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    if-ne v3, v6, :cond_165

    .line 394
    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 398
    :goto_ee
    sget-boolean v3, Lcom/android/server/WimaxService;->mIsDMmode:Z

    if-eqz v3, :cond_16b

    .line 399
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->setWimaxTethered(B)Z

    .line 404
    :goto_f6
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 405
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->startWimax()Z

    move-result v3

    if-nez v3, :cond_1e2

    .line 406
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    .line 407
    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start Wimax. m_bPoweroff = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v6, v6, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v3, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    if-eqz v3, :cond_170

    .line 410
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_14c

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWimax4GState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_14c
    const/4 v3, 0x1

    invoke-direct {p0, v3, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 416
    :goto_150
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    .line 417
    monitor-exit v7

    move v4, v5

    goto/16 :goto_19

    :cond_159
    move v3, v5

    .line 382
    goto/16 :goto_87

    .line 391
    :cond_15c
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v8, 0x0

    iput-boolean v8, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    goto :goto_e1

    .line 458
    :catchall_162
    move-exception v3

    monitor-exit v7
    :try_end_164
    .catchall {:try_start_8f .. :try_end_164} :catchall_162

    throw v3

    .line 396
    :cond_165
    const/4 v3, 0x1

    const/4 v6, 0x0

    :try_start_167
    invoke-virtual {p0, v3, v6}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    goto :goto_ee

    .line 401
    :cond_16b
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->setWimaxTethered(B)Z

    goto :goto_f6

    .line 413
    :cond_170
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    sget-object v6, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v3, v4, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 414
    const/4 v3, 0x4

    invoke-direct {p0, v3, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    goto :goto_150

    .line 420
    :cond_17e
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 421
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v5, 0x0

    iput v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 422
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetOldState()V
    :try_end_18d
    .catchall {:try_start_167 .. :try_end_18d} :catchall_162

    .line 424
    if-eq v9, v0, :cond_196

    .line 426
    :try_start_18f
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_196
    .catchall {:try_start_18f .. :try_end_196} :catchall_162
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18f .. :try_end_196} :catch_25a

    .line 430
    :cond_196
    :goto_196
    :try_start_196
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    .line 431
    .local v2, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v2, v3, :cond_1b0

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v2, v3, :cond_1b0

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v2, v3, :cond_1b0

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v2, v3, :cond_1b0

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-ne v2, v3, :cond_206

    .line 434
    :cond_1b0
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_1d2

    const-string v3, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") :  DisconnectWimax before turn off"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1d2
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 436
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-boolean v5, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    iput-boolean v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 437
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    .line 454
    .end local v2           #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :cond_1e2
    :goto_1e2
    if-eqz p2, :cond_203

    .line 455
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_200

    const-string v3, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setWimaxEnabledBlocking] persist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_200
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->persistWimaxEnabled(Z)V

    .line 458
    :cond_203
    monitor-exit v7

    goto/16 :goto_19

    .line 439
    .restart local v2       #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :cond_206
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_228

    const-string v3, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : stopWimax"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_228
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-boolean v5, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    iput-boolean v5, v3, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 441
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v3

    if-nez v3, :cond_23b

    .line 442
    const-string v3, "WimaxService"

    const-string v5, "fail to stop wimax.."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_23b
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v3

    if-eqz v3, :cond_249

    .line 445
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStateChange(I)V

    goto :goto_1e2

    .line 447
    :cond_249
    const-string v3, "WimaxService"

    const-string v5, "failed to turn off wimax..set unknown"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v3, 0x4

    invoke-direct {p0, v3, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 449
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V
    :try_end_259
    .catchall {:try_start_196 .. :try_end_259} :catchall_162

    goto :goto_1e2

    .line 427
    .end local v2           #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :catch_25a
    move-exception v3

    goto/16 :goto_196
.end method

.method private setWimaxEnabledState(II)V
    .registers 8
    .parameter "Wimax4GState"
    .parameter "uid"

    .prologue
    .line 463
    iget v2, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 464
    .local v2, previousWimaxStatus:I
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_d

    const-string v3, "WimaxService"

    const-string v4, "[setWimaxEnabledState] "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 468
    .local v0, ident:J
    iput p1, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 469
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3, p1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStatusChangeBroadcast(II)V

    .line 470
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .registers 2
    .parameter "net4GState"

    .prologue
    .line 1311
    packed-switch p0, :pswitch_data_16

    .line 1323
    const-string v0, "[invalid state]"

    :goto_5
    return-object v0

    .line 1313
    :pswitch_6
    const-string v0, "disabling"

    goto :goto_5

    .line 1315
    :pswitch_9
    const-string v0, "disabled"

    goto :goto_5

    .line 1317
    :pswitch_c
    const-string v0, "enabling"

    goto :goto_5

    .line 1319
    :pswitch_f
    const-string v0, "enabled"

    goto :goto_5

    .line 1321
    :pswitch_12
    const-string v0, "unknown 4G state"

    goto :goto_5

    .line 1311
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private updateWimaxStatus()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1192
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getPersistedWimaxEnabled()Z

    move-result v0

    .line 1193
    .local v0, WimaxEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v4, :cond_2c

    move v2, v1

    .line 1194
    .local v2, airplaneMode:Z
    :goto_11
    if-eqz v0, :cond_2e

    if-nez v2, :cond_2e

    .line 1196
    .local v1, WimaxShouldBeEnabled:Z
    :goto_15
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v4

    .line 1197
    :try_start_18
    iget v3, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_30

    if-nez v2, :cond_30

    .line 1198
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_2a

    const-string v3, "WimaxService"

    const-string v5, "[updateWimaxStatus] mWimax4GState == NET_4G_STATE_ENABLING && !airplaneMode return ;"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_2a
    monitor-exit v4

    .line 1211
    :goto_2b
    return-void

    .end local v1           #WimaxShouldBeEnabled:Z
    .end local v2           #airplaneMode:Z
    :cond_2c
    move v2, v3

    .line 1193
    goto :goto_11

    .restart local v2       #airplaneMode:Z
    :cond_2e
    move v1, v3

    .line 1194
    goto :goto_15

    .line 1201
    .restart local v1       #WimaxShouldBeEnabled:Z
    :cond_30
    if-eqz v1, :cond_4e

    .line 1202
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_3d

    const-string v3, "WimaxService"

    const-string v5, "[updateWimaxStatus] WimaxShouldBeEnabled == true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_3d
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1204
    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V

    .line 1210
    :goto_49
    monitor-exit v4

    goto :goto_2b

    :catchall_4b
    move-exception v3

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_18 .. :try_end_4d} :catchall_4b

    throw v3

    .line 1206
    :cond_4e
    :try_start_4e
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_59

    const-string v3, "WimaxService"

    const-string v5, "[updateWiMAXState] WimaxShouldBeEnabled == false acquire sWakeLock"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_59
    iget-object v3, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1208
    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V
    :try_end_65
    .catchall {:try_start_4e .. :try_end_65} :catchall_4b

    goto :goto_49
.end method


# virtual methods
.method public CheckWimaxState()Z
    .registers 2

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 806
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkState()Z

    move-result v0

    return v0
.end method

.method public OdbAddReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 988
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbAddReq([B)I

    move-result v0

    return v0
.end method

.method public OdbDeleteReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 993
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbDeleteReq([B)I

    move-result v0

    return v0
.end method

.method public OdbReadReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 973
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbReadReq([B)I

    move-result v0

    return v0
.end method

.method public OdbUpdateReq()I
    .registers 2

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 983
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->OdbUpdateReq()I

    move-result v0

    return v0
.end method

.method public OdbWriteReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 978
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbWriteReq([B)I

    move-result v0

    return v0
.end method

.method public acquireLock(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 8
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"

    .prologue
    .line 1400
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const/4 v1, 0x1

    if-eq p2, v1, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 1402
    const/4 v1, 0x0

    .line 1406
    :goto_f
    return v1

    .line 1404
    :cond_10
    new-instance v0, Lcom/android/server/WimaxService$Lock;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/WimaxService$Lock;-><init>(Lcom/android/server/WimaxService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1405
    .local v0, Lock:Lcom/android/server/WimaxService$Lock;
    iget-object v2, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    monitor-enter v2

    .line 1406
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/server/WimaxService;->acquireLockLocked(Lcom/android/server/WimaxService$Lock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_f

    .line 1407
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceMulticastChangePermission()V

    .line 1504
    iget-object v3, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 1505
    :try_start_6
    iget v2, p0, Lcom/android/server/WimaxService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WimaxService;->mMulticastEnabled:I

    .line 1506
    iget-object v2, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WimaxService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WimaxService$Multicaster;-><init>(Lcom/android/server/WimaxService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_32

    .line 1513
    :try_start_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_2f

    .line 1514
    :try_start_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_32

    .line 1516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1517
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1518
    .local v0, ident:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1519
    return-void

    .line 1513
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v2

    .line 1514
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public calWiMAXThroughput(Z)V
    .registers 16
    .parameter "bstart"

    .prologue
    const-wide/16 v12, 0x8

    .line 1670
    if-eqz p1, :cond_42

    .line 1671
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/WimaxService;->mStartTime:J

    .line 1672
    iget-object v9, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v9}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/WimaxService;->mRxStart:J

    .line 1673
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_41

    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start Calculate WiMAX Throughput, StartTime is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/WimaxService;->mStartTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RxSize is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/WimaxService;->mRxStart:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_41
    :goto_41
    return-void

    .line 1675
    :cond_42
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 1676
    .local v4, mEndTime:J
    iget-object v9, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v9}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v6

    .line 1677
    .local v6, mRxEnd:J
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_77

    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End Calculate WiMAX Throughput, EndTime is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RxSize is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_77
    iget-wide v9, p0, Lcom/android/server/WimaxService;->mStartTime:J

    sub-long v9, v4, v9

    long-to-int v3, v9

    .line 1680
    .local v3, mDiffTime:I
    iget-wide v9, p0, Lcom/android/server/WimaxService;->mRxStart:J

    sub-long v1, v6, v9

    .line 1682
    .local v1, mDiffRxsize:J
    mul-long v9, v1, v12

    long-to-int v9, v9

    div-int/lit16 v10, v3, 0x3e8

    div-int v8, v9, v10

    .line 1683
    .local v8, mThroughput:I
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_c1

    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DiffTime is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    div-int/lit16 v11, v3, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s, DiffRxsize is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-long v11, v1, v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "bit, Throughput is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "bps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_c1
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.net.wimax.WIMAX_DATA_THROUGHPUT"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v0, intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1688
    const-string v9, "android.net.wimax.EXTRA_TIME"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1689
    const-string v9, "android.net.wimax.EXTRA_DATA"

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1690
    const-string v9, "android.net.wimax.EXTRA_THROUGHPUT"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1691
    iget-object v9, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_41
.end method

.method public calculateSignalLevel(III)I
    .registers 5
    .parameter "nRSSI"
    .parameter "nCINR"
    .parameter "numLevels"

    .prologue
    .line 1664
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 1665
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/fourG/wimax/WimaxStateTracker;->calculateSignalLevel(III)I

    move-result v0

    return v0
.end method

.method public checkUSBstate()Z
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 643
    const/4 v7, 0x0

    .line 645
    .local v7, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 646
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 648
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/sys/class/sec/switch/usb_state"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_30

    .line 655
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_44

    .line 656
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_99
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_9c

    move-result-object v7

    .line 662
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 663
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_32

    .line 671
    const-string v9, "USB_STATE_CONFIGURED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 672
    iget v9, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_93

    .line 673
    const/4 v8, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 677
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2f
    return v8

    .line 649
    :catch_30
    move-exception v5

    .line 651
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_2f

    .line 664
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_32
    move-exception v6

    .line 665
    .local v6, ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_3e

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_3e
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 667
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .line 657
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_44
    move-exception v2

    .line 658
    .local v2, e:Ljava/io/IOException;
    :goto_45
    :try_start_45
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_61

    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_7a

    .line 662
    :cond_61
    :try_start_61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 663
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_67} :catch_69

    move-object v3, v4

    .line 667
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2f

    .line 664
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_69
    move-exception v6

    .line 665
    .restart local v6       #ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_75

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_75
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 667
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2f

    .line 661
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_7a
    move-exception v9

    .line 662
    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 663
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_81} :catch_82

    .line 667
    throw v9

    .line 664
    :catch_82
    move-exception v6

    .line 665
    .restart local v6       #ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_8e

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_8e
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 667
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2f

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_93
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 675
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_96
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 677
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .line 661
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_99
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7b

    .line 657
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_9c
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_45
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "homeNspName"
    .parameter "roamingNspName"
    .parameter "userName"
    .parameter "passWord"

    .prologue
    const/4 v5, 0x0

    .line 745
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_1d

    const-string v2, "WimaxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[connect] homeNspName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_1d
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {p1, v2, v3, v5, v4}, Landroid/net/fourG/wimax/WimaxNative;->connectmWimax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 748
    .local v0, result:I
    if-nez v0, :cond_42

    .line 749
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_34

    const-string v2, "WimaxService"

    const-string v3, "^^^^^ Connection req. is success ^^^^^"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_34
    const/4 v0, 0x0

    .line 757
    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->setHaveLinkInfo(Z)V

    .line 758
    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v2, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->setIdleState(Z)V

    move v1, v0

    .line 760
    .end local v0           #result:I
    .local v1, result:I
    :goto_41
    return v1

    .line 752
    .end local v1           #result:I
    .restart local v0       #result:I
    :cond_42
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_4d

    const-string v2, "WimaxService"

    const-string v3, "connectmWimax() returns fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_4d
    const/4 v0, -0x1

    move v1, v0

    .line 754
    .end local v0           #result:I
    .restart local v1       #result:I
    goto :goto_41
.end method

.method public createConnectionStatistics()Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    .line 714
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxPackets()J

    .line 715
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalTxBytes()J

    .line 716
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalTxPackets()J

    .line 717
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    return-object v0
.end method

.method public deleteStaticIP()I
    .registers 7

    .prologue
    .line 1648
    const/4 v1, 0x0

    .line 1650
    .local v1, fOut:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/data/wimax_ip.txt"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_1b

    .line 1651
    .end local v1           #fOut:Ljava/io/FileWriter;
    .local v2, fOut:Ljava/io/FileWriter;
    :try_start_8
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1652
    .local v3, osw:Ljava/io/BufferedWriter;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1655
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_25

    .line 1656
    const/4 v4, 0x1

    move-object v1, v2

    .line 1659
    .end local v2           #fOut:Ljava/io/FileWriter;
    .end local v3           #osw:Ljava/io/BufferedWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    :goto_1a
    return v4

    .line 1657
    :catch_1b
    move-exception v0

    .line 1658
    .local v0, e:Ljava/io/IOException;
    :goto_1c
    const-string v4, "WimaxService"

    const-string v5, "File wimax_ip.txt not reset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const/4 v4, -0x1

    goto :goto_1a

    .line 1657
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fOut:Ljava/io/FileWriter;
    .restart local v2       #fOut:Ljava/io/FileWriter;
    :catch_25
    move-exception v0

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    goto :goto_1c
.end method

.method public disconnect()Z
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 768
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WimaxService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1308
    :goto_32
    return-void

    .line 1294
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wimax is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    invoke-static {v1}, Lcom/android/server/WimaxService;->stateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stay-awake conditions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1300
    const-string v0, "Internal state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1302
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locks acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locks released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1306
    const-string v0, "Locks held:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v0, p2}, Lcom/android/server/WimaxService$LockList;->access$1100(Lcom/android/server/WimaxService$LockList;Ljava/io/PrintWriter;)V

    goto/16 :goto_32
.end method

.method public enableLogLevel(I)V
    .registers 3
    .parameter "nLoglevel"

    .prologue
    .line 811
    packed-switch p1, :pswitch_data_10

    .line 825
    const/4 v0, 0x1

    .line 828
    .local v0, Loglevel:C
    :goto_4
    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setEnableLogLevel(C)V

    .line 829
    return-void

    .line 813
    .end local v0           #Loglevel:C
    :pswitch_8
    const/4 v0, 0x1

    .line 814
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 816
    .end local v0           #Loglevel:C
    :pswitch_a
    const/4 v0, 0x2

    .line 817
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 819
    .end local v0           #Loglevel:C
    :pswitch_c
    const/4 v0, 0x3

    .line 820
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 822
    .end local v0           #Loglevel:C
    :pswitch_e
    const/4 v0, 0x4

    .line 823
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 811
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public get4GState()I
    .registers 2

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 502
    iget v0, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    return v0
.end method

.method public getAvailableNetworks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 702
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setAvailableList(Ljava/util/List;)V

    .line 703
    iget-object v0, p0, Lcom/android/server/WimaxService;->m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getAvailableNetworks(Landroid/net/fourG/wimax/Wimax4GConfiguration;)Z

    .line 704
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    return-object v0
.end method

.method public getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getConnectedNSP(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)I

    .line 709
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 2

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 735
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getDeviceInformation(Landroid/net/fourG/wimax/Wimax4GDeviceInfo;)Z

    .line 722
    iget-object v0, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 838
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTemperature()I
    .registers 5

    .prologue
    const/16 v2, -0x64

    .line 1954
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1956
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    const-string v3, "wimax_max_radio_temperature"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v2

    .line 1959
    :goto_e
    return v2

    .line 1957
    :catch_f
    move-exception v1

    .line 1958
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_max_radio_temperature"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e
.end method

.method public getMinTemperature()I
    .registers 5

    .prologue
    const/16 v2, 0x3e8

    .line 1944
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1946
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    const-string v3, "wimax_min_radio_temperature"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v2

    .line 1949
    :goto_e
    return v2

    .line 1947
    :catch_f
    move-exception v1

    .line 1948
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_min_radio_temperature"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e
.end method

.method public getMruList()V
    .registers 2

    .prologue
    .line 908
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 909
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getMruList()Z

    .line 910
    return-void
.end method

.method public getMruListRsp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    return-object v0
.end method

.method public getMruUpdate(Ljava/lang/String;I)Z
    .registers 14
    .parameter "strUpdate"
    .parameter "nSize"

    .prologue
    const/4 v10, 0x0

    .line 917
    iget-boolean v7, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v7, :cond_1d

    const-string v7, "WimaxService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMruUpdate nSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_1d
    if-nez p2, :cond_24

    .line 919
    invoke-static {v10, v10, v10, p2}, Landroid/net/fourG/wimax/WimaxNative;->getMruUpdate([I[B[BI)Z

    move-result v7

    .line 943
    :goto_23
    return v7

    .line 921
    :cond_24
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, "@"

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    .local v4, st:Ljava/util/StringTokenizer;
    new-array v1, p2, [I

    .line 924
    .local v1, arCF:[I
    new-array v0, p2, [B

    .line 925
    .local v0, arBW:[B
    new-array v2, p2, [B

    .line 926
    .local v2, arFFT:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    if-ge v3, p2, :cond_7a

    .line 927
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 928
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 929
    .local v6, temp:Ljava/lang/String;
    if-eqz v6, :cond_77

    .line 930
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "#"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .local v5, stList:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 932
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3

    .line 933
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 934
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v0, v3

    .line 935
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 936
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v2, v3

    .line 926
    .end local v5           #stList:Ljava/util/StringTokenizer;
    .end local v6           #temp:Ljava/lang/String;
    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 943
    :cond_7a
    invoke-static {v1, v0, v2, p2}, Landroid/net/fourG/wimax/WimaxNative;->getMruUpdate([I[B[BI)Z

    move-result v7

    goto :goto_23
.end method

.method public getNeighborList()V
    .registers 1

    .prologue
    .line 842
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getNeighborList()Z

    .line 843
    return-void
.end method

.method public getNetworkEntryCompleteTimes()[I
    .registers 2

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 741
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getNetworkEntryCompleteTimes()[I

    move-result-object v0

    return-object v0
.end method

.method getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    return-object v0
.end method

.method public getPersistedWimaxEnabled()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 274
    iget-object v4, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isFactoryTest()Z

    move-result v4

    if-eqz v4, :cond_10

    move v2, v3

    .line 284
    :cond_f
    :goto_f
    return v2

    .line 280
    :cond_10
    const-string v4, "wimax_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_15} :catch_1a

    move-result v4

    if-eq v4, v2, :cond_f

    move v2, v3

    goto :goto_f

    .line 282
    :catch_1a
    move-exception v1

    .line 283
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f
.end method

.method public getRadioInfoTemperature()V
    .registers 1

    .prologue
    .line 846
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getRadioInfo()Z

    .line 847
    return-void
.end method

.method public getRadioInfoTemperatureResponse()Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    .registers 2

    .prologue
    .line 850
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->radioInfo:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    return-object v0
.end method

.method public getWimaxMode()I
    .registers 3

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, nMode:I
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    if-eqz v1, :cond_a

    .line 583
    const/4 v0, 0x1

    .line 599
    :goto_9
    return v0

    .line 585
    :cond_a
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsDMmode:Z

    if-eqz v1, :cond_16

    .line 586
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    if-eqz v1, :cond_14

    .line 587
    const/4 v0, 0x4

    goto :goto_9

    .line 589
    :cond_14
    const/4 v0, 0x3

    goto :goto_9

    .line 592
    :cond_16
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    if-eqz v1, :cond_1c

    .line 593
    const/4 v0, 0x2

    goto :goto_9

    .line 595
    :cond_1c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getWimaxState()Landroid/net/fourG/wimax/WimaxState;
    .registers 2

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 515
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    return-object v0
.end method

.method public getWimaxStateDetail()I
    .registers 2

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 520
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxStateDetail()I

    move-result v0

    return v0
.end method

.method public getWorkModeState()I
    .registers 8

    .prologue
    .line 854
    const/4 v3, 0x0

    .line 855
    .local v3, selectedMode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 857
    .local v1, mode:I
    :try_start_2
    iget-object v4, p0, Lcom/android/server/WimaxService;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 858
    if-eqz v3, :cond_3b

    .line 859
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_f} :catch_12
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_2 .. :try_end_f} :catch_2f

    move-result v1

    move v2, v1

    .line 869
    .end local v1           #mode:I
    .local v2, mode:I
    :goto_11
    return v2

    .line 862
    .end local v2           #mode:I
    .restart local v1       #mode:I
    :catch_12
    move-exception v0

    .line 863
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 864
    .end local v1           #mode:I
    .restart local v2       #mode:I
    goto :goto_11

    .line 865
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #mode:I
    .restart local v1       #mode:I
    :catch_2f
    move-exception v0

    .line 866
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    const-string v4, "WimaxService"

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 867
    .end local v1           #mode:I
    .restart local v2       #mode:I
    goto :goto_11

    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    .end local v2           #mode:I
    .restart local v1       #mode:I
    :cond_3b
    move v2, v1

    .line 869
    .end local v1           #mode:I
    .restart local v2       #mode:I
    goto :goto_11
.end method

.method public isDataDisabledExternally()Z
    .registers 2

    .prologue
    .line 1988
    const/4 v0, 0x0

    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 1548
    iget-object v1, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1549
    :try_start_6
    iget-object v0, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 1550
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isRoamingEnabled()Z
    .registers 2

    .prologue
    .line 1984
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->isRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public makeOdbTlvData([BIIII[B)I
    .registers 11
    .parameter "pBuffer"
    .parameter "nBufferIndex"
    .parameter "wBufferLen"
    .parameter "wTag"
    .parameter "wLength"
    .parameter "pbValue"

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 954
    shr-int/lit8 v2, p4, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 955
    .local v0, highByte:B
    shr-int/lit8 v2, p4, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 957
    .local v1, lowByte:B
    add-int/lit8 v2, p2, 0x0

    aput-byte v0, p1, v2

    .line 958
    add-int/lit8 v2, p2, 0x1

    aput-byte v1, p1, v2

    .line 960
    shr-int/lit8 v2, p5, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 961
    shr-int/lit8 v2, p5, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 963
    add-int/lit8 v2, p2, 0x2

    aput-byte v0, p1, v2

    .line 964
    add-int/lit8 v2, p2, 0x3

    aput-byte v1, p1, v2

    .line 966
    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x4

    invoke-static {p6, v2, p1, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 968
    add-int/lit8 v2, p5, 0x4

    int-to-short v2, v2

    return v2
.end method

.method public readStaticIP(I)Ljava/lang/String;
    .registers 14
    .parameter "nIndex"

    .prologue
    .line 1615
    const/4 v7, 0x0

    .line 1617
    .local v7, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1618
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 1620
    .local v3, fis:Ljava/io/FileReader;
    :try_start_3
    new-instance v4, Ljava/io/FileReader;

    const-string v9, "/data/wimax_ip.txt"

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_22

    .line 1627
    .end local v3           #fis:Ljava/io/FileReader;
    .local v4, fis:Ljava/io/FileReader;
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_80
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_4e

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move v8, p1

    .line 1629
    .end local p1
    .local v8, nIndex:I
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_97
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_9b

    move-result-object v7

    .line 1630
    add-int/lit8 p1, v8, -0x1

    .end local v8           #nIndex:I
    .restart local p1
    if-gtz v8, :cond_9f

    .line 1636
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1637
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_3e

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v9, v7

    .line 1644
    :goto_21
    return-object v9

    .line 1621
    :catch_22
    move-exception v5

    .line 1622
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File Not found exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const-string v9, "no file error"

    goto :goto_21

    .line 1638
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catch_3e
    move-exception v6

    .line 1639
    .local v6, ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1640
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string v9, "close error"

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_21

    .line 1631
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catch_4e
    move-exception v2

    .line 1632
    .local v2, e:Ljava/io/IOException;
    :goto_4f
    :try_start_4f
    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Read file error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const-string v9, "read file error"
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_80

    .line 1636
    :try_start_69
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1637
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6f} :catch_71

    move-object v3, v4

    .line 1641
    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    goto :goto_21

    .line 1638
    .end local v3           #fis:Ljava/io/FileReader;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catch_71
    move-exception v6

    .line 1639
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1640
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string v9, "close error"

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    goto :goto_21

    .line 1635
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catchall_80
    move-exception v9

    .line 1636
    :goto_81
    :try_start_81
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1637
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_87} :catch_88

    .line 1641
    throw v9

    .line 1638
    :catch_88
    move-exception v6

    .line 1639
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1640
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    const-string v9, "close error"

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    goto :goto_21

    .line 1635
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v6           #ioe:Ljava/io/IOException;
    .end local p1
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileReader;
    .restart local v8       #nIndex:I
    :catchall_97
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move p1, v8

    .end local v8           #nIndex:I
    .restart local p1
    goto :goto_81

    .line 1631
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local p1
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #nIndex:I
    :catch_9b
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move p1, v8

    .end local v8           #nIndex:I
    .restart local p1
    goto :goto_4f

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_9f
    move v8, p1

    .end local p1
    .restart local v8       #nIndex:I
    goto/16 :goto_10
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 772
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 773
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    move-result v0

    if-ne v0, v1, :cond_11

    .line 774
    invoke-virtual {p0, v1}, Lcom/android/server/WimaxService;->set4GEnabled(Z)Z

    move-result v0

    .line 776
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reconnect()Z
    .registers 2

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->reconnect()Z

    move-result v0

    return v0
.end method

.method public releaseLock(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "lock"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v1, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    monitor-enter v1

    .line 1428
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->releaseLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1429
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public releaseMulticastLock()V
    .registers 7

    .prologue
    .line 1522
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceMulticastChangePermission()V

    .line 1524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1525
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 1526
    :try_start_a
    iget v4, p0, Lcom/android/server/WimaxService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WimaxService;->mMulticastDisabled:I

    .line 1527
    iget-object v4, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1528
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_30

    .line 1529
    iget-object v4, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Multicaster;

    .line 1530
    .local v1, m:Lcom/android/server/WimaxService$Multicaster;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/WimaxService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_2d

    .line 1531
    invoke-direct {p0, v0, v3}, Lcom/android/server/WimaxService;->removeMulticasterLocked(II)V

    .line 1528
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 1534
    .end local v1           #m:Lcom/android/server/WimaxService$Multicaster;
    :cond_30
    monitor-exit v5

    .line 1535
    return-void

    .line 1534
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v4
.end method

.method public saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .parameter "ip"
    .parameter "gateway"
    .parameter "netmask"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 1589
    const/4 v1, 0x0

    .line 1591
    .local v1, fOut:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/data/wimax_ip.txt"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_74

    .line 1597
    .end local v1           #fOut:Ljava/io/FileWriter;
    .local v2, fOut:Ljava/io/FileWriter;
    :try_start_8
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1598
    .local v3, osw:Ljava/io/BufferedWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {v3, p5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1605
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1606
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_71} :catch_8f

    .line 1607
    const/4 v4, 0x1

    move-object v1, v2

    .line 1610
    .end local v2           #fOut:Ljava/io/FileWriter;
    .end local v3           #osw:Ljava/io/BufferedWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    :goto_73
    return v4

    .line 1592
    :catch_74
    move-exception v0

    .line 1593
    .local v0, e:Ljava/io/IOException;
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File wimax_ip.txt not created "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const/4 v4, -0x1

    goto :goto_73

    .line 1608
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fOut:Ljava/io/FileWriter;
    .restart local v2       #fOut:Ljava/io/FileWriter;
    :catch_8f
    move-exception v0

    .line 1609
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File write error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v4, -0x2

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    goto :goto_73
.end method

.method public set4GEnabled(Z)Z
    .registers 9
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 315
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceRadioDisablePermission()V

    .line 316
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    if-nez v4, :cond_d

    .line 337
    :goto_c
    return v2

    .line 318
    :cond_d
    iget-object v5, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v5

    .line 320
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 321
    .local v0, ident:J
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_1f

    const-string v4, "WimaxService"

    const-string v6, "acquire sWakeLock----------------------"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1f
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    .line 329
    if-eqz p1, :cond_5a

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_5a

    move v4, v3

    :goto_3c
    iput-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    .line 330
    if-eqz p1, :cond_5c

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v4, :cond_5c

    .line 331
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_55

    const-string v3, "WimaxService"

    const-string v4, "[set4GEnabled] can\'t enable 4G because isAirplaneModeOn() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_55
    monitor-exit v5

    goto :goto_c

    .line 336
    .end local v0           #ident:J
    :catchall_57
    move-exception v2

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_57

    throw v2

    .restart local v0       #ident:J
    :cond_5a
    move v4, v2

    .line 329
    goto :goto_3c

    .line 335
    :cond_5c
    const/4 v2, 0x1

    :try_start_5d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V

    .line 336
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_57

    move v2, v3

    .line 337
    goto :goto_c
.end method

.method public setFactoryDefault(I)Z
    .registers 3
    .parameter "nType"

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 999
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1000
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->OdbDefaultReq()Z

    move-result v0

    .line 1002
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setMaxTemperature(I)Z
    .registers 4
    .parameter "temp"

    .prologue
    .line 1970
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1971
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wimax_max_radio_temperature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1972
    const/4 v1, 0x1

    return v1
.end method

.method public setMinTemperature(I)Z
    .registers 4
    .parameter "temp"

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1965
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wimax_min_radio_temperature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1966
    const/4 v1, 0x1

    return v1
.end method

.method public setMruWorking(Z)V
    .registers 3
    .parameter "bWorking"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iput-boolean p1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    .line 949
    return-void
.end method

.method public setRoamingEnabled(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1980
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->setRoamingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setWimaxMode(IZ)I
    .registers 7
    .parameter "nMode"
    .parameter "enable"

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 612
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_29

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWimaxMode nMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_29
    const/4 v0, -0x1

    .line 616
    .local v0, nRet:I
    packed-switch p1, :pswitch_data_56

    .line 638
    :cond_2d
    :goto_2d
    return v0

    .line 618
    :pswitch_2e
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->getNoBackoff()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 619
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetNoBackOff(Z)V

    goto :goto_2d

    .line 622
    :pswitch_3d
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    .line 623
    const/4 v0, 0x0

    .line 624
    invoke-static {p2}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    goto :goto_2d

    .line 627
    :pswitch_44
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    .line 628
    invoke-static {p2}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    goto :goto_2d

    .line 632
    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2d

    .line 633
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsDMmode:Z

    .line 634
    const/4 v0, 0x0

    goto :goto_2d

    .line 616
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_3d
        :pswitch_44
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method public setWimaxStatus(I)V
    .registers 3
    .parameter "wimaxStatus"

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 507
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 508
    return-void
.end method

.method public setWorkModeState(I)Z
    .registers 10
    .parameter "workMode"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 873
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setWorkModeState] workMode ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    if-gt p1, v7, :cond_83

    if-ltz p1, :cond_83

    .line 876
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/WimaxService;->mSprintExtension:Lcom/sprint/internal/SystemProperties;

    const/16 v5, 0x1f4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 877
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4, p1}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWorkModeBroadCast(I)V

    .line 879
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v1

    .line 880
    .local v1, nEnabledState:I
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setWorkModeState] get4GState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    if-gt p1, v2, :cond_66

    .line 882
    const/4 v4, 0x3

    if-eq v1, v4, :cond_52

    if-ne v1, v7, :cond_61

    .line 883
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v2, :cond_5d

    .line 884
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 886
    :cond_5d
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/WimaxService;->set4GEnabled(Z)Z

    .line 888
    :cond_61
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/WimaxService;->set4GEnabled(Z)Z

    .line 903
    .end local v1           #nEnabledState:I
    :cond_65
    :goto_65
    return v2

    .line 889
    .restart local v1       #nEnabledState:I
    :cond_66
    if-ne p1, v7, :cond_65

    .line 890
    if-eq v1, v2, :cond_6c

    if-nez v1, :cond_65

    .line 891
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getPersistedWimaxEnabled()Z

    move-result v4

    if-ne v4, v2, :cond_65

    .line 892
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/WimaxService;->set4GEnabled(Z)Z
    :try_end_76
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_1f .. :try_end_76} :catch_77

    goto :goto_65

    .line 897
    .end local v1           #nEnabledState:I
    :catch_77
    move-exception v0

    .line 898
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    const-string v2, "WimaxService"

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 899
    goto :goto_65

    .line 902
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_83
    const-string v2, "WimaxService"

    const-string v4, "workMode out of range return false"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 903
    goto :goto_65
.end method

.method public startScan(Z)Z
    .registers 5
    .parameter "bUserReq"

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_2a

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startScan] bUserReq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nScanAttempt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget v2, v2, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_2a
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 786
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 787
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->scanCommand()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 788
    if-eqz p1, :cond_44

    .line 789
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 795
    :cond_44
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget v1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 796
    const/4 v0, 0x1

    .line 801
    :goto_4d
    return v0

    .line 798
    :cond_4e
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget v1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 799
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 800
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->release_WakeLock()V

    .line 801
    const/4 v0, 0x0

    goto :goto_4d
.end method
