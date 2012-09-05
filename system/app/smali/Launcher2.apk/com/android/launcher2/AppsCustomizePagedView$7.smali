.class Lcom/android/launcher2/AppsCustomizePagedView$7;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->prepareGenerateHoloOutlinesTask(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 5
    .parameter "task"
    .parameter "data"

    .prologue
    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 944
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_22

    move-result v0

    if-eqz v0, :cond_15

    .line 947
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 949
    :goto_14
    return-void

    .line 945
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #calls: Lcom/android/launcher2/AppsCustomizePagedView;->onHolographicPageItemsLoaded(Lcom/android/launcher2/AsyncTaskPageData;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->access$300(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_22

    .line 947
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    goto :goto_14

    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    throw v0
.end method
