.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetPeopleRequestOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetPeopleRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getFocusObfuscatedId(I)Ljava/lang/String;
.end method

.method public abstract getFocusObfuscatedIdCount()I
.end method

.method public abstract getFocusObfuscatedIdList()Ljava/util/List;
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

.method public abstract getGaiaId(I)J
.end method

.method public abstract getGaiaIdCount()I
.end method

.method public abstract getGaiaIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
