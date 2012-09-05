.class Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$2;
.super Landroid/os/Handler;
.source "SDCardFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/16 v3, 0x7cf

    .line 358
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    .line 373
    :goto_7
    return-void

    .line 360
    :pswitch_8
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNMOUNT_WAIT_DELAY!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->chekExtSDUnmounted()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$600()I

    move-result v0

    if-gez v0, :cond_30

    .line 363
    :cond_21
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->mHandlerSDUnmounted:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$700(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->StartThreadDeleteAllFiles()V

    goto :goto_7

    .line 367
    :cond_30
    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$610()I

    .line 368
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNMOUNT_WAIT_DELAY!! (checkRetry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$600()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->mHandlerSDUnmounted:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$700(Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->access$300()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 358
    :pswitch_data_68
    .packed-switch 0x7cf
        :pswitch_8
    .end packed-switch
.end method
