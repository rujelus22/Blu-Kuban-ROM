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

.field private mImageUrl:Ljava/lang/String;

.field private mMessageRowId:Ljava/lang/Long;

.field private mRequestId:Ljava/lang/Integer;

.field private mRetry:Z

.field private final mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 40
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    .line 130
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;J)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "imageUrl"
    .parameter "messageRowId"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 40
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    .line 109
    const-wide/16 v0, -0x1

    cmp-long v0, p6, v0

    if-eqz v0, :cond_16

    .line 110
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    .line 112
    :cond_16
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    .line 113
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "text"
    .parameter "imageUrl"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 40
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    .line 89
    iput-wide p3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    .line 90
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mText:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    return v0
.end method

.method private checkMessageSentAfterTimeout()V
    .registers 5

    .prologue
    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$2;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    return-void
.end method

.method private hasConnection()Z
    .registers 5

    .prologue
    .line 149
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 151
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_e

    .line 153
    const/4 v2, 0x1

    .line 161
    :goto_d
    return v2

    .line 155
    :cond_e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 156
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    .line 158
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    goto :goto_d

    .line 161
    :cond_19
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private retrySendMessage()V
    .registers 9

    .prologue
    .line 203
    const-string v0, "SendMessageGeneral"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 204
    const-string v0, "SendMessageGeneral"

    const-string v1, "retrySendMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->hasConnection()Z

    move-result v4

    .line 207
    .local v4, hasConnection:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->resendMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    move-result-object v6

    .line 210
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "local_uri"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, imageUri:Ljava/lang/String;
    if-eqz v7, :cond_37

    const-string v0, "content://"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 214
    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->uploadPhoto(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 217
    :cond_37
    if-eqz v4, :cond_3c

    .line 218
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->checkMessageSentAfterTimeout()V

    .line 220
    :cond_3c
    return-void
.end method

.method private sendOriginalMessage()V
    .registers 11

    .prologue
    .line 170
    const-string v0, "SendMessageGeneral"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 171
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

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2f
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->hasConnection()Z

    move-result v6

    .line 174
    .local v6, hasConnection:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    if-eqz v0, :cond_50

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateMessageUriAndSendLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 194
    :goto_4a
    if-eqz v6, :cond_4f

    .line 195
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->checkMessageSentAfterTimeout()V

    .line 197
    :cond_4f
    return-void

    .line 183
    :cond_50
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 185
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v1 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertLocalPhotoLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    move-result-object v9

    .line 188
    .local v9, bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->uploadPhoto(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4a

    .line 190
    .end local v9           #bundle:Landroid/os/Bundle;
    :cond_72
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mText:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mImageUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    goto :goto_4a
.end method

.method private uploadPhoto(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 23
    .parameter "bundle"
    .parameter "imageUrl"

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 231
    const-string v2, "message_row_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    .line 232
    const-string v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, conversationId:Ljava/lang/String;
    const-string v2, "conversation_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 235
    .local v16, conversationName:Ljava/lang/String;
    move-object/from16 v10, v16

    .line 236
    .local v10, albumTitle:Ljava/lang/String;
    const/16 v2, 0x3a

    const/16 v3, 0x5f

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 237
    .local v11, albumLabel:Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v12, streamIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "bunch"

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 242
    .local v6, localUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 243
    .local v18, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 244
    .local v14, contentType:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    const-string v2, "video/"

    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const/16 v19, 0x1

    .line 246
    .local v19, typeIsVideo:Z
    :goto_60
    if-eqz v19, :cond_90

    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 248
    .local v7, type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :goto_64
    new-instance v1, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 253
    .local v1, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    new-instance v17, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 254
    .local v17, handler:Landroid/os/Handler;
    new-instance v8, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;

    move-object/from16 v9, p0

    move-object v13, v1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$1;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/api/MediaRef;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void

    .line 244
    .end local v1           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v7           #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .end local v17           #handler:Landroid/os/Handler;
    .end local v19           #typeIsVideo:Z
    :cond_8d
    const/16 v19, 0x0

    goto :goto_60

    .line 246
    .restart local v19       #typeIsVideo:Z
    :cond_90
    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto :goto_64
.end method


# virtual methods
.method public execute()V
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRetry:Z

    if-eqz v0, :cond_8

    .line 137
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->retrySendMessage()V

    .line 141
    :goto_7
    return-void

    .line 139
    :cond_8
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->sendOriginalMessage()V

    goto :goto_7
.end method

.method public getResultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;

    return-object v0
.end method
