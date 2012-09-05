.class public Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;
.super Landroid/app/Activity;
.source "ProximityTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$1;,
        Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final TIMELESS:I

.field private TestStart:Z

.field private info:Landroid/widget/TextView;

.field private mBackgroudLayout:Landroid/widget/LinearLayout;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mlistner:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;

.field private pass1:Z

.field private pass2:Z

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;

.field private working:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->TIMELESS:I

    .line 36
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->working:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass1:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass2:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->TestStart:Z

    .line 44
    const-string v0, "Proximity Test"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->LOG_TAG:Ljava/lang/String;

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->TestStart:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->startVibration()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->working:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass1:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass1:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->isWorking()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass2:Z

    return p1
.end method

.method private init()V
    .registers 5

    .prologue
    .line 108
    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->info:Landroid/widget/TextView;

    .line 110
    new-instance v1, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$1;)V

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mlistner:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;

    .line 112
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 113
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 114
    .local v0, sensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mlistner:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 115
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    .line 116
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    .line 117
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->info:Landroid/widget/TextView;

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    return-void
.end method

.method private isWorking()V
    .registers 5

    .prologue
    const v3, 0x7f070004

    const v2, 0x7f070001

    .line 121
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->TestStart:Z

    if-eqz v0, :cond_5f

    .line 123
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->working:Z

    if-eqz v0, :cond_35

    .line 124
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->info:Landroid/widget/TextView;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    const-string v0, "Proximity"

    const-string v1, "Working"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_2d
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pass2:Z

    if-eqz v0, :cond_34

    .line 135
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->onFinish()V

    .line 146
    :cond_34
    :goto_34
    return-void

    .line 128
    :cond_35
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 129
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->info:Landroid/widget/TextView;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const-string v0, "Proximity"

    const-string v1, "Release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 140
    :cond_5f
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 141
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 142
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->info:Landroid/widget/TextView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_34
.end method

.method private startVibration()V
    .registers 4

    .prologue
    .line 217
    const-string v0, "ProximityTest"

    const-string v1, "Vibration start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 219
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 204
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 205
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 206
    const/4 v0, 0x1

    .line 212
    :goto_24
    return v0

    .line 210
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mPrevKey:I

    .line 211
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mPrevTime:J

    .line 212
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->setContentView(I)V

    .line 57
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pm:Landroid/os/PowerManager;

    .line 58
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "Proximity Test"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 59
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 60
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 63
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mPrevKey:I

    .line 64
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mPrevTime:J

    .line 65
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mCurrKey:I

    .line 66
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mCurrTime:J

    .line 68
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->init()V

    .line 69
    iput-boolean v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->TestStart:Z

    .line 70
    const-string v0, "Proximity Test"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 101
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mlistner:Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    const-string v0, "Proximity Test"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public onExit()V
    .registers 3

    .prologue
    .line 160
    const-string v0, "Sensing"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->finish()V

    .line 167
    return-void
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 149
    const-string v0, "Sensing"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 155
    const/16 v0, 0xe1

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->finish()V

    .line 157
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 172
    const-string v0, "KEYCODE"

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mCurrKey:I

    .line 177
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mCurrTime:J

    .line 179
    const/4 v0, 0x4

    if-ne p1, v0, :cond_45

    .line 180
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_44

    .line 182
    const-string v0, "KEYCODE"

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->onExit()V

    .line 200
    :cond_44
    :goto_44
    return v3

    .line 187
    :cond_45
    const/4 v0, 0x3

    if-ne p1, v0, :cond_50

    .line 188
    const-string v0, "FactoryTestApp"

    const-string v1, "KEYCODE_HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 189
    :cond_50
    const/16 v0, 0x54

    if-ne p1, v0, :cond_5c

    .line 190
    const-string v0, "FactoryTestApp"

    const-string v1, "KEYCODE_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 191
    :cond_5c
    const/16 v0, 0x52

    if-ne p1, v0, :cond_68

    .line 192
    const-string v0, "FactoryTestApp"

    const-string v1, "KEYCODE_MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 194
    :cond_68
    const/16 v0, 0x19

    if-ne p1, v0, :cond_44

    .line 195
    const-string v0, "jyseo"

    const-string v1, "KEYCODE_volumeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->TestStart:Z

    .line 197
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->isWorking()V

    goto :goto_44
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    :try_start_5
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 90
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_28

    .line 95
    :cond_1d
    :goto_1d
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    const-string v1, "Proximity Test"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 92
    :catch_28
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 76
    :try_start_5
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 77
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_28

    .line 82
    :cond_1d
    :goto_1d
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    const-string v1, "Proximity Test"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 79
    :catch_28
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d
.end method
