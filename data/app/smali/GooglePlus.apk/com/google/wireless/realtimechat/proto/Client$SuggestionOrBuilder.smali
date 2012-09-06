.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$SuggestionOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuggestionOrBuilder"
.end annotation


# virtual methods
.method public abstract getSuggestedUser(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end method

.method public abstract getSuggestedUserCount()I
.end method

.method public abstract getSuggestedUserList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end method
