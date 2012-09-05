.class Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$1;
.super Landroid/os/Handler;
.source "TouchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 112
    :goto_5
    return-void

    .line 108
    :pswitch_6
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    const/4 v1, 0x0

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->access$002(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;Z)Z

    goto :goto_5

    .line 106
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
