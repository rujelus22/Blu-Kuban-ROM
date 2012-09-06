.class public Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/core/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/googlevoice/core/Conversation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/googlevoice/core/Conversation;Lcom/google/android/apps/googlevoice/core/Conversation;)I
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationTime()J

    move-result-wide v0

    .line 183
    .local v0, aTime:J
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationTime()J

    move-result-wide v2

    .line 184
    .local v2, bTime:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_e

    const/4 v4, -0x1

    :goto_d
    return v4

    :cond_e
    cmp-long v4, v2, v0

    if-lez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    check-cast p1, Lcom/google/android/apps/googlevoice/core/Conversation;

    .end local p1
    check-cast p2, Lcom/google/android/apps/googlevoice/core/Conversation;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;->compare(Lcom/google/android/apps/googlevoice/core/Conversation;Lcom/google/android/apps/googlevoice/core/Conversation;)I

    move-result v0

    return v0
.end method
