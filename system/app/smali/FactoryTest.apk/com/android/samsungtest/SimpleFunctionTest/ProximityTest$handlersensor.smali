.class Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;
.super Ljava/lang/Object;
.source "ProximityTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 224
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 227
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->TestStart:Z
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 229
    const-string v0, "Sensing"

    const-string v1, "change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    float-to-int v0, v0

    if-nez v0, :cond_34

    .line 232
    const-string v0, "Sensing"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->startVibration()V
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$200(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)V

    .line 235
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->working:Z
    invoke-static {v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$302(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Z)Z

    .line 236
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass1:Z
    invoke-static {v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$402(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Z)Z

    .line 237
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->isWorking()V
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)V

    .line 255
    :goto_33
    return-void

    .line 241
    :cond_34
    const-string v0, "Sensing"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$600(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 244
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->working:Z
    invoke-static {v0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$302(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Z)Z

    .line 245
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass1:Z
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 246
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass2:Z
    invoke-static {v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$702(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Z)Z

    .line 248
    :cond_56
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->isWorking()V
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)V

    goto :goto_33

    .line 253
    :cond_5c
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->isWorking()V
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)V

    goto :goto_33
.end method
