.class public Lcom/vlingo/client/safereader/MessageReadbackListener;
.super Ljava/lang/Object;
.source "MessageReadbackListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/safereader/MessageReadbackListener$1;,
        Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;
    }
.end annotation


# static fields
.field private static instance:Lcom/vlingo/client/safereader/MessageReadbackListener;


# instance fields
.field private currentMessageContext:Lcom/vlingo/client/safereader/MessageContext;

.field private m_emailPollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

.field private ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/safereader/MessageReadbackListener;->instance:Lcom/vlingo/client/safereader/MessageReadbackListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    .line 38
    new-instance v1, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;-><init>(Lcom/vlingo/client/safereader/MessageReadbackListener;Lcom/vlingo/client/safereader/MessageReadbackListener$1;)V

    iput-object v1, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    .line 39
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    const-string v2, "TTSQueueProcessor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 40
    .local v0, procThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    new-instance v1, Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-direct {v1}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->m_emailPollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    .line 42
    sput-object p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->instance:Lcom/vlingo/client/safereader/MessageReadbackListener;

    .line 43
    return-void
.end method

.method static synthetic access$202(Lcom/vlingo/client/safereader/MessageReadbackListener;Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/safereader/MessageContext;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->currentMessageContext:Lcom/vlingo/client/safereader/MessageContext;

    return-object p1
.end method

.method public static getSharedInstance()Lcom/vlingo/client/safereader/MessageReadbackListener;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/vlingo/client/safereader/MessageReadbackListener;->instance:Lcom/vlingo/client/safereader/MessageReadbackListener;

    return-object v0
.end method


# virtual methods
.method bumpMsg()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->bumpMsg()V

    .line 146
    return-void
.end method

.method clearQueue()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->clearQueue()V

    .line 142
    return-void
.end method

.method enableEmail(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 54
    if-eqz p1, :cond_8

    .line 55
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->m_emailPollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->start()V

    .line 59
    :goto_7
    return-void

    .line 57
    :cond_8
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->m_emailPollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->stop()V

    goto :goto_7
.end method

.method public getCurrentMessageContext()Lcom/vlingo/client/safereader/MessageContext;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->currentMessageContext:Lcom/vlingo/client/safereader/MessageContext;

    return-object v0
.end method

.method onReadbackDisabled(Z)V
    .registers 4
    .parameter "speakAnnouncement"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->clearQueue()V

    .line 108
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->pause()V

    .line 110
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->m_emailPollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->stop()V

    .line 112
    if-eqz p1, :cond_2c

    .line 113
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->cancelTTS(Z)V

    .line 115
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v0

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->playSound(I)V

    .line 118
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "toggle-safereader-enabled-false"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 121
    :cond_2c
    return-void
.end method

.method onReadbackEnabled(Z)V
    .registers 4
    .parameter "speakAnnouncement"

    .prologue
    .line 86
    if-eqz p1, :cond_1d

    .line 88
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->cancelTTS(Z)V

    .line 90
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v0

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->playSound(I)V

    .line 94
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "toggle-safereader-enabled-true"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 98
    :cond_1d
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->unPause()V

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->m_emailPollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->start()V

    .line 101
    return-void
.end method

.method onSettingsUpdated()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->m_emailPollingEngine:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->onSettingsUpdated()V

    .line 80
    return-void
.end method

.method onSkipCurrentlyPlayingItem()V
    .registers 2

    .prologue
    .line 136
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSEngine;->skipCurrentlyPlayingItem()V

    .line 138
    return-void
.end method

.method onStopPlaying()V
    .registers 3

    .prologue
    .line 127
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->cancelTTS(Z)V

    .line 129
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->clearQueue()V

    .line 130
    return-void
.end method

.method public processTTSRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 3
    .parameter "req"

    .prologue
    .line 73
    if-eqz p1, :cond_7

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener;->ttsQueueProcessor:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->enqueue(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    .line 76
    :cond_7
    return-void
.end method
