.class public Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "RequestMoreEventsOperation.java"


# instance fields
.field private mConversationRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 19
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;->mConversationRowId:J

    .line 20
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->requestOlderEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 26
    return-void
.end method
