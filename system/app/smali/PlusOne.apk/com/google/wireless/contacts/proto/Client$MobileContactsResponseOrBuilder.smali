.class public interface abstract Lcom/google/wireless/contacts/proto/Client$MobileContactsResponseOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileContactsResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getContact(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
.end method

.method public abstract getContactCount()I
.end method

.method public abstract getContactList()Ljava/util/List;
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

.method public abstract getInvalidId(I)Ljava/lang/String;
.end method

.method public abstract getInvalidIdCount()I
.end method

.method public abstract getInvalidIdList()Ljava/util/List;
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

.method public abstract getIsContiguousSet()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getLastContactIndex()I
.end method

.method public abstract getNumberWithoutPublicProfiles()I
.end method

.method public abstract getServerTime()J
.end method

.method public abstract getSyncType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
.end method

.method public abstract hasIsContiguousSet()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasKey()Z
.end method

.method public abstract hasLastContactIndex()Z
.end method

.method public abstract hasNumberWithoutPublicProfiles()Z
.end method

.method public abstract hasServerTime()Z
.end method

.method public abstract hasSyncType()Z
.end method
