.class public interface abstract Lcom/google/wireless/contacts/proto/Client$ModifyCircleMembershipRequestOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModifyCircleMembershipRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAddCircleIds(I)Ljava/lang/String;
.end method

.method public abstract getAddCircleIdsCount()I
.end method

.method public abstract getAddCircleIdsList()Ljava/util/List;
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

.method public abstract getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
.end method

.method public abstract getRemoveCircleIds(I)Ljava/lang/String;
.end method

.method public abstract getRemoveCircleIdsCount()I
.end method

.method public abstract getRemoveCircleIdsList()Ljava/util/List;
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

.method public abstract hasId()Z
.end method
