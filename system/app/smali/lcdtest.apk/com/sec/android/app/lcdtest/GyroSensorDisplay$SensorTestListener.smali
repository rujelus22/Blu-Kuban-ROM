.class Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;
.super Ljava/lang/Object;
.source "GyroSensorDisplay.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/GyroSensorDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorTestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;-><init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 166
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    const v5, 0x42654ca3

    .line 169
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 173
    :goto_c
    return-void

    .line 171
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorDisplay;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v1, v5

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v3, v5

    #calls: Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->getValueFromSensor(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->access$800(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;FFF)V

    goto :goto_c

    .line 169
    nop

    :pswitch_data_26
    .packed-switch 0x4
        :pswitch_d
    .end packed-switch
.end method
