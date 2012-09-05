.class public interface abstract Lcom/vlingo/client/core/audio/IAudioPlayer;
.super Ljava/lang/Object;
.source "IAudioPlayer.java"

# interfaces
.implements Lcom/vlingo/client/core/settings/SettingChangeListener;


# static fields
.field public static final SOUND_ACTION:I = 0x11175

.field public static final SOUND_RESULT:I = 0x11173

.field public static final SOUND_START_RECORD:I = 0x11171

.field public static final SOUND_STOP_RECORD:I = 0x11172

.field public static final SOUND_WARNING:I = 0x11174


# virtual methods
.method public abstract playAudio([B)V
.end method

.method public abstract playSound(I)V
.end method

.method public abstract playSound(ILcom/vlingo/client/core/audio/AudioCallback;)V
.end method

.method public abstract stopPlayback(Z)V
.end method

.method public abstract updateVolumePreferences()V
.end method
