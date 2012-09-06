.class public interface abstract Lcom/google/android/apps/unveil/protocol/ClickTracker$ClickLogConnector;
.super Ljava/lang/Object;
.source "ClickTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/ClickTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClickLogConnector"
.end annotation


# virtual methods
.method public abstract sendRequest(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;",
            ">;)V"
        }
    .end annotation
.end method
