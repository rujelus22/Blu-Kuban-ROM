.class public Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;
.super Landroid/app/Activity;
.source "GyroscopeSensorTest.java"


# instance fields
.field private config:Lcom/sec/android/app/lcdtest/appConfig;

.field private txt_diff_x:Landroid/widget/TextView;

.field private txt_diff_y:Landroid/widget/TextView;

.field private txt_diff_z:Landroid/widget/TextView;

.field private txt_prime_x:Landroid/widget/TextView;

.field private txt_prime_y:Landroid/widget/TextView;

.field private txt_prime_z:Landroid/widget/TextView;

.field private txt_xyz_x:Landroid/widget/TextView;

.field private txt_xyz_y:Landroid/widget/TextView;

.field private txt_xyz_z:Landroid/widget/TextView;

.field private txtresult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    invoke-static {}, Lcom/sec/android/app/lcdtest/appConfig;->getInstance()Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 34
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_x:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_y:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_z:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_x:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_y:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_z:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_x:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_y:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_z:Landroid/widget/TextView;

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->init()V

    .line 31
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    const/4 v1, 0x0

    .line 51
    .local v1, resultValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v5, "PATH_SENSOR_GYRO_SELFTEST"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sys/class/sensors/gyro_sensor/selftest"

    if-ne v4, v5, :cond_164

    .line 53
    :try_start_11
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_SENSOR_GYRO_SELFTEST"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2000

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, selfTestResult:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, seltTestResults:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 58
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_x:Landroid/widget/TextView;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_y:Landroid/widget/TextView;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_z:Landroid/widget/TextView;

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_x:Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_y:Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_z:Landroid/widget/TextView;

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const-string v4, "GyroscopeSensorTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v4, "GyroscopeSensorTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v4, "GyroscopeSensorTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_x:Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_y:Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_z:Landroid/widget/TextView;

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12d} :catch_14c

    .line 82
    .end local v2           #selfTestResult:Ljava/lang/String;
    .end local v3           #seltTestResults:[Ljava/lang/String;
    :goto_12d
    if-eqz v1, :cond_151

    const-string v4, "OK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 83
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v5, 0x7f07006b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->setResult(I)V

    .line 137
    :cond_14b
    :goto_14b
    return-void

    .line 76
    :catch_14c
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12d

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    :cond_151
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v5, 0x7f07006c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-virtual {p0, v7}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->setResult(I)V

    goto :goto_14b

    .line 93
    :cond_164
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v5, "PATH_SENSOR_GYRO_SELFTEST"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sys/class/K3G_GYRO-dev/k3g/gyro_selftest"

    if-ne v4, v5, :cond_14b

    .line 95
    :try_start_170
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_SENSOR_GYRO_SELFTEST"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2000

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2       #selfTestResult:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3       #seltTestResults:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_x:Landroid/widget/TextView;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_y:Landroid/widget/TextView;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_xyz_z:Landroid/widget/TextView;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_x:Landroid/widget/TextView;

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_y:Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_prime_z:Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_x:Landroid/widget/TextView;

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_y:Landroid/widget/TextView;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txt_diff_z:Landroid/widget/TextView;

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v4, 0x6

    aget-object v1, v3, v4
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_205} :catch_225

    .line 115
    .end local v2           #selfTestResult:Ljava/lang/String;
    .end local v3           #seltTestResults:[Ljava/lang/String;
    :goto_205
    if-eqz v1, :cond_14b

    .line 116
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22a

    .line 117
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v5, 0x7f07006b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->setResult(I)V

    goto/16 :goto_14b

    .line 111
    :catch_225
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_205

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :cond_22a
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_246

    .line 121
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v5, 0x7f07006c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    invoke-virtual {p0, v7}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->setResult(I)V

    goto/16 :goto_14b

    .line 125
    :cond_246
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const v5, 0x7f07006d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->txtresult:Landroid/widget/TextView;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    invoke-virtual {p0, v7}, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;->setResult(I)V

    goto/16 :goto_14b
.end method
