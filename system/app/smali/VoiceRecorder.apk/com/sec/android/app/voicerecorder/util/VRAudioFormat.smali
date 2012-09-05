.class public interface abstract Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;
.super Ljava/lang/Object;
.source "VRAudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$AMRNB;,
        Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$THREE_GPP;
    }
.end annotation


# virtual methods
.method public abstract getAudioEncoder()I
.end method

.method public abstract getAudioEncodingBitrate()I
.end method

.method public abstract getAudioSamplingRate()I
.end method

.method public abstract getExtension()Ljava/lang/String;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getOutputFormat()I
.end method

.method public abstract getWarningSize()I
.end method
