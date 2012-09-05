.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequestOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuggestionsRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getParticipantId(I)Ljava/lang/String;
.end method

.method public abstract getParticipantIdCount()I
.end method

.method public abstract getParticipantIdList()Ljava/util/List;
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

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract hasCount()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method
