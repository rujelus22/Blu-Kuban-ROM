.class public Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$AMRNB;
.super Ljava/lang/Object;
.source "VRAudioFormat.java"

# interfaces
.implements Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AMRNB"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioEncoder()I
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public getAudioEncodingBitrate()I
    .registers 2

    .prologue
    .line 115
    const/16 v0, 0x2fa8

    return v0
.end method

.method public getAudioSamplingRate()I
    .registers 2

    .prologue
    .line 131
    const/16 v0, 0x1f40

    return v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    const-string v0, ".amr"

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    const-string v0, "audio/amr"

    return-object v0
.end method

.method public getOutputFormat()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x3

    return v0
.end method

.method public getWarningSize()I
    .registers 2

    .prologue
    .line 155
    const/16 v0, 0x3e80

    return v0
.end method
