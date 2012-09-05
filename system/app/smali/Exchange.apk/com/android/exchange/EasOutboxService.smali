.class public Lcom/android/exchange/EasOutboxService;
.super Lcom/android/exchange/EasSyncService;
.source "EasOutboxService.java"


# static fields
.field public static final BODY_HTML_CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    .line 96
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "htmlContent"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_HTML_CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 3
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 114
    return-void
.end method

.method private converToOpaqueLength(I)[B
    .registers 6
    .parameter "length"

    .prologue
    .line 1250
    if-nez p1, :cond_4

    .line 1251
    const/4 v1, 0x0

    .line 1266
    :cond_3
    return-object v1

    .line 1253
    :cond_4
    const/4 v2, 0x5

    new-array v1, v2, [B

    .line 1258
    .local v1, opaqueLength:[B
    const/4 v2, 0x4

    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1259
    shr-int/lit8 p1, p1, 0x7

    .line 1261
    const/4 v0, 0x3

    .local v0, i:I
    :goto_10
    if-lez p1, :cond_3

    if-ltz v0, :cond_3

    .line 1262
    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1263
    shr-int/lit8 p1, p1, 0x7

    .line 1261
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method private sendCallback(JLjava/lang/String;I)V
    .registers 14
    .parameter "msgId"
    .parameter "subject"
    .parameter "status"

    .prologue
    .line 118
    const-wide/16 v1, -0x1

    .line 119
    .local v1, accountId:J
    :try_start_2
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_23

    .line 120
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 124
    :cond_a
    :goto_a
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gez v0, :cond_17

    .line 125
    const-string v0, "[Eas]OutboxService"

    const-string v3, "EasOutboxService() : sendCallback. accountId = -1"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_17
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v7, 0x0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMessageStatus(JJLjava/lang/String;II)V

    .line 131
    :goto_22
    return-void

    .line 121
    :cond_23
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_a

    .line 122
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2c

    goto :goto_a

    .line 128
    :catch_2c
    move-exception v8

    .line 129
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public static sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 7
    .parameter "context"
    .parameter "accountId"
    .parameter "msg"

    .prologue
    .line 1239
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1240
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_10

    .line 1241
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1242
    iput-wide p1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1243
    invoke-virtual {p3, p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1245
    :cond_10
    return-void
.end method


# virtual methods
.method generateSmartSendCmd(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "reply"
    .parameter "itemId"
    .parameter "collectionId"

    .prologue
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_32

    const-string v0, "SmartReply"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-static {p2, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&CollectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-static {p3, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    const-string v0, "SmartForward"

    goto :goto_9
.end method

.method getNumbers(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v6, toNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, numberTo:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v2, :cond_2c

    aget-object v3, v0, v1

    .line 140
    .local v3, number:Ljava/lang/String;
    const-string v7, "MOBILE:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, numberParts:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v3, v4, v7

    .line 142
    const-string v7, "]"

    const-string v8, " "

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 144
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 147
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #numberParts:[Ljava/lang/String;
    :cond_2c
    return-object v6
.end method

.method relaySms(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 14
    .parameter "msg"
    .parameter "mailbox"

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v4, "[Eas]OutboxService"

    const-string v5, "sendSMS(): relaySms() called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v7

    .line 154
    .local v7, restoreBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    if-eqz v7, :cond_5c

    .line 155
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 156
    .local v0, sm:Landroid/telephony/SmsManager;
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasOutboxService;->getNumbers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 157
    .local v8, toNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v4, :cond_5c

    iget-object v4, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5c

    .line 158
    iget-object v4, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 159
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, number:Ljava/lang/String;
    move-object v4, v2

    move-object v5, v2

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 161
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendSMS(): Sending SMS to: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 166
    .end local v0           #sm:Landroid/telephony/SmsManager;
    .end local v1           #number:Ljava/lang/String;
    .end local v3           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #toNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5c
    return-void
.end method

.method public run()V
    .registers 13

    .prologue
    .line 1027
    const-string v0, "[Eas]OutboxService"

    const-string v1, "start EasOutboxService run() ========================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService;->setupService()Z

    .line 1029
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    .line 1030
    const-wide/16 v6, -0x1

    .line 1032
    :try_start_12
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    if-nez v0, :cond_25

    .line 1034
    const-string v0, "EAS"

    const-string v1, "mDeviceId is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_25
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "messageType"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "retrySendTimes"

    aput-object v1, v2, v0

    .line 1042
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mailboxKey=? and (syncServerId is null or (syncServerId!=-2 and syncServerId!=-5 and syncServerId!=-3))"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v10, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "retrySendTimes ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_461
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_12 .. :try_end_54} :catch_4db
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_54} :catch_36a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_54} :catch_3c0

    move-result-object v10

    .line 1047
    const/4 v0, -0x1

    move-wide v3, v6

    .line 1050
    :cond_57
    :goto_57
    :try_start_57
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2f6

    .line 1051
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_27f

    move-result-wide v3

    .line 1052
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_57

    .line 1054
    const/4 v2, 0x0

    .line 1056
    :try_start_69
    sget-object v1, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_27f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6e} :catch_4df

    move-result-object v8

    .line 1057
    if-eqz v8, :cond_1a0

    .line 1058
    if-gez v0, :cond_ff

    .line 1060
    :try_start_73
    sget-object v1, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-wide v5, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 1062
    if-eqz v1, :cond_7f

    .line 1063
    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAutoRetryTimes:I
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_27f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7f} :catch_fb

    :cond_7f
    move v7, v0

    .line 1070
    :goto_80
    :try_start_80
    iget v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    if-le v0, v7, :cond_17f

    if-lez v7, :cond_17f

    .line 1072
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasOutboxService() : Max Auto resend times exceeded. Do not try to send this message now. msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg.mRetrySendTimes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MaxRetrySendTimesSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasOutboxService() : set msg.mServerId as SEND_FAILED_NETWORK_ERROR. msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1084
    const-string v1, "syncServerId"

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    sget-object v1, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 1087
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_e7
    .catchall {:try_start_80 .. :try_end_e7} :catchall_27f
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_e7} :catch_106

    .line 1090
    :try_start_e7
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v1, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v5, 0x1

    iget-object v6, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendResult(JJZLjava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_e7 .. :try_end_f8} :catchall_27f
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_f8} :catch_101
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_f8} :catch_106

    :goto_f8
    move v0, v7

    .line 1095
    goto/16 :goto_57

    .line 1065
    :catch_fb
    move-exception v1

    .line 1066
    :try_start_fc
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_27f
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_ff} :catch_1b9

    :cond_ff
    move v7, v0

    goto :goto_80

    .line 1092
    :catch_101
    move-exception v0

    .line 1093
    :try_start_102
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_27f
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_f8

    .line 1105
    :catch_106
    move-exception v0

    move-object v1, v8

    .line 1106
    :goto_108
    :try_start_108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v1

    .line 1112
    :goto_10c
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v5, 0x4028333333333333L

    cmpl-double v0, v0, v5

    if-lez v0, :cond_1ce

    .line 1113
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1114
    const-wide/16 v5, 0x100

    and-long/2addr v0, v5

    const-wide/16 v5, 0x100

    cmp-long v0, v0, v5

    if-nez v0, :cond_1bf

    .line 1115
    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendSMS(J)I

    move-result v0

    .line 1133
    :goto_12d
    const/16 v1, 0x16

    if-ne v0, v1, :cond_1dd

    .line 1134
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_134
    .catchall {:try_start_108 .. :try_end_134} :catchall_27f

    .line 1151
    :try_start_134
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_461
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_134 .. :try_end_137} :catch_284
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_36a
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_3c0

    .line 1207
    :try_start_137
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13e} :catch_49f

    .line 1212
    :goto_13e
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 1216
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_164

    .line 1217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[Eas]OutboxService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EasOutboxService : call SyncManager.reloadFolderList()"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_4a5

    .line 1219
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1227
    :cond_164
    :goto_164
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end EasOutboxService : exit status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_17b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return-void

    .line 1098
    :cond_17f
    :try_start_17f
    iget v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    .line 1099
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1100
    const-string v1, "retrySendTimes"

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    sget-object v1, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I
    :try_end_19c
    .catchall {:try_start_17f .. :try_end_19c} :catchall_27f
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_19c} :catch_106

    move v0, v7

    :goto_19d
    move v7, v0

    .line 1107
    goto/16 :goto_10c

    .line 1103
    :cond_1a0
    :try_start_1a0
    const-string v1, "[Eas]OutboxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EasOutboxService() : msg is null. msgId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catchall {:try_start_1a0 .. :try_end_1b8} :catchall_27f
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1b8} :catch_1b9

    goto :goto_19d

    .line 1105
    :catch_1b9
    move-exception v1

    move v7, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_108

    .line 1117
    :cond_1bf
    :try_start_1bf
    iget v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    if-le v0, v7, :cond_1cc

    if-lez v7, :cond_1cc

    const/4 v0, 0x1

    :goto_1c6
    invoke-virtual {p0, v9, v3, v4, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;JZ)I

    move-result v0

    goto/16 :goto_12d

    :cond_1cc
    const/4 v0, 0x0

    goto :goto_1c6

    .line 1123
    :cond_1ce
    iget v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRetrySendTimes:I

    if-le v0, v7, :cond_1db

    if-lez v7, :cond_1db

    const/4 v0, 0x1

    :goto_1d5
    invoke-virtual {p0, v9, v3, v4, v0}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;JZ)I

    move-result v0

    goto/16 :goto_12d

    :cond_1db
    const/4 v0, 0x0

    goto :goto_1d5

    .line 1136
    :cond_1dd
    const/16 v1, 0x15

    if-ne v0, v1, :cond_22d

    .line 1137
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_1e4
    .catchall {:try_start_1bf .. :try_end_1e4} :catchall_27f

    .line 1151
    :try_start_1e4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1e7
    .catchall {:try_start_1e4 .. :try_end_1e7} :catchall_461
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_1e4 .. :try_end_1e7} :catch_284
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_36a
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1e7} :catch_3c0

    .line 1207
    :try_start_1e7
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ee} :catch_4ae

    .line 1212
    :goto_1ee
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 1216
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_214

    .line 1217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[Eas]OutboxService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EasOutboxService : call SyncManager.reloadFolderList()"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_4b4

    .line 1219
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1227
    :cond_214
    :goto_214
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end EasOutboxService : exit status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17b

    .line 1142
    :cond_22d
    const/4 v1, 0x4

    if-ne v0, v1, :cond_27c

    .line 1143
    const/4 v0, 0x4

    :try_start_231
    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_233
    .catchall {:try_start_231 .. :try_end_233} :catchall_27f

    .line 1151
    :try_start_233
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_236
    .catchall {:try_start_233 .. :try_end_236} :catchall_461
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_233 .. :try_end_236} :catch_284
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_236} :catch_36a
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_236} :catch_3c0

    .line 1207
    :try_start_236
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_23d} :catch_4bd

    .line 1212
    :goto_23d
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 1216
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_263

    .line 1217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[Eas]OutboxService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EasOutboxService : call SyncManager.reloadFolderList()"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_4c3

    .line 1219
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1227
    :cond_263
    :goto_263
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end EasOutboxService : exit status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17b

    :cond_27c
    move v0, v7

    .line 1148
    goto/16 :goto_57

    .line 1151
    :catchall_27f
    move-exception v0

    :try_start_280
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_284
    .catchall {:try_start_280 .. :try_end_284} :catchall_461
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_280 .. :try_end_284} :catch_284
    .catch Ljava/io/IOException; {:try_start_280 .. :try_end_284} :catch_36a
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_284} :catch_3c0

    .line 1182
    :catch_284
    move-exception v0

    .line 1183
    :goto_285
    :try_start_285
    const-string v0, "[Eas]OutboxService"

    const-string v1, "EasOutboxService() : Caught DeviceAccessException, to block the device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v0, 0x3

    .line 1186
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1187
    const-string v2, "syncServerId"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    sget-object v2, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v3, v4, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 1189
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v5, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v1, v2, v5}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V

    .line 1191
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v1, v0}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_2b0
    .catchall {:try_start_285 .. :try_end_2b0} :catchall_461

    .line 1207
    :try_start_2b0
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b7} :catch_472

    .line 1212
    :goto_2b7
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 1216
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2dd

    .line 1217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[Eas]OutboxService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EasOutboxService : call SyncManager.reloadFolderList()"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_478

    .line 1219
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1227
    :cond_2dd
    :goto_2dd
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end EasOutboxService : exit status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17b

    .line 1151
    :cond_2f6
    :try_start_2f6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_2fc
    .catchall {:try_start_2f6 .. :try_end_2fc} :catchall_461
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_2f6 .. :try_end_2fc} :catch_284
    .catch Ljava/io/IOException; {:try_start_2f6 .. :try_end_2fc} :catch_36a
    .catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_2fc} :catch_3c0

    .line 1157
    const/4 v1, 0x0

    .line 1159
    :try_start_2fd
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v2, 0x5

    invoke-static {v0, v5, v6, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_307
    .catchall {:try_start_2fd .. :try_end_307} :catchall_461
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_307} :catch_35f
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_2fd .. :try_end_307} :catch_284
    .catch Ljava/io/IOException; {:try_start_2fd .. :try_end_307} :catch_36a

    move-result-object v0

    .line 1164
    :goto_308
    if-eqz v0, :cond_319

    .line 1166
    const-wide/16 v1, 0x3e8

    :try_start_30c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30f
    .catchall {:try_start_30c .. :try_end_30f} :catchall_461
    .catch Ljava/lang/InterruptedException; {:try_start_30c .. :try_end_30f} :catch_45b
    .catch Ljava/lang/Exception; {:try_start_30c .. :try_end_30f} :catch_45e
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_30c .. :try_end_30f} :catch_284
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_30f} :catch_36a

    .line 1172
    :goto_30f
    :try_start_30f
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 1173
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v2, 0x5

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_319
    .catchall {:try_start_30f .. :try_end_319} :catchall_461
    .catch Ljava/lang/Exception; {:try_start_30f .. :try_end_319} :catch_365
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_30f .. :try_end_319} :catch_284
    .catch Ljava/io/IOException; {:try_start_30f .. :try_end_319} :catch_36a

    .line 1207
    :cond_319
    :goto_319
    :try_start_319
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_319 .. :try_end_320} :catch_4cc

    .line 1212
    :goto_320
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 1216
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_346

    .line 1217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[Eas]OutboxService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EasOutboxService : call SyncManager.reloadFolderList()"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_4d2

    .line 1219
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1227
    :cond_346
    :goto_346
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end EasOutboxService : exit status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17b

    .line 1161
    :catch_35f
    move-exception v0

    .line 1162
    :try_start_360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_308

    .line 1175
    :catch_365
    move-exception v0

    .line 1176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_369
    .catchall {:try_start_360 .. :try_end_369} :catchall_461
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_360 .. :try_end_369} :catch_284
    .catch Ljava/io/IOException; {:try_start_360 .. :try_end_369} :catch_36a
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_369} :catch_3c0

    goto :goto_319

    .line 1193
    :catch_36a
    move-exception v0

    .line 1194
    :try_start_36b
    const-string v1, "[Eas]OutboxService"

    const-string v2, "EasOutboxService() : IOException caught in EasOutboxService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    if-eqz v0, :cond_377

    .line 1196
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1198
    :cond_377
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_37a
    .catchall {:try_start_36b .. :try_end_37a} :catchall_461

    .line 1207
    :try_start_37a
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_381} :catch_481

    .line 1212
    :goto_381
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 1216
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3a7

    .line 1217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[Eas]OutboxService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EasOutboxService : call SyncManager.reloadFolderList()"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_487

    .line 1219
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1227
    :cond_3a7
    :goto_3a7
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end EasOutboxService : exit status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17b

    .line 1199
    :catch_3c0
    move-exception v0

    .line 1200
    :try_start_3c1
    const-string v1, "[Eas]OutboxService"

    const-string v2, "EasOutboxService() : Exception caught in EasOutboxService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    if-eqz v0, :cond_3cd

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1204
    :cond_3cd
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_3d0
    .catchall {:try_start_3c1 .. :try_end_3d0} :catchall_461

    .line 1207
    :try_start_3d0
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_3d7
    .catch Ljava/lang/Exception; {:try_start_3d0 .. :try_end_3d7} :catch_490

    .line 1212
    :goto_3d7
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 1216
    iget v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3fd

    .line 1217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[Eas]OutboxService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EasOutboxService : call SyncManager.reloadFolderList()"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_496

    .line 1219
    sget-object v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1227
    :cond_3fd
    :goto_3fd
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end EasOutboxService : exit status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17b

    .line 1208
    :catch_416
    move-exception v1

    .line 1209
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1212
    :goto_41a
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 1216
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_440

    .line 1217
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "[Eas]OutboxService"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "EasOutboxService : call SyncManager.reloadFolderList()"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 1218
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_46a

    .line 1219
    sget-object v1, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 1227
    :cond_440
    :goto_440
    const-string v1, "[Eas]OutboxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end EasOutboxService : exit status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    throw v0

    .line 1167
    :catch_45b
    move-exception v1

    goto/16 :goto_30f

    .line 1168
    :catch_45e
    move-exception v1

    goto/16 :goto_30f

    .line 1206
    :catchall_461
    move-exception v0

    .line 1207
    :try_start_462
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_469
    .catch Ljava/lang/Exception; {:try_start_462 .. :try_end_469} :catch_416

    goto :goto_41a

    .line 1221
    :cond_46a
    const-string v1, "[Eas]OutboxService"

    const-string v2, "EasOutboxService : abnormal case. mAccount is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_440

    .line 1208
    :catch_472
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2b7

    .line 1221
    :cond_478
    const-string v0, "[Eas]OutboxService"

    const-string v1, "EasOutboxService : abnormal case. mAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2dd

    .line 1208
    :catch_481
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_381

    .line 1221
    :cond_487
    const-string v0, "[Eas]OutboxService"

    const-string v1, "EasOutboxService : abnormal case. mAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a7

    .line 1208
    :catch_490
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3d7

    .line 1221
    :cond_496
    const-string v0, "[Eas]OutboxService"

    const-string v1, "EasOutboxService : abnormal case. mAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3fd

    .line 1208
    :catch_49f
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13e

    .line 1221
    :cond_4a5
    const-string v0, "[Eas]OutboxService"

    const-string v1, "EasOutboxService : abnormal case. mAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_164

    .line 1208
    :catch_4ae
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1ee

    .line 1221
    :cond_4b4
    const-string v0, "[Eas]OutboxService"

    const-string v1, "EasOutboxService : abnormal case. mAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_214

    .line 1208
    :catch_4bd
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_23d

    .line 1221
    :cond_4c3
    const-string v0, "[Eas]OutboxService"

    const-string v1, "EasOutboxService : abnormal case. mAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_263

    .line 1208
    :catch_4cc
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_320

    .line 1221
    :cond_4d2
    const-string v0, "[Eas]OutboxService"

    const-string v1, "EasOutboxService : abnormal case. mAccount is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_346

    .line 1182
    :catch_4db
    move-exception v0

    move-wide v3, v6

    goto/16 :goto_285

    .line 1105
    :catch_4df
    move-exception v1

    move v7, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_108
