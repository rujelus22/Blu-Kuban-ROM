.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$NotificationSettingsRequestOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationSettingsRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getChannel()Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
.end method

.method public abstract getNotificationSettings()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
.end method

.method public abstract getUserGaiaId()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasChannel()Z
.end method

.method public abstract hasNotificationSettings()Z
.end method

.method public abstract hasUserGaiaId()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
