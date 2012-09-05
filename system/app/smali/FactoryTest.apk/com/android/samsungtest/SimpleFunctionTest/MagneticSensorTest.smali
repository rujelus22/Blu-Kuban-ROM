.class public Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;
.super Landroid/app/Activity;
.source "MagneticSensorTest.java"


# instance fields
.field private mCurrKey:I

.field private mCurrTime:J

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private testResult:[I

.field private testResult2:[I

.field private testResult3:[I

.field private txt_adc_x:Landroid/widget/TextView;

.field private txt_adc_y:Landroid/widget/TextView;

.field private txt_adc_z:Landroid/widget/TextView;

.field private txt_dac_x:Landroid/widget/TextView;

.field private txt_dac_y:Landroid/widget/TextView;

.field private txt_dac_z:Landroid/widget/TextView;

.field private txt_initialized:Landroid/widget/TextView;

.field private txt_selftest_x:Landroid/widget/TextView;

.field private txt_selftest_y:Landroid/widget/TextView;

.field private txt_selftest_z:Landroid/widget/TextView;

.field private txtresult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x17

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 36
    const/16 v0, 0x16

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->testResult:[I

    .line 37
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->testResult2:[I

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->testResult3:[I

    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 168
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 169
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 171
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txtresult:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_initialized:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_selftest_x:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_selftest_y:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_selftest_z:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_x:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_y:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_z:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_adc_x:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_adc_y:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_adc_z:Landroid/widget/TextView;

    .line 182
    return-void
.end method

.method private magneticSensor_SelfTest([I[I)V
    .registers 13
    .parameter "testResult"
    .parameter "testResult2"

    .prologue
    const/16 v9, 0x11

    const/16 v8, 0xf

    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 95
    const-string v2, "MagneticSensorTest"

    const-string v3, "magneticSensor_SelfTest()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, success:Z
    const/4 v1, 0x1

    .line 100
    .local v1, success_dac:Z
    const/16 v2, 0xe

    aget v2, p2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16b

    .line 101
    const/4 v0, 0x0

    .line 108
    :cond_19
    :goto_19
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_initialized:Landroid/widget/TextView;

    const/16 v3, 0xe

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_selftest_x:Landroid/widget/TextView;

    aget v3, p2, v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_selftest_y:Landroid/widget/TextView;

    aget v3, p2, v9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_selftest_z:Landroid/widget/TextView;

    const/16 v3, 0x13

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/16 v2, 0x15

    aget v2, p1, v2

    if-eqz v2, :cond_51

    .line 116
    const/4 v1, 0x0

    .line 117
    const/4 v0, 0x0

    .line 119
    :cond_51
    if-eqz v1, :cond_19c

    .line 121
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_x:Landroid/widget/TextView;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_y:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_z:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_68
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_adc_x:Landroid/widget/TextView;

    aget v3, p2, v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_adc_y:Landroid/widget/TextView;

    aget v3, p2, v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_adc_z:Landroid/widget/TextView;

    aget v3, p2, v7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v2, 0x3

    aget v2, p2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b3

    .line 137
    const/4 v0, 0x0

    .line 148
    :cond_90
    :goto_90
    const-string v2, "MagneticSensorTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESULT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v2, "MagneticSensorTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELFTEST : ST1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xe

    aget v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HXL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HYL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HZL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x13

    aget v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v2, "MagneticSensorTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DAC : CNTL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x15

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v2, "MagneticSensorTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADC : ST1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ST2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    aget v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HXL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HYL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HZL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz v0, :cond_1e9

    .line 155
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txtresult:Landroid/widget/TextView;

    const v3, 0x7f0800c2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txtresult:Landroid/widget/TextView;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const/16 v2, 0xcf

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->setResult(I)V

    .line 164
    :goto_16a
    return-void

    .line 102
    :cond_16b
    aget v2, p2, v8

    const/16 v3, -0x64

    if-lt v2, v3, :cond_177

    aget v2, p2, v8

    const/16 v3, 0x64

    if-le v2, v3, :cond_17a

    .line 103
    :cond_177
    const/4 v0, 0x0

    goto/16 :goto_19

    .line 104
    :cond_17a
    aget v2, p2, v9

    const/16 v3, -0x64

    if-lt v2, v3, :cond_186

    aget v2, p2, v9

    const/16 v3, 0x64

    if-le v2, v3, :cond_189

    .line 105
    :cond_186
    const/4 v0, 0x0

    goto/16 :goto_19

    .line 106
    :cond_189
    const/16 v2, 0x13

    aget v2, p2, v2

    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_199

    const/16 v2, 0x13

    aget v2, p2, v2

    const/16 v3, -0x12c

    if-le v2, v3, :cond_19

    .line 107
    :cond_199
    const/4 v0, 0x0

    goto/16 :goto_19

    .line 127
    :cond_19c
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_x:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_y:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txt_dac_z:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 138
    :cond_1b3
    const/16 v2, 0xa

    aget v2, p2, v2

    if-eqz v2, :cond_1bc

    .line 139
    const/4 v0, 0x0

    goto/16 :goto_90

    .line 140
    :cond_1bc
    aget v2, p2, v5

    const/16 v3, -0x7d0

    if-lt v2, v3, :cond_1c8

    aget v2, p2, v5

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_1cb

    .line 141
    :cond_1c8
    const/4 v0, 0x0

    goto/16 :goto_90

    .line 142
    :cond_1cb
    aget v2, p2, v6

    const/16 v3, -0x7d0

    if-lt v2, v3, :cond_1d7

    aget v2, p2, v6

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_1da

    .line 143
    :cond_1d7
    const/4 v0, 0x0

    goto/16 :goto_90

    .line 144
    :cond_1da
    aget v2, p2, v7

    const/16 v3, -0x7d0

    if-lt v2, v3, :cond_1e6

    aget v2, p2, v7

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_90

    .line 145
    :cond_1e6
    const/4 v0, 0x0

    goto/16 :goto_90

    .line 161
    :cond_1e9
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txtresult:Landroid/widget/TextView;

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->txtresult:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_16a
.end method

.method private runFactoryTest()V
    .registers 5

    .prologue
    .line 88
    const-string v0, "MagneticSensorTest"

    const-string v1, "runFactoryTest()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->testResult:[I

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->testResult2:[I

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->testResult3:[I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    .line 90
    const-string v0, "MagneticSensorTest"

    const-string v1, "runFactoryTest()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 198
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 199
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 200
    const/4 v0, 0x1

    .line 206
    :goto_24
    return v0

    .line 204
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mPrevKey:I

    .line 205
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mPrevTime:J

    .line 206
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->init()V

    .line 54
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 185
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mCurrKey:I

    .line 186
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mCurrTime:J

    .line 188
    const/4 v0, 0x4

    if-ne p1, v0, :cond_20

    .line 189
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_20

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_20

    .line 190
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->finish()V

    .line 193
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 77
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1c

    .line 83
    :cond_18
    :goto_18
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    return-void

    .line 79
    :catch_1c
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 61
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_26

    .line 67
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->runFactoryTest()V

    .line 68
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->testResult:[I

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->testResult2:[I

    invoke-direct {p0, v1, v2}, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;->magneticSensor_SelfTest([I[I)V

    .line 69
    return-void

    .line 63
    :catch_26
    move-exception v0

    .line 64
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method
