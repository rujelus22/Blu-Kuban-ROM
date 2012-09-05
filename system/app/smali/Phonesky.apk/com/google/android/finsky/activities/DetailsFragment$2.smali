.class Lcom/google/android/finsky/activities/DetailsFragment$2;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsFragment;->attachDownloadQueueListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsFragment$2;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private syncSummarySection()V
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$2;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    #getter for: Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsFragment;->access$000(Lcom/google/android/finsky/activities/DetailsFragment;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->refresh()V

    .line 669
    return-void
.end method


# virtual methods
.method public onAdd(Lcom/google/android/finsky/download/Download;)V
    .registers 3
    .parameter "download"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$2;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 663
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsFragment$2;->syncSummarySection()V

    .line 665
    :cond_b
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 689
    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 681
    return-void
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 3
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 693
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 673
    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 685
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 677
    return-void
.end method

.method public onUpdate()V
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment$2;->this$0:Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 656
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsFragment$2;->syncSummarySection()V

    .line 658
    :cond_b
    return-void
.end method
