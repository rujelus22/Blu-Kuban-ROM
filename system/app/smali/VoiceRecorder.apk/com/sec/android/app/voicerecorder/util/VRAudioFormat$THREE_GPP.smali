.class public Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$THREE_GPP;
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
    name = "THREE_GPP"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioEncoder()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x3

    return v0
.end method

.method public getAudioEncodingBitrate()I
    .registers 2

    .prologue
    .line 53
    const v0, 0xf5b4

    return v0
.end method

.method public getAudioSamplingRate()I
    .registers 2

    .prologue
    .line 69
    const v0, 0xac44

    return v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string v0, ".3ga"

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const-string v0, "audio/3gpp"

    return-object v0
.end method

.method public getOutputFormat()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getWarningSize()I
    .registers 2

    .prologue
    .line 93
    const v0, 0x14438

    return v0
.end method
