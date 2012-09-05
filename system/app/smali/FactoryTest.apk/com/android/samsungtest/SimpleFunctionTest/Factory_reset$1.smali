.class Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset$1;
.super Landroid/os/Handler;
.source "Factory_reset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 76
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_56

    .line 96
    :goto_5
    return-void

    .line 78
    :pswitch_6
    const-string v1, "Factory_reset"

    const-string v2, "Reset response incoming!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 81
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1d

    .line 82
    const-string v1, "Factory_reset"

    const-string v2, "AsyncResult Exception Occur!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 84
    :cond_1d
    const-string v1, "Factory_reset"

    const-string v2, "Success Reset. Reset now!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 90
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_31
    const-string v1, "Factory_reset"

    const-string v2, "SDCARD_FORMAT_COMPLETED!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;

    iget-object v2, v2, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x7cd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_5

    .line 76
    :pswitch_data_56
    .packed-switch 0x7cd
        :pswitch_6
        :pswitch_31
    .end packed-switch
.end method
