.class Lcom/google/android/music/store/Filters;
.super Ljava/lang/Object;
.source "Filters.java"


# static fields
.field static final FILTERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LocalCopyType IN (200,300)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LocalCopyType IN (100,200,300)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFilteringCondition(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "condition"
    .parameter "filterIndex"

    .prologue
    .line 106
    sget-object v0, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {p0, v0}, Lcom/google/android/music/utils/DbUtils;->addAndCondition(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static getMusicFilterIndex(Landroid/content/Context;)I
    .registers 15
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 59
    const/4 v8, 0x1

    .line 60
    .local v8, showRemote:Z
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 61
    .local v7, prefsHolder:Ljava/lang/Object;
    invoke-static {p0, v7}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    .line 65
    .local v5, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_c
    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isCachedStreamingMusicEnabled()Z

    move-result v0

    .line 66
    .local v0, cacheStreamedMusic:Z
    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v1

    .line 67
    .local v1, displayMode:I
    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v9

    .line 69
    .local v9, streamOnlyOnWifi:Z
    if-eq v1, v10, :cond_49

    move v8, v10

    .line 71
    :goto_1b
    if-eqz v8, :cond_40

    .line 72
    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getHideWhenNotConnected()Z

    move-result v12

    if-eqz v12, :cond_40

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v12

    if-eqz v12, :cond_40

    .line 74
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->getActiveNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_56

    move-result-object v6

    .line 75
    .local v6, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    const/4 v3, 0x0

    .line 76
    .local v3, hasDataConnection:Z
    const/4 v4, 0x0

    .line 77
    .local v4, hasHighSpeedConnection:Z
    if-eqz v6, :cond_39

    .line 79
    :try_start_31
    invoke-interface {v6}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z

    move-result v3

    .line 80
    invoke-interface {v6}, Lcom/google/android/music/dl/INetworkMonitor;->hasHighSpeedConnection()Z
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_56
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_4b

    move-result v4

    .line 85
    :cond_39
    :goto_39
    if-eqz v3, :cond_3f

    if-nez v4, :cond_40

    if-eqz v9, :cond_40

    .line 86
    :cond_3f
    const/4 v8, 0x0

    .line 91
    .end local v3           #hasDataConnection:Z
    .end local v4           #hasHighSpeedConnection:Z
    .end local v6           #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :cond_40
    invoke-static {v7}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 94
    if-nez v8, :cond_5b

    .line 95
    if-eqz v0, :cond_48

    .line 96
    const/4 v10, 0x2

    .line 101
    :cond_48
    :goto_48
    return v10

    :cond_49
    move v8, v11

    .line 69
    goto :goto_1b

    .line 81
    .restart local v3       #hasDataConnection:Z
    .restart local v4       #hasHighSpeedConnection:Z
    .restart local v6       #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :catch_4b
    move-exception v2

    .line 82
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4c
    const-string v12, "MusicContentProvider"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_56

    goto :goto_39

    .line 91
    .end local v0           #cacheStreamedMusic:Z
    .end local v1           #displayMode:I
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #hasDataConnection:Z
    .end local v4           #hasHighSpeedConnection:Z
    .end local v6           #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    .end local v9           #streamOnlyOnWifi:Z
    :catchall_56
    move-exception v10

    invoke-static {v7}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v10

    .restart local v0       #cacheStreamedMusic:Z
    .restart local v1       #displayMode:I
    .restart local v9       #streamOnlyOnWifi:Z
    :cond_5b
    move v10, v11

    .line 101
    goto :goto_48
.end method
