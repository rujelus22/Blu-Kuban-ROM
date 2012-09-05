.class public Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "UpdateConversationOperation.java"


# instance fields
.field private final mConversationRowId:J

.field private mMuted:Ljava/lang/Boolean;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 13
    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mMuted:Ljava/lang/Boolean;

    .line 19
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mConversationRowId:J

    .line 20
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationNameLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 36
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mMuted:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mMuted:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationMutedLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 40
    :cond_26
    return-void
.end method

.method public setMuted(Z)V
    .registers 3
    .parameter "muted"

    .prologue
    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mMuted:Ljava/lang/Boolean;

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->mName:Ljava/lang/String;

    .line 24
    return-void
.end method
