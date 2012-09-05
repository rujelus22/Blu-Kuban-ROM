.class public interface abstract Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadataOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationMetadataOrBuilder"
.end annotation


# virtual methods
.method public abstract getJoinCode()Ljava/lang/String;
.end method

.method public abstract getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
.end method

.method public abstract getTag(I)Ljava/lang/String;
.end method

.method public abstract getTagCount()I
.end method

.method public abstract getTagList()Ljava/util/List;
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

.method public abstract getVisibility()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
.end method

.method public abstract hasJoinCode()Z
.end method

.method public abstract hasLocation()Z
.end method

.method public abstract hasVisibility()Z
.end method
