.class public Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "SendPresenceRequestOperation.java"


# instance fields
.field final mConversationRowId:J

.field final mIsPresent:Z

.field final mReciprocate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZ)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "isPresent"
    .parameter "reciprocate"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 23
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mConversationRowId:J

    .line 24
    iput-boolean p5, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mIsPresent:Z

    .line 25
    iput-boolean p6, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mReciprocate:Z

    .line 26
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 8

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mConversationRowId:J

    iget-boolean v4, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mIsPresent:Z

    iget-boolean v5, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mReciprocate:Z

    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendPresenceRequestLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 36
    return-void
.end method
