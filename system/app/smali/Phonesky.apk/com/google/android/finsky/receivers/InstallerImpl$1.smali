.class Lcom/google/android/finsky/receivers/InstallerImpl$1;
.super Landroid/os/AsyncTask;
.source "InstallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Collection",
        "<",
        "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$1;->doInBackground([Ljava/lang/Void;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Collection;
    .registers 10
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "patches"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v3, patchCacheDirectory:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 128
    .local v5, patchFiles:[Ljava/io/File;
    if-eqz v5, :cond_2b

    array-length v6, v5

    if-eqz v6, :cond_2b

    .line 129
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_21
    if-ge v1, v2, :cond_2b

    aget-object v4, v0, v1

    .line 130
    .local v4, patchFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 136
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #patchFile:Ljava/io/File;
    .end local v5           #patchFiles:[Ljava/io/File;
    :cond_2b
    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-static {v6}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$000(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    .line 138
    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v6}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$100(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/finsky/download/DownloadQueue;->getRunningUris()Ljava/util/Collection;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    check-cast p1, Ljava/util/Collection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$1;->onPostExecute(Ljava/util/Collection;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Collection;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, runningDownloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;>;"
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 143
    if-eqz p1, :cond_5a

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, oneRecovered:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;

    .line 146
    .local v2, record:Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;
    const-string v4, "Attempt recovery of %s %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    aput-object v6, v5, v8

    iget v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v4, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 149
    .local v3, uri:Landroid/net/Uri;
    if-nez v1, :cond_3b

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget v5, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->recoverDownload(Landroid/net/Uri;I)Z
    invoke-static {v4, v3, v5}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$200(Lcom/google/android/finsky/receivers/InstallerImpl;Landroid/net/Uri;I)Z

    move-result v4

    if-nez v4, :cond_58

    .line 150
    :cond_3b
    const-string v4, "Releasing %s %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    aput-object v6, v5, v8

    iget v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$100(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    goto :goto_a

    .line 154
    :cond_58
    const/4 v1, 0x1

    goto :goto_a

    .line 160
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #oneRecovered:Z
    .end local v2           #record:Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5a
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    #setter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z
    invoke-static {v4, v7}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$302(Lcom/google/android/finsky/receivers/InstallerImpl;Z)Z

    .line 161
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    const/4 v5, 0x0

    #calls: Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v7}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$400(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V

    .line 162
    return-void
.end method
