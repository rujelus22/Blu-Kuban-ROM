.class Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;
.super Ljava/lang/Object;
.source "GyroSensorGraphActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorTestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;-><init>(Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 46
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 49
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 54
    :goto_9
    return-void

    .line 51
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;->this$0:Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;

    iget-object v0, v0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mGyroGraph:Lcom/sec/android/app/lcdtest/GyroSensorGraph;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/lcdtest/GyroSensorGraph;->addValue(FFF)V

    goto :goto_9

    .line 49
    nop

    :pswitch_data_22
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch
.end method
