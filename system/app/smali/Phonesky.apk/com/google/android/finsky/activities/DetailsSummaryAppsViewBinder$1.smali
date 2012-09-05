.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->syncDynamicSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

.field final synthetic val$download:Lcom/google/android/finsky/download/Download;

.field final synthetic val$downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/download/Download;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$download:Lcom/google/android/finsky/download/Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$download:Lcom/google/android/finsky/download/Download;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    .line 146
    return-void
.end method
