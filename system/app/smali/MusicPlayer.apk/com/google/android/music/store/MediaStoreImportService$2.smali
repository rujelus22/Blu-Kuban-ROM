.class Lcom/google/android/music/store/MediaStoreImportService$2;
.super Ljava/lang/Object;
.source "MediaStoreImportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MediaStoreImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/store/MediaStoreImportService;


# direct methods
.method constructor <init>(Lcom/google/android/music/store/MediaStoreImportService;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 102
    const/4 v2, 0x1

    .line 104
    .local v2, waitForPauseInChanges:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    .local v0, now:J
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    #getter for: Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J
    invoke-static {v3}, Lcom/google/android/music/store/MediaStoreImportService;->access$400(Lcom/google/android/music/store/MediaStoreImportService;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_43

    .line 106
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    #getter for: Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J
    invoke-static {v3}, Lcom/google/android/music/store/MediaStoreImportService;->access$400(Lcom/google/android/music/store/MediaStoreImportService;)J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-lez v3, :cond_20

    .line 108
    const/4 v2, 0x0

    .line 114
    :cond_20
    :goto_20
    if-eqz v2, :cond_42

    .line 116
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    #getter for: Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;
    invoke-static {v3}, Lcom/google/android/music/store/MediaStoreImportService;->access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    #getter for: Lcom/google/android/music/store/MediaStoreImportService;->mDelayedImport:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/google/android/music/store/MediaStoreImportService;->access$200(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/Worker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    #getter for: Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;
    invoke-static {v3}, Lcom/google/android/music/store/MediaStoreImportService;->access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    #getter for: Lcom/google/android/music/store/MediaStoreImportService;->mDelayedImport:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/google/android/music/store/MediaStoreImportService;->access$200(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/Worker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_42
    return-void

    .line 111
    :cond_43
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImportService$2;->this$0:Lcom/google/android/music/store/MediaStoreImportService;

    #setter for: Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J
    invoke-static {v3, v0, v1}, Lcom/google/android/music/store/MediaStoreImportService;->access$402(Lcom/google/android/music/store/MediaStoreImportService;J)J

    goto :goto_20
.end method
