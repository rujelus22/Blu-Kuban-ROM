.class Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;
.super Ljava/lang/Object;
.source "AccelerometerSensorTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;-><init>(Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 75
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12
    .parameter "event"

    .prologue
    const-wide/high16 v8, -0x3fbd

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 78
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v4, :cond_5d

    .line 79
    new-array v0, v7, [I

    .line 80
    .local v0, data:[I
    const/16 v1, 0x18

    .line 82
    .local v1, m_Rev_Convert:I
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    float-to-int v2, v2

    neg-int v3, v1

    mul-int/2addr v2, v3

    aput v2, v0, v5

    .line 83
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    float-to-int v2, v2

    neg-int v3, v1

    mul-int/2addr v2, v3

    aput v2, v0, v4

    .line 84
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    float-to-int v2, v2

    neg-int v3, v1

    mul-int/2addr v2, v3

    aput v2, v0, v6

    .line 86
    aget v2, v0, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_85

    .line 87
    aget v2, v0, v5

    int-to-double v2, v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_5e

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iget v2, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    if-eq v2, v7, :cond_5d

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iput v7, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iget-object v2, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->iv:Landroid/widget/ImageView;

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    const-string v2, "AccelerometerSensorTest"

    const-string v3, "browser activity rotation test ----> TURN LANDSCAPE1------- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0           #data:[I
    .end local v1           #m_Rev_Convert:I
    :cond_5d
    :goto_5d
    return-void

    .line 93
    .restart local v0       #data:[I
    .restart local v1       #m_Rev_Convert:I
    :cond_5e
    aget v2, v0, v5

    int-to-double v2, v2

    const-wide/high16 v4, 0x4043

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5d

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iget v2, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5d

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    const/4 v3, 0x4

    iput v3, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iget-object v2, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->iv:Landroid/widget/ImageView;

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 97
    const-string v2, "AccelerometerSensorTest"

    const-string v3, "browser activity rotation test ----> TURN PORTRAIT2------- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 101
    :cond_85
    aget v2, v0, v4

    int-to-double v2, v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_a8

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iget v2, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    if-eq v2, v4, :cond_5d

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iput v4, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iget-object v2, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->iv:Landroid/widget/ImageView;

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    const-string v2, "AccelerometerSensorTest"

    const-string v3, "browser activity rotation test ----> TURN LANDSCAPE3------- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 108
    :cond_a8
    aget v2, v0, v4

    int-to-double v2, v2

    const-wide/high16 v4, 0x4043

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5d

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iget v2, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    if-eq v2, v6, :cond_5d

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iput v6, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;->this$0:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;

    iget-object v2, v2, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->iv:Landroid/widget/ImageView;

    const/high16 v3, 0x7f02

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 112
    const-string v2, "AccelerometerSensorTest"

    const-string v3, "browser activity rotation test ----> TURN PORTRAIT4------- "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method
