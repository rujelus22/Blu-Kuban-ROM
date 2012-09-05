.class public Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;
.super Landroid/app/Activity;
.source "TouchTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;
    }
.end annotation


# instance fields
.field private final HEIGHT_BASIS:I

.field private final WIDTH_BASIS:I

.field private mCurrentTime:J

.field private mFactoryTestApp:Ljava/lang/String;

.field private mIsPressedBackkey:Z

.field private mScreenTimeout:I

.field protected mTimerHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->HEIGHT_BASIS:I

    .line 33
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->WIDTH_BASIS:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mFactoryTestApp:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mIsPressedBackkey:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mCurrentTime:J

    .line 104
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mTimerHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic access$002(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mFactoryTestApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mFactoryTestApp:Ljava/lang/String;

    return-object p1
.end method

.method private decideRemote()V
    .registers 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, i:Landroid/content/Intent;
    const-string v1, "TSP_TEST_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mFactoryTestApp:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;

    invoke-direct {v0, p0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest$MyView;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->decideRemote()V

    .line 51
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mScreenTimeout:I

    .line 52
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 83
    const-string v2, "KEYCODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DOWN, keycode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4c

    .line 86
    iget-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mIsPressedBackkey:Z

    if-nez v2, :cond_34

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mCurrentTime:J

    .line 89
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mIsPressedBackkey:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->startTimer()V

    .line 101
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_33
    :goto_33
    return v1

    .line 93
    :cond_34
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mIsPressedBackkey:Z

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 95
    .restart local v0       #rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mCurrentTime:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_33

    .line 96
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->finish()V

    goto :goto_33

    .line 101
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_4c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_33
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    iget v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mScreenTimeout:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 73
    :try_start_e
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 74
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_26} :catch_27

    .line 79
    :cond_26
    :goto_26
    return-void

    .line 76
    :catch_27
    move-exception v0

    .line 77
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_26
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    :try_start_d
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 61
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_25} :catch_26

    .line 66
    :cond_25
    :goto_25
    return-void

    .line 63
    :catch_26
    move-exception v0

    .line 64
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    return-void
.end method
