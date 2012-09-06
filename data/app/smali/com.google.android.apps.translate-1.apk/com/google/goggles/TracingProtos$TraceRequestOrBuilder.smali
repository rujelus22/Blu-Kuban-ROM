.class public interface abstract Lcom/google/goggles/TracingProtos$TraceRequestOrBuilder;
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
    name = "TraceRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
.end method

.method public abstract getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
.end method

.method public abstract getProcessorStatus(I)Lcom/google/goggles/TracingProtos$ProcessorStatus;
.end method

.method public abstract getProcessorStatusCount()I
.end method

.method public abstract getProcessorStatusList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$ProcessorStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTraceAction(I)Lcom/google/goggles/TracingProtos$TraceAction;
.end method

.method public abstract getTraceActionCount()I
.end method

.method public abstract getTraceActionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDeviceInfo()Z
.end method

.method public abstract hasNetworkInfo()Z
.end method
