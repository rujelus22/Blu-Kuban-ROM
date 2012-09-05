.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$UserPreferencesOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserPreferencesOrBuilder"
.end annotation


# virtual methods
.method public abstract getCityLevelLocation()Z
.end method

.method public abstract getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
.end method

.method public abstract getHideLocation()Z
.end method

.method public abstract getLocationSpeedbumpAcceptedDate()J
.end method

.method public abstract getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;
.end method

.method public abstract getStreamViewType(I)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
.end method

.method public abstract getStreamViewTypeCount()I
.end method

.method public abstract getStreamViewTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCityLevelLocation()Z
.end method

.method public abstract hasDefaultPostAudience()Z
.end method

.method public abstract hasHideLocation()Z
.end method

.method public abstract hasLocationSpeedbumpAcceptedDate()Z
.end method

.method public abstract hasPromoData()Z
.end method
