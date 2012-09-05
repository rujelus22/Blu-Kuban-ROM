.class Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest$2;
.super Landroid/os/Handler;
.source "TouchkeyTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;)V
    .registers 2
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 551
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 559
    :goto_5
    return-void

    .line 554
    :pswitch_6
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchkeyTest finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest$2;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->onFinish()V
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;)V

    goto :goto_5

    .line 551
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
