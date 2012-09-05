.class public Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "ReplyToInvitationOperation.java"


# instance fields
.field private mAccept:Z

.field private mConversationRowId:J

.field private mInviterId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "inviterId"
    .parameter "accept"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 15
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mConversationRowId:J

    .line 16
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mInviterId:Ljava/lang/String;

    .line 17
    iput-boolean p6, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mAccept:Z

    .line 18
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mAccept:Z

    if-eqz v0, :cond_1a

    .line 23
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mInviterId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->acceptConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 29
    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 30
    return-void

    .line 26
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mInviterId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->removeAllConversationsFromInviterLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_11
.end method
