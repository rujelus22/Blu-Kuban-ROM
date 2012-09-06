.class public Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "CheckMessageSentOperation.java"


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field final mFlags:I

.field final mMessageRowId:J

.field mSendFailed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"
    .parameter "flags"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 32
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mMessageRowId:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mSendFailed:Z

    .line 34
    iput p5, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mFlags:I

    .line 35
    return-void
.end method

.method private checkMessageSentAfterTimeout()V
    .registers 5

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$1;-><init>(Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method

.method private static recordSystemEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "event"

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation$2;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mMessageRowId:J

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->checkMessageSentLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)I

    move-result v0

    .line 43
    .local v0, messageStatus:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->checkMessageSentAfterTimeout()V

    .line 78
    :goto_12
    return-void

    .line 46
    :cond_13
    const/16 v1, 0x8

    if-ne v0, v1, :cond_34

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mSendFailed:Z

    .line 49
    iget v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mFlags:I

    packed-switch v1, :pswitch_data_4e

    goto :goto_12

    .line 56
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_AUTO_RETRY_FAIL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->recordSystemEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_12

    .line 51
    :pswitch_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_MANUAL_RETRY_FAIL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->recordSystemEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_12

    .line 64
    :cond_34
    iget v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mFlags:I

    packed-switch v1, :pswitch_data_56

    goto :goto_12

    .line 71
    :pswitch_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_AUTO_RETRY_SUCCESS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->recordSystemEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_12

    .line 66
    :pswitch_44
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATION_MANUAL_RETRY_SUCCESS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->recordSystemEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_12

    .line 49
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_2a
    .end packed-switch

    .line 64
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_44
    .end packed-switch
.end method

.method public getResultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;->mSendFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
