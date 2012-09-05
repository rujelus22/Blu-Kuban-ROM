.class Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest$1;
.super Landroid/os/Handler;
.source "GyroscopeSensorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 168
    :goto_5
    return-void

    .line 163
    :pswitch_6
    const-string v0, "GyroscopeSensorTest"

    const-string v1, "Key Timer Expired"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;

    const/4 v1, 0x0

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->access$002(Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;Z)Z

    goto :goto_5

    .line 160
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
