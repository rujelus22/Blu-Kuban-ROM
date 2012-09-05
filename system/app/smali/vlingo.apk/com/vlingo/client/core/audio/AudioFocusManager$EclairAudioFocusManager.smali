.class Lcom/vlingo/client/core/audio/AudioFocusManager$EclairAudioFocusManager;
.super Lcom/vlingo/client/core/audio/AudioFocusManager;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EclairAudioFocusManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/audio/AudioFocusManager$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager$EclairAudioFocusManager;-><init>()V

    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public requestAudioFocus(II)V
    .registers 3
    .parameter "audioStream"
    .parameter "focusType"

    .prologue
    .line 47
    return-void
.end method
