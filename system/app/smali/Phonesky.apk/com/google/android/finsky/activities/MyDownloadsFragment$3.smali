.class Lcom/google/android/finsky/activities/MyDownloadsFragment$3;
.super Ljava/lang/Object;
.source "MyDownloadsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MyDownloadsFragment;->attachDownloadQueueListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$3;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Lcom/google/android/finsky/download/Download;)V
    .registers 3
    .parameter "download"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$3;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->asyncRefreshAdapter()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$100(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    .line 358
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 378
    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 370
    return-void
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 3
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 382
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 362
    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 374
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 366
    return-void
.end method

.method public onUpdate()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment$3;->this$0:Lcom/google/android/finsky/activities/MyDownloadsFragment;

    #calls: Lcom/google/android/finsky/activities/MyDownloadsFragment;->asyncRefreshAdapter()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->access$100(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    .line 353
    return-void
.end method
