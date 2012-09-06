.class public interface abstract Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponseOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileCirclesResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getCircle(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
.end method

.method public abstract getCircleCount()I
.end method

.method public abstract getCircleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getMemberId()Ljava/lang/String;
.end method

.method public abstract getOwnerGaiaId()Ljava/lang/String;
.end method

.method public abstract getServerTime()J
.end method

.method public abstract hasKey()Z
.end method

.method public abstract hasMemberId()Z
.end method

.method public abstract hasOwnerGaiaId()Z
.end method

.method public abstract hasServerTime()Z
.end method
