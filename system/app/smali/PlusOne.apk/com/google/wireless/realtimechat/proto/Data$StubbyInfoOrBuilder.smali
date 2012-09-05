.class public interface abstract Lcom/google/wireless/realtimechat/proto/Data$StubbyInfoOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StubbyInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;
.end method

.method public abstract getRecipientId(I)Ljava/lang/String;
.end method

.method public abstract getRecipientIdCount()I
.end method

.method public abstract getRecipientIdList()Ljava/util/List;
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

.method public abstract getSenderId()Ljava/lang/String;
.end method

.method public abstract hasClientVersion()Z
.end method

.method public abstract hasSenderId()Z
.end method
