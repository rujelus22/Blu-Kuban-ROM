.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequestOrBuilder;
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
    name = "ApiGetRatesRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientLoginToken()Ljava/lang/String;
.end method

.method public abstract getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDestinationNumber(I)Ljava/lang/String;
.end method

.method public abstract getDestinationNumberBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDestinationNumberCount()I
.end method

.method public abstract getDestinationNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasClientLoginToken()Z
.end method
