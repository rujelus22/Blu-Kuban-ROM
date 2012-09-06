.class Lcom/google/android/music/dl/artwork/ArtDownloadService$1;
.super Landroid/content/BroadcastReceiver;
.source "ArtDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 281
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 282
    .local v7, watchList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    .line 283
    .local v4, extras:Landroid/os/Bundle;
    if-eqz v4, :cond_25

    .line 284
    const-string v8, "albumIdList"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 286
    .local v2, albums:[J
    if-eqz v2, :cond_25

    .line 287
    move-object v3, v2

    .local v3, arr$:[J
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_17
    if-ge v5, v6, :cond_25

    aget-wide v0, v3, v5

    .line 288
    .local v0, album:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 292
    .end local v0           #album:J
    .end local v2           #albums:[J
    .end local v3           #arr$:[J
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_25
    sget-object v8, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v9, Lcom/google/android/music/dl/artwork/ArtDownloadService$1$1;

    invoke-direct {v9, p0, v7}, Lcom/google/android/music/dl/artwork/ArtDownloadService$1$1;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService$1;Ljava/util/Set;)V

    invoke-static {v8, v9}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method
