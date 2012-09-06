.class public interface abstract Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfilesOrBuilder;
.super Ljava/lang/Object;
.source "ModelProfileProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModelProfilesOrBuilder"
.end annotation


# virtual methods
.method public abstract getCommonProfile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
.end method

.method public abstract getLanguagePairProfiles(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
.end method

.method public abstract getLanguagePairProfilesCount()I
.end method

.method public abstract getLanguagePairProfilesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLanguageProfiles(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;
.end method

.method public abstract getLanguageProfilesCount()I
.end method

.method public abstract getLanguageProfilesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCommonProfile()Z
.end method
