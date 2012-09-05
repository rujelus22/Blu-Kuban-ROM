.class public Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;
.super Landroid/app/Activity;
.source "KeypadTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mkeyButtonMelody:Landroid/media/MediaPlayer;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private buttonDown:[Z

.field context:Landroid/content/Context;

.field final filter:Landroid/content/IntentFilter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBack:Landroid/widget/TextView;

.field private mHome:Landroid/widget/TextView;

.field private mMenu:Landroid/widget/TextView;

.field private mPower:Landroid/widget/TextView;

.field private mSearch:Landroid/widget/TextView;

.field private mVol_down:Landroid/widget/TextView;

.field private mVol_up:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private pass:Z

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->pass:Z

    .line 40
    const/16 v0, 0xe

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->buttonDown:[Z

    .line 49
    const-string v0, "KeypadTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->LOG_TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->filter:Landroid/content/IntentFilter;

    return-void
.end method

.method private changeKeyColor(I)V
    .registers 5
    .parameter "keyIdx"

    .prologue
    const/4 v2, 0x1

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, tv:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_2c

    .line 330
    :goto_5
    if-eqz v0, :cond_17

    .line 331
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->buttonDown:[Z

    aget-boolean v1, v1, p1

    if-ne v1, v2, :cond_21

    .line 332
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->buttonDown:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 341
    :cond_17
    :goto_17
    return-void

    .line 307
    :pswitch_18
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mVol_up:Landroid/widget/TextView;

    .line 308
    goto :goto_5

    .line 310
    :pswitch_1b
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mVol_down:Landroid/widget/TextView;

    .line 311
    goto :goto_5

    .line 325
    :pswitch_1e
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mPower:Landroid/widget/TextView;

    .line 326
    goto :goto_5

    .line 335
    :cond_21
    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->buttonDown:[Z

    aput-boolean v2, v1, p1

    goto :goto_17

    .line 305
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 142
    const v2, 0x7f050003

    invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    sput-object v2, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mkeyButtonMelody:Landroid/media/MediaPlayer;

    .line 143
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mAudioManager:Landroid/media/AudioManager;

    .line 146
    const v2, 0x7f090062

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mVol_up:Landroid/widget/TextView;

    .line 147
    const v2, 0x7f090064

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mVol_down:Landroid/widget/TextView;

    .line 148
    const v2, 0x7f090063

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mPower:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f09004e

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mMenu:Landroid/widget/TextView;

    .line 154
    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mBack:Landroid/widget/TextView;

    .line 155
    const v2, 0x7f090067

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mHome:Landroid/widget/TextView;

    .line 156
    const v2, 0x7f090069

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mSearch:Landroid/widget/TextView;

    .line 158
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mMenu:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mBack:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mHome:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mSearch:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    const v2, 0x7f090065

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, tmpButton:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v2, 0x7f090066

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 166
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8a
    const/4 v2, 0x3

    if-ge v0, v2, :cond_95

    .line 172
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->buttonDown:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 181
    :cond_95
    return-void
.end method

.method private onFinish()V
    .registers 3

    .prologue
    .line 215
    const-string v0, "KeypadTest"

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->pass:Z

    if-eqz v0, :cond_14

    .line 218
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->setResult(I)V

    .line 222
    :goto_10
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->finish()V

    .line 223
    return-void

    .line 220
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->setResult(I)V

    goto :goto_10
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x100

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 207
    :cond_a
    :goto_a
    return-void

    .line 193
    :pswitch_b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mVol_up:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mVol_down:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mPower:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    .line 198
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->buttonDown:[Z

    aput-boolean v3, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 203
    .end local v0           #i:I
    :pswitch_25
    invoke-virtual {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->setResult(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->finish()V

    goto :goto_a

    .line 186
    :pswitch_data_2c
    .packed-switch 0x7f090065
        :pswitch_b
        :pswitch_25
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->setContentView(I)V

    .line 75
    const-string v0, "KeypadTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->pm:Landroid/os/PowerManager;

    .line 79
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 80
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 83
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->init()V

    .line 84
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->setVolume()V

    .line 87
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->context:Landroid/content/Context;

    .line 99
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 100
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 138
    const-string v0, "KeypadTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x3e8

    const/16 v7, 0x64

    const/16 v6, 0x1c

    const/4 v5, 0x1

    .line 237
    const-string v2, "KEYCODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DOWN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v2, 0x18

    if-ne p1, v2, :cond_47

    .line 240
    invoke-direct {p0, v9}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->changeKeyColor(I)V

    .line 241
    new-instance v1, Landroid/media/ToneGenerator;

    invoke-direct {v1, v5, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 242
    .local v1, t1:Landroid/media/ToneGenerator;
    invoke-virtual {v1, v6, v8}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 243
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 286
    .end local v1           #t1:Landroid/media/ToneGenerator;
    :cond_36
    :goto_36
    iput-boolean v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->pass:Z

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_39
    const/4 v2, 0x3

    if-ge v0, v2, :cond_6e

    .line 289
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->buttonDown:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_44

    .line 290
    iput-boolean v9, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->pass:Z

    .line 288
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 244
    .end local v0           #i:I
    :cond_47
    const/16 v2, 0x19

    if-ne p1, v2, :cond_5a

    .line 245
    invoke-direct {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->changeKeyColor(I)V

    .line 246
    new-instance v1, Landroid/media/ToneGenerator;

    invoke-direct {v1, v5, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 247
    .restart local v1       #t1:Landroid/media/ToneGenerator;
    invoke-virtual {v1, v6, v8}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 248
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    goto :goto_36

    .line 280
    .end local v1           #t1:Landroid/media/ToneGenerator;
    :cond_5a
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_36

    .line 281
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->changeKeyColor(I)V

    .line 282
    new-instance v1, Landroid/media/ToneGenerator;

    invoke-direct {v1, v5, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 283
    .restart local v1       #t1:Landroid/media/ToneGenerator;
    invoke-virtual {v1, v6, v8}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 284
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    goto :goto_36

    .line 294
    .end local v1           #t1:Landroid/media/ToneGenerator;
    .restart local v0       #i:I
    :cond_6e
    iget-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->pass:Z

    if-eqz v2, :cond_7c

    .line 295
    const-string v2, "KEYCODE"

    const-string v3, "DOWN : Pass "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->onFinish()V

    .line 298
    :cond_7c
    return v5
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 123
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 125
    :cond_1b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 126
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_35} :catch_3b

    .line 131
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 133
    return-void

    .line 128
    :catch_3b
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_35
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 106
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 108
    :cond_1b
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 109
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_35} :catch_42

    .line 115
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 116
    const-string v1, "KeypadTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 112
    :catch_42
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_35
.end method

.method public setVolume()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 211
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/KeypadTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 212
    return-void
.end method
