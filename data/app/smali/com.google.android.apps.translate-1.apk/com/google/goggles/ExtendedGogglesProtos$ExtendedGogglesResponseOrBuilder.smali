.class public interface abstract Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponseOrBuilder;
.super Ljava/lang/Object;
.source "ExtendedGogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendedGogglesResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getEyeCandyResults(I)Lcom/google/goggles/ResultProtos$Result;
.end method

.method public abstract getEyeCandyResultsCount()I
.end method

.method public abstract getEyeCandyResultsList()Ljava/util/List;
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

.method public abstract getGogglesId()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMomentId()Ljava/lang/String;
.end method

.method public abstract getPuggleResults(I)Lcom/google/goggles/ResultProtos$Result;
.end method

.method public abstract getPuggleResultsCount()I
.end method

.method public abstract getPuggleResultsList()Ljava/util/List;
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

.method public abstract getTrackingId()Ljava/lang/String;
.end method

.method public abstract hasGogglesId()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasMomentId()Z
.end method

.method public abstract hasTrackingId()Z
.end method
