.class Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$3;
.super Landroid/os/CountDownTimer;
.source "MotorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 104
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;

    const/4 v1, 0x0

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedColor(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;I)V

    .line 106
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mGreenTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 107
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mBlueTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 111
    return-void
.end method

.method public onTick(J)V
    .registers 5
    .parameter "millisUntilFinished"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$3;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;

    const/4 v1, 0x3

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedColor(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->access$000(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;I)V

    .line 101
    return-void
.end method
