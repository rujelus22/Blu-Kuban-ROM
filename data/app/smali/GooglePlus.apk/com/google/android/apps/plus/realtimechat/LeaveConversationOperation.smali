.class public Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "LeaveConversationOperation.java"


# instance fields
.field mConversationRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 17
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;->mConversationRowId:J

    .line 18
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->leaveConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 28
    return-void
.end method
