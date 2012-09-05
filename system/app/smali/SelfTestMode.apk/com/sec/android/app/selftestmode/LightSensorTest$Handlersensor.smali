.class Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;
.super Ljava/lang/Object;
.source "LightSensorTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/LightSensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/LightSensorTest;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/selftestmode/LightSensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/LightSensorTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/selftestmode/LightSensorTest;Lcom/sec/android/app/selftestmode/LightSensorTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;-><init>(Lcom/sec/android/app/selftestmode/LightSensorTest;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 116
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string v0, "LightSensorTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor value changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 125
    :goto_26
    return-void

    .line 122
    :pswitch_27
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;->this$0:Lcom/sec/android/app/selftestmode/LightSensorTest;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    #calls: Lcom/sec/android/app/selftestmode/LightSensorTest;->changeLightSensor(Landroid/hardware/SensorEvent;F)V
    invoke-static {v0, p1, v1}, Lcom/sec/android/app/selftestmode/LightSensorTest;->access$100(Lcom/sec/android/app/selftestmode/LightSensorTest;Landroid/hardware/SensorEvent;F)V

    goto :goto_26

    .line 120
    nop

    :pswitch_data_32
    .packed-switch 0x5
        :pswitch_27
    .end packed-switch
.end method
