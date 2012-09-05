.class Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/audio/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;Lcom/vlingo/client/core/audio/AudioPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 8
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 519
    const-class v1, Lcom/vlingo/client/core/audio/AudioPlayer;

    monitor-enter v1

    .line 520
    if-nez p1, :cond_15

    .line 521
    :try_start_5
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$800(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    const v2, 0x8000

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 530
    :goto_13
    monitor-exit v1

    .line 531
    return-void

    .line 526
    :cond_15
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_Handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$800(Lcom/vlingo/client/core/audio/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v0}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v0

    const v2, 0x8000

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->pause(I)V

    .line 528
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$MyPhoneStateListener;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_Server:Lcom/vlingo/client/core/audio/AudioPlayer$Server;
    invoke-static {v0}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$900(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/audio/AudioPlayer$Server;->cancel(Z)V

    goto :goto_13

    .line 530
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v0
.end method