.end method

.method sendMessage(Ljava/io/File;JZ)I
    .registers 86
    .parameter "cacheDir"
    .parameter "msgId"
    .parameter "finaltry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start sendMessage. msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/16 v73, 0x0

    .line 315
    .local v73, result:I
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 316
    const-string v4, "eas_"

    const-string v5, "tmp"

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v76

    .line 319
    .local v76, tmpFile:Ljava/io/File;
    const-string v4, "eas_"

    const-string v5, "tmp"

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v77

    .line 323
    .local v77, tmpFile2:Ljava/io/File;
    const/16 v48, 0x0

    .line 324
    .local v48, fileStream:Ljava/io/FileOutputStream;
    const/16 v53, 0x0

    .line 325
    .local v53, inputStream:Ljava/io/FileInputStream;
    const/16 v68, 0x0

    .line 326
    .local v68, randFile:Ljava/io/RandomAccessFile;
    const/16 v46, 0x0

    .line 327
    .local v46, file:Ljava/io/FileInputStream;
    const/16 v58, 0x0

    .line 328
    .local v58, isSourceMessageHtml:Z
    const/16 v32, 0x0

    .line 330
    .local v32, bis:Ljava/io/BufferedInputStream;
    const/16 v74, 0x0

    .line 331
    .local v74, sendresult_success:Z
    const/16 v24, 0x0

    .line 334
    .local v24, subject:Ljava/lang/String;
    :try_start_49
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "flags"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "subject"

    aput-object v10, v6, v9

    move-wide/from16 v0, p2

    invoke-static {v4, v5, v0, v1, v6}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 336
    .local v41, cols:[Ljava/lang/String;
    const/16 v49, 0x0

    .line 337
    .local v49, flags:I
    const/16 v24, 0x0

    .line 338
    if-eqz v41, :cond_e93

    const/4 v4, 0x0

    aget-object v4, v41, v4

    if-eqz v4, :cond_e93

    .line 339
    const/4 v4, 0x0

    aget-object v4, v41, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v49

    .line 340
    const/4 v4, 0x1

    aget-object v24, v41, v4
    :try_end_75
    .catchall {:try_start_49 .. :try_end_75} :catchall_cfd
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_49 .. :try_end_75} :catch_e4f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_49 .. :try_end_75} :catch_e0d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_75} :catch_dcb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_49 .. :try_end_75} :catch_d89
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_75} :catch_d44

    move-object/from16 v31, v24

    .line 343
    .end local v24           #subject:Ljava/lang/String;
    .local v31, subject:Ljava/lang/String;
    :goto_77
    and-int/lit8 v4, v49, 0x1

    if-eqz v4, :cond_1c2

    const/16 v16, 0x1

    .line 344
    .local v16, reply:Z
    :goto_7d
    and-int/lit8 v4, v49, 0x2

    if-eqz v4, :cond_1c6

    const/16 v50, 0x1

    .line 347
    .local v50, forward:Z
    :goto_83
    const/4 v12, 0x0

    .line 348
    .local v12, itemId:Ljava/lang/String;
    const/4 v13, 0x0

    .line 349
    .local v13, collectionId:Ljava/lang/String;
    const-wide/16 v70, 0x0

    .line 352
    .local v70, refId:J
    if-nez v16, :cond_8b

    if-eqz v50, :cond_e9

    .line 354
    :cond_8b
    :try_start_8b
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string v9, "messageKey=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v11

    invoke-static {v4, v5, v6, v9, v10}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 358
    if-eqz v41, :cond_e9

    const/4 v4, 0x0

    aget-object v4, v41, v4

    if-eqz v4, :cond_e9

    .line 359
    const/4 v4, 0x0

    aget-object v4, v41, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v70

    .line 385
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "syncServerId"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "mailboxKey"

    aput-object v10, v6, v9

    move-wide/from16 v0, v70

    invoke-static {v4, v5, v0, v1, v6}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 387
    if-eqz v41, :cond_e9

    .line 388
    const/4 v4, 0x0

    aget-object v12, v41, v4

    .line 389
    const/4 v4, 0x1

    aget-object v4, v41, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 391
    .local v34, boxId:J
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "serverId"

    aput-object v10, v6, v9

    move-wide/from16 v0, v34

    invoke-static {v4, v5, v0, v1, v6}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 393
    if-eqz v41, :cond_e9

    .line 394
    const/4 v4, 0x0

    aget-object v13, v41, v4

    .line 402
    .end local v34           #boxId:J
    :cond_e9
    if-eqz v12, :cond_1ca

    if-eqz v13, :cond_1ca

    const/4 v15, 0x1

    .line 417
    .local v15, smartSend:Z
    :goto_ee
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, v76

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f5
    .catchall {:try_start_8b .. :try_end_f5} :catchall_d02
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_8b .. :try_end_f5} :catch_e54
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8b .. :try_end_f5} :catch_e12
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_f5} :catch_dd0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8b .. :try_end_f5} :catch_d8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_f5} :catch_d49

    .line 419
    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .local v7, fileStream:Ljava/io/FileOutputStream;
    :try_start_f5
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v67

    .line 423
    .local v67, ps:Lcom/android/emailcommon/service/PolicySet;
    const/4 v4, 0x1

    sget-object v5, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v67

    invoke-static {v4, v0, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->setIsExchangeAccount(ZLcom/android/emailcommon/service/PolicySet;Ljava/lang/String;)V

    .line 425
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    if-nez v15, :cond_1cd

    const/4 v8, 0x1

    :goto_112
    const/4 v9, 0x1

    move-wide/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocol version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 431
    const/4 v8, 0x0

    .line 433
    .local v8, rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v9, 0x402c

    cmpl-double v4, v4, v9

    if-ltz v4, :cond_1d0

    const/16 v56, 0x1

    .line 436
    .local v56, isEas14:Z
    :goto_147
    if-eqz v56, :cond_e8f

    .line 437
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 438
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->length()J

    move-result-wide v62

    .line 439
    .local v62, mimeSize:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimesize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v62

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 441
    new-instance v8, Lcom/android/exchange/adapter/ComposeMailAdapter;

    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v8 .. v16}, Lcom/android/exchange/adapter/ComposeMailAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 444
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    new-instance v75, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v75 .. v75}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 445
    .local v75, serializer:Lcom/android/exchange/adapter/Serializer;
    move-object/from16 v0, v75

    invoke-virtual {v8, v0}, Lcom/android/exchange/adapter/ComposeMailAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    .line 446
    invoke-virtual/range {v75 .. v75}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 447
    new-instance v69, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    move-object/from16 v0, v69

    move-object/from16 v1, v77

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_190
    .catchall {:try_start_f5 .. :try_end_190} :catchall_d09
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_f5 .. :try_end_190} :catch_5d4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_f5 .. :try_end_190} :catch_7a8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_190} :catch_8a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f5 .. :try_end_190} :catch_99a
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_190} :catch_ac2

    .line 449
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .local v69, randFile:Ljava/io/RandomAccessFile;
    :try_start_190
    invoke-virtual/range {v75 .. v75}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v80

    .line 450
    .local v80, wbxmlData:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wbxml size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 451
    const/16 v51, 0x0

    .local v51, i:I
    :goto_1af
    move-object/from16 v0, v80

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    move/from16 v0, v51

    if-ge v0, v4, :cond_1d4

    .line 452
    aget-byte v4, v80, v51

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 451
    add-int/lit8 v51, v51, 0x1

    goto :goto_1af

    .line 343
    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v50           #forward:Z
    .end local v51           #i:I
    .end local v56           #isEas14:Z
    .end local v62           #mimeSize:J
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .end local v70           #refId:J
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    :cond_1c2
    const/16 v16, 0x0

    goto/16 :goto_7d

    .line 344
    .restart local v16       #reply:Z
    :cond_1c6
    const/16 v50, 0x0

    goto/16 :goto_83

    .line 402
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v50       #forward:Z
    .restart local v70       #refId:J
    :cond_1ca
    const/4 v15, 0x0

    goto/16 :goto_ee

    .line 425
    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    .restart local v15       #smartSend:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    :cond_1cd
    const/4 v8, 0x0

    goto/16 :goto_112

    .line 433
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    :cond_1d0
    const/16 v56, 0x0

    goto/16 :goto_147

    .line 455
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v51       #i:I
    .restart local v56       #isEas14:Z
    .restart local v62       #mimeSize:J
    .restart local v69       #randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :cond_1d4
    const/16 v4, 0xc3

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 456
    move-wide/from16 v0, v62

    long-to-int v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/exchange/EasOutboxService;->converToOpaqueLength(I)[B

    move-result-object v65

    .line 457
    .local v65, opLength:[B
    const/16 v66, 0x0

    .line 460
    .local v66, opbytes:I
    if-eqz v65, :cond_1ff

    .line 461
    const/16 v51, 0x0

    :goto_1ea
    const/4 v4, 0x5

    move/from16 v0, v51

    if-ge v0, v4, :cond_1ff

    .line 462
    aget-byte v4, v65, v51

    if-eqz v4, :cond_1fc

    .line 463
    aget-byte v4, v65, v51

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 464
    add-int/lit8 v66, v66, 0x1

    .line 461
    :cond_1fc
    add-int/lit8 v51, v51, 0x1

    goto :goto_1ea

    .line 471
    :cond_1ff
    new-instance v47, Ljava/io/FileInputStream;

    move-object/from16 v0, v47

    move-object/from16 v1, v76

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_208
    .catchall {:try_start_190 .. :try_end_208} :catchall_d0e
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_190 .. :try_end_208} :catch_e5b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_190 .. :try_end_208} :catch_e19
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_208} :catch_dd7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_190 .. :try_end_208} :catch_d95
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_208} :catch_d50

    .line 476
    .end local v46           #file:Ljava/io/FileInputStream;
    .local v47, file:Ljava/io/FileInputStream;
    if-eqz v47, :cond_e8b

    .line 477
    const/16 v51, 0x0

    .line 478
    const/16 v4, 0x2000

    :try_start_20e
    new-array v0, v4, [B

    move-object/from16 v36, v0

    .line 479
    .local v36, buf:[B
    new-instance v33, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21b
    .catchall {:try_start_20e .. :try_end_21b} :catchall_d15
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_20e .. :try_end_21b} :catch_e62
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_20e .. :try_end_21b} :catch_e20
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_21b} :catch_dde
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20e .. :try_end_21b} :catch_d9c
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_21b} :catch_d57

    .line 480
    .end local v32           #bis:Ljava/io/BufferedInputStream;
    .local v33, bis:Ljava/io/BufferedInputStream;
    :goto_21b
    const/4 v4, 0x0

    const/16 v5, 0x2000

    :try_start_21e
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v51

    const/4 v4, -0x1

    move/from16 v0, v51

    if-eq v0, v4, :cond_2c0

    .line 481
    const/4 v4, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v36

    move/from16 v2, v51

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_235
    .catchall {:try_start_21e .. :try_end_235} :catchall_d1e
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_21e .. :try_end_235} :catch_236
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_21e .. :try_end_235} :catch_e29
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_235} :catch_de7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21e .. :try_end_235} :catch_da5
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_235} :catch_d60

    goto :goto_21b

    .line 793
    :catch_236
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v32, v33

    .end local v33           #bis:Ljava/io/BufferedInputStream;
    .restart local v32       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .line 794
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v36           #buf:[B
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v51           #i:I
    .end local v56           #isEas14:Z
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .end local v70           #refId:J
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .local v43, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    :goto_23f
    :try_start_23f
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): Send Failed.. Caught DeviceAccessException: e.getMessage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v43 .. v43}, Lcom/android/emailcommon/utility/DeviceAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    if-eqz v43, :cond_260

    .line 797
    invoke-virtual/range {v43 .. v43}, Lcom/android/emailcommon/utility/DeviceAccessException;->printStackTrace()V

    .line 799
    :cond_260
    throw v43
    :try_end_261
    .catchall {:try_start_23f .. :try_end_261} :catchall_261

    .line 924
    .end local v43           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :catchall_261
    move-exception v4

    :goto_262
    const-string v5, "[Eas]OutboxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage(): finally. msgId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :try_start_27c
    new-instance v18, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v5, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    if-nez v74, :cond_c29

    const/16 v23, 0x1

    :goto_291
    move-wide/from16 v21, p2

    invoke-virtual/range {v18 .. v24}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendResult(JJZLjava/lang/String;)V
    :try_end_296
    .catch Landroid/os/RemoteException; {:try_start_27c .. :try_end_296} :catch_c23

    .line 934
    :goto_296
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_29f

    .line 935
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->delete()Z

    .line 937
    :cond_29f
    if-eqz v7, :cond_2a4

    .line 939
    :try_start_2a1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2a4} :catch_c2d

    .line 944
    :cond_2a4
    :goto_2a4
    if-eqz v53, :cond_2a9

    .line 948
    :try_start_2a6
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_2a9
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2a9} :catch_c33

    .line 953
    :cond_2a9
    :goto_2a9
    if-eqz v68, :cond_2ae

    .line 956
    :try_start_2ab
    invoke-virtual/range {v68 .. v68}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2ae} :catch_c39

    .line 962
    :cond_2ae
    :goto_2ae
    if-eqz v46, :cond_2b3

    .line 965
    :try_start_2b0
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b3} :catch_c3f

    .line 972
    :cond_2b3
    :goto_2b3
    if-eqz v32, :cond_2b8

    .line 974
    :try_start_2b5
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2b5 .. :try_end_2b8} :catch_c45

    .line 980
    :cond_2b8
    :goto_2b8
    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/EasOutboxService;->setmPendingMessageId(J)V

    .line 924
    throw v4

    .line 483
    .end local v24           #subject:Ljava/lang/String;
    .end local v32           #bis:Ljava/io/BufferedInputStream;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v15       #smartSend:Z
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v33       #bis:Ljava/io/BufferedInputStream;
    .restart local v36       #buf:[B
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v51       #i:I
    .restart local v56       #isEas14:Z
    .restart local v62       #mimeSize:J
    .restart local v65       #opLength:[B
    .restart local v66       #opbytes:I
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v69       #randFile:Ljava/io/RandomAccessFile;
    .restart local v70       #refId:J
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :cond_2c0
    :try_start_2c0
    invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2c3
    .catchall {:try_start_2c0 .. :try_end_2c3} :catchall_d1e
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_2c0 .. :try_end_2c3} :catch_236
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2c0 .. :try_end_2c3} :catch_e29
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2c3} :catch_de7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c0 .. :try_end_2c3} :catch_da5
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2c3} :catch_d60

    .line 484
    const/16 v32, 0x0

    .line 485
    .end local v33           #bis:Ljava/io/BufferedInputStream;
    .restart local v32       #bis:Ljava/io/BufferedInputStream;
    :try_start_2c5
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V
    :try_end_2c8
    .catchall {:try_start_2c5 .. :try_end_2c8} :catchall_d15
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_2c5 .. :try_end_2c8} :catch_e62
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2c5 .. :try_end_2c8} :catch_e20
    .catch Ljava/io/IOException; {:try_start_2c5 .. :try_end_2c8} :catch_dde
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c5 .. :try_end_2c8} :catch_d9c
    .catch Ljava/lang/Exception; {:try_start_2c5 .. :try_end_2c8} :catch_d57

    .line 486
    const/16 v46, 0x0

    .line 490
    .end local v36           #buf:[B
    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    :goto_2ca
    :try_start_2ca
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 491
    const/4 v7, 0x0

    .line 492
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2d7

    .line 493
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->delete()Z

    .line 495
    :cond_2d7
    move-object/from16 v76, v77

    .line 499
    move-object/from16 v0, v80

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, v66

    int-to-long v4, v4

    add-long v4, v4, v62

    move-object/from16 v0, v69

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 502
    move-object/from16 v0, v80

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, v80, v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 503
    move-object/from16 v0, v80

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v80, v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 504
    invoke-virtual/range {v69 .. v69}, Ljava/io/RandomAccessFile;->close()V

    .line 505
    const/16 v68, 0x0

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v69, v68

    .line 512
    .end local v51           #i:I
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .local v69, randFile:Ljava/lang/Object;
    :goto_309
    new-instance v54, Ljava/io/FileInputStream;

    move-object/from16 v0, v54

    move-object/from16 v1, v76

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_312
    .catchall {:try_start_2ca .. :try_end_312} :catchall_d0e
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_2ca .. :try_end_312} :catch_e5b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2ca .. :try_end_312} :catch_e19
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_312} :catch_dd7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2ca .. :try_end_312} :catch_d95
    .catch Ljava/lang/Exception; {:try_start_2ca .. :try_end_312} :catch_d50

    .line 514
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .local v54, inputStream:Ljava/io/FileInputStream;
    :try_start_312
    new-instance v52, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 517
    .local v52, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v39, "SendMail"

    .line 518
    .local v39, cmd:Ljava/lang/String;
    if-eqz v15, :cond_32b

    .line 519
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/exchange/EasOutboxService;->generateSmartSendCmd(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 521
    :cond_32b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&SaveInSent=T"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 524
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 525
    .local v37, checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v37, :cond_37b

    .line 526
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage(): message is not exist. sending is cancelled. msgId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 528
    new-instance v4, Ljava/io/IOException;

    const-string v5, "message is not exist. sending cancelled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 793
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    :catch_372
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_23f

    .line 531
    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    :cond_37b
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send cmd: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->setmPendingMessageId(J)V

    .line 534
    const v4, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v72

    .line 537
    .local v72, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v72 .. v72}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v40

    .line 539
    .local v40, code:I
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): sendHttpClientPost HTTP response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz v56, :cond_418

    .line 547
    const/16 v4, 0xc8

    move/from16 v0, v40

    if-ne v0, v4, :cond_3fe

    .line 548
    invoke-interface/range {v72 .. v72}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3dc
    .catchall {:try_start_312 .. :try_end_3dc} :catchall_d29
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_312 .. :try_end_3dc} :catch_372
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_312 .. :try_end_3dc} :catch_e34
    .catch Ljava/io/IOException; {:try_start_312 .. :try_end_3dc} :catch_df2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_312 .. :try_end_3dc} :catch_db0
    .catch Ljava/lang/Exception; {:try_start_312 .. :try_end_3dc} :catch_d6b

    move-result-object v44

    .line 549
    .local v44, entity:Lorg/apache/http/HttpEntity;
    move/from16 v78, v40

    .line 550
    .local v78, tmp_code:I
    const/16 v40, 0xc8

    .line 552
    :try_start_3e1
    invoke-interface/range {v44 .. v44}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v59, v0

    .line 553
    .local v59, len:I
    if-eqz v59, :cond_3fe

    .line 554
    invoke-interface/range {v44 .. v44}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v55

    .line 555
    .local v55, is:Ljava/io/InputStream;
    if-eqz v55, :cond_3fe

    .line 556
    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/android/exchange/adapter/ComposeMailAdapter;->setHttpCode(I)V

    .line 557
    move-object/from16 v0, v55

    invoke-virtual {v8, v0}, Lcom/android/exchange/adapter/ComposeMailAdapter;->parse(Ljava/io/InputStream;)Z

    .line 558
    invoke-virtual {v8}, Lcom/android/exchange/adapter/ComposeMailAdapter;->getHttpCode()I
    :try_end_3fd
    .catchall {:try_start_3e1 .. :try_end_3fd} :catchall_d29
    .catch Ljava/io/IOException; {:try_start_3e1 .. :try_end_3fd} :catch_529
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_3e1 .. :try_end_3fd} :catch_372
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3e1 .. :try_end_3fd} :catch_e34
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3e1 .. :try_end_3fd} :catch_db0
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_3fd} :catch_d6b

    move-result v40

    .line 568
    .end local v44           #entity:Lorg/apache/http/HttpEntity;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v59           #len:I
    .end local v78           #tmp_code:I
    :cond_3fe
    :goto_3fe
    :try_start_3fe
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): EAS2010. parse result, response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_418
    const/16 v4, 0x1f4

    move/from16 v0, v40

    if-eq v0, v4, :cond_424

    const/16 v4, 0x96

    move/from16 v0, v40

    if-ne v0, v4, :cond_e85

    :cond_424
    if-eqz v15, :cond_e85

    .line 576
    const-string v4, "[Eas]OutboxService"

    const-string v5, "sendMessage(): Smart send fail. Attemption normal send. Unloaded attachment will be omitted."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v79, Landroid/content/ContentValues;

    invoke-direct/range {v79 .. v79}, Landroid/content/ContentValues;-><init>()V

    .line 583
    .local v79, values:Landroid/content/ContentValues;
    const-string v4, "sourceMessageKey"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v79

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    move-object/from16 v2, v79

    invoke-static {v4, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 587
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_450

    .line 588
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->delete()Z

    .line 591
    :cond_450
    if-eqz v7, :cond_e81

    .line 592
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_455
    .catchall {:try_start_3fe .. :try_end_455} :catchall_d29
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_3fe .. :try_end_455} :catch_372
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3fe .. :try_end_455} :catch_e34
    .catch Ljava/io/IOException; {:try_start_3fe .. :try_end_455} :catch_df2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3fe .. :try_end_455} :catch_db0
    .catch Ljava/lang/Exception; {:try_start_3fe .. :try_end_455} :catch_d6b

    .line 593
    const/4 v7, 0x0

    move-object/from16 v48, v7

    .line 595
    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    :goto_458
    if-eqz v54, :cond_461

    .line 597
    :try_start_45a
    invoke-virtual/range {v54 .. v54}, Ljava/io/FileInputStream;->close()V

    .line 598
    const/16 v53, 0x0

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v54, v53

    .line 602
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    :cond_461
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, v76

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_468
    .catchall {:try_start_45a .. :try_end_468} :catchall_d32
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_45a .. :try_end_468} :catch_e6b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_45a .. :try_end_468} :catch_e3d
    .catch Ljava/io/IOException; {:try_start_45a .. :try_end_468} :catch_dfb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45a .. :try_end_468} :catch_db9
    .catch Ljava/lang/Exception; {:try_start_45a .. :try_end_468} :catch_d74

    .line 603
    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    :try_start_468
    sget-object v17, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-wide/from16 v18, p2

    move-object/from16 v20, v7

    invoke-static/range {v17 .. v22}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocol version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 608
    const/16 v17, 0x0

    .line 610
    .local v17, cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v9, 0x402c

    cmpl-double v4, v4, v9

    if-ltz v4, :cond_e7d

    .line 612
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 613
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->length()J

    move-result-wide v62

    .line 614
    .restart local v62       #mimeSize:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimesize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v62

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 616
    new-instance v17, Lcom/android/exchange/adapter/ComposeMailAdapter;

    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object/from16 v18, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move/from16 v25, v16

    invoke-direct/range {v17 .. v25}, Lcom/android/exchange/adapter/ComposeMailAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 619
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    new-instance v75, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v75 .. v75}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 620
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    move-object/from16 v0, v17

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z

    .line 621
    invoke-virtual/range {v75 .. v75}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 623
    new-instance v68, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    move-object/from16 v0, v68

    move-object/from16 v1, v76

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4f7
    .catchall {:try_start_468 .. :try_end_4f7} :catchall_d29
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_468 .. :try_end_4f7} :catch_372
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_468 .. :try_end_4f7} :catch_e34
    .catch Ljava/io/IOException; {:try_start_468 .. :try_end_4f7} :catch_df2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_468 .. :try_end_4f7} :catch_db0
    .catch Ljava/lang/Exception; {:try_start_468 .. :try_end_4f7} :catch_d6b

    .line 625
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    :try_start_4f7
    invoke-virtual/range {v75 .. v75}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    .end local v69           #randFile:Ljava/lang/Object;
    move-result-object v80

    .line 626
    .restart local v80       #wbxmlData:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wbxml size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v80

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 627
    const/16 v51, 0x0

    .restart local v51       #i:I
    :goto_516
    move-object/from16 v0, v80

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    move/from16 v0, v51

    if-ge v0, v4, :cond_533

    .line 628
    aget-byte v4, v80, v51

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_526
    .catchall {:try_start_4f7 .. :try_end_526} :catchall_d3d
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_4f7 .. :try_end_526} :catch_e76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4f7 .. :try_end_526} :catch_e48
    .catch Ljava/io/IOException; {:try_start_4f7 .. :try_end_526} :catch_e06
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f7 .. :try_end_526} :catch_dc4
    .catch Ljava/lang/Exception; {:try_start_4f7 .. :try_end_526} :catch_d7f

    .line 627
    add-int/lit8 v51, v51, 0x1

    goto :goto_516

    .line 561
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v51           #i:I
    .end local v62           #mimeSize:J
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v79           #values:Landroid/content/ContentValues;
    .end local v80           #wbxmlData:[B
    .restart local v44       #entity:Lorg/apache/http/HttpEntity;
    .restart local v69       #randFile:Ljava/lang/Object;
    .restart local v78       #tmp_code:I
    :catch_529
    move-exception v43

    .line 562
    .local v43, e:Ljava/io/IOException;
    if-eqz v43, :cond_52f

    .line 563
    :try_start_52c
    invoke-virtual/range {v43 .. v43}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52f
    .catchall {:try_start_52c .. :try_end_52f} :catchall_d29
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_52c .. :try_end_52f} :catch_372
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_52c .. :try_end_52f} :catch_e34
    .catch Ljava/io/IOException; {:try_start_52c .. :try_end_52f} :catch_df2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_52c .. :try_end_52f} :catch_db0
    .catch Ljava/lang/Exception; {:try_start_52c .. :try_end_52f} :catch_d6b

    .line 565
    :cond_52f
    move/from16 v40, v78

    goto/16 :goto_3fe

    .line 631
    .end local v43           #e:Ljava/io/IOException;
    .end local v44           #entity:Lorg/apache/http/HttpEntity;
    .end local v69           #randFile:Ljava/lang/Object;
    .end local v78           #tmp_code:I
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v51       #i:I
    .restart local v62       #mimeSize:J
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v79       #values:Landroid/content/ContentValues;
    .restart local v80       #wbxmlData:[B
    :cond_533
    const/16 v4, 0xc3

    :try_start_535
    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 632
    move-wide/from16 v0, v62

    long-to-int v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/exchange/EasOutboxService;->converToOpaqueLength(I)[B

    move-result-object v65

    .line 633
    .restart local v65       #opLength:[B
    const/16 v66, 0x0

    .line 636
    .restart local v66       #opbytes:I
    if-eqz v65, :cond_55e

    .line 637
    const/16 v51, 0x0

    :goto_549
    const/4 v4, 0x5

    move/from16 v0, v51

    if-ge v0, v4, :cond_55e

    .line 638
    aget-byte v4, v65, v51

    if-eqz v4, :cond_55b

    .line 639
    aget-byte v4, v65, v51

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 640
    add-int/lit8 v66, v66, 0x1

    .line 637
    :cond_55b
    add-int/lit8 v51, v51, 0x1

    goto :goto_549

    .line 645
    :cond_55e
    move-object/from16 v0, v80

    array-length v4, v0

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, v66

    int-to-long v4, v4

    add-long v4, v4, v62

    move-object/from16 v0, v68

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 648
    move-object/from16 v0, v80

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, v80, v4

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 649
    move-object/from16 v0, v80

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v80, v4

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write(I)V

    .line 650
    invoke-virtual/range {v68 .. v68}, Ljava/io/RandomAccessFile;->close()V

    .line 658
    .end local v51           #i:I
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    :goto_58a
    new-instance v53, Ljava/io/FileInputStream;

    move-object/from16 v0, v53

    move-object/from16 v1, v76

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_593
    .catchall {:try_start_535 .. :try_end_593} :catchall_d3d
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_535 .. :try_end_593} :catch_e76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_535 .. :try_end_593} :catch_e48
    .catch Ljava/io/IOException; {:try_start_535 .. :try_end_593} :catch_e06
    .catch Ljava/lang/OutOfMemoryError; {:try_start_535 .. :try_end_593} :catch_dc4
    .catch Ljava/lang/Exception; {:try_start_535 .. :try_end_593} :catch_d7f

    .line 659
    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    :try_start_593
    new-instance v52, Lorg/apache/http/entity/InputStreamEntity;

    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 662
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v39, "SendMail&SaveInSent=T"

    .line 665
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 666
    if-nez v37, :cond_5d9

    .line 667
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage(): message is not exist. sending is cancelled. msgId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 669
    new-instance v4, Ljava/io/IOException;

    const-string v5, "message is not exist. sending cancelled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 793
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .end local v79           #values:Landroid/content/ContentValues;
    :catch_5d4
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    goto/16 :goto_23f

    .line 672
    .end local v24           #subject:Ljava/lang/String;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    .restart local v79       #values:Landroid/content/ContentValues;
    :cond_5d9
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage(): 2nd Send cmd: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->setmPendingMessageId(J)V

    .line 674
    const v4, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v72

    .line 676
    invoke-interface/range {v72 .. v72}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v40

    .line 677
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): 2nd. sendHttpClientPost HTTP response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-eqz v56, :cond_6a2

    .line 680
    const/16 v4, 0xc8

    move/from16 v0, v40

    if-ne v0, v4, :cond_660

    .line 681
    invoke-interface/range {v72 .. v72}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_63a
    .catchall {:try_start_593 .. :try_end_63a} :catchall_d09
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_593 .. :try_end_63a} :catch_5d4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_593 .. :try_end_63a} :catch_7a8
    .catch Ljava/io/IOException; {:try_start_593 .. :try_end_63a} :catch_8a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_593 .. :try_end_63a} :catch_99a
    .catch Ljava/lang/Exception; {:try_start_593 .. :try_end_63a} :catch_ac2

    move-result-object v44

    .line 682
    .restart local v44       #entity:Lorg/apache/http/HttpEntity;
    move/from16 v78, v40

    .line 683
    .restart local v78       #tmp_code:I
    const/16 v40, 0xc8

    .line 685
    :try_start_63f
    invoke-interface/range {v44 .. v44}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v59, v0

    .line 686
    .restart local v59       #len:I
    if-eqz v59, :cond_660

    .line 687
    invoke-interface/range {v44 .. v44}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v55

    .line 688
    .restart local v55       #is:Ljava/io/InputStream;
    if-eqz v55, :cond_660

    .line 689
    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->setHttpCode(I)V

    .line 690
    move-object/from16 v0, v17

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->parse(Ljava/io/InputStream;)Z

    .line 691
    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/ComposeMailAdapter;->getHttpCode()I
    :try_end_65f
    .catchall {:try_start_63f .. :try_end_65f} :catchall_d09
    .catch Ljava/io/IOException; {:try_start_63f .. :try_end_65f} :catch_732
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_63f .. :try_end_65f} :catch_5d4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_63f .. :try_end_65f} :catch_7a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_63f .. :try_end_65f} :catch_99a
    .catch Ljava/lang/Exception; {:try_start_63f .. :try_end_65f} :catch_ac2

    move-result v40

    .line 702
    .end local v44           #entity:Lorg/apache/http/HttpEntity;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v59           #len:I
    .end local v78           #tmp_code:I
    :cond_660
    :goto_660
    :try_start_660
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): 2nd EAS2010. parse result, response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 v4, 0xc8

    move/from16 v0, v40

    if-ne v0, v4, :cond_6a2

    const-wide/16 v4, 0x0

    cmp-long v4, v70, v4

    if-lez v4, :cond_6a2

    .line 707
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v70

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v61

    .line 708
    .local v61, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v61, :cond_6a2

    move-object/from16 v0, v61

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-lez v4, :cond_6a2

    .line 709
    move-object/from16 v0, v61

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V

    .line 722
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v61           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v79           #values:Landroid/content/ContentValues;
    :cond_6a2
    :goto_6a2
    const/16 v4, 0xc8

    move/from16 v0, v40

    if-ne v0, v4, :cond_73c

    .line 723
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sendmessage(): send complete. Deleting message..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 724
    const/16 v74, 0x1

    .line 725
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6d2
    .catchall {:try_start_660 .. :try_end_6d2} :catchall_d09
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_660 .. :try_end_6d2} :catch_5d4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_660 .. :try_end_6d2} :catch_7a8
    .catch Ljava/io/IOException; {:try_start_660 .. :try_end_6d2} :catch_8a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_660 .. :try_end_6d2} :catch_99a
    .catch Ljava/lang/Exception; {:try_start_660 .. :try_end_6d2} :catch_ac2

    .line 728
    const/16 v73, 0x0

    .line 924
    :goto_6d4
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): finally. msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :try_start_6ee
    new-instance v25, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v26, v0

    if-nez v74, :cond_cdb

    const/16 v30, 0x1

    :goto_703
    move-wide/from16 v28, p2

    invoke-virtual/range {v25 .. v31}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendResult(JJZLjava/lang/String;)V
    :try_end_708
    .catch Landroid/os/RemoteException; {:try_start_6ee .. :try_end_708} :catch_cd5

    .line 934
    :goto_708
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_711

    .line 935
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->delete()Z

    .line 937
    :cond_711
    if-eqz v7, :cond_716

    .line 939
    :try_start_713
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_716
    .catch Ljava/lang/Exception; {:try_start_713 .. :try_end_716} :catch_cdf

    .line 944
    :cond_716
    :goto_716
    if-eqz v53, :cond_71b

    .line 948
    :try_start_718
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_71b
    .catch Ljava/lang/Exception; {:try_start_718 .. :try_end_71b} :catch_ce5

    .line 953
    :cond_71b
    :goto_71b
    if-eqz v68, :cond_720

    .line 956
    :try_start_71d
    invoke-virtual/range {v68 .. v68}, Ljava/io/RandomAccessFile;->close()V
    :try_end_720
    .catch Ljava/lang/Exception; {:try_start_71d .. :try_end_720} :catch_ceb

    .line 962
    :cond_720
    :goto_720
    if-eqz v46, :cond_725

    .line 965
    :try_start_722
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_725
    .catch Ljava/lang/Exception; {:try_start_722 .. :try_end_725} :catch_cf1

    .line 972
    :cond_725
    :goto_725
    if-eqz v32, :cond_728

    .line 974
    :try_start_727
    throw v32
    :try_end_728
    .catch Ljava/lang/Exception; {:try_start_727 .. :try_end_728} :catch_cf7

    .line 980
    :cond_728
    :goto_728
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/EasOutboxService;->setmPendingMessageId(J)V

    move-object/from16 v24, v31

    .line 982
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v70           #refId:J
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .restart local v24       #subject:Ljava/lang/String;
    :goto_731
    return v73

    .line 694
    .end local v24           #subject:Ljava/lang/String;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v15       #smartSend:Z
    .restart local v16       #reply:Z
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v44       #entity:Lorg/apache/http/HttpEntity;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v70       #refId:J
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    .restart local v78       #tmp_code:I
    .restart local v79       #values:Landroid/content/ContentValues;
    :catch_732
    move-exception v43

    .line 695
    .restart local v43       #e:Ljava/io/IOException;
    if-eqz v43, :cond_738

    .line 696
    :try_start_735
    invoke-virtual/range {v43 .. v43}, Ljava/io/IOException;->printStackTrace()V

    .line 698
    :cond_738
    move/from16 v40, v78

    goto/16 :goto_660

    .line 729
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v43           #e:Ljava/io/IOException;
    .end local v44           #entity:Lorg/apache/http/HttpEntity;
    .end local v78           #tmp_code:I
    .end local v79           #values:Landroid/content/ContentValues;
    :cond_73c
    const/16 v4, 0x1f7

    move/from16 v0, v40

    if-ne v0, v4, :cond_83e

    .line 730
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage(): Send Failed.. provision error. code : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 731
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sendMessage(): This means HTTP_NEED_RETRYLATER...."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 733
    if-eqz p4, :cond_79a

    .line 734
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sendMessage(): it\'s final try. SEND_FAILED_SERVER_ERROR flag is setted"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 735
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 736
    .local v42, cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    move-object/from16 v2, v42

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 739
    .end local v42           #cv:Landroid/content/ContentValues;
    :cond_79a
    const/16 v73, 0x0

    .line 740
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_7a6
    .catchall {:try_start_735 .. :try_end_7a6} :catchall_d09
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_735 .. :try_end_7a6} :catch_5d4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_735 .. :try_end_7a6} :catch_7a8
    .catch Ljava/io/IOException; {:try_start_735 .. :try_end_7a6} :catch_8a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_735 .. :try_end_7a6} :catch_99a
    .catch Ljava/lang/Exception; {:try_start_735 .. :try_end_7a6} :catch_ac2

    goto/16 :goto_6d4

    .line 801
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    :catch_7a8
    move-exception v43

    move-object/from16 v24, v31

    .line 802
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v70           #refId:J
    .restart local v24       #subject:Ljava/lang/String;
    .local v43, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_7ab
    :try_start_7ab
    const-string v4, "[Eas]OutboxService"

    const-string v5, "sendMessage(): Send Failed.. org.apache.http.client.ClientProtocolException. SEND_FAILED_SERVER_ERROR flag is setted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    if-eqz v43, :cond_7b7

    .line 805
    invoke-virtual/range {v43 .. v43}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 808
    :cond_7b7
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 809
    .restart local v42       #cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 810
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    move-object/from16 v2, v42

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 816
    const/16 v73, 0x0

    .line 817
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_7df
    .catchall {:try_start_7ab .. :try_end_7df} :catchall_261

    .line 924
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): finally. msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :try_start_7f9
    new-instance v18, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    if-nez v74, :cond_c51

    const/16 v23, 0x1

    :goto_80e
    move-wide/from16 v21, p2

    invoke-virtual/range {v18 .. v24}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendResult(JJZLjava/lang/String;)V
    :try_end_813
    .catch Landroid/os/RemoteException; {:try_start_7f9 .. :try_end_813} :catch_c4b

    .line 934
    .end local v43           #e:Lorg/apache/http/client/ClientProtocolException;
    :goto_813
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_81c

    .line 935
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->delete()Z

    .line 937
    :cond_81c
    if-eqz v7, :cond_821

    .line 939
    :try_start_81e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_821
    .catch Ljava/lang/Exception; {:try_start_81e .. :try_end_821} :catch_c55

    .line 944
    :cond_821
    :goto_821
    if-eqz v53, :cond_826

    .line 948
    :try_start_823
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_826
    .catch Ljava/lang/Exception; {:try_start_823 .. :try_end_826} :catch_c5b

    .line 953
    :cond_826
    :goto_826
    if-eqz v68, :cond_82b

    .line 956
    :try_start_828
    invoke-virtual/range {v68 .. v68}, Ljava/io/RandomAccessFile;->close()V
    :try_end_82b
    .catch Ljava/lang/Exception; {:try_start_828 .. :try_end_82b} :catch_c61

    .line 962
    :cond_82b
    :goto_82b
    if-eqz v46, :cond_830

    .line 965
    :try_start_82d
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_830
    .catch Ljava/lang/Exception; {:try_start_82d .. :try_end_830} :catch_c67

    .line 972
    :cond_830
    :goto_830
    if-eqz v32, :cond_835

    .line 974
    :try_start_832
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedInputStream;->close()V
    :try_end_835
    .catch Ljava/lang/Exception; {:try_start_832 .. :try_end_835} :catch_c6d

    .line 980
    :cond_835
    :goto_835
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/EasOutboxService;->setmPendingMessageId(J)V

    goto/16 :goto_731

    .line 741
    .end local v24           #subject:Ljava/lang/String;
    .end local v42           #cv:Landroid/content/ContentValues;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v15       #smartSend:Z
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v70       #refId:J
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    :cond_83e
    const/16 v4, 0x1fb

    move/from16 v0, v40

    if-ne v0, v4, :cond_94a

    .line 742
    const/4 v4, 0x1

    :try_start_845
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage(): Send Failed.. provision error. code : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 743
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sendMessage(): This means HTTP_MAILBOXQUOTA_EXCEEDED...."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 746
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sendMessage(): it\'s final try. SEND_FAILED_MAILBOXQUOTA_EXCEEDED flag is setted"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 747
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 748
    .restart local v42       #cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    const/4 v5, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    move-object/from16 v2, v42

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 751
    const/16 v73, 0x0

    .line 752
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_8a6
    .catchall {:try_start_845 .. :try_end_8a6} :catchall_d09
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_845 .. :try_end_8a6} :catch_5d4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_845 .. :try_end_8a6} :catch_7a8
    .catch Ljava/io/IOException; {:try_start_845 .. :try_end_8a6} :catch_8a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_845 .. :try_end_8a6} :catch_99a
    .catch Ljava/lang/Exception; {:try_start_845 .. :try_end_8a6} :catch_ac2

    goto/16 :goto_6d4

    .line 818
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v42           #cv:Landroid/content/ContentValues;
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    :catch_8a8
    move-exception v43

    move-object/from16 v24, v31

    .line 820
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v70           #refId:J
    .restart local v24       #subject:Ljava/lang/String;
    .local v43, e:Ljava/io/IOException;
    :goto_8ab
    :try_start_8ab
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): Caught IOException: e.getMessage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v43 .. v43}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    if-eqz v43, :cond_8cc

    .line 822
    invoke-virtual/range {v43 .. v43}, Ljava/io/IOException;->printStackTrace()V

    .line 825
    :cond_8cc
    const/16 v57, 0x1

    .line 826
    .local v57, isNetworkEnable:Z
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;
    :try_end_8d0
    .catchall {:try_start_8ab .. :try_end_8d0} :catchall_261

    if-eqz v4, :cond_b7c

    .line 829
    :try_start_8d2
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/ConnectivityManager;

    .line 831
    .local v38, cm:Landroid/net/ConnectivityManager;
    invoke-virtual/range {v38 .. v38}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v60

    .line 832
    .local v60, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v60, :cond_922

    .line 833
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendmessage() : ActiveNetworkInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v60 .. v60}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v60 .. v60}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", DetailedState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v60 .. v60}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_922
    if-eqz v60, :cond_b70

    invoke-virtual/range {v60 .. v60}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_b70

    invoke-virtual/range {v60 .. v60}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_932
    .catchall {:try_start_8d2 .. :try_end_932} :catchall_261
    .catch Ljava/lang/Exception; {:try_start_8d2 .. :try_end_932} :catch_b74

    if-ne v4, v5, :cond_b70

    .line 842
    const/16 v57, 0x1

    .line 854
    .end local v38           #cm:Landroid/net/ConnectivityManager;
    .end local v60           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_936
    if-nez v57, :cond_b85

    .line 855
    :try_start_938
    const-string v4, "[Eas]OutboxService"

    const-string v5, "sendmessage() : isNetworkEnable is false. stop sending. try later."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v4, 0x0

    const/16 v5, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 857
    throw v43
    :try_end_94a
    .catchall {:try_start_938 .. :try_end_94a} :catchall_261

    .line 756
    .end local v24           #subject:Ljava/lang/String;
    .end local v43           #e:Ljava/io/IOException;
    .end local v57           #isNetworkEnable:Z
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v15       #smartSend:Z
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v70       #refId:J
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    :cond_94a
    const/16 v4, 0x1c1

    move/from16 v0, v40

    if-ne v0, v4, :cond_a56

    .line 757
    const/4 v4, 0x1

    :try_start_951
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage(): Send Failed.. provision error. code : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 759
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 760
    .restart local v42       #cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    move-object/from16 v2, v42

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 763
    const/16 v73, 0x4

    .line 764
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_998
    .catchall {:try_start_951 .. :try_end_998} :catchall_d09
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_951 .. :try_end_998} :catch_5d4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_951 .. :try_end_998} :catch_7a8
    .catch Ljava/io/IOException; {:try_start_951 .. :try_end_998} :catch_8a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_951 .. :try_end_998} :catch_99a
    .catch Ljava/lang/Exception; {:try_start_951 .. :try_end_998} :catch_ac2

    goto/16 :goto_6d4

    .line 879
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v42           #cv:Landroid/content/ContentValues;
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    :catch_99a
    move-exception v64

    move-object/from16 v24, v31

    .line 881
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v70           #refId:J
    .restart local v24       #subject:Ljava/lang/String;
    .local v64, oe:Ljava/lang/OutOfMemoryError;
    :goto_99d
    :try_start_99d
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send Failed.. Exception caught in sendMessage() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v64 .. v64}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    if-eqz v64, :cond_9be

    .line 883
    invoke-virtual/range {v64 .. v64}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_9be
    .catchall {:try_start_99d .. :try_end_9be} :catchall_261

    .line 887
    :cond_9be
    :try_start_9be
    new-instance v4, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v5, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v0, p2

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendFailedOutOfMemoryError(JJ)V
    :try_end_9d0
    .catchall {:try_start_9be .. :try_end_9d0} :catchall_261
    .catch Landroid/os/RemoteException; {:try_start_9be .. :try_end_9d0} :catch_d86

    .line 893
    :goto_9d0
    :try_start_9d0
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 894
    .restart local v42       #cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 895
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    move-object/from16 v2, v42

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 897
    const/4 v4, 0x0

    const/high16 v5, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_9f6
    .catchall {:try_start_9d0 .. :try_end_9f6} :catchall_261

    .line 900
    const/16 v73, 0x0

    .line 924
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): finally. msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :try_start_a12
    new-instance v18, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    if-nez v74, :cond_c97

    const/16 v23, 0x1

    :goto_a27
    move-wide/from16 v21, p2

    invoke-virtual/range {v18 .. v24}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendResult(JJZLjava/lang/String;)V
    :try_end_a2c
    .catch Landroid/os/RemoteException; {:try_start_a12 .. :try_end_a2c} :catch_c91

    .line 934
    :goto_a2c
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a35

    .line 935
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->delete()Z

    .line 937
    :cond_a35
    if-eqz v7, :cond_a3a

    .line 939
    :try_start_a37
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3a
    .catch Ljava/lang/Exception; {:try_start_a37 .. :try_end_a3a} :catch_c9b

    .line 944
    :cond_a3a
    :goto_a3a
    if-eqz v53, :cond_a3f

    .line 948
    :try_start_a3c
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_a3f
    .catch Ljava/lang/Exception; {:try_start_a3c .. :try_end_a3f} :catch_ca1

    .line 953
    :cond_a3f
    :goto_a3f
    if-eqz v68, :cond_a44

    .line 956
    :try_start_a41
    invoke-virtual/range {v68 .. v68}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a44
    .catch Ljava/lang/Exception; {:try_start_a41 .. :try_end_a44} :catch_ca7

    .line 962
    :cond_a44
    :goto_a44
    if-eqz v46, :cond_a49

    .line 965
    :try_start_a46
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_a49
    .catch Ljava/lang/Exception; {:try_start_a46 .. :try_end_a49} :catch_cad

    .line 972
    :cond_a49
    :goto_a49
    if-eqz v32, :cond_835

    .line 974
    :try_start_a4b
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a4e
    .catch Ljava/lang/Exception; {:try_start_a4b .. :try_end_a4e} :catch_a50

    goto/16 :goto_835

    .line 975
    :catch_a50
    move-exception v43

    .line 976
    .local v43, e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_835

    .line 769
    .end local v24           #subject:Ljava/lang/String;
    .end local v42           #cv:Landroid/content/ContentValues;
    .end local v43           #e:Ljava/lang/Exception;
    .end local v64           #oe:Ljava/lang/OutOfMemoryError;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v15       #smartSend:Z
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v70       #refId:J
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    :cond_a56
    const/4 v4, 0x1

    :try_start_a57
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sendMessage(): Send Failed.. SEND_FAILED_SERVER_ERROR flag is setted"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 772
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->isIrmError(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a8e

    .line 773
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage(): IrmError founded. code = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 777
    :cond_a8e
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 778
    .restart local v42       #cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    move-object/from16 v2, v42

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 785
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_b6c

    .line 786
    const/16 v73, 0x16

    .line 790
    :goto_ab6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_ac0
    .catchall {:try_start_a57 .. :try_end_ac0} :catchall_d09
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_a57 .. :try_end_ac0} :catch_5d4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a57 .. :try_end_ac0} :catch_7a8
    .catch Ljava/io/IOException; {:try_start_a57 .. :try_end_ac0} :catch_8a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a57 .. :try_end_ac0} :catch_99a
    .catch Ljava/lang/Exception; {:try_start_a57 .. :try_end_ac0} :catch_ac2

    goto/16 :goto_6d4

    .line 905
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v42           #cv:Landroid/content/ContentValues;
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    :catch_ac2
    move-exception v43

    move-object/from16 v24, v31

    .line 906
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v70           #refId:J
    .restart local v24       #subject:Ljava/lang/String;
    .restart local v43       #e:Ljava/lang/Exception;
    :goto_ac5
    :try_start_ac5
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): Send Failed.. Exception caught in sendMessage()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    if-eqz v43, :cond_ae6

    .line 910
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    .line 913
    :cond_ae6
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 914
    .restart local v42       #cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    move-object/from16 v2, v42

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 917
    const/4 v4, 0x0

    const/16 v5, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_b0c
    .catchall {:try_start_ac5 .. :try_end_b0c} :catchall_261

    .line 920
    const/16 v73, 0x0

    .line 924
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): finally. msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :try_start_b28
    new-instance v18, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    if-nez v74, :cond_cb9

    const/16 v23, 0x1

    :goto_b3d
    move-wide/from16 v21, p2

    invoke-virtual/range {v18 .. v24}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendResult(JJZLjava/lang/String;)V
    :try_end_b42
    .catch Landroid/os/RemoteException; {:try_start_b28 .. :try_end_b42} :catch_cb3

    .line 934
    .end local v43           #e:Ljava/lang/Exception;
    :goto_b42
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b4b

    .line 935
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->delete()Z

    .line 937
    :cond_b4b
    if-eqz v7, :cond_b50

    .line 939
    :try_start_b4d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b50
    .catch Ljava/lang/Exception; {:try_start_b4d .. :try_end_b50} :catch_cbd

    .line 944
    :cond_b50
    :goto_b50
    if-eqz v53, :cond_b55

    .line 948
    :try_start_b52
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_b55
    .catch Ljava/lang/Exception; {:try_start_b52 .. :try_end_b55} :catch_cc3

    .line 953
    :cond_b55
    :goto_b55
    if-eqz v68, :cond_b5a

    .line 956
    :try_start_b57
    invoke-virtual/range {v68 .. v68}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b5a
    .catch Ljava/lang/Exception; {:try_start_b57 .. :try_end_b5a} :catch_cc9

    .line 962
    :cond_b5a
    :goto_b5a
    if-eqz v46, :cond_b5f

    .line 965
    :try_start_b5c
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_b5f
    .catch Ljava/lang/Exception; {:try_start_b5c .. :try_end_b5f} :catch_ccf

    .line 972
    :cond_b5f
    :goto_b5f
    if-eqz v32, :cond_835

    .line 974
    :try_start_b61
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b64
    .catch Ljava/lang/Exception; {:try_start_b61 .. :try_end_b64} :catch_b66

    goto/16 :goto_835

    .line 975
    :catch_b66
    move-exception v43

    .line 976
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_835

    .line 788
    .end local v24           #subject:Ljava/lang/String;
    .end local v43           #e:Ljava/lang/Exception;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v15       #smartSend:Z
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v70       #refId:J
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    :cond_b6c
    const/16 v73, 0x0

    goto/16 :goto_ab6

    .line 844
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v41           #cols:[Ljava/lang/String;
    .end local v42           #cv:Landroid/content/ContentValues;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v70           #refId:J
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .restart local v24       #subject:Ljava/lang/String;
    .restart local v38       #cm:Landroid/net/ConnectivityManager;
    .local v43, e:Ljava/io/IOException;
    .restart local v57       #isNetworkEnable:Z
    .restart local v60       #mNetworkInfo:Landroid/net/NetworkInfo;
    :cond_b70
    const/16 v57, 0x0

    goto/16 :goto_936

    .line 846
    .end local v38           #cm:Landroid/net/ConnectivityManager;
    .end local v60           #mNetworkInfo:Landroid/net/NetworkInfo;
    :catch_b74
    move-exception v45

    .line 847
    .local v45, ex:Ljava/lang/Exception;
    :try_start_b75
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Exception;->printStackTrace()V

    .line 848
    const/16 v57, 0x0

    .line 849
    goto/16 :goto_936

    .line 851
    .end local v45           #ex:Ljava/lang/Exception;
    :cond_b7c
    const-string v4, "[Eas]OutboxService"

    const-string v5, "sendmessage() : mContext is null. abnormal. cannot check network info."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_936

    .line 862
    :cond_b85
    const-string v4, "[Eas]OutboxService"

    const-string v5, "sendmessage() : isNetworkEnable is true. keep trying next message if exist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8c
    .catchall {:try_start_b75 .. :try_end_b8c} :catchall_261

    .line 866
    :try_start_b8c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/exchange/EasOutboxService;->shutdownConnectionManagerForSendMessage(J)V
    :try_end_b97
    .catchall {:try_start_b8c .. :try_end_b97} :catchall_261
    .catch Ljava/lang/Exception; {:try_start_b8c .. :try_end_b97} :catch_c1d

    .line 871
    :goto_b97
    :try_start_b97
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 872
    .restart local v42       #cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    const/4 v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    move-object/from16 v2, v42

    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 875
    const/16 v73, 0x0

    .line 876
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_bbf
    .catchall {:try_start_b97 .. :try_end_bbf} :catchall_261

    .line 924
    const-string v4, "[Eas]OutboxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage(): finally. msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :try_start_bd9
    new-instance v18, Lcom/android/emailcommon/service/AccountServiceProxy;

    sget-object v4, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    if-nez v74, :cond_c79

    const/16 v23, 0x1

    :goto_bee
    move-wide/from16 v21, p2

    invoke-virtual/range {v18 .. v24}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendResult(JJZLjava/lang/String;)V
    :try_end_bf3
    .catch Landroid/os/RemoteException; {:try_start_bd9 .. :try_end_bf3} :catch_c73

    .line 934
    .end local v43           #e:Ljava/io/IOException;
    :goto_bf3
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_bfc

    .line 935
    invoke-virtual/range {v76 .. v76}, Ljava/io/File;->delete()Z

    .line 937
    :cond_bfc
    if-eqz v7, :cond_c01

    .line 939
    :try_start_bfe
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c01
    .catch Ljava/lang/Exception; {:try_start_bfe .. :try_end_c01} :catch_c7d

    .line 944
    :cond_c01
    :goto_c01
    if-eqz v53, :cond_c06

    .line 948
    :try_start_c03
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_c06
    .catch Ljava/lang/Exception; {:try_start_c03 .. :try_end_c06} :catch_c82

    .line 953
    :cond_c06
    :goto_c06
    if-eqz v68, :cond_c0b

    .line 956
    :try_start_c08
    invoke-virtual/range {v68 .. v68}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c0b
    .catch Ljava/lang/Exception; {:try_start_c08 .. :try_end_c0b} :catch_c87

    .line 962
    :cond_c0b
    :goto_c0b
    if-eqz v46, :cond_c10

    .line 965
    :try_start_c0d
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_c10
    .catch Ljava/lang/Exception; {:try_start_c0d .. :try_end_c10} :catch_c8c

    .line 972
    :cond_c10
    :goto_c10
    if-eqz v32, :cond_835

    .line 974
    :try_start_c12
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c15
    .catch Ljava/lang/Exception; {:try_start_c12 .. :try_end_c15} :catch_c17

    goto/16 :goto_835

    .line 975
    :catch_c17
    move-exception v43

    .line 976
    .local v43, e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_835

    .line 867
    .end local v42           #cv:Landroid/content/ContentValues;
    .local v43, e:Ljava/io/IOException;
    :catch_c1d
    move-exception v45

    .line 868
    .restart local v45       #ex:Ljava/lang/Exception;
    :try_start_c1e
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c21
    .catchall {:try_start_c1e .. :try_end_c21} :catchall_261

    goto/16 :goto_b97

    .line 929
    .end local v43           #e:Ljava/io/IOException;
    .end local v45           #ex:Ljava/lang/Exception;
    .end local v57           #isNetworkEnable:Z
    :catch_c23
    move-exception v43

    .line 930
    .local v43, e:Landroid/os/RemoteException;
    invoke-virtual/range {v43 .. v43}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_296

    .line 927
    .end local v43           #e:Landroid/os/RemoteException;
    :cond_c29
    const/16 v23, 0x0

    goto/16 :goto_291

    .line 940
    :catch_c2d
    move-exception v43

    .line 941
    .local v43, e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2a4

    .line 949
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c33
    move-exception v43

    .line 950
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2a9

    .line 957
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c39
    move-exception v43

    .line 958
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2ae

    .line 966
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c3f
    move-exception v43

    .line 967
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2b3

    .line 975
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c45
    move-exception v43

    .line 976
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2b8

    .line 929
    .restart local v42       #cv:Landroid/content/ContentValues;
    .local v43, e:Lorg/apache/http/client/ClientProtocolException;
    :catch_c4b
    move-exception v43

    .line 930
    .local v43, e:Landroid/os/RemoteException;
    invoke-virtual/range {v43 .. v43}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_813

    .line 927
    .local v43, e:Lorg/apache/http/client/ClientProtocolException;
    :cond_c51
    const/16 v23, 0x0

    goto/16 :goto_80e

    .line 940
    .end local v43           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_c55
    move-exception v43

    .line 941
    .local v43, e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_821

    .line 949
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c5b
    move-exception v43

    .line 950
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_826

    .line 957
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c61
    move-exception v43

    .line 958
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_82b

    .line 966
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c67
    move-exception v43

    .line 967
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_830

    .line 975
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c6d
    move-exception v43

    .line 976
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_835

    .line 929
    .local v43, e:Ljava/io/IOException;
    .restart local v57       #isNetworkEnable:Z
    :catch_c73
    move-exception v43

    .line 930
    .local v43, e:Landroid/os/RemoteException;
    invoke-virtual/range {v43 .. v43}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_bf3

    .line 927
    .local v43, e:Ljava/io/IOException;
    :cond_c79
    const/16 v23, 0x0

    goto/16 :goto_bee

    .line 940
    .end local v43           #e:Ljava/io/IOException;
    :catch_c7d
    move-exception v43

    .line 941
    .local v43, e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c01

    .line 949
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c82
    move-exception v43

    .line 950
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c06

    .line 957
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c87
    move-exception v43

    .line 958
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c0b

    .line 966
    .end local v43           #e:Ljava/lang/Exception;
    :catch_c8c
    move-exception v43

    .line 967
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c10

    .line 929
    .end local v43           #e:Ljava/lang/Exception;
    .end local v57           #isNetworkEnable:Z
    .restart local v64       #oe:Ljava/lang/OutOfMemoryError;
    :catch_c91
    move-exception v43

    .line 930
    .local v43, e:Landroid/os/RemoteException;
    invoke-virtual/range {v43 .. v43}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_a2c

    .line 927
    .end local v43           #e:Landroid/os/RemoteException;
    :cond_c97
    const/16 v23, 0x0

    goto/16 :goto_a27

    .line 940
    :catch_c9b
    move-exception v43

    .line 941
    .local v43, e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a3a

    .line 949
    .end local v43           #e:Ljava/lang/Exception;
    :catch_ca1
    move-exception v43

    .line 950
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a3f

    .line 957
    .end local v43           #e:Ljava/lang/Exception;
    :catch_ca7
    move-exception v43

    .line 958
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a44

    .line 966
    .end local v43           #e:Ljava/lang/Exception;
    :catch_cad
    move-exception v43

    .line 967
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a49

    .line 929
    .end local v64           #oe:Ljava/lang/OutOfMemoryError;
    :catch_cb3
    move-exception v43

    .line 930
    .local v43, e:Landroid/os/RemoteException;
    invoke-virtual/range {v43 .. v43}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_b42

    .line 927
    .local v43, e:Ljava/lang/Exception;
    :cond_cb9
    const/16 v23, 0x0

    goto/16 :goto_b3d

    .line 940
    .end local v43           #e:Ljava/lang/Exception;
    :catch_cbd
    move-exception v43

    .line 941
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b50

    .line 949
    .end local v43           #e:Ljava/lang/Exception;
    :catch_cc3
    move-exception v43

    .line 950
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b55

    .line 957
    .end local v43           #e:Ljava/lang/Exception;
    :catch_cc9
    move-exception v43

    .line 958
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b5a

    .line 966
    .end local v43           #e:Ljava/lang/Exception;
    :catch_ccf
    move-exception v43

    .line 967
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b5f

    .line 929
    .end local v24           #subject:Ljava/lang/String;
    .end local v42           #cv:Landroid/content/ContentValues;
    .end local v43           #e:Ljava/lang/Exception;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v15       #smartSend:Z
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v70       #refId:J
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    :catch_cd5
    move-exception v43

    .line 930
    .local v43, e:Landroid/os/RemoteException;
    invoke-virtual/range {v43 .. v43}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_708

    .line 927
    .end local v43           #e:Landroid/os/RemoteException;
    :cond_cdb
    const/16 v30, 0x0

    goto/16 :goto_703

    .line 940
    :catch_cdf
    move-exception v43

    .line 941
    .local v43, e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_716

    .line 949
    .end local v43           #e:Ljava/lang/Exception;
    :catch_ce5
    move-exception v43

    .line 950
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_71b

    .line 957
    .end local v43           #e:Ljava/lang/Exception;
    :catch_ceb
    move-exception v43

    .line 958
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_720

    .line 966
    .end local v43           #e:Ljava/lang/Exception;
    :catch_cf1
    move-exception v43

    .line 967
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_725

    .line 975
    .end local v43           #e:Ljava/lang/Exception;
    :catch_cf7
    move-exception v43

    .line 976
    .restart local v43       #e:Ljava/lang/Exception;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_728

    .line 924
    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v41           #cols:[Ljava/lang/String;
    .end local v43           #e:Ljava/lang/Exception;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v70           #refId:J
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .restart local v24       #subject:Ljava/lang/String;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    :catchall_cfd
    move-exception v4

    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_262

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v70       #refId:J
    :catchall_d02
    move-exception v4

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_262

    .end local v24           #subject:Ljava/lang/String;
    .restart local v15       #smartSend:Z
    .restart local v31       #subject:Ljava/lang/String;
    :catchall_d09
    move-exception v4

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    goto/16 :goto_262

    .end local v24           #subject:Ljava/lang/String;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    :catchall_d0e
    move-exception v4

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_262

    .end local v24           #subject:Ljava/lang/String;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v51       #i:I
    .restart local v62       #mimeSize:J
    .restart local v65       #opLength:[B
    .restart local v66       #opbytes:I
    .local v69, randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :catchall_d15
    move-exception v4

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_262

    .end local v24           #subject:Ljava/lang/String;
    .end local v32           #bis:Ljava/io/BufferedInputStream;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v33       #bis:Ljava/io/BufferedInputStream;
    .restart local v36       #buf:[B
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v69       #randFile:Ljava/io/RandomAccessFile;
    :catchall_d1e
    move-exception v4

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v32, v33

    .end local v33           #bis:Ljava/io/BufferedInputStream;
    .restart local v32       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_262

    .end local v24           #subject:Ljava/lang/String;
    .end local v36           #buf:[B
    .end local v51           #i:I
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .local v69, randFile:Ljava/lang/Object;
    :catchall_d29
    move-exception v4

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_262

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    .restart local v79       #values:Landroid/content/ContentValues;
    :catchall_d32
    move-exception v4

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_262

    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v69           #randFile:Ljava/lang/Object;
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    :catchall_d3d
    move-exception v4

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_262

    .line 905
    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v70           #refId:J
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .end local v79           #values:Landroid/content/ContentValues;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    :catch_d44
    move-exception v43

    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_ac5

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v70       #refId:J
    :catch_d49
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_ac5

    .end local v24           #subject:Ljava/lang/String;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v15       #smartSend:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    :catch_d50
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_ac5

    .end local v24           #subject:Ljava/lang/String;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v51       #i:I
    .restart local v62       #mimeSize:J
    .restart local v65       #opLength:[B
    .restart local v66       #opbytes:I
    .local v69, randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :catch_d57
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_ac5

    .end local v24           #subject:Ljava/lang/String;
    .end local v32           #bis:Ljava/io/BufferedInputStream;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v33       #bis:Ljava/io/BufferedInputStream;
    .restart local v36       #buf:[B
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v69       #randFile:Ljava/io/RandomAccessFile;
    :catch_d60
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v32, v33

    .end local v33           #bis:Ljava/io/BufferedInputStream;
    .restart local v32       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_ac5

    .end local v24           #subject:Ljava/lang/String;
    .end local v36           #buf:[B
    .end local v51           #i:I
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .local v69, randFile:Ljava/lang/Object;
    :catch_d6b
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_ac5

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    .restart local v79       #values:Landroid/content/ContentValues;
    :catch_d74
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_ac5

    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v69           #randFile:Ljava/lang/Object;
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    :catch_d7f
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_ac5

    .line 889
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v70           #refId:J
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .end local v79           #values:Landroid/content/ContentValues;
    .restart local v64       #oe:Ljava/lang/OutOfMemoryError;
    :catch_d86
    move-exception v4

    goto/16 :goto_9d0

    .line 879
    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v64           #oe:Ljava/lang/OutOfMemoryError;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    :catch_d89
    move-exception v64

    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_99d

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v70       #refId:J
    :catch_d8e
    move-exception v64

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_99d

    .end local v24           #subject:Ljava/lang/String;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v15       #smartSend:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    :catch_d95
    move-exception v64

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_99d

    .end local v24           #subject:Ljava/lang/String;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v51       #i:I
    .restart local v62       #mimeSize:J
    .restart local v65       #opLength:[B
    .restart local v66       #opbytes:I
    .local v69, randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :catch_d9c
    move-exception v64

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_99d

    .end local v24           #subject:Ljava/lang/String;
    .end local v32           #bis:Ljava/io/BufferedInputStream;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v33       #bis:Ljava/io/BufferedInputStream;
    .restart local v36       #buf:[B
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v69       #randFile:Ljava/io/RandomAccessFile;
    :catch_da5
    move-exception v64

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v32, v33

    .end local v33           #bis:Ljava/io/BufferedInputStream;
    .restart local v32       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_99d

    .end local v24           #subject:Ljava/lang/String;
    .end local v36           #buf:[B
    .end local v51           #i:I
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .local v69, randFile:Ljava/lang/Object;
    :catch_db0
    move-exception v64

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_99d

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    .restart local v79       #values:Landroid/content/ContentValues;
    :catch_db9
    move-exception v64

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_99d

    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v69           #randFile:Ljava/lang/Object;
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    :catch_dc4
    move-exception v64

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_99d

    .line 818
    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v70           #refId:J
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .end local v79           #values:Landroid/content/ContentValues;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    :catch_dcb
    move-exception v43

    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_8ab

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v70       #refId:J
    :catch_dd0
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_8ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v15       #smartSend:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    :catch_dd7
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_8ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v51       #i:I
    .restart local v62       #mimeSize:J
    .restart local v65       #opLength:[B
    .restart local v66       #opbytes:I
    .local v69, randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :catch_dde
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_8ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v32           #bis:Ljava/io/BufferedInputStream;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v33       #bis:Ljava/io/BufferedInputStream;
    .restart local v36       #buf:[B
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v69       #randFile:Ljava/io/RandomAccessFile;
    :catch_de7
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v32, v33

    .end local v33           #bis:Ljava/io/BufferedInputStream;
    .restart local v32       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_8ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v36           #buf:[B
    .end local v51           #i:I
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .local v69, randFile:Ljava/lang/Object;
    :catch_df2
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_8ab

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    .restart local v79       #values:Landroid/content/ContentValues;
    :catch_dfb
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_8ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v69           #randFile:Ljava/lang/Object;
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    :catch_e06
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_8ab

    .line 801
    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v70           #refId:J
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .end local v79           #values:Landroid/content/ContentValues;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    :catch_e0d
    move-exception v43

    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_7ab

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v70       #refId:J
    :catch_e12
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_7ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v15       #smartSend:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    :catch_e19
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_7ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v51       #i:I
    .restart local v62       #mimeSize:J
    .restart local v65       #opLength:[B
    .restart local v66       #opbytes:I
    .local v69, randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :catch_e20
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_7ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v32           #bis:Ljava/io/BufferedInputStream;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v33       #bis:Ljava/io/BufferedInputStream;
    .restart local v36       #buf:[B
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v69       #randFile:Ljava/io/RandomAccessFile;
    :catch_e29
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v32, v33

    .end local v33           #bis:Ljava/io/BufferedInputStream;
    .restart local v32       #bis:Ljava/io/BufferedInputStream;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_7ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v36           #buf:[B
    .end local v51           #i:I
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .local v69, randFile:Ljava/lang/Object;
    :catch_e34
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_7ab

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    .restart local v79       #values:Landroid/content/ContentValues;
    :catch_e3d
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_7ab

    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v69           #randFile:Ljava/lang/Object;
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    :catch_e48
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_7ab

    .line 793
    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v41           #cols:[Ljava/lang/String;
    .end local v49           #flags:I
    .end local v50           #forward:Z
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v70           #refId:J
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .end local v79           #values:Landroid/content/ContentValues;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    :catch_e4f
    move-exception v43

    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_23f

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .restart local v12       #itemId:Ljava/lang/String;
    .restart local v13       #collectionId:Ljava/lang/String;
    .restart local v16       #reply:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v41       #cols:[Ljava/lang/String;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v49       #flags:I
    .restart local v50       #forward:Z
    .restart local v70       #refId:J
    :catch_e54
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_23f

    .end local v24           #subject:Ljava/lang/String;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v8       #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v15       #smartSend:Z
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v56       #isEas14:Z
    .restart local v67       #ps:Lcom/android/emailcommon/service/PolicySet;
    :catch_e5b
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_23f

    .end local v24           #subject:Ljava/lang/String;
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v51       #i:I
    .restart local v62       #mimeSize:J
    .restart local v65       #opLength:[B
    .restart local v66       #opbytes:I
    .local v69, randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :catch_e62
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    move-object/from16 v68, v69

    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_23f

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v24           #subject:Ljava/lang/String;
    .end local v51           #i:I
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v37       #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v39       #cmd:Ljava/lang/String;
    .restart local v40       #code:I
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    .restart local v52       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .local v69, randFile:Ljava/lang/Object;
    .restart local v72       #resp:Lorg/apache/http/HttpResponse;
    .restart local v79       #values:Landroid/content/ContentValues;
    :catch_e6b
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    move-object/from16 v7, v48

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_23f

    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v69           #randFile:Ljava/lang/Object;
    .restart local v17       #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    :catch_e76
    move-exception v43

    move-object/from16 v24, v31

    .end local v31           #subject:Ljava/lang/String;
    .restart local v24       #subject:Ljava/lang/String;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_23f

    .end local v24           #subject:Ljava/lang/String;
    .end local v53           #inputStream:Ljava/io/FileInputStream;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .restart local v31       #subject:Ljava/lang/String;
    .restart local v54       #inputStream:Ljava/io/FileInputStream;
    .restart local v69       #randFile:Ljava/lang/Object;
    :cond_e7d
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_58a

    .end local v17           #cmAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    :cond_e81
    move-object/from16 v48, v7

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_458

    .end local v48           #fileStream:Ljava/io/FileOutputStream;
    .end local v79           #values:Landroid/content/ContentValues;
    .restart local v7       #fileStream:Ljava/io/FileOutputStream;
    :cond_e85
    move-object/from16 v68, v69

    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    move-object/from16 v53, v54

    .end local v54           #inputStream:Ljava/io/FileInputStream;
    .restart local v53       #inputStream:Ljava/io/FileInputStream;
    goto/16 :goto_6a2

    .end local v37           #checkmessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v39           #cmd:Ljava/lang/String;
    .end local v40           #code:I
    .end local v46           #file:Ljava/io/FileInputStream;
    .end local v52           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v68           #randFile:Ljava/io/RandomAccessFile;
    .end local v72           #resp:Lorg/apache/http/HttpResponse;
    .restart local v47       #file:Ljava/io/FileInputStream;
    .restart local v51       #i:I
    .restart local v62       #mimeSize:J
    .restart local v65       #opLength:[B
    .restart local v66       #opbytes:I
    .local v69, randFile:Ljava/io/RandomAccessFile;
    .restart local v75       #serializer:Lcom/android/exchange/adapter/Serializer;
    .restart local v80       #wbxmlData:[B
    :cond_e8b
    move-object/from16 v46, v47

    .end local v47           #file:Ljava/io/FileInputStream;
    .restart local v46       #file:Ljava/io/FileInputStream;
    goto/16 :goto_2ca

    .end local v51           #i:I
    .end local v62           #mimeSize:J
    .end local v65           #opLength:[B
    .end local v66           #opbytes:I
    .end local v69           #randFile:Ljava/io/RandomAccessFile;
    .end local v75           #serializer:Lcom/android/exchange/adapter/Serializer;
    .end local v80           #wbxmlData:[B
    .restart local v68       #randFile:Ljava/io/RandomAccessFile;
    :cond_e8f
    move-object/from16 v69, v68

    .local v69, randFile:Ljava/lang/Object;
    goto/16 :goto_309

    .end local v7           #fileStream:Ljava/io/FileOutputStream;
    .end local v8           #rfAdapter:Lcom/android/exchange/adapter/ComposeMailAdapter;
    .end local v12           #itemId:Ljava/lang/String;
    .end local v13           #collectionId:Ljava/lang/String;
    .end local v15           #smartSend:Z
    .end local v16           #reply:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v50           #forward:Z
    .end local v56           #isEas14:Z
    .end local v67           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v69           #randFile:Ljava/lang/Object;
    .end local v70           #refId:J
    .restart local v24       #subject:Ljava/lang/String;
    .restart local v48       #fileStream:Ljava/io/FileOutputStream;
    :cond_e93
    move-object/from16 v31, v24

    .end local v24           #subject:Ljava/lang/String;
    .restart local v31       #subject:Ljava/lang/String;
    goto/16 :goto_77
