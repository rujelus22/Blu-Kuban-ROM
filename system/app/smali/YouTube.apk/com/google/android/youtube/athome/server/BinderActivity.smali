.class public abstract Lcom/google/android/youtube/athome/server/BinderActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/athome/server/b;

.field private b:Lcom/google/android/youtube/athome/server/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/athome/server/BinderActivity;->setIntent(Landroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/athome/server/BinderActivity;->a:Lcom/google/android/youtube/athome/server/b;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_b
    const-string v1, "should called setHandler in onCreate()"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/youtube/athome/server/BinderActivity;->getIntent()Landroid/content/Intent;

    .line 45
    return-void

    .line 43
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/athome/server/BinderActivity;->a:Lcom/google/android/youtube/athome/server/b;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    const-string v1, "should called setHandler in onCreate()"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/athome/server/BinderActivity;->a:Lcom/google/android/youtube/athome/server/b;

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 59
    return-void

    .line 56
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/athome/server/BinderActivity;->a:Lcom/google/android/youtube/athome/server/b;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_8
    const-string v1, "should called setHandler in onCreate()"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/athome/server/BinderActivity;->a:Lcom/google/android/youtube/athome/server/b;

    iget-object v0, p0, Lcom/google/android/youtube/athome/server/BinderActivity;->b:Lcom/google/android/youtube/athome/server/a;

    .line 52
    return-void

    .line 50
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/athome/server/BinderActivity;->a:Lcom/google/android/youtube/athome/server/b;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_8
    const-string v1, "should called setHandler in onCreate()"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/youtube/athome/server/BinderActivity;->getIntent()Landroid/content/Intent;

    .line 37
    return-void

    .line 35
    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method
