.class public Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "SendMessageGeneralOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;
    }
.end annotation


# instance fields
.field private mConversationRowId:J

.field private mImageUri:Ljava/lang/String;

.field private mMessageRowId:Ljava/lang/Long;

.field private mRequestId:Ljava/lang/Integer;

.field private mRetry:Z

.field private final mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "messageRowId"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 38
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    .line 128
    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-eqz v0, :cond_16

    .line 129
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    .line 131
    :cond_16
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;J)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "uri"
    .parameter "messageRowId"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 38
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    .line 107
    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-eqz v0, :cond_16

    .line 108
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    .line 110
    :cond_16
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    .line 111
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "text"
    .parameter "uri"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 38
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    .line 87
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    .line 88
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mText:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    return v0
.end method

.method private checkMessageSentAfterTimeout()V
    .registers 5

    .prologue
    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method

.method private hasConnection()Z
    .registers 5

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 152
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_e

    .line 154
    const/4 v2, 0x1

    .line 162
    :goto_d
    return v2

    .line 156
    :cond_e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 157
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    .line 159
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    goto :goto_d

    .line 162
    :cond_19
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private retrySendMessage()V
    .registers 11

    .prologue
    .line 205
    const-string v0, "SendMessageGeneral"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 206
    const-string v0, "SendMessageGeneral"

    const-string v1, "retrySendMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->hasConnection()Z

    move-result v6

    .line 209
    .local v6, hasConnection:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->resendMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    move-result-object v8

    .line 212
    .local v8, bundle:Landroid/os/Bundle;
    const-string v0, "local_uri"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, imageUri:Ljava/lang/String;
    if-eqz v9, :cond_39

    const-string v0, "content://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 216
    invoke-direct {p0, v8, v9}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->uploadPhoto(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 219
    :cond_39
    if-eqz v6, :cond_3e

    .line 220
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->checkMessageSentAfterTimeout()V

    .line 222
    :cond_3e
    return-void
.end method

.method private sendOriginalMessage()V
    .registers 11

    .prologue
    .line 172
    const-string v0, "SendMessageGeneral"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 173
    const-string v0, "SendMessageGeneral"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendOriginalMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->hasConnection()Z

    move-result v6

    .line 176
    .local v6, hasConnection:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    if-eqz v0, :cond_50

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateMessageUriAndSendLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 196
    :goto_4a
    if-eqz v6, :cond_4f

    .line 197
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->checkMessageSentAfterTimeout()V

    .line 199
    :cond_4f
    return-void

    .line 185
    :cond_50
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v1 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertLocalPhotoLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    move-result-object v9

    .line 190
    .local v9, bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->uploadPhoto(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4a

    .line 192
    .end local v9           #bundle:Landroid/os/Bundle;
    :cond_72
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mText:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUri:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    goto :goto_4a
.end method

.method private uploadPhoto(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 12
    .parameter "bundle"
    .parameter "imageUri"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 232
    const-string v0, "message_row_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    .line 233
    const-string v0, "conversation_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, conversationId:Ljava/lang/String;
    const-string v0, "conversation_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, conversationName:Ljava/lang/String;
    move-object v3, v7

    .line 237
    .local v3, albumTitle:Ljava/lang/String;
    const/16 v0, 0x3a

    const/16 v1, 0x5f

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, albumLabel:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v5, streamIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "bunch"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    .local v8, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    if-eqz v0, :cond_8

    .line 138
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->retrySendMessage()V

    .line 142
    :goto_7
    return-void

    .line 140
    :cond_8
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->sendOriginalMessage()V

    goto :goto_7
.end method

.method public getResultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    return-object v0
.end method
