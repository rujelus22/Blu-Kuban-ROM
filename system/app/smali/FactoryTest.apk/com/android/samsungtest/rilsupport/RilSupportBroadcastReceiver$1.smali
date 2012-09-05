.class Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "RilSupportBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;
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
    .line 209
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b0

    .line 256
    :goto_5
    return-void

    .line 217
    :pswitch_6
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #calls: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRilFactoryResetResult()V
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$000(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)V

    goto :goto_5

    .line 221
    :pswitch_c
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #calls: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRilSelectiveResetResult()V
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$100(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)V

    goto :goto_5

    .line 226
    :pswitch_12
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$200(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET_RESULT!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 230
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_31

    .line 232
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$200(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyncResult Exception Occur!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 235
    :cond_31
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_41

    .line 237
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$200(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar.result == NULL! - No answer for response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 241
    :cond_41
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 242
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    #setter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mode_ID:B
    invoke-static {v1, v2}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$302(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;B)B

    .line 243
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$200(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mode_ID:B
    invoke-static {v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$300(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$200(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buf length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v1, "test_result"

    .line 248
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$400(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/samsungtest/rilsupport/TestResult;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 250
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->access$400(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 215
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method
