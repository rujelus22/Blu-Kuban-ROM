.class public Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "SetMessageFailedOperation.java"


# instance fields
.field mConversationRowId:J

.field mMessageRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "messageRowId"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 15
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;->mConversationRowId:J

    .line 16
    iput-wide p5, p0, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;->mMessageRowId:J

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;->mMessageRowId:J

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->setMessageStatusLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V

    .line 23
    return-void
.end method
