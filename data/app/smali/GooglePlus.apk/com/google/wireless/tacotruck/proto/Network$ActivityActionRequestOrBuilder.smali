.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequestOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityActionRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getActivityId()Ljava/lang/String;
.end method

.method public abstract getDeleteCommentId(I)Ljava/lang/String;
.end method

.method public abstract getDeleteCommentIdCount()I
.end method

.method public abstract getDeleteCommentIdList()Ljava/util/List;
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

.method public abstract getReportCommentId(I)Ljava/lang/String;
.end method

.method public abstract getReportCommentIdCount()I
.end method

.method public abstract getReportCommentIdList()Ljava/util/List;
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

.method public abstract getReverseAction()Z
.end method

.method public abstract getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
.end method

.method public abstract hasActivityId()Z
.end method

.method public abstract hasReverseAction()Z
.end method

.method public abstract hasType()Z
.end method
