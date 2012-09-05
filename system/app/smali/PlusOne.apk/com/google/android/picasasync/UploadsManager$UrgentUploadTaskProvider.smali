.class Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;
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
    name = "UrgentUploadTaskProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method private constructor <init>(Lcom/google/android/picasasync/UploadsManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1415
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;-><init>(Lcom/google/android/picasasync/UploadsManager;)V

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
            "Lcom/google/android/picasasync/SyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/picasasync/SyncTask;>;"
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$2500(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$2600(Lcom/google/android/picasasync/UploadsManager;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1434
    :cond_10
    :goto_10
    return-void

    .line 1430
    :cond_11
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    const/4 v2, 0x1

    #calls: Lcom/google/android/picasasync/UploadsManager;->getNextTaskFromDb(I)Lcom/google/android/picasasync/UploadTaskEntry;
    invoke-static {v1, v2}, Lcom/google/android/picasasync/UploadsManager;->access$1500(Lcom/google/android/picasasync/UploadsManager;I)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    .line 1431
    .local v0, task:Lcom/google/android/picasasync/UploadTaskEntry;
    if-eqz v0, :cond_10

    .line 1432
    new-instance v1, Lcom/google/android/picasasync/UploadsManager$UploadTask;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/picasasync/UploadsManager$UploadTask;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public onSyncStart()V
    .registers 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #getter for: Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->access$2300(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1419
    return-void
.end method

.method public resetSyncStates()V
    .registers 1

    .prologue
    .line 1424
    return-void
.end method
