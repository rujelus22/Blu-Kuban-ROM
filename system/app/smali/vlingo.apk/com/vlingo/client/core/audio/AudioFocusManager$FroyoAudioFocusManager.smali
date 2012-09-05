.class Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;
.super Lcom/vlingo/client/core/audio/AudioFocusManager$EclairAudioFocusManager;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FroyoAudioFocusManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUS_DELAY:I = 0xc8


# instance fields
.field private audioFocusRequestState:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, v1}, Lcom/vlingo/client/core/audio/AudioFocusManager$EclairAudioFocusManager;-><init>(Lcom/vlingo/client/core/audio/AudioFocusManager$1;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->audioFocusRequestState:I

    .line 63
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    new-instance v0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager$FocusHandler;-><init>(Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;Lcom/vlingo/client/core/audio/AudioFocusManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized abandonAudioFocus()V
    .registers 5

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 88
    monitor-exit p0

    return-void

    .line 85
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getAudioFocusRequestState()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->audioFocusRequestState:I

    return v0
.end method

.method public declared-synchronized release()V
    .registers 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->abandonAudioFocus()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mHandler:Landroid/os/Handler;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestAudioFocus(II)V
    .registers 7
    .parameter "audioStream"
    .parameter "focusType"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->getAudioFocusRequestState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    invoke-virtual {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->getAudioFocusRequestState()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_28

    .line 77
    :cond_f
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 80
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 82
    .end local v0           #msg:Landroid/os/Message;
    :cond_28
    monitor-exit p0

    return-void

    .line 75
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected setAudioFocusRequestState(I)V
    .registers 2
    .parameter "audioFocusRequestState"

    .prologue
    .line 101
    iput p1, p0, Lcom/vlingo/client/core/audio/AudioFocusManager$FroyoAudioFocusManager;->audioFocusRequestState:I

    .line 102
    return-void
.end method
