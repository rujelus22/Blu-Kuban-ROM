.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$AudienceOrBuilder;
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
    name = "AudienceOrBuilder"
.end annotation


# virtual methods
.method public abstract getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;
.end method

.method public abstract getCircleCount()I
.end method

.method public abstract getCircleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublic()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
.end method

.method public abstract getUserCount()I
.end method

.method public abstract getUserList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPublic()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
