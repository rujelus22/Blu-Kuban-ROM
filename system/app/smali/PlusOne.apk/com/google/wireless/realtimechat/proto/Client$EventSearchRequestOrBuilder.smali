.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequestOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventSearchRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getContentQuery()Ljava/lang/String;
.end method

.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getFromQuery(I)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
.end method

.method public abstract getFromQueryCount()I
.end method

.method public abstract getFromQueryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHasPhotoQuery()Z
.end method

.method public abstract getLocationQuery()Lcom/google/wireless/realtimechat/proto/Data$Location;
.end method

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract getTimeRangeQuery()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
.end method

.method public abstract getUnstructuredQuery()Ljava/lang/String;
.end method

.method public abstract hasContentQuery()Z
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasHasPhotoQuery()Z
.end method

.method public abstract hasLocationQuery()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method

.method public abstract hasTimeRangeQuery()Z
.end method

.method public abstract hasUnstructuredQuery()Z
.end method
