.class public Lcom/sec/android/app/servicemodeapp/LightsensorRead;
.super Landroid/app/Activity;
.source "LightsensorRead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/servicemodeapp/LightsensorRead$LightSensorListner;
    }
.end annotation


# static fields
.field private static nOriginalStateLightSensor:I


# instance fields
.field private final MAX_BUFFER_SIZE:I

.field private final SECOND:I

.field private brightness_flag:I

.field private config:Lcom/sec/android/app/servicemodeapp/appConfig;

.field private mBackButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLuxMsg:Landroid/widget/TextView;

.field private mLuxMsg2:Landroid/widget/TextView;

.field private mSensorListner:Lcom/sec/android/app/servicemodeapp/LightsensorRead$LightSensorListner;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValue:F

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->nOriginalStateLightSensor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->SECOND:I

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->MAX_BUFFER_SIZE:I

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mHandler:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->brightness_flag:I

    .line 78
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/appConfig;->getInstance()Lcom/sec/android/app/servicemodeapp/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    .line 113
    new-instance v0, Lcom/sec/android/app/servicemodeapp/LightsensorRead$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead$2;-><init>(Lcom/sec/android/app/servicemodeapp/LightsensorRead;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mClicked:Landroid/view/View$OnClickListener;

    .line 240
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/LightsensorRead;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->printCurrentLuxInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/servicemodeapp/LightsensorRead;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/servicemodeapp/LightsensorRead;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/servicemodeapp/LightsensorRead;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->setSensorValue(F)V

    return-void
.end method

.method private getValueFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    .line 199
    const/4 v4, 0x0

    .line 200
    .local v4, in:Ljava/io/InputStream;
    new-array v0, v10, [B

    .line 201
    .local v0, buffer:[B
    const/4 v7, 0x0

    .line 202
    .local v7, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 204
    .local v6, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v10, :cond_10

    .line 205
    aput-byte v9, v0, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 209
    :cond_10
    :try_start_10
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1a} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_4b

    .line 210
    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :try_start_1a
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 211
    if-eqz v6, :cond_29

    .line 212
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, v6, -0x1

    invoke-direct {v8, v0, v9, v10}, Ljava/lang/String;-><init>([BII)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_28} :catch_6b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_68

    .end local v7           #value:Ljava/lang/String;
    .local v8, value:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #value:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_29
    move-object v4, v5

    .line 221
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :goto_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 222
    return-object v7

    .line 214
    :catch_2e
    move-exception v1

    .line 215
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2f
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 216
    const-string v9, "LightSensorRead"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 217
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_4b
    move-exception v2

    .line 218
    .local v2, e1:Ljava/io/IOException;
    :goto_4c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    const-string v9, "LightSensorRead"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 217
    .end local v2           #e1:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_68
    move-exception v2

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_4c

    .line 214
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_6b
    move-exception v1

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2f
.end method

.method private printCurrentLuxInfo()V
    .registers 9

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, luxVal:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v2, luxDisplay:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 135
    .local v1, lightlevel:I
    :try_start_7
    const-string v4, "sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-direct {p0, v4}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->getValueFromFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_46

    move-result-object v3

    .line 141
    :goto_d
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

    .line 142
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->config:Lcom/sec/android/app/servicemodeapp/appConfig;

    const-string v5, "MODEL"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/servicemodeapp/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "I9101"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 149
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x402e

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4b

    .line 150
    const/4 v1, 0x1

    .line 174
    :cond_42
    :goto_42
    packed-switch v1, :pswitch_data_116

    .line 196
    :goto_45
    return-void

    .line 136
    :catch_46
    move-exception v0

    .line 138
    .local v0, e1:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 151
    .end local v0           #e1:Ljava/io/IOException;
    :cond_4b
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x4062c00000000000L

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_59

    .line 152
    const/4 v1, 0x2

    goto :goto_42

    .line 153
    :cond_59
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x4097700000000000L

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_67

    .line 154
    const/4 v1, 0x3

    goto :goto_42

    .line 155
    :cond_67
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x40cd4c0000000000L

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_75

    .line 156
    const/4 v1, 0x4

    goto :goto_42

    .line 157
    :cond_75
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x416312d000000000L

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_42

    .line 158
    const/4 v1, 0x5

    goto :goto_42

    .line 162
    :cond_83
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4024

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_8e

    .line 163
    const/4 v1, 0x1

    goto :goto_42

    .line 164
    :cond_8e
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4059

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_99

    .line 165
    const/4 v1, 0x2

    goto :goto_42

    .line 166
    :cond_99
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_a7

    .line 167
    const/4 v1, 0x3

    goto :goto_42

    .line 168
    :cond_a7
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x40c3880000000000L

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_b5

    .line 169
    const/4 v1, 0x4

    goto :goto_42

    .line 170
    :cond_b5
    iget v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    float-to-double v4, v4

    const-wide v6, 0x40cf400000000000L

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_42

    .line 171
    const/4 v1, 0x5

    goto :goto_42

    .line 176
    :pswitch_c3
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 1"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_45

    .line 180
    :pswitch_d3
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 2"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const/16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_45

    .line 184
    :pswitch_e3
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 3"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_45

    .line 188
    :pswitch_f4
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 4"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const v5, -0xff0001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_45

    .line 192
    :pswitch_105
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const-string v5, "Level 5"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_45

    .line 174
    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_d3
        :pswitch_e3
        :pswitch_f4
        :pswitch_105
    .end packed-switch
.end method

.method private setSensorValue(F)V
    .registers 2
    .parameter "sensorValue"

    .prologue
    .line 122
    iput p1, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorValue:F

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->setContentView(I)V

    .line 84
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLuxMsg2:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mBackButton:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mBackButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLightSensor:Landroid/hardware/Sensor;

    .line 92
    new-instance v0, Lcom/sec/android/app/servicemodeapp/LightsensorRead$LightSensorListner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/servicemodeapp/LightsensorRead$LightSensorListner;-><init>(Lcom/sec/android/app/servicemodeapp/LightsensorRead;Lcom/sec/android/app/servicemodeapp/LightsensorRead$1;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorListner:Lcom/sec/android/app/servicemodeapp/LightsensorRead$LightSensorListner;

    .line 93
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorListner:Lcom/sec/android/app/servicemodeapp/LightsensorRead$LightSensorListner;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 231
    const-string v0, "LightSensorRead"

    const-string v1, "ondestroyend"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorListner:Lcom/sec/android/app/servicemodeapp/LightsensorRead$LightSensorListner;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 238
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mSensorListner:Lcom/sec/android/app/servicemodeapp/LightsensorRead$LightSensorListner;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 101
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mTimer:Ljava/util/Timer;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/LightsensorRead;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/servicemodeapp/LightsensorRead$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/servicemodeapp/LightsensorRead$1;-><init>(Lcom/sec/android/app/servicemodeapp/LightsensorRead;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 111
    return-void
.end method
