.class public Lcom/sec/android/app/lcdtest/button_receiver;
.super Landroid/app/Activity;
.source "button_receiver.java"


# instance fields
.field mVolume:Landroid/media/AudioManager;

.field private melody_test:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_receiver;->setContentView(I)V

    .line 19
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/button_receiver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->mVolume:Landroid/media/AudioManager;

    .line 20
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->melody_test:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->melody_test:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->mVolume:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 39
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->mVolume:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/button_receiver;->mVolume:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->mVolume:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 29
    const/high16 v0, 0x7f05

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->melody_test:Landroid/media/MediaPlayer;

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->melody_test:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/button_receiver;->melody_test:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 32
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/button_receiver;->finish()V

    .line 44
    const/4 v0, 0x1

    return v0
.end method
