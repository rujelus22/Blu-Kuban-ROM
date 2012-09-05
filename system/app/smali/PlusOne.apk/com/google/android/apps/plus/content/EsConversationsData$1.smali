.class final Lcom/google/android/apps/plus/content/EsConversationsData$1;
.super Ljava/lang/Object;
.source "EsConversationsData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsConversationsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)I
    .registers 8
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v0

    .line 218
    .local v0, lTimestamp:J
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v2

    .line 219
    .local v2, rTimestamp:J
    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    .line 220
    const/4 v4, 0x0

    .line 224
    :goto_15
    return v4

    .line 221
    :cond_16
    cmp-long v4, v0, v2

    if-gez v4, :cond_1c

    .line 222
    const/4 v4, 0x1

    goto :goto_15

    .line 224
    :cond_1c
    const/4 v4, -0x1

    goto :goto_15
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .end local p1
    check-cast p2, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsConversationsData$1;->compare(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)I

    move-result v0

    return v0
.end method
