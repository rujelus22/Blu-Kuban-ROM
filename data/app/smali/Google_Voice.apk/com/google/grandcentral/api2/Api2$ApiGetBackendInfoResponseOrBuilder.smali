.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponseOrBuilder;
.super Ljava/lang/Object;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiGetBackendInfoResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccessNumberForPostDialPinCalls()Ljava/lang/String;
.end method

.method public abstract getAccessNumberForPostDialPinCallsBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMapping(I)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
.end method

.method public abstract getMappingCount()I
.end method

.method public abstract getMappingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPin()Ljava/lang/String;
.end method

.method public abstract getPinBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
.end method

.method public abstract hasAccessNumberForPostDialPinCalls()Z
.end method

.method public abstract hasPin()Z
.end method

.method public abstract hasStatus()Z
.end method
