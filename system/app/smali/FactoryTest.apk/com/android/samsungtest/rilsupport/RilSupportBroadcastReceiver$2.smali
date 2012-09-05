.class Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$2;
.super Ljava/util/TimerTask;
.source "RilSupportBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$2;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 736
    invoke-static {}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 737
    invoke-static {}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 738
    invoke-static {}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 741
    :cond_17
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$502(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 742
    return-void
.end method
