.class Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;
.super Ljava/lang/Object;
.source "SensorTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorTestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)V

    return-void
.end method

.method private changeDot(F)Ljava/lang/String;
    .registers 5
    .parameter "value"

    .prologue
    .line 186
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, format:Ljava/text/DecimalFormat;
    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private changeMagneticField(Landroid/hardware/Sensor;[F)V
    .registers 6
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->txtmagnetic:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAGNETIC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->changeDot(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->changeDot(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", z: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p2, v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->changeDot(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method private changeOrientation([F)V
    .registers 6
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->txtorientation:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AZIMUTH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->changeDot(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PITCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->changeDot(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ROLL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->changeDot(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->cv:Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;

    move-result-object v0

    aget v1, p1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->setDirection(F)V

    .line 177
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 150
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->cv:Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->setCurrentCal(I)V

    .line 151
    const/4 v0, 0x2

    if-lt p2, v0, :cond_19

    .line 152
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;

    const/4 v1, 0x1

    #setter for: Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mIsCaled:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->access$202(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;Z)Z

    .line 156
    :cond_19
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 160
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 170
    :goto_9
    return-void

    .line 162
    :pswitch_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->changeOrientation([F)V

    goto :goto_9

    .line 166
    :pswitch_10
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;->changeMagneticField(Landroid/hardware/Sensor;[F)V

    goto :goto_9

    .line 160
    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method
