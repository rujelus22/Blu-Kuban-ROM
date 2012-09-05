.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$NotificationSettingsOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationSettingsOrBuilder"
.end annotation


# virtual methods
.method public abstract getCategories(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
.end method

.method public abstract getCategoriesCount()I
.end method

.method public abstract getCategoriesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmailAddress()Ljava/lang/String;
.end method

.method public abstract hasEmailAddress()Z
.end method
