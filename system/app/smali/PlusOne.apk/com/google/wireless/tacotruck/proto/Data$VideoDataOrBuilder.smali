.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$VideoDataOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getDuration()J
.end method

.method public abstract getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
.end method

.method public abstract getStream(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
.end method

.method public abstract getStreamCount()I
.end method

.method public abstract getStreamList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDuration()Z
.end method

.method public abstract hasStatus()Z
.end method
