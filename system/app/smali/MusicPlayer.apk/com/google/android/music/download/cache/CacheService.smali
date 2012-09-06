.class public Lcom/google/android/music/download/cache/CacheService;
.super Landroid/app/Service;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/cache/CacheService$CacheWorker;
    }
.end annotation


# instance fields
.field private volatile mCacheManager:Lcom/google/android/music/download/cache/CacheManagerImpl;

.field private mCacheWorker:Lcom/google/android/music/download/cache/CacheService$CacheWorker;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/music/download/cache/CacheService$CacheWorker;

    const-string v1, "CacheService"

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/download/cache/CacheService$CacheWorker;-><init>(Lcom/google/android/music/download/cache/CacheService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/download/cache/CacheService;->mCacheWorker:Lcom/google/android/music/download/cache/CacheService$CacheWorker;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/download/cache/CacheService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/music/download/cache/CacheService;->handleClearOrphaned()V

    return-void
.end method

.method private handleClearOrphaned()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/download/cache/CacheService;->mCacheManager:Lcom/google/android/music/download/cache/CacheManagerImpl;

    invoke-virtual {v0}, Lcom/google/android/music/download/cache/CacheManagerImpl;->clearOrphanedFiles()V

    .line 72
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 58
    const-string v0, "CacheService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/music/download/cache/CacheService;->mCacheManager:Lcom/google/android/music/download/cache/CacheManagerImpl;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 45
    const-string v0, "CacheService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/google/android/music/download/cache/CacheManagerImpl;

    invoke-direct {v0, p0}, Lcom/google/android/music/download/cache/CacheManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/download/cache/CacheService;->mCacheManager:Lcom/google/android/music/download/cache/CacheManagerImpl;

    .line 47
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 52
    const-string v0, "CacheService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/music/download/cache/CacheService;->mCacheWorker:Lcom/google/android/music/download/cache/CacheService$CacheWorker;

    invoke-virtual {v0}, Lcom/google/android/music/download/cache/CacheService$CacheWorker;->quit()V

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-object v1, p0, Lcom/google/android/music/download/cache/CacheService;->mCacheWorker:Lcom/google/android/music/download/cache/CacheService$CacheWorker;

    invoke-virtual {v1, v2}, Lcom/google/android/music/download/cache/CacheService$CacheWorker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 65
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 66
    iget-object v1, p0, Lcom/google/android/music/download/cache/CacheService;->mCacheWorker:Lcom/google/android/music/download/cache/CacheService$CacheWorker;

    invoke-virtual {v1, v0}, Lcom/google/android/music/download/cache/CacheService$CacheWorker;->sendMessage(Landroid/os/Message;)Z

    .line 67
    return v2
.end method
