.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$SettingOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingOrBuilder"
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEmailEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getEnabled()Z
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasEmailEnabled()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasEnabled()Z
.end method

.method public abstract hasType()Z
.end method
