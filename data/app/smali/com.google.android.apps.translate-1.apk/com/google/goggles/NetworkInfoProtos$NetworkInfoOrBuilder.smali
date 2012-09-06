.class public interface abstract Lcom/google/goggles/NetworkInfoProtos$NetworkInfoOrBuilder;
.super Ljava/lang/Object;
.source "NetworkInfoProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NetworkInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getMobileNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
.end method

.method public abstract getSignalStrength()I
.end method

.method public abstract getType()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
.end method

.method public abstract hasMobileNetworkInfo()Z
.end method

.method public abstract hasSignalStrength()Z
.end method

.method public abstract hasType()Z
.end method
