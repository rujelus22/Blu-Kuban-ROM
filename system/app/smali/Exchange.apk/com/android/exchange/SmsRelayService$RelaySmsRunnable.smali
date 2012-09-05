.class Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;
.super Ljava/lang/Object;
.source "SmsRelayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SmsRelayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RelaySmsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/SmsRelayService;


# direct methods
.method private constructor <init>(Lcom/android/exchange/SmsRelayService;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/SmsRelayService;Lcom/android/exchange/SmsRelayService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;-><init>(Lcom/android/exchange/SmsRelayService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #getter for: Lcom/android/exchange/SmsRelayService;->mSyncObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$100(Lcom/android/exchange/SmsRelayService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 114
    const/4 v15, 0x0

    .line 115
    .local v15, ownNumber:Ljava/lang/String;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #getter for: Lcom/android/exchange/SmsRelayService;->mTm:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$200(Lcom/android/exchange/SmsRelayService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #getter for: Lcom/android/exchange/SmsRelayService;->mTm:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$200(Lcom/android/exchange/SmsRelayService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v15

    .line 119
    :cond_20
    :goto_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #getter for: Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$300(Lcom/android/exchange/SmsRelayService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_271

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #getter for: Lcom/android/exchange/SmsRelayService;->mStop:Z
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$400(Lcom/android/exchange/SmsRelayService;)Z

    move-result v1

    if-nez v1, :cond_271

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #getter for: Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$300(Lcom/android/exchange/SmsRelayService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/exchange/SmsRelayService$SmsPayload;

    .line 121
    .local v16, payload:Lcom/android/exchange/SmsRelayService$SmsPayload;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #getter for: Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$300(Lcom/android/exchange/SmsRelayService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #getter for: Lcom/android/exchange/SmsRelayService;->mStop:Z
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$400(Lcom/android/exchange/SmsRelayService;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-virtual {v1}, Lcom/android/exchange/SmsRelayService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "emailAddress"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "flags"

    aput-object v5, v3, v4

    const-string v4, "protocolVersion NOT IN (\'2.5\',\'12.0\',\'12.1\')"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_80
    .catchall {:try_start_a .. :try_end_80} :catchall_23c

    move-result-object v8

    .line 141
    .local v8, cursorAccount:Landroid/database/Cursor;
    if-eqz v8, :cond_20

    .line 143
    :try_start_83
    const-string v1, "SmsRelayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accounts found = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_237

    .line 148
    :cond_a5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of Flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_231

    .line 151
    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 152
    .local v14, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 153
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$SmsPayload;->mMessages:[Landroid/telephony/SmsMessage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 155
    if-eqz v15, :cond_23f

    move-object v1, v15

    :goto_e8
    iput-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 157
    if-eqz v15, :cond_246

    move-object v1, v15

    :goto_ed
    iput-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 159
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$SmsPayload;->mMessages:[Landroid/telephony/SmsMessage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 160
    iget v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 163
    const/4 v1, 0x1

    iput v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 164
    const/4 v1, 0x0

    iput v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 166
    const/4 v1, 0x1

    iput v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    .line 170
    const/4 v1, 0x1

    iput v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageDirty:I

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 173
    const-string v1, "eas"

    iput-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-virtual {v1}, Lcom/android/exchange/SmsRelayService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type=0 AND accountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 182
    .local v9, cursorMailbox:Landroid/database/Cursor;
    if-eqz v9, :cond_231

    .line 183
    const-string v1, "SmsRelayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mailbox found = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_22e

    .line 186
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 187
    .local v13, mailboxId:I
    const-string v1, "SmsRelayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxId found = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    int-to-long v1, v13

    iput-wide v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-virtual {v14, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v17

    .line 191
    .local v17, url:Landroid/net/Uri;
    if-eqz v17, :cond_24d

    .line 192
    const-string v1, "SmsRelayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmS Successfully stored@ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    invoke-virtual {v1}, Lcom/android/exchange/SmsRelayService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 197
    .local v12, mContext:Landroid/content/Context;
    iget-wide v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v12, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v11

    .line 198
    .local v11, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v7, "accountKey=? and type=?"

    .line 200
    .local v7, WHERE_ACCOUNT_ID_AND_MAILBOXTYPE:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "syncInterval"

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v10, v7, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    .end local v7           #WHERE_ACCOUNT_ID_AND_MAILBOXTYPE:Ljava/lang/String;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v12           #mContext:Landroid/content/Context;
    .end local v13           #mailboxId:I
    .end local v17           #url:Landroid/net/Uri;
    :cond_22e
    :goto_22e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 215
    .end local v9           #cursorMailbox:Landroid/database/Cursor;
    .end local v14           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_231
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_234
    .catchall {:try_start_83 .. :try_end_234} :catchall_26c
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_234} :catch_266

    move-result v1

    if-nez v1, :cond_a5

    .line 221
    :cond_237
    :try_start_237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20

    .line 229
    .end local v8           #cursorAccount:Landroid/database/Cursor;
    .end local v16           #payload:Lcom/android/exchange/SmsRelayService$SmsPayload;
    :catchall_23c
    move-exception v1

    monitor-exit v18
    :try_end_23e
    .catchall {:try_start_237 .. :try_end_23e} :catchall_23c

    throw v1

    .line 155
    .restart local v8       #cursorAccount:Landroid/database/Cursor;
    .restart local v14       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v16       #payload:Lcom/android/exchange/SmsRelayService$SmsPayload;
    :cond_23f
    const/4 v1, 0x1

    :try_start_240
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e8

    .line 157
    :cond_246
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ed

    .line 207
    .restart local v9       #cursorMailbox:Landroid/database/Cursor;
    .restart local v13       #mailboxId:I
    .restart local v17       #url:Landroid/net/Uri;
    :cond_24d
    const-string v1, "SmsRelayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save SmS in mailBox = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_265
    .catchall {:try_start_240 .. :try_end_265} :catchall_26c
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_265} :catch_266

    goto :goto_22e

    .line 218
    .end local v9           #cursorMailbox:Landroid/database/Cursor;
    .end local v13           #mailboxId:I
    .end local v14           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v17           #url:Landroid/net/Uri;
    :catch_266
    move-exception v1

    .line 221
    :try_start_267
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_20

    :catchall_26c
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 227
    .end local v8           #cursorAccount:Landroid/database/Cursor;
    .end local v16           #payload:Lcom/android/exchange/SmsRelayService$SmsPayload;
    :cond_271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;->this$0:Lcom/android/exchange/SmsRelayService;

    #calls: Lcom/android/exchange/SmsRelayService;->onDone()V
    invoke-static {v1}, Lcom/android/exchange/SmsRelayService;->access$500(Lcom/android/exchange/SmsRelayService;)V

    .line 229
    monitor-exit v18
    :try_end_279
    .catchall {:try_start_267 .. :try_end_279} :catchall_23c

    .line 230
    return-void
.end method
