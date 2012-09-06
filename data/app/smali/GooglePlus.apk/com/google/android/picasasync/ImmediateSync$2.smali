.class Lcom/google/android/picasasync/ImmediateSync$2;
.super Lcom/google/android/picasasync/ImmediateSync$Task;
.source "ImmediateSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbum(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/ImmediateSync;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$album:Lcom/google/android/picasasync/AlbumEntry;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/AlbumEntry;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    iput-object p3, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/ImmediateSync$Task;-><init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doSync([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 10
    .parameter "notUsed"

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-nez v4, :cond_13

    .line 254
    const-string v4, "ImmediateSync"

    const-string v5, "master auto sync is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 282
    :goto_12
    return-object v3

    .line 257
    :cond_13
    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 260
    const-string v4, "ImmediateSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto sync is off on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_12

    .line 264
    :cond_53
    const-string v4, "ImmediateSync.album"

    invoke-static {v4}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, statsId:I
    :try_start_59
    iget-object v4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v1

    .line 268
    .local v1, sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    new-instance v2, Landroid/content/SyncResult;

    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    .line 269
    .local v2, syncResult:Landroid/content/SyncResult;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 270
    iget-object v4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 272
    const-string v4, "ImmediateSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync album for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    iget-wide v6, v6, Lcom/google/android/picasasync/AlbumEntry;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V

    .line 275
    iget-object v4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v3, 0x1

    :cond_b5
    :goto_b5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b8
    .catchall {:try_start_59 .. :try_end_b8} :catchall_c8

    move-result-object v3

    .line 282
    const-string v4, "picasa.sync.metadata"

    invoke-static {v0, v4}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_12

    .line 275
    :cond_c0
    :try_start_c0
    invoke-virtual {v2}, Landroid/content/SyncResult;->hasError()Z
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c8

    move-result v4

    if-eqz v4, :cond_b5

    const/4 v3, 0x2

    goto :goto_b5

    .line 282
    .end local v1           #sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    .end local v2           #syncResult:Landroid/content/SyncResult;
    :catchall_c8
    move-exception v3

    const-string v4, "picasa.sync.metadata"

    invoke-static {v0, v4}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v3
.end method
