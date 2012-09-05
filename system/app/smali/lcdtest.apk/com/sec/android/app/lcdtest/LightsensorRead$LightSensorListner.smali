.class Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;
.super Ljava/lang/Object;
.source "LightsensorRead.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/LightsensorRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightSensorListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/lcdtest/LightsensorRead;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;->this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/lcdtest/LightsensorRead;Lcom/sec/android/app/lcdtest/LightsensorRead$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;-><init>(Lcom/sec/android/app/lcdtest/LightsensorRead;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 207
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 210
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 216
    :goto_9
    return-void

    .line 212
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;->this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    #calls: Lcom/sec/android/app/lcdtest/LightsensorRead;->setSensorValue(F)V
    invoke-static {v0, v1}, Lcom/sec/android/app/lcdtest/LightsensorRead;->access$400(Lcom/sec/android/app/lcdtest/LightsensorRead;F)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;->this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;

    #calls: Lcom/sec/android/app/lcdtest/LightsensorRead;->printCurrentLuxInfo()V
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->access$100(Lcom/sec/android/app/lcdtest/LightsensorRead;)V

    goto :goto_9

    .line 210
    :pswitch_data_1a
    .packed-switch 0x5
        :pswitch_a
    .end packed-switch
.end method
