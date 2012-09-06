.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequestOrBuilder;
.super Ljava/lang/Object;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiFetchRecordingRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getCallId(I)Ljava/lang/String;
.end method

.method public abstract getCallIdBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCallIdCount()I
.end method

.method public abstract getCallIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClientLoginToken()Ljava/lang/String;
.end method

.method public abstract getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEndOffset()J
.end method

.method public abstract getFormat(I)I
.end method

.method public abstract getFormatCount()I
.end method

.method public abstract getFormatList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartOffset()J
.end method

.method public abstract hasClientLoginToken()Z
.end method

.method public abstract hasEndOffset()Z
.end method

.method public abstract hasStartOffset()Z
.end method
