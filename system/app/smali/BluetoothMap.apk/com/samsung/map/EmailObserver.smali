.class public Lcom/samsung/map/EmailObserver;
.super Landroid/database/ContentObserver;
.source "EmailObserver.java"


# static fields
.field private static lock:Z

.field private static sync:Ljava/lang/Object;


# instance fields
.field private content:Landroid/content/ContentResolver;

.field private msgBuf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/map/EmailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/samsung/map/MessageNotificationService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/map/EmailObserver;->lock:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/map/EmailObserver;->sync:Ljava/lang/Object;

    return-void
.end method

.method private getAttachmentInfo(I)Landroid/database/Cursor;
    .registers 11
    .parameter "id"

    .prologue
    .line 140
    const/4 v6, 0x0

    .line 141
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.email.provider/attachment/message/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, uriStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 144
    .local v1, uri:Landroid/net/Uri;
    :try_start_18
    iget-object v0, p0, Lcom/samsung/map/EmailObserver;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_23

    move-result-object v6

    .line 156
    :cond_22
    :goto_22
    return-object v6

    .line 145
    :catch_23
    move-exception v7

    .line 146
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "EmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttachmentInfo Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eqz v6, :cond_22

    .line 149
    :try_start_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_47

    .line 152
    const/4 v6, 0x0

    .line 153
    goto :goto_22

    .line 150
    :catch_47
    move-exception v0

    .line 152
    const/4 v6, 0x0

    .line 153
    goto :goto_22

    .line 152
    :catchall_4a
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method private getInfo()Landroid/database/Cursor;
    .registers 10

    .prologue
    .line 119
    const/4 v6, 0x0

    .line 120
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, "content://com.android.email.provider/message/"

    .line 121
    .local v8, uriStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, uri:Landroid/net/Uri;
    :try_start_7
    iget-object v0, p0, Lcom/samsung/map/EmailObserver;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v6

    .line 135
    :cond_11
    :goto_11
    return-object v6

    .line 124
    :catch_12
    move-exception v7

    .line 125
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "EmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfo  Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v6, :cond_11

    .line 128
    :try_start_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_36

    .line 131
    const/4 v6, 0x0

    .line 132
    goto :goto_11

    .line 129
    :catch_36
    move-exception v0

    .line 131
    const/4 v6, 0x0

    .line 132
    goto :goto_11

    .line 131
    :catchall_39
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method private getMailboxInfo(I)Landroid/database/Cursor;
    .registers 11
    .parameter "id"

    .prologue
    .line 161
    const/4 v6, 0x0

    .line 162
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, "content://com.android.email.provider/mailbox/"

    .line 164
    .local v8, uriStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 167
    .local v1, uri:Landroid/net/Uri;
    :try_start_7
    iget-object v0, p0, Lcom/samsung/map/EmailObserver;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_24

    move-result-object v6

    .line 179
    :cond_23
    :goto_23
    return-object v6

    .line 168
    :catch_24
    move-exception v7

    .line 169
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "EmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMailboxInfo Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v6, :cond_23

    .line 172
    :try_start_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_48

    .line 175
    const/4 v6, 0x0

    .line 176
    goto :goto_23

    .line 173
    :catch_48
    move-exception v0

    .line 175
    const/4 v6, 0x0

    .line 176
    goto :goto_23

    .line 175
    :catchall_4b
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method static lockObserver()V
    .registers 2

    .prologue
    .line 107
    sget-object v1, Lcom/samsung/map/EmailObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/samsung/map/EmailObserver;->lock:Z

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private typeToFolder(I)Ljava/lang/String;
    .registers 5
    .parameter "type"

    .prologue
    .line 183
    new-instance v0, Ljava/lang/String;

    const-string v1, "TELECOM/MSG/"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, folder:Ljava/lang/String;
    packed-switch p1, :pswitch_data_6e

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_1d
    return-object v0

    .line 186
    :pswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DRAFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    goto :goto_1d

    .line 193
    :pswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    goto :goto_1d

    .line 197
    :pswitch_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DELETED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    goto :goto_1d

    .line 200
    :pswitch_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OUTBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 184
    :pswitch_data_6e
    .packed-switch 0x3
        :pswitch_1e
        :pswitch_5a
        :pswitch_32
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method static unlockObserver()V
    .registers 2

    .prologue
    .line 113
    sget-object v1, Lcom/samsung/map/EmailObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/samsung/map/EmailObserver;->lock:Z

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method


