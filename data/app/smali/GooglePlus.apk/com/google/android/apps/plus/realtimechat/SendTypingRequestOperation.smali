.class public Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "SendTypingRequestOperation.java"


# instance fields
.field final mConversationRowId:J

.field final mTypingType:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "typingType"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 23
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;->mConversationRowId:J

    .line 24
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;->mTypingType:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    .line 25
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;->mTypingType:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendTypingRequestLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 34
    return-void
.end method
