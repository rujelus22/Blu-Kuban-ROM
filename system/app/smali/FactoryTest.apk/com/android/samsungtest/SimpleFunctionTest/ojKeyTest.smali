.class public Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;
.super Landroid/app/Activity;
.source "ojKeyTest.java"


# static fields
.field private static mkeyButtonMelody:Landroid/media/MediaPlayer;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field clickedarray:[Z

.field private down:Landroid/widget/TextView;

.field i:I

.field private left:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mPrevKey:I

.field private mPrevTime:J

.field pm:Landroid/os/PowerManager;

.field private right:Landroid/widget/TextView;

.field private up:Landroid/widget/TextView;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    .line 31
    const-string v0, "ojKeyTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 19
    nop

    :array_14
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private init()V
    .registers 2

    .prologue
    .line 55
    const v0, 0x7f050003

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mkeyButtonMelody:Landroid/media/MediaPlayer;

    .line 56
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mAudioManager:Landroid/media/AudioManager;

    .line 57
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->setVolume()V

    .line 59
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->left:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->right:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->up:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->down:Landroid/widget/TextView;

    .line 63
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 218
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 219
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 220
    const/4 v0, 0x1

    .line 226
    :goto_24
    return v0

    .line 224
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mPrevKey:I

    .line 225
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mPrevTime:J

    .line 226
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->setContentView(I)V

    .line 39
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->pm:Landroid/os/PowerManager;

    .line 40
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "ojKeyTest"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 41
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 44
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mPrevKey:I

    .line 45
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mPrevTime:J

    .line 46
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mCurrKey:I

    .line 47
    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mCurrTime:J

    .line 49
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->init()V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    return-void
.end method

.method public onExit()V
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->setResult(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->finish()V

    .line 240
    return-void
.end method

.method public onFinish()V
    .registers 2

    .prologue
    .line 232
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->setResult(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->finish()V

    .line 234
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v8, 0x7f070009

    const v7, 0x7f070008

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 95
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mCurrKey:I

    .line 96
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mCurrTime:J

    .line 98
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2a

    .line 99
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->BackKeyCheck()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-gtz v4, :cond_2a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 101
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->onExit()V

    .line 212
    :goto_29
    return v2

    .line 107
    :cond_2a
    const/16 v4, 0x15

    if-ne p1, v4, :cond_59

    .line 108
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->playButtonMelody()V

    .line 109
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    aget-boolean v4, v4, v2

    if-eq v4, v3, :cond_4a

    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    if-ne v4, v6, :cond_4a

    .line 111
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    .line 112
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->left:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 191
    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    .line 192
    .local v0, isExit:Z
    const/4 v1, 0x0

    .local v1, k:I
    :goto_4c
    const/4 v2, 0x4

    if-ge v1, v2, :cond_124

    .line 195
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_56

    .line 197
    const/4 v0, 0x0

    .line 192
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 119
    .end local v0           #isExit:Z
    .end local v1           #k:I
    :cond_59
    const/16 v4, 0x16

    if-ne p1, v4, :cond_7a

    .line 120
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->playButtonMelody()V

    .line 121
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    aget-boolean v2, v2, v3

    if-eq v2, v3, :cond_4a

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    if-ne v2, v6, :cond_4a

    .line 123
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    .line 124
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->right:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_4a

    .line 130
    :cond_7a
    const/16 v4, 0x14

    if-ne p1, v4, :cond_9d

    .line 131
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->playButtonMelody()V

    .line 132
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    const/4 v4, 0x3

    aget-boolean v2, v2, v4

    if-eq v2, v3, :cond_4a

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    if-ne v2, v6, :cond_4a

    .line 134
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    .line 135
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->down:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_4a

    .line 142
    :cond_9d
    const/16 v4, 0x13

    if-ne p1, v4, :cond_c0

    .line 143
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->playButtonMelody()V

    .line 144
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    const/4 v4, 0x2

    aget-boolean v2, v2, v4

    if-eq v2, v3, :cond_4a

    iget v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    if-ne v2, v6, :cond_4a

    .line 146
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    .line 147
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->up:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_4a

    .line 153
    :cond_c0
    const/16 v4, 0x17

    if-ne p1, v4, :cond_4a

    .line 154
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->playButtonMelody()V

    .line 155
    iget v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    packed-switch v4, :pswitch_data_12c

    goto/16 :goto_4a

    .line 160
    :pswitch_ce
    iget-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    aput-boolean v3, v4, v2

    .line 161
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->left:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 162
    iput v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    goto/16 :goto_4a

    .line 167
    :pswitch_e3
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    aput-boolean v3, v2, v3

    .line 168
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->right:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 169
    iput v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    goto/16 :goto_4a

    .line 174
    :pswitch_f8
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    const/4 v4, 0x2

    aput-boolean v3, v2, v4

    .line 175
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->up:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 176
    iput v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    goto/16 :goto_4a

    .line 180
    :pswitch_10e
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->clickedarray:[Z

    const/4 v4, 0x3

    aput-boolean v3, v2, v4

    .line 181
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->down:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 182
    iput v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->i:I

    goto/16 :goto_4a

    .line 206
    .restart local v0       #isExit:Z
    .restart local v1       #k:I
    :cond_124
    if-ne v0, v3, :cond_129

    .line 207
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->onFinish()V

    :cond_129
    move v2, v3

    .line 212
    goto/16 :goto_29

    .line 155
    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_e3
        :pswitch_f8
        :pswitch_10e
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    return-void
.end method

.method public playButtonMelody()V
    .registers 3

    .prologue
    .line 82
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mkeyButtonMelody:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 83
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mkeyButtonMelody:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 84
    return-void
.end method

.method public setVolume()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ojKeyTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 88
    return-void
.end method
