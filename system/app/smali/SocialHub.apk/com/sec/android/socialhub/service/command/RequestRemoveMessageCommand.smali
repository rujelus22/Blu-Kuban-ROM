.class public Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;
.super Lcom/sec/android/socialhub/service/command/AbstractCommand;
.source "RequestRemoveMessageCommand.java"

# interfaces
.implements Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand$SnsProfile;
    }
.end annotation


# instance fields
.field protected folderType:[Ljava/lang/String;

.field private isAll:Z

.field private mErrCnt:I

.field private mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

.field private mIntentRemove:Landroid/content/Intent;

.field private mReqCnt:I

.field private mReqMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected messageID:[Ljava/lang/String;

.field private profile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

.field protected threadID:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/service/command/AbstractCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    .line 46
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 48
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->folderType:[Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->messageID:[Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->threadID:[Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mReqMap:Ljava/util/ArrayList;

    .line 59
    iput v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mErrCnt:I

    .line 60
    iput v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mReqCnt:I

    .line 61
    iput-boolean v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->isAll:Z

    .line 63
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->profile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 64
    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mIntentRemove:Landroid/content/Intent;

    .line 70
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mReqMap:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.socialhub.REMOVE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mIntentRemove:Landroid/content/Intent;

    .line 76
    instance-of v0, p1, Lcom/sec/android/socialhub/service/SocialHubService;

    if-eqz v0, :cond_3a

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubService;->getSnsHandler()Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 81
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->profile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-nez v0, :cond_49

    .line 83
    new-instance v0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand$SnsProfile;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand$SnsProfile;-><init>(Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->profile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 85
    :cond_49
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;)Lcom/sec/android/socialhub/service/SocialHubSnsHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    return-object v0
.end method

.method private doRemoveEmail(Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;)V
    .registers 14
    .parameter "message"

    .prologue
    const/4 v7, 0x1

    .line 154
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v5, value:Landroid/content/ContentValues;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 156
    const-string v6, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->messageID:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_16
    if-ge v2, v4, :cond_3b

    aget-object v3, v0, v2

    .line 162
    .local v3, id:Ljava/lang/String;
    :try_start_1a
    iget-object v6, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "%s \'%s\'"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "app_type in (400,410) and _id_origin = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_33} :catch_36

    .line 158
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 164
    :catch_36
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 169
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #id:Ljava/lang/String;
    :cond_3b
    return-void
.end method

.method private doRemoveIM(Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;)V
    .registers 14
    .parameter "message"

    .prologue
    const/4 v7, 0x1

    .line 173
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v5, value:Landroid/content/ContentValues;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 175
    const-string v6, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->messageID:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_16
    if-ge v2, v4, :cond_3b

    aget-object v3, v0, v2

    .line 181
    .local v3, id:Ljava/lang/String;
    :try_start_1a
    iget-object v6, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "%s \'%s\'"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "app_type = 700 and thread_id = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_33} :catch_36

    .line 177
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 183
    :catch_36
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 188
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #id:Ljava/lang/String;
    :cond_3b
    return-void
.end method

.method private doRemoveMsg(Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;Z)V
    .registers 15
    .parameter "message"
    .parameter "bRemoveLockMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 231
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v5, value:Landroid/content/ContentValues;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 233
    const-string v8, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v8, "locked"

    if-ne p2, v7, :cond_42

    :goto_17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->threadID:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_22
    if-ge v2, v4, :cond_49

    aget-object v3, v0, v2

    .line 245
    .local v3, id:Ljava/lang/String;
    :try_start_26
    iget-object v6, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "%s \'%s\'"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "app_type in (200, 300, 310) and _id_origin = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3f} :catch_44

    .line 241
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_42
    move v6, v7

    .line 239
    goto :goto_17

    .line 247
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #len$:I
    :catch_44
    move-exception v1

    .line 249
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    .line 252
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #id:Ljava/lang/String;
    :cond_49
    return-void
.end method

.method private doRemoveSNS(Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;Z)V
    .registers 13
    .parameter "message"
    .parameter "isAll"

    .prologue
    const/4 v9, 0x1

    .line 192
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v4, value:Landroid/content/ContentValues;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 194
    const-string v5, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const/4 v2, 0x0

    .local v2, index:I
    :goto_13
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_81

    .line 198
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 202
    .local v0, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-ne p2, v9, :cond_3f

    const/4 v5, 0x2

    :try_start_27
    invoke-interface {v0, v5}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 204
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->messageID:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->snsRemoveConversation(ILjava/lang/String;)V

    .line 196
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 208
    :cond_3f
    const-string v5, "%s \'%s\'"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "app_type = 600 and _id_origin = "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->messageID:[Ljava/lang/String;

    aget-object v8, v8, v2

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, selection:Ljava/lang/String;
    const-string v5, "RequestRemoveMessageCommand"

    const-string v6, "doRemoveSNS()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selection - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_76
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_27 .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_76} :catch_7c

    goto :goto_3c

    .line 213
    .end local v3           #selection:Ljava/lang/String;
    :catch_77
    move-exception v1

    .line 215
    .local v1, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_3c

    .line 217
    .end local v1           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :catch_7c
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    .line 222
    .end local v0           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_81
    return-void
.end method


# virtual methods
.method protected execute()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 109
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mMessage:Lcom/sec/android/socialhub/service/message/RequestMessage;

    check-cast v0, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;

    .line 111
    .local v0, message:Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;
    iput-boolean v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 113
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 141
    const-string v1, "RequestRemoveMessageCommand"

    const-string v2, "excute()"

    const-string v3, "Invalid Type!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_19
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mIntentRemove:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 149
    return v4

    .line 118
    :pswitch_29
    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->doRemoveEmail(Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;)V

    goto :goto_19

    .line 124
    :pswitch_2d
    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->doRemoveIM(Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;)V

    goto :goto_19

    .line 130
    :pswitch_31
    iget-boolean v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->isAll:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->doRemoveSNS(Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;Z)V

    goto :goto_19

    .line 136
    :pswitch_37
    iget-boolean v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->isAll:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->doRemoveMsg(Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;Z)V

    goto :goto_19

    .line 113
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_29
        :pswitch_29
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method protected getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 505
    const-string v0, "RequestRemoveMessageCommand"

    return-object v0
.end method

.method protected loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 90
    instance-of v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;

    if-eqz v0, :cond_2f

    .line 92
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_id:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    .line 96
    iget v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->folderType:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->folderType:[Ljava/lang/String;

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->messageID:[Ljava/lang/String;

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->threadID:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->threadID:[Ljava/lang/String;

    .line 101
    check-cast p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;

    .end local p1
    iget-boolean v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;->isAll:Z

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->isAll:Z

    .line 103
    :cond_2f
    return-void
.end method

.method public onResponse(IIZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 17
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 471
    packed-switch p2, :pswitch_data_62

    .line 500
    :cond_3
    :goto_3
    return-void

    .line 475
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mReqMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 477
    if-nez p3, :cond_18

    .line 479
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mErrCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mErrCnt:I

    .line 481
    :cond_18
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mReqMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 484
    :cond_21
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mReqMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 490
    iget v0, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mErrCnt:I

    if-lez v0, :cond_53

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 493
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->mErrCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requests is failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 496
    :cond_53
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    iget-boolean v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    iget v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->invokeCallback(IIZILjava/lang/String;)V

    goto :goto_3

    .line 471
    :pswitch_data_62
    .packed-switch 0x13
        :pswitch_4
    .end packed-switch
.end method

.method public snsRemoveConversation(ILjava/lang/String;)V
    .registers 24
    .parameter "acc_id"
    .parameter "msg_id"

    .prologue
    .line 256
    sget-object v2, Lcom/sec/android/app/sns/db/SnsDB$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 257
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_provider="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "message_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, selection:Ljava/lang/String;
    const/4 v8, 0x0

    .line 260
    .local v8, displayName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 261
    .local v9, senderID:Ljava/lang/String;
    const/16 v18, 0x0

    .line 262
    .local v18, folder:Ljava/lang/String;
    const/16 v16, 0x0

    .line 264
    .local v16, cursor:Landroid/database/Cursor;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v20, value:Landroid/content/ContentValues;
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 266
    const-string v1, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "folder"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "sender_name"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "sender_id"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "representative_receiver"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "representative_receiver_id"

    aput-object v7, v3, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 272
    if-eqz v16, :cond_9a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9a

    .line 276
    :cond_82
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 278
    if-nez v18, :cond_b2

    .line 280
    const-string v1, "RequestRemoveMessageCommand"

    const-string v3, "snsRemoveConversation()"

    const-string v6, "folder is null!!!"

    invoke-static {v1, v3, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_94
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_82

    .line 303
    :cond_9a
    if-eqz v16, :cond_9f

    .line 305
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_9f
    if-nez v8, :cond_121

    if-nez v9, :cond_121

    .line 310
    const-string v1, "RequestRemoveMessageCommand"

    const-string v3, "snsRemoveConversation()"

    const-string v6, "both(sender_id, displayname) is null!!"

    invoke-static {v1, v3, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_4f .. :try_end_ac} :catchall_11a
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_ac} :catch_ef

    .line 346
    if-eqz v16, :cond_b1

    .line 348
    :goto_ae
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_b1
    return-void

    .line 284
    :cond_b2
    :try_start_b2
    const-string v1, "inbox"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 286
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 287
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    :goto_ca
    const-string v1, "RequestRemoveMessageCommand"

    const-string v3, "snsRemoveConversation()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sender_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_b2 .. :try_end_ee} :catchall_11a
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ee} :catch_ef

    goto :goto_94

    .line 340
    :catch_ef
    move-exception v17

    .line 342
    .local v17, e:Ljava/lang/Exception;
    :try_start_f0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_11a

    .line 346
    if-eqz v16, :cond_b1

    goto :goto_ae

    .line 289
    .end local v17           #e:Ljava/lang/Exception;
    :cond_f6
    :try_start_f6
    const-string v1, "outbox"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 291
    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 292
    const/4 v1, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_ca

    .line 296
    :cond_10f
    const-string v1, "RequestRemoveMessageCommand"

    const-string v3, "snsRemoveConversation()"

    const-string v6, "folder type is invalid."

    invoke-static {v1, v3, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_f6 .. :try_end_118} :catchall_11a
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_118} :catch_ef

    goto/16 :goto_94

    .line 346
    :catchall_11a
    move-exception v1

    if-eqz v16, :cond_120

    .line 348
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_120
    throw v1

    .line 314
    :cond_121
    :try_start_121
    sget-object v11, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    .line 316
    .local v11, baseUri:Landroid/net/Uri;
    new-instance v5, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/socialhub/service/command/RequestRemoveMessageCommand;->profile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    move/from16 v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;)V

    .line 325
    .local v5, builder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id_origin"

    aput-object v3, v12, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18b

    const/4 v13, 0x0

    :goto_14e
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 329
    if-eqz v16, :cond_187

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_187

    .line 333
    :cond_15d
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 334
    .local v19, messageID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "%s \'%s\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v12, "app_type = 600 and _id_origin = "

    aput-object v12, v7, v10

    const/4 v10, 0x1

    aput-object v19, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v1, v3, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 336
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_184
    .catchall {:try_start_121 .. :try_end_184} :catchall_11a
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_184} :catch_ef

    move-result v1

    if-nez v1, :cond_15d

    .line 346
    .end local v19           #messageID:Ljava/lang/String;
    :cond_187
    if-eqz v16, :cond_b1

    goto/16 :goto_ae

    :cond_18b
    move-object v13, v4

    .line 327
    goto :goto_14e
.end method
