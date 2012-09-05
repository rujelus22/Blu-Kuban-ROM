.class Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;
.super Ljava/lang/Object;
.source "RilActionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V
    .registers 2
    .parameter

    .prologue
    .line 4826
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4826
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 4830
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x41c0

    .line 4834
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_c4

    .line 4852
    :goto_c
    return-void

    .line 4836
    :sswitch_d
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorX:I
    invoke-static {v0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1202(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 4837
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorY:I
    invoke-static {v0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1302(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 4838
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorZ:I
    invoke-static {v0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1402(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 4839
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged: mSensorX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorX:I
    invoke-static {v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSensorY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorY:I
    invoke-static {v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1300(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSensorZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorZ:I
    invoke-static {v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1400(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4843
    :sswitch_6f
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mProximityData:I
    invoke-static {v0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1502(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 4844
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged: mProximityData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mProximityData:I
    invoke-static {v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1500(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4848
    :sswitch_99
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I
    invoke-static {v0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 4849
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged: mLightData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I
    invoke-static {v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$1600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4834
    nop

    :sswitch_data_c4
    .sparse-switch
        0x1 -> :sswitch_d
        0x5 -> :sswitch_99
        0x8 -> :sswitch_6f
    .end sparse-switch
.end method
