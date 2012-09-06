.class public interface abstract Lcom/google/goggles/FlowProtos$FlowDataOrBuilder;
.super Ljava/lang/Object;
.source "FlowProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FlowProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FlowDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getFrameChange(I)Lcom/google/goggles/FlowProtos$FrameChange;
.end method

.method public abstract getFrameChangeCount()I
.end method

.method public abstract getFrameChangeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FlowProtos$FrameChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrePackedCorrespondences(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrePackedCorrespondencesCount()I
.end method

.method public abstract getPrePackedCorrespondencesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method
