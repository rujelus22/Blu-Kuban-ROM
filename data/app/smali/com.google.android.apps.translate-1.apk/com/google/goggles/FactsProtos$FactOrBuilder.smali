.class public interface abstract Lcom/google/goggles/FactsProtos$FactOrBuilder;
.super Ljava/lang/Object;
.source "FactsProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FactsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FactOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttribute()Ljava/lang/String;
.end method

.method public abstract getConfidenceLevel()Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
.end method

.method public abstract getUrls(I)Ljava/lang/String;
.end method

.method public abstract getUrlsCount()I
.end method

.method public abstract getUrlsList()Ljava/util/List;
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

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract hasAttribute()Z
.end method

.method public abstract hasConfidenceLevel()Z
.end method

.method public abstract hasValue()Z
.end method
