.class Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;
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
    name = "ManualUploadTaskProvider"
.end annotation


# instance fields
.field private final mTypePrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/iu/UploadsManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "typePrefix"

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1853
    iput-object p2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->mTypePrefix:Ljava/lang/String;

    .line 1854
    return-void
.end method


# virtual methods
.method public collectTasks(Ljava/util/Collection;)V
    .registers 7
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
    .line 1867
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/plus/iu/SyncTask;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->isExternalStorageMounted()Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2600(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2700(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1879
    :cond_10
    :goto_10
    return-void

    .line 1871
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->mTypePrefix:Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1800(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v0

    .line 1872
    .local v0, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    if-eqz v0, :cond_10

    .line 1873
    new-instance v1, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->mTypePrefix:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1875
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1876
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- SYNC manual upload provider; account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public onSyncStart()V
    .registers 3

    .prologue
    .line 1858
    const-string v0, "iu.UploadsManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1859
    const-string v0, "iu.UploadsManager"

    const-string v1, "onSyncStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$1700(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1862
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncedAccounts:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$2500(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1863
    return-void
.end method
