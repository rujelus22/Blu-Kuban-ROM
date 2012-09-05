.class public abstract Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;
.super Ljava/lang/Object;
.source "RecognitionKeyHandler.java"

# interfaces
.implements Lcom/vlingo/client/core/settings/SettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler$1;,
        Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler$EmptyRecognitionKeyHandlerCallback;
    }
.end annotation


# static fields
.field protected static final KEY_UP_THRESH:I = 0xc8


# instance fields
.field protected volatile asrKey:I

.field protected volatile callback:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;

.field protected volatile timings:Lcom/vlingo/client/core/recognizer/TimingRepository;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->asrKey:I

    .line 37
    new-instance v0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler$EmptyRecognitionKeyHandlerCallback;

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler$EmptyRecognitionKeyHandlerCallback;-><init>(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->callback:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;

    .line 43
    iput-object v1, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 46
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 102
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v0

    const-string v1, "behavior.voice_key"

    invoke-virtual {v0, v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->removeSettingChangeListener(Ljava/lang/String;Lcom/vlingo/client/core/settings/SettingChangeListener;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->callback:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;

    .line 104
    return-void
.end method

.method public initialize()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Lcom/vlingo/client/core/settings/SettingsRepository;->getInstanceShared()Lcom/vlingo/client/core/settings/SettingsRepository;

    move-result-object v0

    const-string v1, "behavior.voice_key"

    invoke-virtual {v0, v1, p0}, Lcom/vlingo/client/core/settings/SettingsRepository;->addSettingChangeListener(Ljava/lang/String;Lcom/vlingo/client/core/settings/SettingChangeListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->updateVoiceKey()V

    .line 95
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Lcom/vlingo/client/core/settings/Setting;)V
    .registers 4
    .parameter "settingKey"
    .parameter "setting"

    .prologue
    .line 107
    const-string v0, "behavior.voice_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->updateVoiceKey()V

    .line 110
    :cond_b
    return-void
.end method

.method public setRecognitionKeyHandlerCallback(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 49
    if-nez p1, :cond_a

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RecognitionKeyHandlerCallback is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_a
    iput-object p1, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->callback:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;

    .line 52
    return-void
.end method

.method public setTimingRepository(Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 2
    .parameter "timings"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 56
    return-void
.end method

.method public startRecognition()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->callback:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;

    invoke-interface {v1}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;->isRecognitionActive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    :goto_9
    return v0

    .line 66
    :cond_a
    iget-object v1, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/TimingRepository;->clear()V

    .line 67
    iget-object v1, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/TimingRepository;->markTimeZero()V

    .line 68
    iget-object v1, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->callback:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;

    const/16 v2, 0xbb9

    iget v3, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->asrKey:I

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;->onRecognitionKeyHandlerKeyEvent(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;III)Z

    move-result v0

    goto :goto_9
.end method

.method public stopRecognition()V
    .registers 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->callback:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;->isRecognitionActive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 81
    :goto_8
    return-void

    .line 78
    :cond_9
    iget-object v0, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->callback:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;

    const/16 v1, 0xbba

    iget v2, p0, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->asrKey:I

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;->onRecognitionKeyHandlerKeyEvent(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;III)Z

    goto :goto_8
.end method

.method public abstract updateVoiceKey()V
.end method
