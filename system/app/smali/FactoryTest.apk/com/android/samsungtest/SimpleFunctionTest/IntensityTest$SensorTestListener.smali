.class Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;
.super Ljava/lang/Object;
.source "IntensityTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorTestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest$SensorTestListener;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 438
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2
    .parameter "event"

    .prologue
    .line 441
    return-void
.end method
