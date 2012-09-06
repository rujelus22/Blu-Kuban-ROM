.class public Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "RemoveMessageOperation.java"


# instance fields
.field mMessageRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 18
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;->mMessageRowId:J

    .line 19
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;->mMessageRowId:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->removeMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 28
    return-void
.end method
