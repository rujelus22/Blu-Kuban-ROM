.class Lcom/google/android/music/athome/AtHomeDevicePlayback$16;
.super Landroid/content/BroadcastReceiver;
.source "AtHomeDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 2789
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$16;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2792
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2793
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$16;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailureHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$16;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mDeferredNotifyFailureRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2798
    :cond_1b
    :goto_1b
    return-void

    .line 2794
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2795
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$16;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailureHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$16;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mDeferredNotifyFailureRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b
.end method
