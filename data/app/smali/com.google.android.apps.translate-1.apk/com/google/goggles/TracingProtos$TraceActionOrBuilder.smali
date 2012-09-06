.class public interface abstract Lcom/google/goggles/TracingProtos$TraceActionOrBuilder;
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
    name = "TraceActionOrBuilder"
.end annotation


# virtual methods
.method public abstract getActionStartMs()J
.end method

.method public abstract getDurationMs()I
.end method

.method public abstract getGogglesId()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPointVariables(I)Lcom/google/goggles/TracingProtos$PointVariable;
.end method

.method public abstract getPointVariablesCount()I
.end method

.method public abstract getPointVariablesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$PointVariable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerDurationMs()I
.end method

.method public abstract getSpanVariables(I)Lcom/google/goggles/TracingProtos$SpanVariable;
.end method

.method public abstract getSpanVariablesCount()I
.end method

.method public abstract getSpanVariablesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTracingCookie()Ljava/lang/String;
.end method

.method public abstract getTrackingId()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/google/goggles/TracingProtos$TraceAction$Type;
.end method

.method public abstract hasActionStartMs()Z
.end method

.method public abstract hasDurationMs()Z
.end method

.method public abstract hasGogglesId()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasServerDurationMs()Z
.end method

.method public abstract hasTracingCookie()Z
.end method

.method public abstract hasTrackingId()Z
.end method

.method public abstract hasType()Z
.end method
