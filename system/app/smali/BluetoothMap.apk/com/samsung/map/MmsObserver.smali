.class public Lcom/samsung/map/MmsObserver;
.super Landroid/database/ContentObserver;
.source "MmsObserver.java"


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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/samsung/map/MessageNotificationService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/map/MmsObserver;->lock:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/map/MmsObserver;->sync:Ljava/lang/Object;

    return-void
.end method

.method private boxToFolder(I)Ljava/lang/String;
    .registers 5
    .parameter "box"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/String;

    const-string v1, "TELECOM/MSG/"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, folder:Ljava/lang/String;
    packed-switch p1, :pswitch_data_6e

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OTHER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_1d
    return-object v0

    .line 103
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

    .line 104
    goto :goto_1d

    .line 106
    :pswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    goto :goto_1d

    .line 109
    :pswitch_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    goto :goto_1d

    .line 112
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

    .line 113
    goto :goto_1d

    .line 101
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_32
        :pswitch_46
        :pswitch_1e
        :pswitch_5a
    .end packed-switch
.end method

.method private getInfo()Landroid/database/Cursor;
    .registers 10

    .prologue
    .line 80
    const/4 v6, 0x0

    .line 81
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, "content://mms/"

    .line 82
    .local v8, uriStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    .local v1, uri:Landroid/net/Uri;
    :try_start_7
    iget-object v0, p0, Lcom/samsung/map/MmsObserver;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v6

    .line 96
    :cond_11
    :goto_11
    return-object v6

    .line 85
    :catch_12
    move-exception v7

    .line 86
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MmsObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz v6, :cond_11

    .line 89
    :try_start_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_36

    .line 92
    const/4 v6, 0x0

    .line 93
    goto :goto_11

    .line 90
    :catch_36
    move-exception v0

    .line 92
    const/4 v6, 0x0

    .line 93
    goto :goto_11

    .line 92
    :catchall_39
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method static lockObserver()V
    .registers 2

    .prologue
    .line 68
    sget-object v1, Lcom/samsung/map/MmsObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/samsung/map/MmsObserver;->lock:Z

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method static unlockObserver()V
    .registers 2

    .prologue
    .line 74
    sget-object v1, Lcom/samsung/map/MmsObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/samsung/map/MmsObserver;->lock:Z

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method


# virtual methods
.method baseToMms(I)I
    .registers 3
    .parameter "msgId"

    .prologue
    .line 122
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public checkMessages()V
    .registers 21

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/samsung/map/MmsObserver;->getInfo()Landroid/database/Cursor;

    move-result-object v10

    .line 127
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 129
    .local v14, messages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v10, :cond_10d

    .line 130
    :cond_b
    :goto_b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 131
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 132
    .local v13, id:I
    const-string v3, "msg_box"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 133
    .local v9, box:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 137
    .local v15, oldbox:I
    if-eq v15, v9, :cond_b

    .line 138
    packed-switch v9, :pswitch_data_192

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/MmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const/16 v19, 0x0

    new-instance v3, Lcom/samsung/map/MapEventReport;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/map/MmsObserver;->baseToMms(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/map/MmsObserver;->boxToFolder(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/map/MmsObserver;->boxToFolder(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    .line 149
    :goto_7f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 140
    :pswitch_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/MmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const/16 v19, 0x0

    new-instance v3, Lcom/samsung/map/MapEventReport;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/map/MmsObserver;->baseToMms(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/map/MmsObserver;->boxToFolder(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    goto :goto_7f

    .line 152
    .end local v15           #oldbox:I
    :cond_ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/map/MmsObserver;->baseToMms(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/map/MmsSmsMessageFolder;->checkHandlers(Ljava/lang/Integer;)Z

    move-result v11

    .line 154
    .local v11, exist:Z
    if-nez v11, :cond_f9

    .line 155
    const/4 v3, 0x1

    if-eq v9, v3, :cond_d0

    const/4 v3, 0x3

    if-ne v9, v3, :cond_f9

    .line 157
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/MmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const/16 v19, 0x0

    new-instance v3, Lcom/samsung/map/MapEventReport;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/map/MmsObserver;->baseToMms(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/map/MmsObserver;->boxToFolder(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    .line 162
    :cond_f9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 165
    .end local v9           #box:I
    .end local v11           #exist:Z
    .end local v13           #id:I
    :cond_10a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_10d
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v16, tempset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsObserver;->msgBuf:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 171
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 173
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_128
    :goto_128
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_190

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 174
    .restart local v13       #id:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 175
    .restart local v9       #box:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MmsObserver;->msgBuf:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/map/MmsObserver;->baseToMms(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/map/MmsSmsMessageFolder;->checkHandlers(Ljava/lang/Integer;)Z

    move-result v11

    .line 178
    .restart local v11       #exist:Z
    if-nez v11, :cond_128

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/map/MmsObserver;->service:Lcom/samsung/map/MessageNotificationService;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const/16 v19, 0x0

    new-instance v3, Lcom/samsung/map/MapEventReport;

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/map/MmsObserver;->baseToMms(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/map/MmsObserver;->boxToFolder(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v8}, Lcom/samsung/map/MapEventReport;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/map/MessageNotificationService;->SendMessage(IILcom/samsung/map/MapEventReport;)V

    goto :goto_128

    .line 184
    .end local v9           #box:I
    .end local v11           #exist:Z
    .end local v13           #id:I
    :cond_190
    return-void

    .line 138
    nop

    :pswitch_data_192
    .packed-switch 0x2
        :pswitch_90
    .end packed-switch
.end method

.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 211
    sget-object v1, Lcom/samsung/map/MmsObserver;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_3
    sget-boolean v0, Lcom/samsung/map/MmsObserver;->lock:Z

    if-nez v0, :cond_a

    .line 213
    invoke-virtual {p0}, Lcom/samsung/map/MmsObserver;->checkMessages()V

    .line 215
    :cond_a
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method
