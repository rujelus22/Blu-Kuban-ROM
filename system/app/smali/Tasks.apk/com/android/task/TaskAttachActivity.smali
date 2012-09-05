.class public Lcom/android/task/TaskAttachActivity;
.super Landroid/app/Activity;
.source "TaskAttachActivity.java"


# instance fields
.field private mView:Lcom/android/task/TaskAttachListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskAttachActivity;->mView:Lcom/android/task/TaskAttachListView;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 54
    iget-object v1, p0, Lcom/android/task/TaskAttachActivity;->mView:Lcom/android/task/TaskAttachListView;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_e

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/task/TaskAttachListView;->configurationChanged(Z)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    return-void

    .line 54
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 14
    const-string v2, "TaskAttachActivity"

    const-string v3, "======== onCreate ========"

    invoke-static {v2, v3}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v2, Lcom/android/task/TaskAttachListView;

    invoke-direct {v2, p0}, Lcom/android/task/TaskAttachListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/task/TaskAttachActivity;->mView:Lcom/android/task/TaskAttachListView;

    .line 19
    if-eqz p1, :cond_2d

    .line 20
    const-string v2, "selectedTasks"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 21
    .local v1, selectedTasks:[J
    array-length v2, v1

    if-lez v2, :cond_2d

    .line 22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 23
    iget-object v2, p0, Lcom/android/task/TaskAttachActivity;->mView:Lcom/android/task/TaskAttachListView;

    iget-object v2, v2, Lcom/android/task/TaskBaseListView;->mAdapter:Lcom/android/task/TaskBaseListAdapter;

    aget-wide v3, v1, v0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/task/TaskBaseListAdapter;->setCheck(JZ)V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 28
    .end local v0           #i:I
    .end local v1           #selectedTasks:[J
    :cond_2d
    iget-object v2, p0, Lcom/android/task/TaskAttachActivity;->mView:Lcom/android/task/TaskAttachListView;

    invoke-virtual {p0, v2}, Lcom/android/task/TaskAttachActivity;->setContentView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 33
    const-string v0, "TaskAttachActivity"

    const-string v1, "======== onDestroy ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 35
    iget-object v0, p0, Lcom/android/task/TaskAttachActivity;->mView:Lcom/android/task/TaskAttachListView;

    invoke-virtual {v0}, Lcom/android/task/TaskAttachListView;->destroy()V

    .line 36
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 48
    const-string v0, "TaskAttachActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 50
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 40
    const-string v0, "TaskAttachActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/android/task/TaskAttachActivity;->mView:Lcom/android/task/TaskAttachListView;

    invoke-virtual {v0}, Lcom/android/task/TaskAttachListView;->update()V

    .line 44
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 61
    const-string v0, "selectedTasks"

    iget-object v1, p0, Lcom/android/task/TaskAttachActivity;->mView:Lcom/android/task/TaskAttachListView;

    invoke-virtual {v1}, Lcom/android/task/TaskAttachListView;->getSelectedTasks()[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method
