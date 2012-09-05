.class public Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;
.super Landroid/app/Activity;
.source "SensorTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;
    }
.end annotation


# instance fields
.field private final COMPLETED_CAL:I

.field private final TAG:Ljava/lang/String;

.field private btn_acc_image_test:Landroid/widget/Button;

.field private cv:Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;

.field private isBackFinish:Z

.field private isFinish:Z

.field private mCurrKey:I

.field private mCurrTime:J

.field private mIsCaled:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMagneticSensor:Landroid/hardware/Sensor;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSensorListener:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private txtmagnetic:Landroid/widget/TextView;

.field private txtorientation:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mIsCaled:Z

    .line 45
    const-string v0, "SensorTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->COMPLETED_CAL:I

    .line 50
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->isFinish:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->isBackFinish:Z

    .line 145
    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->cv:Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mIsCaled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->txtorientation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->txtmagnetic:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 63
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 64
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 65
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mMagneticSensor:Landroid/hardware/Sensor;

    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 70
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->txtmagnetic:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->txtorientation:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->cv:Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;

    .line 73
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->cv:Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;

    const/high16 v1, 0x4234

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SensorArrow;->setDirection(F)V

    .line 75
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->btn_acc_image_test:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->btn_acc_image_test:Landroid/widget/Button;

    new-instance v1, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$1;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorListener:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;

    .line 84
    const v0, 0x7f0900c2

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 85
    return-void
.end method

.method private onFinish()V
    .registers 4

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->isFinish:Z

    if-nez v0, :cond_27

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->isFinish:Z

    .line 194
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->isBackFinish:Z

    if-nez v0, :cond_1b

    .line 195
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 198
    :cond_1b
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mIsCaled:Z

    if-eqz v0, :cond_24

    .line 199
    const/16 v0, 0xcf

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->setResult(I)V

    .line 202
    :cond_24
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->finish()V

    .line 204
    :cond_27
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 119
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 120
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 121
    const/4 v0, 0x1

    .line 127
    :goto_24
    return v0

    .line 125
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mPrevKey:I

    .line 126
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mPrevTime:J

    .line 127
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->init()V

    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 133
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mCurrKey:I

    .line 134
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mCurrTime:J

    .line 136
    const/4 v0, 0x4

    if-ne p1, v0, :cond_23

    .line 137
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_23

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_23

    .line 138
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->isBackFinish:Z

    .line 139
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->onFinish()V

    .line 142
    :cond_23
    return v2
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 106
    const-string v1, "SensorTest"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_7
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 109
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1f} :catch_2a

    .line 114
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorListener:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 116
    return-void

    .line 111
    :catch_2a
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    const-string v1, "SensorTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 93
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_36

    .line 98
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorListener:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 100
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mSensorListener:Lcom/android/samsungtest/SimpleFunctionTest/SensorTest$SensorTestListener;

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/SensorTest;->mMagneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 102
    return-void

    .line 95
    :catch_36
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_23
.end method
