.class public interface abstract Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequestOrBuilder;
.super Ljava/lang/Object;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeClientLogEventRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
.end method

.method public abstract getClientInstall()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
.end method

.method public abstract getClientRating()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
.end method

.method public abstract getGogglesId()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMsSinceEpoch()J
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getTrackingId()Ljava/lang/String;
.end method

.method public abstract hasClientClick()Z
.end method

.method public abstract hasClientInstall()Z
.end method

.method public abstract hasClientRating()Z
.end method

.method public abstract hasGogglesId()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasMsSinceEpoch()Z
.end method

.method public abstract hasSessionId()Z
.end method

.method public abstract hasTrackingId()Z
.end method
