.class public Lcom/sec/android/app/lcdtest/melody_test;
.super Landroid/app/Activity;
.source "melody_test.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private mediaPlayStop()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    .line 116
    :cond_11
    return-void
.end method

.method private receiverMax()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->mediaPlayStop()V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 88
    const/high16 v0, 0x7f05

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 93
    return-void
.end method

.method private receiverMin()V
    .registers 5

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->mediaPlayStop()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 98
    const/high16 v0, 0x7f05

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 103
    return-void
.end method

.method private speakerOff()V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->mediaPlayStop()V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 108
    return-void
.end method

.method private stereoMax()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->mediaPlayStop()V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 68
    const/high16 v0, 0x7f05

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 73
    return-void
.end method

.method private stereoMin()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->mediaPlayStop()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 78
    const/high16 v0, 0x7f05

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 83
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 58
    :goto_7
    return-void

    .line 40
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->stereoMax()V

    goto :goto_7

    .line 43
    :pswitch_c
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->receiverMax()V

    goto :goto_7

    .line 46
    :pswitch_10
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->stereoMin()V

    goto :goto_7

    .line 49
    :pswitch_14
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->receiverMin()V

    goto :goto_7

    .line 52
    :pswitch_18
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->speakerOff()V

    goto :goto_7

    .line 55
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/melody_test;->finish()V

    goto :goto_7

    .line 38
    :pswitch_data_20
    .packed-switch 0x7f080037
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v6, 0x7f030013

    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/melody_test;->setContentView(I)V

    .line 22
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/melody_test;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/sec/android/app/lcdtest/melody_test;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    const v6, 0x7f080037

    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/melody_test;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 24
    .local v5, buttonspeaker:Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v6, 0x7f080038

    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/melody_test;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 26
    .local v4, buttonreceiver:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v6, 0x7f080039

    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/melody_test;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 28
    .local v2, buttonheadset:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v6, 0x7f08003a

    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/melody_test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, buttonReceiverHeadset:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v6, 0x7f08003b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/melody_test;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 32
    .local v3, buttonoff:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v6, 0x7f08003c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/lcdtest/melody_test;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, buttonexit:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/melody_test;->mediaPlayStop()V

    .line 63
    return-void
.end method
