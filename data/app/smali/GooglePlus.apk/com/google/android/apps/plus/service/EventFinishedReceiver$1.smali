.class Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;
.super Ljava/lang/Object;
.source "EventFinishedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EventFinishedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/EventFinishedReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EventFinishedReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->this$0:Lcom/google/android/apps/plus/service/EventFinishedReceiver;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->val$eventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->val$eventId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsEventData;->disableInstantShare(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    .line 46
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 48
    return-void

    .line 46
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EventFinishedReceiver$1;->val$wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
