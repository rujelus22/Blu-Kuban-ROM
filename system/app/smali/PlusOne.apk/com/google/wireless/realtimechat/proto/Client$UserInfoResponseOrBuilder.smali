.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponseOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserInfoResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
.end method

.method public abstract getDevice(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
.end method

.method public abstract getDeviceCount()I
.end method

.method public abstract getDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end method

.method public abstract getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
.end method

.method public abstract getUserExists()Z
.end method

.method public abstract hasAcl()Z
.end method

.method public abstract hasParticipant()Z
.end method

.method public abstract hasStatus()Z
.end method

.method public abstract hasUserExists()Z
.end method
