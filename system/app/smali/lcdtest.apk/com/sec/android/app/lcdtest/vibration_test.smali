.class public Lcom/sec/android/app/lcdtest/vibration_test;
.super Landroid/app/Activity;
.source "vibration_test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mAutoPattern:[J

.field private final mOnPattern:[J

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    new-array v0, v1, [J

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mAutoPattern:[J

    .line 13
    new-array v0, v1, [J

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mOnPattern:[J

    return-void

    .line 12
    nop

    :array_14
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 13
    :array_20
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 51
    :goto_8
    return-void

    .line 37
    :pswitch_9
    const-string v0, "vibration_test"

    const-string v1, "Vibration on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mOnPattern:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_8

    .line 42
    :pswitch_1d
    const-string v0, "vibration_test"

    const-string v1, "Vibration off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_8

    .line 46
    :pswitch_2a
    const-string v0, "vibration_test"

    const-string v1, "Vibration auto"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mAutoPattern:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_8

    .line 35
    :pswitch_data_3e
    .packed-switch 0x7f080064
        :pswitch_9
        :pswitch_1d
        :pswitch_2a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v3, 0x7f030017

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/vibration_test;->setContentView(I)V

    .line 20
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mVibrator:Landroid/os/Vibrator;

    .line 21
    const v3, 0x7f080064

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/vibration_test;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 22
    .local v2, buttonon:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/vibration_test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 24
    .local v1, buttonoff:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v3, 0x7f080066

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/vibration_test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, buttonauto:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/vibration_test;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 32
    return-void
.end method
