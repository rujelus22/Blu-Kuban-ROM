.class Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;
.super Ljava/lang/Object;
.source "UploadsManager.java"

# interfaces
.implements Lcom/google/android/picasasync/SyncTaskProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewMediaUploadTaskProvider"
.end annotation


# instance fields
.field protected final mMediaType:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "mediaType"

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iput-object p2, p0, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;->mMediaType:Ljava/lang/String;

    .line 1448
    return-void
.end method


# virtual methods
.method public collectTasks(Ljava/util/Collection;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/picasasync/SyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1462
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/picasasync/SyncTask;>;"
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$2500(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$2600(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1464
    :cond_10
    :goto_10
    return-void

    .line 1463
    :cond_11
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;->mMediaType:Ljava/lang/String;

    #calls: Lcom/google/android/picasasync/UploadsManager;->collectAutoUploadNewPhotoTasks(Ljava/util/Collection;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/google/android/picasasync/UploadsManager;->access$2700(Lcom/google/android/picasasync/UploadsManager;Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public onSyncStart()V
    .registers 1

    .prologue
    .line 1453
    return-void
.end method

.method public resetSyncStates()V
    .registers 1

    .prologue
    .line 1458
    return-void
.end method