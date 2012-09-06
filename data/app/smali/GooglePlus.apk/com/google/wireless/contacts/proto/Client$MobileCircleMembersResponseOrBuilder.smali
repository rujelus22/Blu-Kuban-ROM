.class public interface abstract Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponseOrBuilder;
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
    name = "MobileCircleMembersResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getCircle()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getMember(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
.end method

.method public abstract getMemberCount()I
.end method

.method public abstract getMemberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOwnerGaiaId()Ljava/lang/String;
.end method

.method public abstract getServerTime()J
.end method

.method public abstract getSuggestedMember(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
.end method

.method public abstract getSuggestedMemberCount()I
.end method

.method public abstract getSuggestedMemberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCircle()Z
.end method

.method public abstract hasKey()Z
.end method

.method public abstract hasOwnerGaiaId()Z
.end method

.method public abstract hasServerTime()Z
.end method
