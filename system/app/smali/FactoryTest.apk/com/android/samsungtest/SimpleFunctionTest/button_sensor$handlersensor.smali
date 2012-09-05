.class Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;
.super Ljava/lang/Object;
.source "button_sensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;)V

    return-void
.end method

.method private changeOrientation([F)V
    .registers 4
    .parameter "values"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->degree_text:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 206
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 210
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 226
    :goto_9
    return-void

    .line 216
    :pswitch_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;->changeOrientation([F)V

    goto :goto_9

    .line 210
    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch
.end method
