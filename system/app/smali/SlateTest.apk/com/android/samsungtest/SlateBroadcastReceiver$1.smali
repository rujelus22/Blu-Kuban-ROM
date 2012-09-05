.class Lcom/android/samsungtest/SlateBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "SlateBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SlateBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SlateBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 1249
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$000(Lcom/android/samsungtest/SlateBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1250
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1251
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$100(Lcom/android/samsungtest/SlateBroadcastReceiver;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mSendDelayedResultHandler, Success after 1 sec."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$100(Lcom/android/samsungtest/SlateBroadcastReceiver;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Intent is com.android.windowmanager.RESTORE_ROTATE_CHECK"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.windowmanager.SKIP_ROTATE_CHECK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v0, j:Landroid/content/Intent;
    const-string v2, "DATA"

    const-string v3, "RESTORE_ROTATE_CHECK"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1255
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$000(Lcom/android/samsungtest/SlateBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1257
    :try_start_47
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_58

    .line 1259
    :goto_4a
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateBroadcastReceiver;

    invoke-static {}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$200()Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    #calls: Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V
    invoke-static {v2, v3}, Lcom/android/samsungtest/SlateBroadcastReceiver;->access$300(Lcom/android/samsungtest/SlateBroadcastReceiver;B)V

    .line 1260
    return-void

    .line 1258
    :catch_58
    move-exception v2

    goto :goto_4a
.end method
