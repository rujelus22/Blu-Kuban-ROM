.class public interface abstract Lcom/google/feedreader/extrpc/Client$RecommendationListOrBuilder;
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
    name = "RecommendationListOrBuilder"
.end annotation


# virtual methods
.method public abstract getRecs(I)Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;
.end method

.method public abstract getRecsCount()I
.end method

.method public abstract getRecsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$RecommendationList$Recommendation;",
            ">;"
        }
    .end annotation
.end method
