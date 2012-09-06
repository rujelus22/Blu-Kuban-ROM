.class public interface abstract Lcom/google/wireless/contacts/proto/Profile$MobileProfileOrBuilder;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileProfileOrBuilder"
.end annotation


# virtual methods
.method public abstract getBio()Lcom/google/wireless/contacts/proto/Common$StringField;
.end method

.method public abstract getBirthday()Lcom/google/wireless/contacts/proto/Common$StringField;
.end method

.method public abstract getBraggingRights()Lcom/google/wireless/contacts/proto/Common$StringField;
.end method

.method public abstract getCoverPhotoInfo()Lcom/google/wireless/contacts/proto/Profile$CoverPhotoInfo;
.end method

.method public abstract getCurrentEmployer()Lcom/google/wireless/contacts/proto/Common$StringField;
.end method

.method public abstract getCurrentLocation()Lcom/google/wireless/contacts/proto/Profile$Location;
.end method

.method public abstract getCurrentSchool()Lcom/google/wireless/contacts/proto/Common$StringField;
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getGender()Lcom/google/wireless/contacts/proto/Profile$Gender;
.end method

.method public abstract getLink(I)Lcom/google/wireless/contacts/proto/Profile$Link;
.end method

.method public abstract getLinkCount()I
.end method

.method public abstract getLinkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$Link;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationMapUrl()Ljava/lang/String;
.end method

.method public abstract getOtherEmployer(I)Lcom/google/wireless/contacts/proto/Common$StringField;
.end method

.method public abstract getOtherEmployerCount()I
.end method

.method public abstract getOtherEmployerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Common$StringField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOtherLocation(I)Lcom/google/wireless/contacts/proto/Profile$Location;
.end method

.method public abstract getOtherLocationCount()I
.end method

.method public abstract getOtherLocationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$Location;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOtherSchool(I)Lcom/google/wireless/contacts/proto/Common$StringField;
.end method

.method public abstract getOtherSchoolCount()I
.end method

.method public abstract getOtherSchoolList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Common$StringField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlusPageInfo()Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
.end method

.method public abstract getProperty(I)Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;
.end method

.method public abstract getPropertyCount()I
.end method

.method public abstract getPropertyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$ProfileProperty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagline()Lcom/google/wireless/contacts/proto/Common$StringField;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWhereIGrewUp()Lcom/google/wireless/contacts/proto/Profile$Location;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasBio()Z
.end method

.method public abstract hasBirthday()Z
.end method

.method public abstract hasBraggingRights()Z
.end method

.method public abstract hasCoverPhotoInfo()Z
.end method

.method public abstract hasCurrentEmployer()Z
.end method

.method public abstract hasCurrentLocation()Z
.end method

.method public abstract hasCurrentSchool()Z
.end method

.method public abstract hasFullName()Z
.end method

.method public abstract hasGender()Z
.end method

.method public abstract hasLocationMapUrl()Z
.end method

.method public abstract hasPlusPageInfo()Z
.end method

.method public abstract hasTagline()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasWhereIGrewUp()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
