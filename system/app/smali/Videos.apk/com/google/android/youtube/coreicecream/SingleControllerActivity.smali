.class public abstract Lcom/google/android/youtube/coreicecream/SingleControllerActivity;
.super Lcom/google/android/youtube/coreicecream/ControllerActivity;
.source "SingleControllerActivity.java"


# instance fields
.field private controller:Lcom/google/android/youtube/coreicecream/Controller;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract newController(Landroid/os/Bundle;)Lcom/google/android/youtube/coreicecream/Controller;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 23
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_12

    .line 24
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 25
    const/16 v1, 0x18

    .line 26
    .local v1, displayOptions:I
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 29
    .end local v1           #displayOptions:I
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->newController(Landroid/os/Bundle;)Lcom/google/android/youtube/coreicecream/Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->controller:Lcom/google/android/youtube/coreicecream/Controller;

    .line 30
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->controller:Lcom/google/android/youtube/coreicecream/Controller;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/youtube/coreicecream/SingleControllerActivity;->addController(Lcom/google/android/youtube/coreicecream/Controller;Landroid/os/Bundle;)V

    .line 31
    return-void
.end method
