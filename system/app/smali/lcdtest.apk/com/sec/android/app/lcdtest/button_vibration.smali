.class public Lcom/sec/android/app/lcdtest/button_vibration;
.super Landroid/app/Activity;
.source "button_vibration.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final VIBRATION_MAX_POWER:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_vibration;->mVibrator:Landroid/os/Vibrator;

    .line 14
    const/16 v0, 0x21fc

    iput v0, p0, Lcom/sec/android/app/lcdtest/button_vibration;->VIBRATION_MAX_POWER:I

    .line 15
    const-string v0, "ButtonVibration"

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_vibration;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_vibration;->setContentView(I)V

    .line 21
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_vibration;->mVibrator:Landroid/os/Vibrator;

    .line 22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 46
    const-string v0, "ButtonVibration"

    const-string v1, "Vibration_Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_vibration;->finish()V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_vibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, vibsetting:I
    const-string v1, "ButtonVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration_stop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_vibration;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 33
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_vibration;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->setMagnitude(I)V

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 35
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 26
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_vibration;->startVibration()V

    .line 27
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 53
    const-string v0, "ButtonVibration"

    const-string v1, "Vibration_Timer_Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_vibration;->finish()V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public startVibration()V
    .registers 4

    .prologue
    .line 38
    const-string v1, "ButtonVibration"

    const-string v2, "Vibration_start : 8700"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_1c

    .line 40
    .local v0, pattern:[J
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_vibration;->mVibrator:Landroid/os/Vibrator;

    const/16 v2, 0x21fc

    invoke-virtual {v1, v2}, Landroid/os/Vibrator;->setMagnitude(I)V

    .line 41
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_vibration;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 42
    return-void

    .line 39
    nop

    :array_1c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
