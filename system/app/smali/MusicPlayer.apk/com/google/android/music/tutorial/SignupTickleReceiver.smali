.class public Lcom/google/android/music/tutorial/SignupTickleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SignupTickleReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 17
    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v1}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheck(Landroid/content/Context;ZZZ)V

    .line 18
    return-void
.end method
