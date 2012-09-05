.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$PlusOneDataOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlusOneDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getCountData(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
.end method

.method public abstract getCountDataCount()I
.end method

.method public abstract getCountDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlusoneId()Ljava/lang/String;
.end method

.method public abstract getPlusonedByViewer()Z
.end method

.method public abstract getTotalPlusoneCount()I
.end method

.method public abstract hasPlusoneId()Z
.end method

.method public abstract hasPlusonedByViewer()Z
.end method

.method public abstract hasTotalPlusoneCount()Z
.end method
