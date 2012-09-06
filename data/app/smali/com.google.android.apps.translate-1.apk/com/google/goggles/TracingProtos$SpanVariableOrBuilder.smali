.class public interface abstract Lcom/google/goggles/TracingProtos$SpanVariableOrBuilder;
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
    name = "SpanVariableOrBuilder"
.end annotation


# virtual methods
.method public abstract getDurationMs()I
.end method

.method public abstract getStartMs()I
.end method

.method public abstract getType()Lcom/google/goggles/TracingProtos$SpanVariable$Type;
.end method

.method public abstract hasDurationMs()Z
.end method

.method public abstract hasStartMs()Z
.end method

.method public abstract hasType()Z
.end method
