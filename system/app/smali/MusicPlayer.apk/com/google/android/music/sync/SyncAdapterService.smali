.class public Lcom/google/android/music/sync/SyncAdapterService;
.super Landroid/app/Service;
.source "SyncAdapterService.java"


# static fields
.field private static sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 23
    sget-object v3, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v3

    .line 24
    :try_start_3
    sget-object v2, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    if-nez v2, :cond_36

    .line 25
    new-instance v0, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-virtual {p0}, Lcom/google/android/music/sync/SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, authInfo:Lcom/google/android/music/sync/common/AuthInfo;
    new-instance v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;

    invoke-virtual {p0}, Lcom/google/android/music/sync/SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V

    .line 29
    .local v1, musicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;
    invoke-static {}, Lcom/google/android/music/sync/google/MusicSyncAdapter;->newBuilder()Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->setMusicApiClient(Lcom/google/android/music/sync/api/MusicApiClient;)Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/music/sync/google/MusicSyncAdapter$MusicSyncAdapterBuilder;->setAuthInfo(Lcom/google/android/music/sync/common/AuthInfo;)Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->setActionOnInitialization(I)Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/music/sync/SyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$Builder;->build(Landroid/content/Context;)Lcom/google/android/music/sync/common/AbstractSyncAdapter;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    sput-object v2, Lcom/google/android/music/sync/SyncAdapterService;->sSyncAdapter:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    .line 35
    .end local v0           #authInfo:Lcom/google/android/music/sync/common/AuthInfo;
    .end local v1           #musicApiClient:Lcom/google/android/music/sync/api/MusicApiClient;
    :cond_36
    monitor-exit v3

    .line 36
    return-void

    .line 35
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v2
.end method
