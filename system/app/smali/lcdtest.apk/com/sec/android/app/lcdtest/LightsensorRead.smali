.class public Lcom/sec/android/app/lcdtest/LightsensorRead;
.super Landroid/app/Activity;
.source "LightsensorRead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;
    }
.end annotation


# static fields
.field private static nOriginalStateLightSensor:I


# instance fields
.field private final MAX_BUFFER_SIZE:I

.field private final SECOND:I

.field private brightness_flag:I

.field private config:Lcom/sec/android/app/lcdtest/appConfig;

.field private mBackButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLuxMsg:Landroid/widget/TextView;

.field private mLuxMsg2:Landroid/widget/TextView;

.field private mSensorListner:Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValue:F

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/lcdtest/LightsensorRead;->nOriginalStateLightSensor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->SECOND:I

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->MAX_BUFFER_SIZE:I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mHandler:Landroid/os/Handler;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorValue:F

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->brightness_flag:I

    .line 58
    invoke-static {}, Lcom/sec/android/app/lcdtest/appConfig;->getInstance()Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->config:Lcom/sec/android/app/lcdtest/appConfig;

    .line 93
    new-instance v0, Lcom/sec/android/app/lcdtest/LightsensorRead$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/lcdtest/LightsensorRead$2;-><init>(Lcom/sec/android/app/lcdtest/LightsensorRead;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mClicked:Landroid/view/View$OnClickListener;

    .line 205
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/lcdtest/LightsensorRead;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->printCurrentLuxInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/lcdtest/LightsensorRead;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/lcdtest/LightsensorRead;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/lcdtest/LightsensorRead;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/LightsensorRead;->setSensorValue(F)V

    return-void
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

    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, in:Ljava/io/InputStream;
    new-array v0, v7, [B

    .line 168
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 169
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 171
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v7, :cond_10

    .line 172
    aput-byte v10, v0, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 176
    :cond_10
    :try_start_10
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1a} :catch_2c

    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    move-object v3, v4

    .line 181
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_1b
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 182
    if-eqz v5, :cond_28

    .line 183
    new-instance v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    add-int/lit8 v7, v5, -0x1

    invoke-direct {v6, v0, v10, v7}, Ljava/lang/String;-><init>([BII)V

    .line 185
    .restart local v6       #value:Ljava/lang/String;
    :cond_28
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 186
    return-object v6

    .line 177
    :catch_2c
    move-exception v1

    .line 178
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 179
    const-string v7, "LightSensorRead"

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

    goto :goto_1b
.end method

.method private printCurrentLuxInfo()V
    .registers 9

    .prologue
    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, luxVal:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v2, luxDisplay:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 116
    .local v1, lightlevel:I
    :try_start_7
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v5, "PATH_SENSOR_LIGH_VALUE"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/lcdtest/LightsensorRead;->getValueFromFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_3c

    move-result-object v3

    .line 122
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Lux"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4024

    cmpl-double v4, v4, v6

    if-nez v4, :cond_41

    .line 130
    const/4 v1, 0x1

    .line 140
    :cond_38
    :goto_38
    packed-switch v1, :pswitch_data_c6

    .line 163
    :goto_3b
    return-void

    .line 117
    :catch_3c
    move-exception v0

    .line 119
    .local v0, e1:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 131
    .end local v0           #e1:Ljava/io/IOException;
    :cond_41
    iget v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4059

    cmpl-double v4, v4, v6

    if-nez v4, :cond_4c

    .line 132
    const/4 v1, 0x2

    goto :goto_38

    .line 133
    :cond_4c
    iget v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5a

    .line 134
    const/4 v1, 0x3

    goto :goto_38

    .line 135
    :cond_5a
    iget v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x40c3880000000000L

    cmpl-double v4, v4, v6

    if-nez v4, :cond_68

    .line 136
    const/4 v1, 0x4

    goto :goto_38

    .line 137
    :cond_68
    iget v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x40cf400000000000L

    cmpl-double v4, v4, v6

    if-nez v4, :cond_38

    .line 138
    const/4 v1, 0x5

    goto :goto_38

    .line 143
    :pswitch_76
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 1"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3b

    .line 147
    :pswitch_85
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 2"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const/16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3b

    .line 151
    :pswitch_94
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 3"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3b

    .line 155
    :pswitch_a4
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 4"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const v5, -0xff0001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3b

    .line 159
    :pswitch_b4
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 5"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v4, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3b

    .line 140
    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_76
        :pswitch_85
        :pswitch_94
        :pswitch_a4
        :pswitch_b4
    .end packed-switch
.end method

.method private setSensorValue(F)V
    .registers 2
    .parameter "sensorValue"

    .prologue
    .line 103
    iput p1, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorValue:F

    .line 104
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->setContentView(I)V

    .line 65
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mBackButton:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mBackButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLightSensor:Landroid/hardware/Sensor;

    .line 73
    new-instance v0, Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;-><init>(Lcom/sec/android/app/lcdtest/LightsensorRead;Lcom/sec/android/app/lcdtest/LightsensorRead$1;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorListner:Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;

    .line 74
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorListner:Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 196
    const-string v0, "LightSensorRead"

    const-string v1, "ondestroyend"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorListner:Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 203
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mSensorListner:Lcom/sec/android/app/lcdtest/LightsensorRead$LightSensorListner;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 81
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mTimer:Ljava/util/Timer;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/lcdtest/LightsensorRead$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/LightsensorRead$1;-><init>(Lcom/sec/android/app/lcdtest/LightsensorRead;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 91
    return-void
.end method