# virtual methods
.method baseToEmail(I)I
    .registers 3
    .parameter "msgId"

    .prologue
    .line 218
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public checkMessages()V
    .registers 27

    .prologue
    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/samsung/map/EmailObserver;->getInfo()Landroid/database/Cursor;

    move-result-object v12

    .line 223
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 225
    .local v18, messages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v12, :cond_1de

    .line 226
    :cond_b
    :goto_b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1db

    .line 227
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 228
    .local v16, id:I
    const-string v2, "mailboxKey"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 229
    .local v11, box:I
    const-string v2, "accountKey"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 230
    .local v8, account:I
    const-string v2, "flagLoaded"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 231
    .local v14, flag:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/map/EmailObserver;->getMailboxInfo(I)Landroid/database/Cursor;

    move-result-object v17

    .line 235
    .local v17, mailboxInfo:Landroid/database/Cursor;
    if-eqz v17, :cond_ee

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 237
    const-string v2, "type"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 239
    .local v23, type:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/map/EmailInfo;

    iget v0, v2, Lcom/samsung/map/EmailInfo;->box:I

    move/from16 v20, v0

    .line 242
    .local v20, oldbox:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailObserver;->getMailboxInfo(I)Landroid/database/Cursor;

    move-result-object v19

    .line 244
    .local v19, oldMailboxInfo:Landroid/database/Cursor;
    const/16 v21, -0x1

    .line 245
    .local v21, oldtype:I
    if-eqz v19, :cond_9e

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 246
    const-string v2, "type"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 248
    :cond_9e
    if-eqz v19, :cond_a3

    .line 249
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_a3
    move/from16 v0, v20

    if-eq v0, v11, :cond_ee

    .line 253
    packed-switch v23, :pswitch_data_2ae

    .line 273
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_de

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/EmailObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/16 v3, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailObserver;->baseToEmail(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    .line 281
    :cond_de
    :goto_de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/map/EmailInfo;

    invoke-direct {v4, v11, v14}, Lcom/samsung/map/EmailInfo;-><init>(II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v19           #oldMailboxInfo:Landroid/database/Cursor;
    .end local v20           #oldbox:I
    .end local v21           #oldtype:I
    .end local v23           #type:I
    :cond_ee
    :goto_ee
    if-eqz v17, :cond_b

    .line 317
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    .line 255
    .restart local v19       #oldMailboxInfo:Landroid/database/Cursor;
    .restart local v20       #oldbox:I
    .restart local v21       #oldtype:I
    .restart local v23       #type:I
    :pswitch_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/EmailObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailObserver;->baseToEmail(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    goto :goto_de

    .line 262
    :pswitch_11e
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailObserver;->baseToEmail(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/map/EmailMessageFolder;->checkHandlers(Ljava/lang/Integer;)Z

    move-result v13

    .line 264
    .local v13, exist:Z
    if-nez v13, :cond_de

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/EmailObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/16 v3, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailObserver;->baseToEmail(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    goto :goto_de

    .line 284
    .end local v13           #exist:Z
    .end local v19           #oldMailboxInfo:Landroid/database/Cursor;
    .end local v20           #oldbox:I
    .end local v21           #oldtype:I
    :cond_15a
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailObserver;->baseToEmail(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/map/EmailMessageFolder;->checkHandlers(Ljava/lang/Integer;)Z

    move-result v13

    .line 286
    .restart local v13       #exist:Z
    if-nez v13, :cond_1c1

    .line 287
    const/4 v2, 0x3

    if-eq v14, v2, :cond_1c1

    .line 288
    if-eqz v23, :cond_176

    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_1c1

    .line 290
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/EmailObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailObserver;->baseToEmail(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    .line 296
    if-eqz v14, :cond_1a3

    const/4 v2, 0x2

    if-ne v14, v2, :cond_1c1

    .line 299
    :cond_1a3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailObserver;->getAttachmentInfo(I)Landroid/database/Cursor;

    move-result-object v9

    .line 301
    .local v9, attachmentcursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1d3

    .line 302
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 303
    .local v10, attachmentid:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v10}, Lcom/samsung/map/EmailObserver;->forceAttachmentDownload(III)V

    .line 304
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 312
    .end local v9           #attachmentcursor:Landroid/database/Cursor;
    .end local v10           #attachmentid:I
    :cond_1c1
    :goto_1c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/samsung/map/EmailInfo;

    invoke-direct {v4, v11, v14}, Lcom/samsung/map/EmailInfo;-><init>(II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ee

    .line 306
    .restart local v9       #attachmentcursor:Landroid/database/Cursor;
    :cond_1d3
    const-string v2, "EmailObserver"

    const-string v3, "attachment cursor null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c1

    .line 320
    .end local v8           #account:I
    .end local v9           #attachmentcursor:Landroid/database/Cursor;
    .end local v11           #box:I
    .end local v13           #exist:Z
    .end local v14           #flag:I
    .end local v16           #id:I
    .end local v17           #mailboxInfo:Landroid/database/Cursor;
    .end local v23           #type:I
    :cond_1db
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_1de
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 325
    .local v22, tempset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailObserver;->msgBuf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 326
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 328
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_1fb
    :goto_1fb
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2ad

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 329
    .restart local v16       #id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/map/EmailInfo;

    iget v11, v2, Lcom/samsung/map/EmailInfo;->box:I

    .line 330
    .restart local v11       #box:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/map/EmailInfo;

    iget v14, v2, Lcom/samsung/map/EmailInfo;->flag:I

    .line 331
    .restart local v14       #flag:I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/map/EmailObserver;->getMailboxInfo(I)Landroid/database/Cursor;

    move-result-object v17

    .line 333
    .restart local v17       #mailboxInfo:Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 334
    .restart local v23       #type:I
    const/4 v8, 0x1

    .line 336
    .restart local v8       #account:I
    if-eqz v17, :cond_258

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_258

    .line 337
    const-string v2, "type"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 338
    const-string v2, "accountKey"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 341
    :cond_258
    if-eqz v17, :cond_25d

    .line 342
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_25d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailObserver;->msgBuf:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailObserver;->baseToEmail(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/map/EmailMessageFolder;->checkHandlers(Ljava/lang/Integer;)Z

    move-result v13

    .line 348
    .restart local v13       #exist:Z
    if-nez v13, :cond_1fb

    .line 349
    const/4 v2, 0x3

    if-eq v14, v2, :cond_1fb

    const/4 v2, 0x6

    move/from16 v0, v23

    if-eq v0, v2, :cond_1fb

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/EmailObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    new-instance v2, Lcom/samsung/map/MapEventReport;

    const/16 v3, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailObserver;->baseToEmail(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailObserver;->typeToFolder(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8, v2}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    goto/16 :goto_1fb

    .line 356
    .end local v8           #account:I
    .end local v11           #box:I
    .end local v13           #exist:Z
    .end local v14           #flag:I
    .end local v16           #id:I
    .end local v17           #mailboxInfo:Landroid/database/Cursor;
    .end local v23           #type:I
    :cond_2ad
    return-void

    .line 253
    :pswitch_data_2ae
    .packed-switch 0x5
        :pswitch_f5
        :pswitch_11e
    .end packed-switch
.end method

.method forceAttachmentDownload(III)V
    .registers 8
    .parameter "account"
    .parameter "msg"
    .parameter "attachmentId"

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_DOWNLOAD_ATTACHMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    const-string v1, "com.android.email.intent.extra.MSGID"

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    const-string v1, "com.android.email.intent.extra.ATTACHMENT_ID"

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/samsung/map/EmailObserver;->service:Lcom/samsung/map/MessageNotificationService;

    invoke-virtual {v1, v0}, Lcom/samsung/map/MessageNotificationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 409
    sget-object v1, Lcom/samsung/map/EmailObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_3
    sget-boolean v0, Lcom/samsung/map/EmailObserver;->lock:Z

    if-nez v0, :cond_a

    .line 411
    invoke-virtual {p0}, Lcom/samsung/map/EmailObserver;->checkMessages()V

    .line 413
    :cond_a
    monitor-exit v1

    .line 414
    return-void

    .line 413
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method
