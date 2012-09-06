.class public interface abstract Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;
.super Ljava/lang/Object;
.source "RequestPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/RequestPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PushStrategy"
.end annotation


# virtual methods
.method public abstract onPush(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
.end method

.method public abstract onReset()V
.end method

.method public abstract shouldPush(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Z
.end method
