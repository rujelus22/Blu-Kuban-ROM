.class public Lcom/swype/android/voice/VoiceResultActivity;
.super Landroid/app/Activity;
.source "VoiceResultActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swype/android/voice/VoiceResultActivity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/swype/android/voice/VoiceResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 25
    invoke-virtual {p0}, Lcom/swype/android/voice/VoiceResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_33

    .line 27
    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 31
    :cond_33
    invoke-virtual {p0}, Lcom/swype/android/voice/VoiceResultActivity;->finish()V

    .line 32
    return-void
.end method
