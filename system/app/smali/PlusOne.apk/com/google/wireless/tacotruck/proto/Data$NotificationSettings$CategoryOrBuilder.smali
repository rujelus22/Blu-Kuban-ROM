.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$CategoryOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CategoryOrBuilder"
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getSettings(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
.end method

.method public abstract getSettingsCount()I
.end method

.method public abstract getSettingsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDescription()Z
.end method
