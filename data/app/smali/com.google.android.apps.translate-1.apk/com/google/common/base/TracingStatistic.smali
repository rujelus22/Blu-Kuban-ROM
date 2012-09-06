.class public interface abstract Lcom/google/common/base/TracingStatistic;
.super Ljava/lang/Object;
.source "TracingStatistic.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# virtual methods
.method public abstract enable()Z
.end method

.method public abstract getTracingStat()Lcom/google/common/base/AtomicTracerStatMap;
.end method

.method public abstract getUnits()Ljava/lang/String;
.end method

.method public abstract start(Ljava/lang/Thread;)J
.end method

.method public abstract stop(Ljava/lang/Thread;)J
.end method
