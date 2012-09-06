.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$SearchQueryOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchQueryOrBuilder"
.end annotation


# virtual methods
.method public abstract getFilter(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
.end method

.method public abstract getFilterCount()I
.end method

.method public abstract getFilterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
.end method

.method public abstract getQueryText()Ljava/lang/String;
.end method

.method public abstract getSearchRadiusMeters()I
.end method

.method public abstract getSort()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
.end method

.method public abstract hasPosition()Z
.end method

.method public abstract hasQueryText()Z
.end method

.method public abstract hasSearchRadiusMeters()Z
.end method

.method public abstract hasSort()Z
.end method
