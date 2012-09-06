.class public interface abstract Lcom/google/feedreader/extrpc/Client$FriendOrBuilder;
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
    name = "FriendOrBuilder"
.end annotation


# virtual methods
.method public abstract getContactId()J
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getEmailAddresses(I)Ljava/lang/String;
.end method

.method public abstract getEmailAddressesCount()I
.end method

.method public abstract getEmailAddressesList()Ljava/util/List;
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

.method public abstract getFlags()I
.end method

.method public abstract getGivenName()Ljava/lang/String;
.end method

.method public abstract getGroupId(I)J
.end method

.method public abstract getGroupIdCount()I
.end method

.method public abstract getGroupIdList()Ljava/util/List;
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

.method public abstract getHasSharedItemsOnProfile()Z
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getN()Ljava/lang/String;
.end method

.method public abstract getOccupation()Ljava/lang/String;
.end method

.method public abstract getPhotoUrl()Ljava/lang/String;
.end method

.method public abstract getProfileCardParams()Ljava/lang/String;
.end method

.method public abstract getProfileIds(I)Ljava/lang/String;
.end method

.method public abstract getProfileIdsCount()I
.end method

.method public abstract getProfileIdsList()Ljava/util/List;
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

.method public abstract getStream()Ljava/lang/String;
.end method

.method public abstract getTypes(I)I
.end method

.method public abstract getTypesCount()I
.end method

.method public abstract getTypesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserIds(I)Ljava/lang/String;
.end method

.method public abstract getUserIdsCount()I
.end method

.method public abstract getUserIdsList()Ljava/util/List;
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

.method public abstract getWebsites(I)Lcom/google/feedreader/extrpc/Client$Friend$Website;
.end method

.method public abstract getWebsitesCount()I
.end method

.method public abstract getWebsitesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend$Website;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasContactId()Z
.end method

.method public abstract hasDisplayName()Z
.end method

.method public abstract hasFlags()Z
.end method

.method public abstract hasGivenName()Z
.end method

.method public abstract hasHasSharedItemsOnProfile()Z
.end method

.method public abstract hasLocation()Z
.end method

.method public abstract hasN()Z
.end method

.method public abstract hasOccupation()Z
.end method

.method public abstract hasPhotoUrl()Z
.end method

.method public abstract hasProfileCardParams()Z
.end method

.method public abstract hasStream()Z
.end method
