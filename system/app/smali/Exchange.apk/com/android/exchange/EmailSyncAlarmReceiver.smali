.class public Lcom/android/exchange/EmailSyncAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailSyncAlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;
    }
.end annotation


# instance fields
.field final MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/EmailSyncAlarmReceiver;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/exchange/EmailSyncAlarmReceiver;->handleReceive(Landroid/content/Context;)V

    return-void
.end method

.method private handleReceive(Landroid/content/Context;)V
    .registers 27
    .parameter "context"

    .prologue
    .line 89
    const-string v2, "TAG"

    const-string v3, "EmailSyncAlarmReceiver: handleReceive() called "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v23, mailboxesToNotify:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 95
    .local v1, cr:Landroid/content/ContentResolver;
    const/16 v24, 0x0

    .line 99
    .local v24, messageCount:I
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getEasAccountSelector()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, selector:Ljava/lang/String;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 107
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_56

    .line 108
    :cond_24
    :goto_24
    :try_start_24
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 109
    add-int/lit8 v24, v24, 0x1

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 111
    .local v7, mailboxId:J
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 112
    .local v9, messageId:J
    new-instance v5, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;-><init>(Lcom/android/exchange/EmailSyncAlarmReceiver;JJ)V

    .line 113
    .local v5, notifyItem:Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 114
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_4f

    goto :goto_24

    .line 119
    .end local v5           #notifyItem:Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;
    .end local v7           #mailboxId:J
    .end local v9           #messageId:J
    :catchall_4f
    move-exception v2

    if-eqz v17, :cond_55

    .line 120
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_55
    throw v2

    :cond_56
    if-eqz v17, :cond_5b

    .line 120
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_5b
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/EmailSyncAlarmReceiver;->MAILBOX_DATA_PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 128
    if-eqz v17, :cond_9e

    .line 129
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 130
    add-int/lit8 v24, v24, 0x1

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 132
    .restart local v7       #mailboxId:J
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 133
    .restart local v9       #messageId:J
    new-instance v5, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;-><init>(Lcom/android/exchange/EmailSyncAlarmReceiver;JJ)V

    .line 134
    .restart local v5       #notifyItem:Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 135
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catchall {:try_start_6c .. :try_end_96} :catchall_97

    goto :goto_6c

    .line 140
    .end local v5           #notifyItem:Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;
    .end local v7           #mailboxId:J
    .end local v9           #messageId:J
    :catchall_97
    move-exception v2

    if-eqz v17, :cond_9d

    .line 141
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_9d
    throw v2

    :cond_9e
    if-eqz v17, :cond_a3

    .line 141
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_a3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_a7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_131

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;

    .line 146
    .local v21, item:Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;
    move-object/from16 v0, v21

    iget-wide v7, v0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->mailboxId:J

    .line 147
    .restart local v7       #mailboxId:J
    move-object/from16 v0, v21

    iget-wide v9, v0, Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;->messageId:J

    .line 149
    .restart local v9       #messageId:J
    const/16 v22, 0x0

    .line 151
    .local v22, mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-ltz v2, :cond_c9

    .line 152
    :try_start_c3
    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c8} :catch_121

    move-result-object v22

    .line 157
    :cond_c9
    :goto_c9
    if-eqz v22, :cond_12b

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d9

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12b

    .line 159
    :cond_d9
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmailSyncAlarmReceiver: remove trying to upsync for draft box or Outbox.. : mMailbox.mType = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_f5
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/EmailSyncAlarmReceiver;->uri:Landroid/net/Uri;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EmailSyncAlarmReceiver;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_108} :catch_126

    .line 171
    :goto_108
    :try_start_108
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exchange/EmailSyncAlarmReceiver;->uri:Landroid/net/Uri;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/EmailSyncAlarmReceiver;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_11b} :catch_11c

    goto :goto_a7

    .line 173
    :catch_11c
    move-exception v18

    .line 174
    .local v18, e:Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a7

    .line 154
    .end local v18           #e:Ljava/lang/Exception;
    :catch_121
    move-exception v19

    .line 155
    .local v19, ex:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c9

    .line 166
    .end local v19           #ex:Ljava/lang/Exception;
    :catch_126
    move-exception v18

    .line 167
    .restart local v18       #e:Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_108

    .line 178
    .end local v18           #e:Ljava/lang/Exception;
    :cond_12b
    const/4 v2, 0x0

    invoke-static {v7, v8, v2}, Lcom/android/exchange/ExchangeService;->serviceRequest(JI)V

    goto/16 :goto_a7

    .line 181
    .end local v7           #mailboxId:J
    .end local v9           #messageId:J
    .end local v21           #item:Lcom/android/exchange/EmailSyncAlarmReceiver$MessageInfoToNotifyListItem;
    .end local v22           #mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_131
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/EmailSyncAlarmReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/exchange/EmailSyncAlarmReceiver$1;-><init>(Lcom/android/exchange/EmailSyncAlarmReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    return-void
.end method
