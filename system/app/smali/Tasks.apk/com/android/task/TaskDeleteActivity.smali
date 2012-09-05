.class public Lcom/android/task/TaskDeleteActivity;
.super Landroid/app/Activity;
.source "TaskDeleteActivity.java"


# instance fields
.field private mView:Lcom/android/task/TaskDeleteListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 53
    iget-object v1, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_e

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/task/TaskDeleteListView;->configurationChanged(Z)V

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    return-void

    .line 53
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 17
    const-string v0, "TaskDeleteActivity"

    const-string v1, "======== onCreate ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v0, Lcom/android/task/TaskDeleteListView;

    invoke-direct {v0, p0}, Lcom/android/task/TaskDeleteListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    .line 21
    iget-object v0, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    invoke-virtual {p0, v0}, Lcom/android/task/TaskDeleteActivity;->setContentView(Landroid/view/View;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 27
    const-string v0, "TaskDeleteActivity"

    const-string v1, "======== onDestroy ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 29
    iget-object v0, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    invoke-virtual {v0}, Lcom/android/task/TaskDeleteListView;->destroy()V

    .line 30
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 48
    const-string v0, "TaskDeleteActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 50
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    const-string v1, "selected_tasks"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/task/TaskDeleteListView;->setSelectedTasks([J)V

    .line 67
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 34
    const-string v0, "TaskDeleteActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    iget-object v0, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    sget-object v1, Lcom/android/task/TaskMainActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/task/TaskDeleteListView;->setOrderBy(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    invoke-virtual {v0}, Lcom/android/task/TaskDeleteListView;->update()V

    .line 44
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    const-string v0, "selected_tasks"

    iget-object v1, p0, Lcom/android/task/TaskDeleteActivity;->mView:Lcom/android/task/TaskDeleteListView;

    invoke-virtual {v1}, Lcom/android/task/TaskDeleteListView;->getSelectedTasks()[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 61
    return-void
.end method
