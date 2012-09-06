.class final Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;
.super Ljava/lang/Object;
.source "AndroidServerSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnRpcCompletedRunnable"
.end annotation


# instance fields
.field private final onCompleted:Landroid/os/Message;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;

.field private final updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;)V
    .registers 4
    .parameter
    .parameter "updateSettingsRpc"
    .parameter "onCompleted"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->this$0:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->onCompleted:Landroid/os/Message;

    .line 157
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;-><init>(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;Landroid/os/Message;)V

    return-void
.end method

.method private notifyCaller()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->onCompleted:Landroid/os/Message;

    if-eqz v0, :cond_f

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->onCompleted:Landroid/os/Message;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->onCompleted:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    :cond_f
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->hasException()Z

    move-result v0

    if-nez v0, :cond_17

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->this$0:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    #calls: Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->updateSettingsFromRpcResult(Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;->access$100(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings;Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;)V

    .line 166
    :cond_17
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettings$OnRpcCompletedRunnable;->notifyCaller()V

    .line 168
    :cond_1a
    return-void
.end method
