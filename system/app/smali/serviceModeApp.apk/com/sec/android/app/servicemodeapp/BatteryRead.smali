.class public Lcom/sec/android/app/servicemodeapp/BatteryRead;
.super Landroid/app/Activity;
.source "BatteryRead.java"


# instance fields
.field private final HOUDINI_BATTERY_TYPE:Ljava/lang/String;

.field private final MAX_BUFFER_SIZE:I

.field private final SECOND:I

.field private mBackButton:Landroid/widget/Button;

.field private mBatteryLevelMsg:Landroid/widget/TextView;

.field private mBatteryTypeMsg:Landroid/widget/TextView;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mThemMsg:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mVbattMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mTimer:Ljava/util/Timer;

    .line 27
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->SECOND:I

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->MAX_BUFFER_SIZE:I

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mHandler:Landroid/os/Handler;

    .line 30
    const-string v0, "1440mAh"

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->HOUDINI_BATTERY_TYPE:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/sec/android/app/servicemodeapp/BatteryRead$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/BatteryRead$2;-><init>(Lcom/sec/android/app/servicemodeapp/BatteryRead;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/BatteryRead;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->printCurrentBatteryInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/BatteryRead;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/servicemodeapp/BatteryRead;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getValueFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v10, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, in:Ljava/io/InputStream;
    new-array v0, v7, [B

    .line 97
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 98
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 100
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v7, :cond_10

    .line 101
    aput-byte v10, v0, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 104
    :cond_10
    :try_start_10
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1a} :catch_2f

    .line 109
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    move-object v3, v4

    .line 111
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_1e
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 112
    if-eqz v5, :cond_2b

    .line 113
    new-instance v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    add-int/lit8 v7, v5, -0x1

    invoke-direct {v6, v0, v10, v7}, Ljava/lang/String;-><init>([BII)V

    .line 115
    .restart local v6       #value:Ljava/lang/String;
    :cond_2b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 116
    return-object v6

    .line 105
    :catch_2f
    move-exception v1

    .line 106
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 107
    const-string v7, "BatteryRead"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_4d

    .line 109
    throw v3

    goto :goto_1e

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_4d
    move-exception v7

    throw v3

    throw v7
.end method

.method private printCurrentBatteryInfo()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, themADC:Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, vbattADC:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 80
    .local v3, voltage:Ljava/lang/Float;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, batteryLevel:Ljava/lang/StringBuilder;
    const-string v4, "sys/class/power_supply/battery/batt_therm"

    invoke-direct {p0, v4}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->getValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v4, "sys/class/power_supply/battery/batt_adc_comp"

    invoke-direct {p0, v4}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->getValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v4, "sys/class/power_supply/battery/batt_voltage_comp"

    invoke-direct {p0, v4}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->getValueFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mThemMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mVbattMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mBatteryLevelMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mBatteryTypeMsg:Landroid/widget/TextView;

    const-string v5, "1440mAh"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->setContentView(I)V

    .line 40
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mThemMsg:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mVbattMsg:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mBatteryLevelMsg:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mBatteryTypeMsg:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/BatteryRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mBackButton:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mBackButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/servicemodeapp/BatteryRead$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/servicemodeapp/BatteryRead$1;-><init>(Lcom/sec/android/app/servicemodeapp/BatteryRead;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/BatteryRead;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 123
    return-void
.end method
