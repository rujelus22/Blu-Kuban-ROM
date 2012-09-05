.class Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$1;
.super Landroid/os/Handler;
.source "UsbTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mHandler PASS_USBPATH_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->setResult(I)V

    .line 196
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest$1;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    invoke-virtual {v0}, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;->finish()V

    .line 197
    return-void
.end method
