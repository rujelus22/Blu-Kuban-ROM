.class public Lcom/vlingo/client/core/audio/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAudioBluetooth()Z
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public static isAudioHeadset()Z
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method
