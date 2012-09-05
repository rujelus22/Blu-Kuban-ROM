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
    .line 218
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    iput-object p3, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    invoke-direct {p0, p2}, Lcom/google/android/picasasync/ImmediateSync$Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .parameter "notUsed"

    .prologue
    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/picasasync/ImmediateSync;->access$000(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v0

    .line 224
    .local v0, sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    new-instance v1, Landroid/content/SyncResult;

    invoke-direct {v1}, Landroid/content/SyncResult;-><init>()V

    .line 225
    .local v1, syncResult:Landroid/content/SyncResult;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 226
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v3, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 228
    const-string v2, "ImmediateSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync album for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    iget-wide v4, v4, Lcom/google/android/picasasync/AlbumEntry;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v3, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V

    .line 231
    iget v2, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncResultCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_61

    .line 232
    invoke-virtual {v1}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_6d

    const/4 v2, 0x2

    :goto_5f
    iput v2, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncResultCode:I

    .line 236
    :cond_61
    iget v2, p0, Lcom/google/android/picasasync/ImmediateSync$2;->syncResultCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_66
    .catchall {:try_start_0 .. :try_end_66} :catchall_6f

    move-result-object v2

    .line 238
    iget-object v3, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #calls: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v3, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    return-object v2

    .line 232
    :cond_6d
    const/4 v2, 0x0

    goto :goto_5f

    .line 238
    .end local v0           #sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    .end local v1           #syncResult:Landroid/content/SyncResult;
    :catchall_6f
    move-exception v2

    iget-object v3, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    #calls: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v3, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 218
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/ImmediateSync$2;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
