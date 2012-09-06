.class public interface abstract Lcom/google/goggles/TracingProtos$ProcessorStatusOrBuilder;
.super Ljava/lang/Object;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessorStatusOrBuilder"
.end annotation


# virtual methods
.method public abstract getCumulativeProcessTimeMs()I
.end method

.method public abstract getDutyPeriod()I
.end method

.method public abstract getNumFrames()I
.end method

.method public abstract getType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
.end method

.method public abstract hasCumulativeProcessTimeMs()Z
.end method

.method public abstract hasDutyPeriod()Z
.end method

.method public abstract hasNumFrames()Z
.end method

.method public abstract hasType()Z
.end method
