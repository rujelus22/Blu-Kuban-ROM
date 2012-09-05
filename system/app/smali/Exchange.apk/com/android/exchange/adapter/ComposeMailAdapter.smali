.class public Lcom/android/exchange/adapter/ComposeMailAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "ComposeMailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;
    }
.end annotation


# instance fields
.field private final STATUS_DEVICE_NOT_PROVISIONED:I

.field private final STATUS_INVALID_POLICY_KEY:I

.field private final STATUS_MAILBOXQUOTA_EXCEEDED:I

.field private final STATUS_NEEDS_PROVISIONING_WIPE:I

.field private final STATUS_NEED_RETRYLATER:I

.field private final STATUS_POLICY_REFRESH:I

.field private final STATUS_SENDQUOTA_EXCEEDED:I

.field private final STATUS_SERVER_ERROR:I

.field private final STATUS_SUCCESS:I

.field private collectionId:Ljava/lang/String;

.field private httpCode:I

.field private isReply:Z

.field private isSaveInSentItems:Z

.field private isSmartSend:Z

.field private itemId:Ljava/lang/String;

.field private mIRMTemplateId:Ljava/lang/String;

.field private msgId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 16
    .parameter "mailbox"
    .parameter "service"
    .parameter "msgID"
    .parameter "itemId"
    .parameter "collectionId"
    .parameter "isSaveInSentItems"
    .parameter "isSmartSend"
    .parameter "isReply"

    .prologue
    .line 83
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 39
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_SUCCESS:I

    .line 41
    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_SERVER_ERROR:I

    .line 42
    const/16 v1, 0x6f

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_NEED_RETRYLATER:I

    .line 44
    const/16 v1, 0x71

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_MAILBOXQUOTA_EXCEEDED:I

    .line 46
    const/16 v1, 0x73

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_SENDQUOTA_EXCEEDED:I

    .line 48
    const/16 v1, 0x8c

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_NEEDS_PROVISIONING_WIPE:I

    .line 50
    const/16 v1, 0x8e

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_DEVICE_NOT_PROVISIONED:I

    .line 52
    const/16 v1, 0x8f

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_POLICY_REFRESH:I

    .line 54
    const/16 v1, 0x90

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_INVALID_POLICY_KEY:I

    .line 76
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->mIRMTemplateId:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->msgId:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->itemId:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->collectionId:Ljava/lang/String;

    .line 87
    iput-boolean p6, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSaveInSentItems:Z

    .line 88
    iput-boolean p7, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z

    .line 89
    iput-boolean p8, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isReply:Z

    .line 91
    iget-object v1, p2, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x402c333333333333L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_a4

    .line 92
    sget-object v1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IRMTemplateId"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->msgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a1

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->mIRMTemplateId:Ljava/lang/String;

    .line 98
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_a1

    .line 99
    const-string v1, "IRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "composemailadapter:mIRMTemplateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_a1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 105
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_a4
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/ComposeMailAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/ComposeMailAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isReply:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/ComposeMailAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    return p1
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_9

    .line 293
    const-string v0, "SmartRF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_9
    return-void
.end method


# virtual methods
.method public callback(I)V
    .registers 2
    .parameter "status"

    .prologue
    .line 190
    return-void
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    const-string v0, "SmartReply/SmartForward"

    return-object v0
.end method

.method public getHttpCode()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    return v0
.end method

.method public hasChangedItems()Z
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v1, "Entering parse"

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;-><init>(Lcom/android/exchange/adapter/ComposeMailAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 156
    .local v0, parser:Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 8
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v1, "Enter sendLocalChanges"

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->collectionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->msgId:Ljava/lang/String;

    if-eqz v1, :cond_d1

    .line 121
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z

    if-eqz v1, :cond_c6

    iget-boolean v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isReply:Z

    if-eqz v1, :cond_c3

    const/16 v0, 0x547

    .line 128
    .local v0, startTag:I
    :goto_5b
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x551

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendMail-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 130
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSaveInSentItems:Z

    if-eqz v1, :cond_86

    .line 131
    const/16 v1, 0x548

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 133
    :cond_86
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z

    if-eqz v1, :cond_a3

    .line 134
    const/16 v1, 0x54b

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x54c

    iget-object v3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->collectionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x54d

    iget-object v3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 138
    :cond_a3
    iget-object v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->mIRMTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->mIRMTemplateId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 144
    :cond_b1
    :goto_b1
    const/16 v1, 0x550

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 145
    const-string v1, "Exit 0 sendLocalChanges"

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    .line 149
    .end local v0           #startTag:I
    :goto_c2
    return v1

    .line 121
    :cond_c3
    const/16 v0, 0x546

    goto :goto_5b

    :cond_c6
    const/16 v0, 0x545

    goto :goto_5b

    .line 141
    .restart local v0       #startTag:I
    :cond_c9
    const/16 v1, 0x614

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_b1

    .line 148
    .end local v0           #startTag:I
    :cond_d1
    const-string v1, "Exit 1 sendLocalChanges"

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    goto :goto_c2
.end method

.method public setHttpCode(I)V
    .registers 2
    .parameter "httpCode"

    .prologue
    .line 164
    iput p1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    .line 165
    return-void
.end method

.method public wipe()V
    .registers 1

    .prologue
    .line 178
    return-void
.end method
