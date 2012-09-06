.class public interface abstract Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;
.super Ljava/lang/Object;
.source "FetchRecordingRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ApiRpc;


# virtual methods
.method public abstract getAudioBytes()[B
.end method

.method public abstract getCallId()Ljava/lang/String;
.end method

.method public abstract getEndOffset()J
.end method

.method public abstract getFormat()Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
.end method

.method public abstract getLength()J
.end method

.method public abstract getStartOffset()J
.end method

.method public abstract setCallId(Ljava/lang/String;)V
.end method

.method public abstract setEndOffset(J)V
.end method

.method public abstract setFormat(Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;)V
.end method

.method public abstract setStartOffset(J)V
.end method
