.class public Lcom/google/android/music/dl/RingtoneScheduler;
.super Ljava/lang/Object;
.source "RingtoneScheduler.java"

# interfaces
.implements Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mBufferProgress:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/google/android/music/dl/BufferProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

.field private final mNetworkServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private final mNotificationManager:Lcom/google/android/music/dl/RingtoneNotificationManager;

.field private final mStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessivePassiveFailures:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "MusicRingtones"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/RingtoneScheduler;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;)V
    .registers 5
    .parameter "context"
    .parameter "bufferProgress"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mSuccessivePassiveFailures:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mEnabled:Z

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mStateChangedListeners:Ljava/util/List;

    .line 190
    new-instance v0, Lcom/google/android/music/dl/RingtoneScheduler$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/RingtoneScheduler$2;-><init>(Lcom/google/android/music/dl/RingtoneScheduler;)V

    iput-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    .line 52
    iput-object p1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mBufferProgress:Ljava/lang/ref/SoftReference;

    .line 55
    invoke-virtual {p2, p0}, Lcom/google/android/music/dl/BufferProgress;->addVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V

    .line 56
    new-instance v0, Lcom/google/android/music/dl/RingtoneNotificationManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/music/dl/RingtoneNotificationManager;-><init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/RingtoneScheduler;)V

    iput-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNotificationManager:Lcom/google/android/music/dl/RingtoneNotificationManager;

    .line 58
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/INetworkChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNetworkServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 61
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNetworkServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    new-instance v1, Lcom/google/android/music/dl/RingtoneScheduler$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/RingtoneScheduler$1;-><init>(Lcom/google/android/music/dl/RingtoneScheduler;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->addRunOnServiceConnected(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNetworkServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/RingtoneScheduler;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/RingtoneScheduler;->refreshEnabledState(ZZ)V

    return-void
.end method

.method private notifyStateChanged()V
    .registers 6

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/android/music/dl/RingtoneScheduler;->isEnabled()Z

    move-result v1

    .line 160
    .local v1, isEnabled:Z
    iget-object v3, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNotificationManager:Lcom/google/android/music/dl/RingtoneNotificationManager;

    invoke-virtual {p0}, Lcom/google/android/music/dl/RingtoneScheduler;->isDisabledFromExcessiveErrors()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/music/dl/RingtoneNotificationManager;->notifyEnabledStateChanged(ZZ)V

    .line 161
    iget-object v3, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;

    .line 162
    .local v2, listener:Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;
    invoke-interface {v2, v1}, Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;->notifyEnabledStateChanged(Z)V

    goto :goto_13

    .line 164
    .end local v2           #listener:Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;
    :cond_23
    return-void
.end method

.method private refreshEnabledState(ZZ)V
    .registers 4
    .parameter "mobileOn"
    .parameter "highSpeedOn"

    .prologue
    .line 95
    if-nez p1, :cond_4

    if-eqz p2, :cond_9

    :cond_4
    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/music/dl/RingtoneScheduler;->setEnabled(Z)V

    .line 96
    return-void

    .line 95
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mEnabled:Z

    if-ne p1, v0, :cond_5

    .line 110
    :goto_4
    return-void

    .line 102
    :cond_5
    sget-boolean v0, Lcom/google/android/music/dl/RingtoneScheduler;->LOGV:Z

    if-eqz v0, :cond_25

    .line 103
    const-string v1, "MusicRingtones"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Predictive scheduler turned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_30

    const-string v0, "on"

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_25
    iput-boolean p1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mEnabled:Z

    .line 106
    if-eqz p1, :cond_2c

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mSuccessivePassiveFailures:I

    .line 109
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/music/dl/RingtoneScheduler;->notifyStateChanged()V

    goto :goto_4

    .line 103
    :cond_30
    const-string v0, "off"

    goto :goto_1a
.end method


# virtual methods
.method public addStateChangedListener(Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;)V
    .registers 3
    .parameter "stateChangedListener"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public getNextDownload()[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-boolean v3, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mEnabled:Z

    if-nez v3, :cond_11

    .line 132
    sget-boolean v3, Lcom/google/android/music/dl/RingtoneScheduler;->LOGV:Z

    if-eqz v3, :cond_10

    .line 133
    const-string v3, "MusicRingtones"

    const-string v4, "Ringtone downloading is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_10
    :goto_10
    return-object v2

    .line 137
    :cond_11
    iget-object v3, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->getRingtoneManager()Lcom/google/android/music/store/MusicRingtoneManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/MusicRingtoneManager;->getRingtoneRequests(I)[J

    move-result-object v1

    .line 138
    .local v1, ids:[J
    if-eqz v1, :cond_25

    array-length v3, v1

    if-nez v3, :cond_2b

    .line 139
    :cond_25
    iget-object v3, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNotificationManager:Lcom/google/android/music/dl/RingtoneNotificationManager;

    invoke-virtual {v3}, Lcom/google/android/music/dl/RingtoneNotificationManager;->notifyAllDownloadsFinished()V

    goto :goto_10

    .line 143
    :cond_2b
    iget-object v3, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNotificationManager:Lcom/google/android/music/dl/RingtoneNotificationManager;

    invoke-virtual {v3}, Lcom/google/android/music/dl/RingtoneNotificationManager;->notifyDownloadsStarting()V

    .line 144
    array-length v3, v1

    new-array v2, v3, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 145
    .local v2, songIds:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    array-length v3, v1

    if-ge v0, v3, :cond_10

    .line 146
    new-instance v3, Lcom/google/android/music/dl/ContentIdentifier;

    aget-wide v4, v1, v0

    sget-object v6, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    aput-object v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_34
.end method

.method public isDisabledFromExcessiveErrors()Z
    .registers 3

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mSuccessivePassiveFailures:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mEnabled:Z

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNotificationManager:Lcom/google/android/music/dl/RingtoneNotificationManager;

    invoke-virtual {v1}, Lcom/google/android/music/dl/RingtoneNotificationManager;->onDestroy()V

    .line 72
    iget-object v1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mBufferProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/BufferProgress;

    .line 73
    .local v0, bufferProgress:Lcom/google/android/music/dl/BufferProgress;
    if-eqz v0, :cond_12

    .line 74
    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/BufferProgress;->removeVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V

    .line 76
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNetworkServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 6
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    .line 168
    .local v0, downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->isFinishedStatus()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 169
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_30

    .line 170
    iget v1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mSuccessivePassiveFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mSuccessivePassiveFailures:I

    .line 171
    iget v1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mSuccessivePassiveFailures:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2a

    .line 172
    const-string v1, "MusicRingtones"

    const-string v2, "Experiencing exessive failures, turning off Ringtone download scheduler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0, v3}, Lcom/google/android/music/dl/RingtoneScheduler;->setEnabled(Z)V

    .line 182
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNotificationManager:Lcom/google/android/music/dl/RingtoneNotificationManager;

    invoke-virtual {v1, p1}, Lcom/google/android/music/dl/RingtoneNotificationManager;->notifyDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 183
    return-void

    .line 179
    :cond_30
    iput v3, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mSuccessivePassiveFailures:I

    goto :goto_2a
.end method

.method refreshEnabledState()V
    .registers 7

    .prologue
    .line 80
    iget-object v4, p0, Lcom/google/android/music/dl/RingtoneScheduler;->mNetworkServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v4}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v3

    .line 81
    .local v3, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-nez v3, :cond_10

    .line 82
    const-string v4, "MusicRingtones"

    const-string v5, "refreshEnabledState called before network monitor connected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_f
    return-void

    .line 86
    :cond_10
    :try_start_10
    invoke-interface {v3}, Lcom/google/android/music/dl/INetworkMonitor;->hasMobileConnection()Z

    move-result v2

    .line 87
    .local v2, mobileAvailable:Z
    invoke-interface {v3}, Lcom/google/android/music/dl/INetworkMonitor;->hasHighSpeedConnection()Z

    move-result v1

    .line 88
    .local v1, highSpeedConnection:Z
    invoke-direct {p0, v2, v1}, Lcom/google/android/music/dl/RingtoneScheduler;->refreshEnabledState(ZZ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_f

    .line 89
    .end local v1           #highSpeedConnection:Z
    .end local v2           #mobileAvailable:Z
    :catch_1c
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MusicRingtones"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
