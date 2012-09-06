.class public interface abstract Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponseOrBuilder;
.super Ljava/lang/Object;
.source "GogglesReplayProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesReplayProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GogglesReplayResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;
.end method

.method public abstract getQueryImage()Lcom/google/goggles/GogglesProtos$Image;
.end method

.method public abstract getQueryImageThumbnail()Lcom/google/goggles/GogglesProtos$Image;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
.end method

.method public abstract hasGogglesResponse()Z
.end method

.method public abstract hasQueryImage()Z
.end method

.method public abstract hasQueryImageThumbnail()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasUserContributionMetadata()Z
.end method
