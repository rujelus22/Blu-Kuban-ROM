.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$PeopleResultsOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PeopleResultsOrBuilder"
.end annotation


# virtual methods
.method public abstract getPeopleResult(I)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
.end method

.method public abstract getPeopleResultCount()I
.end method

.method public abstract getPeopleResultList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShownPeopleBlob()Ljava/lang/String;
.end method

.method public abstract hasShownPeopleBlob()Z
.end method
