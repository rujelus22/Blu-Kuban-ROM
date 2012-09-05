.class public Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;
.super Landroid/app/Activity;
.source "GyroscopeSensorTest.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentTime:J

.field private mIsPressedBackkey:Z

.field private mResult:Z

.field protected mTimerHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private txt_initialized:Landroid/widget/TextView;

.field private txt_prime_x:Landroid/widget/TextView;

.field private txt_prime_y:Landroid/widget/TextView;

.field private txt_prime_z:Landroid/widget/TextView;

.field private txt_temperature:Landroid/widget/TextView;

.field private txt_xyz_x:Landroid/widget/TextView;

.field private txt_xyz_y:Landroid/widget/TextView;

.field private txt_xyz_z:Landroid/widget/TextView;

.field private txtresult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mCurrentTime:J

    .line 40
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mIsPressedBackkey:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mResult:Z

    .line 44
    const-string v0, "GyroscopeSensorTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->TAG:Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mIsPressedBackkey:Z

    return p1
.end method

.method private init()V
    .registers 2

    .prologue
    .line 120
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 121
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_initialized:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_temperature:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_xyz_x:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_xyz_y:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_xyz_z:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_prime_x:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_prime_y:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_prime_z:Landroid/widget/TextView;

    .line 130
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->init()V

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 135
    const-string v1, "GyroscopeSensorTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DOWN, keycode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3a

    .line 138
    const-string v1, "GyroscopeSensorTest"

    const-string v2, "This is back_key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mIsPressedBackkey:Z

    if-nez v1, :cond_3b

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 141
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mCurrentTime:J

    .line 142
    iput-boolean v7, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mIsPressedBackkey:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->startKeyTimer()V

    .line 154
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_3a
    :goto_3a
    return v7

    .line 146
    :cond_3b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mIsPressedBackkey:Z

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    .restart local v0       #rightNow:Ljava/util/Calendar;
    const-string v1, "GyroscopeSensorTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rightNow.getTimeInMillis() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCurrentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mCurrentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mCurrentTime:J

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3a

    .line 150
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->finish()V

    goto :goto_3a
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 112
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 117
    :cond_1b
    :goto_1b
    return-void

    .line 114
    :catch_1c
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method protected onResume()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    const/4 v1, 0x0

    .line 58
    .local v1, resultValue:Ljava/lang/String;
    :try_start_5
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 59
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_b8

    .line 66
    :cond_1d
    :goto_1d
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_initialized:Landroid/widget/TextView;

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_temperature:Landroid/widget/TextView;

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :try_start_2b
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/virtual/K3G_GYRO-dev/k3g/gyro_power_on"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, tmpString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_initialized:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/virtual/K3G_GYRO-dev/k3g/gyro_get_temp"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_temperature:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/virtual/K3G_GYRO-dev/k3g/gyro_selftest"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, selfTestResult:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, seltTestResults:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_xyz_x:Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_xyz_y:Landroid/widget/TextView;

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_xyz_z:Landroid/widget/TextView;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_prime_x:Landroid/widget/TextView;

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_prime_y:Landroid/widget/TextView;

    const/4 v6, 0x4

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txt_prime_z:Landroid/widget/TextView;

    const/4 v6, 0x5

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v5, 0x6

    aget-object v1, v3, v5
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_98} :catch_be

    .line 96
    .end local v2           #selfTestResult:Ljava/lang/String;
    .end local v3           #seltTestResults:[Ljava/lang/String;
    .end local v4           #tmpString:Ljava/lang/String;
    :goto_98
    if-eqz v1, :cond_db

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 97
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v6, 0x7f0800c2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    const/16 v5, 0xdf

    invoke-virtual {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->setResult(I)V

    .line 106
    :goto_b7
    return-void

    .line 61
    :catch_b8
    move-exception v0

    .line 62
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1d

    .line 91
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_be
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const-string v5, "GyroscopeSensorTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 101
    .end local v0           #e:Ljava/lang/Exception;
    :cond_db
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v6, 0x7f0800be

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const/high16 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->setResult(I)V

    goto :goto_b7
.end method

.method protected startKeyTimer()V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    return-void
.end method
