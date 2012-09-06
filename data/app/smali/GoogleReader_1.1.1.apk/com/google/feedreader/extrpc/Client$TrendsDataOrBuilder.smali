.class public interface abstract Lcom/google/feedreader/extrpc/Client$TrendsDataOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrendsDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getChartHeight()I
.end method

.method public abstract getChartJsonUrl()Ljava/lang/String;
.end method

.method public abstract getChartUrl()Ljava/lang/String;
.end method

.method public abstract getChartValues(I)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
.end method

.method public abstract getChartValuesCount()I
.end method

.method public abstract getChartValuesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChartWidth()I
.end method

.method public abstract hasChartHeight()Z
.end method

.method public abstract hasChartJsonUrl()Z
.end method

.method public abstract hasChartUrl()Z
.end method

.method public abstract hasChartWidth()Z
.end method
