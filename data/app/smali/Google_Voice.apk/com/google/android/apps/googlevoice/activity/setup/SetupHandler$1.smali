.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SetupHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$1;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v1, 0x42f

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 412
    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->unregisterSmsSentReceiver()V

    .line 413
    return-void

    .line 410
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$1;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v1, 0x430

    invoke-virtual {v0, v1, p2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_12
.end method
