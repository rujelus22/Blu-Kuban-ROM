.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$HangoutDataOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HangoutDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getActiveOccupant(I)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
.end method

.method public abstract getActiveOccupantCount()I
.end method

.method public abstract getActiveOccupantList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBroadcastId()Ljava/lang/String;
.end method

.method public abstract getIdIsAutogenerated()Z
.end method

.method public abstract getInactiveOccupant(I)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
.end method

.method public abstract getInactiveOccupantCount()I
.end method

.method public abstract getInactiveOccupantList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationId(I)Ljava/lang/String;
.end method

.method public abstract getNotificationIdCount()I
.end method

.method public abstract getNotificationIdList()Ljava/util/List;
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

.method public abstract getRoomDomain()Ljava/lang/String;
.end method

.method public abstract getRoomId()Ljava/lang/String;
.end method

.method public abstract getSubject()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract hasBroadcastId()Z
.end method

.method public abstract hasIdIsAutogenerated()Z
.end method

.method public abstract hasRoomDomain()Z
.end method

.method public abstract hasRoomId()Z
.end method

.method public abstract hasSubject()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasUrl()Z
.end method