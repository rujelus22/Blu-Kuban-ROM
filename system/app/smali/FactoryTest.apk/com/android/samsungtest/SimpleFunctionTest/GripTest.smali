.class public Lcom/android/samsungtest/SimpleFunctionTest/GripTest;
.super Landroid/app/Activity;
.source "GripTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/GripTest$1;,
        Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private gripsensing:[Z

.field private leftGripSensor:Landroid/widget/TextView;

.field leftSensorAttach:Z

.field private mCurrKey:I

.field private mCurrTime:J

.field mGripSensor:Landroid/hardware/Sensor;

.field private mPrevKey:I

.field private mPrevTime:J

.field mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private pass:Z

.field pm:Landroid/os/PowerManager;

.field private rightGripSensor:Landroid/widget/TextView;

.field rightSensorAttach:Z

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->pass:Z

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->gripsensing:[Z

    .line 41
    const-string v0, "GripTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    .line 178
    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->leftGripSensor:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->gripsensing:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->rightGripSensor:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->pass:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->pass:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->onFinish()V

    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 113
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 114
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mGripSensor:Landroid/hardware/Sensor;

    .line 115
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->leftGripSensor:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->rightGripSensor:Landroid/widget/TextView;

    .line 117
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/GripTest;Lcom/android/samsungtest/SimpleFunctionTest/GripTest$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;

    .line 118
    return-void
.end method

.method private onFinish()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->finish()V

    .line 126
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 166
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 167
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 168
    const/4 v0, 0x1

    .line 174
    :goto_24
    return v0

    .line 172
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mPrevKey:I

    .line 173
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mPrevTime:J

    .line 174
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->setContentView(I)V

    .line 67
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->pm:Landroid/os/PowerManager;

    .line 68
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 69
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 71
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mPrevKey:I

    .line 72
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mPrevTime:J

    .line 73
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mCurrKey:I

    .line 74
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mCurrTime:J

    .line 76
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->init()V

    .line 86
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 110
    return-void
.end method

.method public onExit()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onEXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->setResult(I)V

    .line 132
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setResult(RESULT_CANCELED);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->finish()V

    .line 136
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mCurrKey:I

    .line 145
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mCurrTime:J

    .line 147
    const/4 v0, 0x4

    if-ne p1, v0, :cond_45

    .line 149
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_43

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_43

    .line 151
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->onExit()V

    .line 162
    :cond_43
    :goto_43
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_45
    const/4 v0, 0x3

    if-ne p1, v0, :cond_50

    .line 156
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KEYCODE_HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 157
    :cond_50
    const/16 v0, 0x54

    if-ne p1, v0, :cond_5c

    .line 158
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KEYCODE_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 159
    :cond_5c
    const/16 v0, 0x52

    if-ne p1, v0, :cond_43

    .line 160
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KEYCODE_MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 103
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 104
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 93
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/GripTest$handlersensor;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GripTest;->mGripSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 96
    return-void
.end method
