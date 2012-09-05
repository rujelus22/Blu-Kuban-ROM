.class Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$3;
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
    .line 752
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$3;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 754
    invoke-static {}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 755
    invoke-static {}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 756
    invoke-static {}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 759
    :cond_17
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$502(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 760
    return-void
.end method
