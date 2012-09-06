.class public interface abstract Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileContactOrBuilder"
.end annotation


# virtual methods
.method public abstract getAddress(I)Lcom/google/wireless/contacts/proto/Contact$Address;
.end method

.method public abstract getAddressCount()I
.end method

.method public abstract getAddressList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAffinity()I
.end method

.method public abstract getAttributes()I
.end method

.method public abstract getCallAffinity()I
.end method

.method public abstract getCircleId(I)Ljava/lang/String;
.end method

.method public abstract getCircleIdCount()I
.end method

.method public abstract getCircleIdList()Ljava/util/List;
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

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getEmail(I)Lcom/google/wireless/contacts/proto/Contact$Email;
.end method

.method public abstract getEmailCount()I
.end method

.method public abstract getEmailList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Email;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroups()Ljava/lang/String;
.end method

.method public abstract getIAmFollowing()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInMyContacts()Z
.end method

.method public abstract getIsFollowingMe()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLastUpdatedTime()J
.end method

.method public abstract getOtherId(I)Ljava/lang/String;
.end method

.method public abstract getOtherIdCount()I
.end method

.method public abstract getOtherIdList()Ljava/util/List;
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

.method public abstract getPackedCircleIds()Ljava/lang/String;
.end method

.method public abstract getPhone(I)Lcom/google/wireless/contacts/proto/Contact$Phone;
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPhoneList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$Phone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhonesLookup()Ljava/lang/String;
.end method

.method public abstract getPhotoUrl()Ljava/lang/String;
.end method

.method public abstract getPreferredEmail()Ljava/lang/String;
.end method

.method public abstract getProfileType()Lcom/google/wireless/contacts/proto/Contact$MobileContact$ProfileType;
.end method

.method public abstract getPublicUserName()Ljava/lang/String;
.end method

.method public abstract getTagLine()Ljava/lang/String;
.end method

.method public abstract hasAffinity()Z
.end method

.method public abstract hasAttributes()Z
.end method

.method public abstract hasCallAffinity()Z
.end method

.method public abstract hasDisplayName()Z
.end method

.method public abstract hasGroups()Z
.end method

.method public abstract hasIAmFollowing()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasInMyContacts()Z
.end method

.method public abstract hasIsFollowingMe()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasLastUpdatedTime()Z
.end method

.method public abstract hasPackedCircleIds()Z
.end method

.method public abstract hasPhonesLookup()Z
.end method

.method public abstract hasPhotoUrl()Z
.end method

.method public abstract hasPreferredEmail()Z
.end method

.method public abstract hasProfileType()Z
.end method

.method public abstract hasPublicUserName()Z
.end method

.method public abstract hasTagLine()Z
.end method
