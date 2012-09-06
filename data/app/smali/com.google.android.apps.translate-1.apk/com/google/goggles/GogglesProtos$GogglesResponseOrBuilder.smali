.class public interface abstract Lcom/google/goggles/GogglesProtos$GogglesResponseOrBuilder;
.super Ljava/lang/Object;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GogglesResponseOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCorrectedPose()Lcom/google/goggles/PoseProtos$Pose;
.end method

.method public abstract getPuggleDebugging()Lcom/google/goggles/PuggleDebuggingProtos$PuggleDebugging;
.end method

.method public abstract getResults(I)Lcom/google/goggles/ResultProtos$Result;
.end method

.method public abstract getResultsCount()I
.end method

.method public abstract getResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuggestedRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
.end method

.method public abstract hasCorrectedPose()Z
.end method

.method public abstract hasPuggleDebugging()Z
.end method

.method public abstract hasSuggestedRestricts()Z
.end method
