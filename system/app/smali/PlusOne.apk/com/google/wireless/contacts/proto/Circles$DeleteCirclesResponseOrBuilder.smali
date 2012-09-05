.class public interface abstract Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponseOrBuilder;
.super Ljava/lang/Object;
.source "Circles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeleteCirclesResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getFailedCircleId(I)Ljava/lang/String;
.end method

.method public abstract getFailedCircleIdCount()I
.end method

.method public abstract getFailedCircleIdList()Ljava/util/List;
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

.method public abstract getResponseCode()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
.end method

.method public abstract hasResponseCode()Z
.end method
