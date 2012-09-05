.class public Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;
.super Landroid/app/Activity;
.source "button_sensor.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$1;,
        Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;
    }
.end annotation


# static fields
.field private static Previous_Value:F

.field private static sync_flag:I

.field private static sync_reverse_flag:I


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private dac_xyz_text:Landroid/widget/TextView;

.field private degree_text:Landroid/widget/TextView;

.field ds_dx:I

.field ds_dy:I

.field ds_dz:I

.field e:I

.field hdst:I

.field private hdst_text:Landroid/widget/TextView;

.field int_st:I

.field private int_st_result_text:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrKey:I

.field private mCurrTime:J

.field mOrientationSensor:Landroid/hardware/Sensor;

.field private mPrevKey:I

.field private mPrevTime:J

.field mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;

.field mSensorManager:Landroid/hardware/SensorManager;

.field private measure_result_text:Landroid/widget/TextView;

.field pm:Landroid/os/PowerManager;

.field private powerdown_result_text:Landroid/widget/TextView;

.field tmps:I

.field private tmps_result_text:Landroid/widget/TextView;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput v0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->sync_flag:I

    .line 40
    sput v0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->sync_reverse_flag:I

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->Previous_Value:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 202
    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->degree_text:Landroid/widget/TextView;

    return-object v0
.end method

.method private onFinish()V
    .registers 3

    .prologue
    .line 309
    const-string v0, "MagneticSensor"

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->finish()V

    .line 313
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 294
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 295
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 296
    const/4 v0, 0x1

    .line 302
    :goto_24
    return v0

    .line 300
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mPrevKey:I

    .line 301
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mPrevTime:J

    .line 302
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onAccuracyChanged(II)V
    .registers 6
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 187
    const-string v0, "MagneticSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v0, 0x80

    if-ne p1, v0, :cond_2b

    .line 191
    const/4 v0, 0x1

    sput v0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->sync_reverse_flag:I

    .line 192
    iput p2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->hdst:I

    .line 194
    :cond_2b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 87
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mContext:Landroid/content/Context;

    .line 88
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->getSensors()I

    move-result v0

    .line 89
    .local v0, sensors:I
    const-string v2, "MagneticSensor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->setContentView(I)V

    .line 94
    iput v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mPrevKey:I

    .line 95
    iput-wide v8, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mPrevTime:J

    .line 96
    iput v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mCurrKey:I

    .line 97
    iput-wide v8, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mCurrTime:J

    .line 101
    const v2, 0x7f090013

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->measure_result_text:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f090011

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->powerdown_result_text:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f090018

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->dac_xyz_text:Landroid/widget/TextView;

    .line 105
    const v2, 0x7f090015

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->int_st_result_text:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f090017

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->tmps_result_text:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f09001a

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->degree_text:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->hdst_text:Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 110
    const/16 v2, 0xd

    new-array v1, v2, [I

    .line 113
    .local v1, testResult:[I
    const/4 v2, 0x5

    aget v2, v1, v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->int_st:I

    .line 114
    const/4 v2, 0x6

    aget v2, v1, v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->tmps:I

    .line 115
    aget v2, v1, v7

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dx:I

    .line 116
    const/16 v2, 0xb

    aget v2, v1, v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dy:I

    .line 117
    const/16 v2, 0xc

    aget v2, v1, v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dz:I

    .line 118
    aget v2, v1, v5

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->e:I

    .line 119
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->a:I

    .line 120
    const/4 v2, 0x2

    aget v2, v1, v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->b:I

    .line 121
    aget v2, v1, v6

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->c:I

    .line 122
    const/4 v2, 0x4

    aget v2, v1, v2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->d:I

    .line 124
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->pm:Landroid/os/PowerManager;

    .line 125
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->pm:Landroid/os/PowerManager;

    const-string v3, "MagneticSensor"

    invoke-virtual {v2, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->wl:Landroid/os/PowerManager$WakeLock;

    .line 126
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 130
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 131
    new-instance v2, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$1;)V

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;

    .line 133
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    const-string v0, "MagneticSensor"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 277
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mCurrKey:I

    .line 278
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mCurrTime:J

    .line 281
    const/4 v0, 0x4

    if-ne p1, v0, :cond_25

    .line 282
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_25

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_25

    .line 284
    const/16 v0, 0xcf

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->setResult(I)V

    .line 285
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->onFinish()V

    .line 289
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    const-string v0, "MagneticSensor"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x68

    const/16 v5, 0x98

    const/4 v4, 0x0

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    const-string v1, "MagneticSensor"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, ret_val:Z
    sput v4, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->sync_reverse_flag:I

    .line 159
    sput v4, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->sync_flag:I

    .line 160
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v7, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->tmps_result_text:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->tmps:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->int_st_result_text:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->int_st:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->dac_xyz_text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  Z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dx:I

    if-lt v1, v6, :cond_9f

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dx:I

    if-gt v1, v5, :cond_9f

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dy:I

    if-lt v1, v6, :cond_9f

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dy:I

    if-gt v1, v5, :cond_9f

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dz:I

    if-lt v1, v6, :cond_9f

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->ds_dz:I

    if-gt v1, v5, :cond_9f

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->int_st:I

    if-ne v1, v7, :cond_9f

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->tmps:I

    const/16 v2, 0x6e

    if-lt v1, v2, :cond_9f

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->tmps:I

    if-gt v1, v5, :cond_9f

    .line 173
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->measure_result_text:Landroid/widget/TextView;

    const-string v2, "Pass"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_95
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/button_sensor$handlersensor;

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 184
    return-void

    .line 176
    :cond_9f
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->measure_result_text:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->measure_result_text:Landroid/widget/TextView;

    const-string v2, "Fail"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_95
.end method

.method public onSensorChanged(I[F)V
    .registers 8
    .parameter "sensor"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 241
    const-string v1, "MagneticSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", z: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_40
    array-length v1, p2

    if-ge v0, v1, :cond_6a

    .line 244
    const-string v1, "MagneticSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x: values["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 247
    :cond_6a
    if-ne p1, v4, :cond_72

    .line 249
    sget v1, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->sync_flag:I

    if-nez v1, :cond_72

    .line 254
    sput v4, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->sync_flag:I

    .line 258
    :cond_72
    sget v1, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->sync_reverse_flag:I

    if-ne v1, v4, :cond_a1

    .line 260
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->hdst_text:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->hdst:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->e:I

    if-nez v1, :cond_a2

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->a:I

    if-nez v1, :cond_a2

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->b:I

    if-nez v1, :cond_a2

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->c:I

    if-nez v1, :cond_a2

    iget v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->d:I

    if-nez v1, :cond_a2

    .line 262
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->powerdown_result_text:Landroid/widget/TextView;

    const-string v2, "Pass"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :goto_9c
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 271
    :cond_a1
    return-void

    .line 265
    :cond_a2
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->powerdown_result_text:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->powerdown_result_text:Landroid/widget/TextView;

    const-string v2, "Fail"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9c
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_sensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 200
    return-void
.end method
