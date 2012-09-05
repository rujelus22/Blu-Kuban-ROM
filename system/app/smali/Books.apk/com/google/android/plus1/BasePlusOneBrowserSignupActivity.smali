.class public abstract Lcom/google/android/plus1/BasePlusOneBrowserSignupActivity;
.super Lcom/google/android/plus1/BasePlusOneWebSignupActivity;
.source "BasePlusOneBrowserSignupActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isFromActivity(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 43
    const-string v0, "plusOneUsername"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneBrowserSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneBrowserSignupActivity;->isFromActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 24
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneBrowserSignupActivity;->finish()V

    .line 27
    :cond_10
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/plus1/BasePlusOneBrowserSignupActivity;->isFromActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/plus1/BasePlusOneBrowserSignupActivity;->setIntent(Landroid/content/Intent;)V

    .line 53
    :goto_9
    return-void

    .line 51
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneBrowserSignupActivity;->processSignupResultUriAndFinish(Landroid/net/Uri;)V

    goto :goto_9
.end method
