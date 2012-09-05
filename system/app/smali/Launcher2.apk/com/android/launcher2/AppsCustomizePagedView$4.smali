.class Lcom/android/launcher2/AppsCustomizePagedView$4;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;

.field final synthetic val$sleepMs:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->val$sleepMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 6
    .parameter "task"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 856
    :try_start_1
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->val$sleepMs:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_21

    .line 858
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$4;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #calls: Lcom/android/launcher2/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    invoke-static {v0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_16

    .line 860
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 861
    invoke-virtual {p2, v2}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 864
    :cond_15
    return-void

    .line 860
    :catchall_16
    move-exception v0

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 861
    invoke-virtual {p2, v2}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    :cond_20
    throw v0

    .line 857
    :catch_21
    move-exception v0

    goto :goto_7
.end method
