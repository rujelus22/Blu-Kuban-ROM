.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequestOrBuilder;
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
    name = "GlobalConversationPreferencesRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getLocationModification()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
.end method

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract getTagModification(I)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
.end method

.method public abstract getTagModificationCount()I
.end method

.method public abstract getTagModificationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVisibilityModification()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasLocationModification()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method

.method public abstract hasVisibilityModification()Z
.end method
