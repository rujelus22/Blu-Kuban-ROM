.class public Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;
.super Landroid/app/Activity;
.source "MotorTest.java"


# instance fields
.field private final DELAY_SHOW:I

.field private final LOG_TAG:Ljava/lang/String;

.field private TICKER_DRAW_MOTOR:I

.field private final TIMELESS:I

.field private final TWO_SECOND:I

.field private final VIBRATION_MAX_POWER:I

.field private mBlueTimer:Landroid/os/CountDownTimer;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mGreenTimer:Landroid/os/CountDownTimer;

.field private mHandler:Landroid/os/Handler;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mRedTimer:Landroid/os/CountDownTimer;

.field private mWindowManager:Landroid/view/IWindowManager;

.field pm:Landroid/os/PowerManager;

.field private vibrator:Landroid/os/Vibrator;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const v0, 0x36ee80

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->TIMELESS:I

    .line 33
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->TWO_SECOND:I

    .line 34
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->DELAY_SHOW:I

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mHandler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->TICKER_DRAW_MOTOR:I

    .line 46
    const/16 v0, 0x21fc

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->VIBRATION_MAX_POWER:I

    .line 48
    const-string v0, "MotorTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedColor(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mBlueTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mRedTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mGreenTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method private onFinish()V
    .registers 3

    .prologue
    .line 185
    const-string v0, "MotorTest"

    const-string v1, "Result_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedColor(I)V

    .line 188
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mRedTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 189
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mBlueTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 190
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mGreenTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 191
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 193
    const-string v0, "MotorTest"

    const-string v1, "exitMotorTest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->finish()V

    .line 196
    return-void
.end method

.method private startVibrate()V
    .registers 4

    .prologue
    .line 166
    const-string v1, "MotorTest"

    const-string v2, "Vibration_start : 8700"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    .line 171
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_22

    .line 172
    .local v0, pattern:[J
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    const/16 v2, 0x21fc

    invoke-virtual {v1, v2}, Landroid/os/Vibrator;->setMagnitude(I)V

    .line 173
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 174
    return-void

    .line 171
    :array_22
    .array-data 0x8
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateSvcLedColor(I)V
    .registers 5
    .parameter "color"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    packed-switch p1, :pswitch_data_32

    .line 264
    :goto_5
    return-void

    .line 248
    :pswitch_6
    const-string v0, "/sys/class/leds/red/brightness"

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedFile(Ljava/lang/String;I)V

    .line 249
    const-string v0, "/sys/class/leds/blue/brightness"

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedFile(Ljava/lang/String;I)V

    goto :goto_5

    .line 252
    :pswitch_11
    const-string v0, "/sys/class/leds/blue/brightness"

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedFile(Ljava/lang/String;I)V

    .line 253
    const-string v0, "/sys/class/leds/red/brightness"

    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedFile(Ljava/lang/String;I)V

    goto :goto_5

    .line 256
    :pswitch_1c
    const-string v0, "/sys/class/leds/red/brightness"

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedFile(Ljava/lang/String;I)V

    .line 257
    const-string v0, "/sys/class/leds/blue/brightness"

    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedFile(Ljava/lang/String;I)V

    goto :goto_5

    .line 260
    :pswitch_27
    const-string v0, "/sys/class/leds/red/brightness"

    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedFile(Ljava/lang/String;I)V

    .line 261
    const-string v0, "/sys/class/leds/blue/brightness"

    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->updateSvcLedFile(Ljava/lang/String;I)V

    goto :goto_5

    .line 245
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_6
        :pswitch_11
        :pswitch_1c
        :pswitch_27
    .end packed-switch
.end method

.method private updateSvcLedFile(Ljava/lang/String;I)V
    .registers 8
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, fw:Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 271
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v1, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_1a

    .line 272
    .end local v0           #fw:Ljava/io/FileWriter;
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_8
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1c

    .line 273
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_1f

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 278
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v0       #fw:Ljava/io/FileWriter;
    :goto_19
    return-void

    .line 275
    :catch_1a
    move-exception v4

    goto :goto_19

    .end local v0           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    :catch_1c
    move-exception v4

    move-object v0, v1

    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v0       #fw:Ljava/io/FileWriter;
    goto :goto_19

    .end local v0           #fw:Ljava/io/FileWriter;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_1f
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v0       #fw:Ljava/io/FileWriter;
    goto :goto_19
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 233
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 234
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 235
    const/4 v0, 0x1

    .line 241
    :goto_24
    return v0

    .line 239
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mPrevKey:I

    .line 240
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mPrevTime:J

    .line 241
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x96

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->setContentView(I)V

    .line 62
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->pm:Landroid/os/PowerManager;

    .line 63
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v6, "MotorTest"

    invoke-virtual {v0, v1, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 64
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 65
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 67
    iput v7, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mPrevKey:I

    .line 68
    iput-wide v8, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mPrevTime:J

    .line 69
    iput v7, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mCurrKey:I

    .line 70
    iput-wide v8, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mCurrTime:J

    .line 74
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;JJ)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mBlueTimer:Landroid/os/CountDownTimer;

    .line 86
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$2;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;JJ)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mRedTimer:Landroid/os/CountDownTimer;

    .line 98
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest$3;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;JJ)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mGreenTimer:Landroid/os/CountDownTimer;

    .line 115
    const-string v0, "MotorTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_c

    .line 159
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 161
    :cond_c
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 162
    const-string v0, "MotorTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 201
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

    .line 203
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mCurrKey:I

    .line 204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mCurrTime:J

    .line 207
    const/4 v0, 0x4

    if-ne p1, v0, :cond_47

    .line 208
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_47

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_47

    .line 210
    const-string v0, "KEYCODE"

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->setResult(I)V

    .line 212
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->onFinish()V

    .line 215
    :cond_47
    const/16 v0, 0x18

    if-ne p1, v0, :cond_5c

    .line 216
    const-string v0, "FactoryTestApp"

    const-string v1, "KEYCODE_VOLUME_UP1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->setResult(I)V

    .line 218
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->onFinish()V

    .line 229
    :cond_5a
    :goto_5a
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_5c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_67

    .line 221
    const-string v0, "FactoryTestApp"

    const-string v1, "KEYCODE_HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 222
    :cond_67
    const/16 v0, 0x54

    if-ne p1, v0, :cond_73

    .line 223
    const-string v0, "FactoryTestApp"

    const-string v1, "KEYCODE_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 224
    :cond_73
    const/16 v0, 0x52

    if-ne p1, v0, :cond_5a

    .line 225
    const-string v0, "FactoryTestApp"

    const-string v1, "KEYCODE_MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method public onPause()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_34

    .line 137
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 138
    .local v1, vibsetting:I
    const-string v2, "MotorTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vibration_stop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 140
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, v1}, Landroid/os/Vibrator;->setMagnitude(I)V

    .line 143
    .end local v1           #vibsetting:I
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 144
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_4c} :catch_59

    .line 150
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 152
    const-string v2, "MotorTest"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 146
    :catch_59
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4c
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 122
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_30

    .line 127
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 128
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->startVibrate()V

    .line 129
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/MotorTest;->mBlueTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 130
    const-string v1, "MotorTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 124
    :catch_30
    move-exception v0

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method
