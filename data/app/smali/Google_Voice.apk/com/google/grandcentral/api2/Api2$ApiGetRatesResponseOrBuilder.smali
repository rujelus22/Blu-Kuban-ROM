.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponseOrBuilder;
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
    name = "ApiGetRatesResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getDisplayableTotalCallRate()Ljava/lang/String;
.end method

.method public abstract getDisplayableTotalCallRateBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDisplayableTotalSmsRate()Ljava/lang/String;
.end method

.method public abstract getDisplayableTotalSmsRateBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate;
.end method

.method public abstract getRateCount()I
.end method

.method public abstract getRateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiRate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
.end method

.method public abstract hasDisplayableTotalCallRate()Z
.end method

.method public abstract hasDisplayableTotalSmsRate()Z
.end method

.method public abstract hasStatus()Z
.end method