.end method

.method public sendMessageCancel([JJJ)V
    .registers 9
    .parameter "messageIds"
    .parameter "outboxId"
    .parameter "accountId"

    .prologue
    .line 291
    const-string v0, "[Eas]OutboxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessageCancel : start. accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz p1, :cond_1d

    array-length v0, p1

    if-gtz v0, :cond_25

    .line 294
    :cond_1d
    const-string v0, "[Eas]OutboxService"

    const-string v1, "sendMessageCancel : messageIds == null || messageIds.length <= 0 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_24
    return-void

    .line 298
    :cond_25
    invoke-virtual/range {p0 .. p5}, Lcom/android/exchange/EasOutboxService;->abortPendingPost([JJJ)V

    goto :goto_24
.end method

.method sendSMS(J)I
    .registers 26
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v19, "[Eas]OutboxService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sendSMS(): start sendSMS. msgid = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v16, 0x0

    .line 172
    .local v16, result:I
    sget-object v19, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    .line 173
    .local v14, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v14, :cond_248

    .line 174
    sget-object v19, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-wide v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    .line 175
    .local v13, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v13, :cond_23f

    .line 176
    new-instance v17, Lcom/android/exchange/adapter/Serializer;

    invoke-direct/range {v17 .. v17}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 178
    .local v17, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v19, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x1c

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0xf

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0xb

    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x12

    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x1e

    const-string v21, "0"

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x16

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0x9

    invoke-virtual/range {v19 .. v20}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    const/16 v20, 0xd

    iget-object v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 186
    :try_start_9a
    const-string v19, "Sync"

    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 188
    .local v15, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 189
    .local v6, code:I
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v6, v0, :cond_11e

    .line 190
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 191
    .local v11, is:Ljava/io/InputStream;
    new-instance v5, Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 194
    .local v5, adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 195
    .local v8, e:Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v10

    .line 196
    .local v10, header:Lorg/apache/http/Header;
    if-eqz v10, :cond_e5

    .line 197
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 198
    .local v18, value:Ljava/lang/String;
    if-eqz v18, :cond_e5

    const-string v19, "gzip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e5

    .line 199
    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e4
    .catchall {:try_start_9a .. :try_end_e4} :catchall_18a
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_e4} :catch_157
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_e4} :catch_1bf

    .end local v11           #is:Ljava/io/InputStream;
    .local v12, is:Ljava/io/InputStream;
    move-object v11, v12

    .line 205
    .end local v12           #is:Ljava/io/InputStream;
    .end local v18           #value:Ljava/lang/String;
    .restart local v11       #is:Ljava/io/InputStream;
    :cond_e5
    :try_start_e5
    invoke-virtual {v5, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->parse(Ljava/io/InputStream;)Z
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_18a
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_152
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_157

    .line 209
    :goto_e8
    :try_start_e8
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/android/exchange/EasOutboxService;->relaySms(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 211
    const-string v19, "[Eas]OutboxService"

    const-string v20, "sendSMS() : Deleting message..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    const/16 v16, 0x0

    .line 235
    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 238
    .end local v5           #adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v10           #header:Lorg/apache/http/Header;
    .end local v11           #is:Ljava/io/InputStream;
    :cond_11e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/exchange/EasOutboxService;->isProvisionError(I)Z

    move-result v19

    if-eqz v19, :cond_1a8

    .line 239
    const/16 v16, 0x4

    .line 240
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v19

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_135
    .catchall {:try_start_e8 .. :try_end_135} :catchall_18a
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_135} :catch_157
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_135} :catch_1bf

    .line 271
    :goto_135
    const-string v19, "[Eas]OutboxService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sendSMS(): end sendSMS. msgId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .end local v6           #code:I
    .end local v15           #resp:Lorg/apache/http/HttpResponse;
    :goto_14e
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v13           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v17           #s:Lcom/android/exchange/adapter/Serializer;
    :goto_151
    return v16

    .line 206
    .restart local v5       #adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .restart local v6       #code:I
    .restart local v8       #e:Lorg/apache/http/HttpEntity;
    .restart local v10       #header:Lorg/apache/http/Header;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v13       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v15       #resp:Lorg/apache/http/HttpResponse;
    .restart local v17       #s:Lcom/android/exchange/adapter/Serializer;
    :catch_152
    move-exception v9

    .line 207
    .local v9, ex:Ljava/lang/Exception;
    :try_start_153
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_156
    .catchall {:try_start_153 .. :try_end_156} :catchall_18a
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_157
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_156} :catch_1bf

    goto :goto_e8

    .line 250
    .end local v5           #adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    .end local v6           #code:I
    .end local v8           #e:Lorg/apache/http/HttpEntity;
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v10           #header:Lorg/apache/http/Header;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v15           #resp:Lorg/apache/http/HttpResponse;
    :catch_157
    move-exception v8

    .line 251
    .local v8, e:Ljava/io/IOException;
    :try_start_158
    const-string v19, "[Eas]OutboxService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sendSMS(): SMS Sending to: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " failed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v19, 0x0

    const/16 v20, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 253
    throw v8
    :try_end_18a
    .catchall {:try_start_158 .. :try_end_18a} :catchall_18a

    .line 271
    .end local v8           #e:Ljava/io/IOException;
    :catchall_18a
    move-exception v19

    const-string v20, "[Eas]OutboxService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sendSMS(): end sendSMS. msgId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v19

    .line 241
    .restart local v6       #code:I
    .restart local v15       #resp:Lorg/apache/http/HttpResponse;
    :cond_1a8
    const/16 v19, 0x191

    move/from16 v0, v19

    if-ne v6, v0, :cond_22e

    .line 242
    const/16 v16, 0x2

    .line 243
    const/16 v19, 0x0

    :try_start_1b2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v19

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_1bd
    .catchall {:try_start_1b2 .. :try_end_1bd} :catchall_18a
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1bd} :catch_157
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1bd} :catch_1bf

    goto/16 :goto_135

    .line 254
    .end local v6           #code:I
    .end local v15           #resp:Lorg/apache/http/HttpResponse;
    :catch_1bf
    move-exception v8

    .line 255
    .local v8, e:Ljava/lang/Exception;
    if-eqz v8, :cond_1e1

    .line 256
    :try_start_1c2
    const-string v19, "[Eas]OutboxService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sendSMS(): SMS Send Failed.. Caught Exception: Message:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    :cond_1e1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v7, cv:Landroid/content/ContentValues;
    const-string v19, "syncServerId"

    const/16 v20, -0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    sget-object v19, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v20, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 265
    const/16 v19, 0x0

    const/16 v20, 0x20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_211
    .catchall {:try_start_1c2 .. :try_end_211} :catchall_18a

    .line 269
    const/16 v16, 0x0

    .line 271
    const-string v19, "[Eas]OutboxService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sendSMS(): end sendSMS. msgId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_14e

    .line 247
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #code:I
    .restart local v15       #resp:Lorg/apache/http/HttpResponse;
    :cond_22e
    const/16 v16, 0x0

    .line 248
    const/16 v19, 0x0

    :try_start_232
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v19

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_23d
    .catchall {:try_start_232 .. :try_end_23d} :catchall_18a
    .catch Ljava/io/IOException; {:try_start_232 .. :try_end_23d} :catch_157
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_23d} :catch_1bf

    goto/16 :goto_135

    .line 274
    .end local v6           #code:I
    .end local v15           #resp:Lorg/apache/http/HttpResponse;
    .end local v17           #s:Lcom/android/exchange/adapter/Serializer;
    :cond_23f
    const-string v19, "[Eas]OutboxService"

    const-string v20, "sendSMS(): fail to sendSMS. mailbox is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_151

    .line 277
    .end local v13           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_248
    const-string v19, "[Eas]OutboxService"

    const-string v20, "sendSMS(): fail to sendSMS. msg is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_151
.end method
