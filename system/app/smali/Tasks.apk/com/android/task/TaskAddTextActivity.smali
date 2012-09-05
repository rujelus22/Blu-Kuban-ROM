.class public Lcom/android/task/TaskAddTextActivity;
.super Landroid/app/Activity;
.source "TaskAddTextActivity.java"


# instance fields
.field private mView:Lcom/android/task/TaskAddTextListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskAddTextActivity;->mView:Lcom/android/task/TaskAddTextListView;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 44
    iget-object v1, p0, Lcom/android/task/TaskAddTextActivity;->mView:Lcom/android/task/TaskAddTextListView;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_e

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/task/TaskAddTextListView;->configurationChanged(Z)V

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    return-void

    .line 44
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 14
    const-string v0, "TaskAddTextActivity"

    const-string v1, "======== onCreate ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v0, Lcom/android/task/TaskAddTextListView;

    invoke-direct {v0, p0}, Lcom/android/task/TaskAddTextListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/task/TaskAddTextActivity;->mView:Lcom/android/task/TaskAddTextListView;

    .line 18
    iget-object v0, p0, Lcom/android/task/TaskAddTextActivity;->mView:Lcom/android/task/TaskAddTextListView;

    invoke-virtual {p0, v0}, Lcom/android/task/TaskAddTextActivity;->setContentView(Landroid/view/View;)V

    .line 19
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 23
    const-string v0, "TaskAddTextActivity"

    const-string v1, "======== onDestroy ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 25
    iget-object v0, p0, Lcom/android/task/TaskAddTextActivity;->mView:Lcom/android/task/TaskAddTextListView;

    invoke-virtual {v0}, Lcom/android/task/TaskAddTextListView;->destroy()V

    .line 26
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 38
    const-string v0, "TaskAddTextActivity"

    const-string v1, "======== onPause ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 30
    const-string v0, "TaskAddTextActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/android/task/TaskAddTextActivity;->mView:Lcom/android/task/TaskAddTextListView;

    invoke-virtual {v0}, Lcom/android/task/TaskAddTextListView;->update()V

    .line 34
    return-void
.end method
