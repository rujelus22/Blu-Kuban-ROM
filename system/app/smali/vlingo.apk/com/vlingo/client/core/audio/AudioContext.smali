.class public Lcom/vlingo/client/core/audio/AudioContext;
.super Ljava/lang/Object;
.source "AudioContext.java"


# instance fields
.field private m_listener:Lcom/vlingo/client/core/audio/AudioListener;

.field private m_source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/vlingo/client/core/audio/AudioListener;)V
    .registers 3
    .parameter "source"
    .parameter "listener"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioContext;->m_source:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/vlingo/client/core/audio/AudioContext;->m_listener:Lcom/vlingo/client/core/audio/AudioListener;

    .line 19
    return-void
.end method


# virtual methods
.method public getListener()Lcom/vlingo/client/core/audio/AudioListener;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioContext;->m_listener:Lcom/vlingo/client/core/audio/AudioListener;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioContext;->m_source:Ljava/lang/Object;

    return-object v0
.end method
