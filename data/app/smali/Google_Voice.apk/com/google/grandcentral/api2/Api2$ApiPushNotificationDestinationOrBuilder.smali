.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestinationOrBuilder;
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
    name = "ApiPushNotificationDestinationOrBuilder"
.end annotation


# virtual methods
.method public abstract getAndroidPrimaryId()Ljava/lang/String;
.end method

.method public abstract getAndroidPrimaryIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getApnsDeviceToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getApplicationIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCountryCode()Ljava/lang/String;
.end method

.method public abstract getCountryCodeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEventPayload(I)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
.end method

.method public abstract getEventPayloadCount()I
.end method

.method public abstract getEventPayloadList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLanguageCode()Ljava/lang/String;
.end method

.method public abstract getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRoutingInfo()Ljava/lang/String;
.end method

.method public abstract getRoutingInfoBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getType()I
.end method

.method public abstract hasAndroidPrimaryId()Z
.end method

.method public abstract hasApnsDeviceToken()Z
.end method

.method public abstract hasApplicationId()Z
.end method

.method public abstract hasCountryCode()Z
.end method

.method public abstract hasLanguageCode()Z
.end method

.method public abstract hasRoutingInfo()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasType()Z
.end method
