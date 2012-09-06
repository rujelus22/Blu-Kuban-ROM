.class Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;
.super Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExistingMediaUploadTaskProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/iu/UploadsManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "mediaType"

    .prologue
    .line 1968
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    .line 1969
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    .line 1970
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

    .line 1974
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;->mMediaType:Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->getAutoUploadOldPhotoTask(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3000(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    move-result-object v0

    .line 1975
    .local v0, task:Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    if-eqz v0, :cond_2f

    .line 1976
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->isExternalStorageMounted()Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2600(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2700(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1977
    :cond_1b
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onStateChanged(I)V

    .line 1979
    const-string v1, "iu.UploadsManager"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1980
    const-string v1, "iu.UploadsManager"

    const-string v2, "--- SKIP IU provider; no storage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_2f
    :goto_2f
    return-void

    .line 1983
    :cond_30
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1985
    const-string v1, "iu.UploadsManager"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1986
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- SYNC upload all provider; account: "

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
