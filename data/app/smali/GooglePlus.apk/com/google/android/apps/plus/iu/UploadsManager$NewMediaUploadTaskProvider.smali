.class Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;
.super Ljava/lang/Object;
.source "UploadsManager.java"

# interfaces
.implements Lcom/google/android/apps/plus/iu/SyncTaskProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewMediaUploadTaskProvider"
.end annotation


# instance fields
.field protected final mMediaType:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/iu/UploadsManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "mediaType"

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1932
    iput-object p2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;->mMediaType:Ljava/lang/String;

    .line 1933
    return-void
.end method


# virtual methods
.method public collectTasks(Ljava/util/Collection;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/plus/iu/SyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/plus/iu/SyncTask;>;"
    const/4 v3, 0x4

    .line 1942
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;->mMediaType:Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->getAutoUploadNewPhotoTask(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2900(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    move-result-object v0

    .line 1943
    .local v0, task:Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    if-eqz v0, :cond_2f

    .line 1944
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->isExternalStorageMounted()Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2600(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2700(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1945
    :cond_1b
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onStateChanged(I)V

    .line 1947
    const-string v1, "iu.UploadsManager"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1948
    const-string v1, "iu.UploadsManager"

    const-string v2, "--- SKIP IU provider; no storage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_2f
    :goto_2f
    return-void

    .line 1951
    :cond_30
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1953
    const-string v1, "iu.UploadsManager"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1954
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- SYNC IU provider; account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public onSyncStart()V
    .registers 1

    .prologue
    .line 1938
    return-void
.end method
