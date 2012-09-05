.class public Lcom/vlingo/client/lmtt/LMTTUpdate;
.super Ljava/lang/Object;
.source "LMTTUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/lmtt/LMTTUpdate$1;,
        Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;,
        Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;
    }
.end annotation


# static fields
.field public static final INITIAL_WAIT_TIME_INITIAL:J = 0x3a98L

.field private static final MAX_RESYNC_RETRIES:I = 0x3

.field private static final RETRY_MULTIPLIER:I = 0x4

.field public static final SAMSUNG_PLAYLIST:Ljava/lang/String; = "content://media/external/audio/music_playlists"

.field public static final WAIT_TIME_INITIAL:J = 0x1d4c0L

.field private static timer:Ljava/util/Timer;


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field deviceItemCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private taskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "contentResolver"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate;->contentResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate;->handler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate;->taskList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTUpdate;->timer:Ljava/util/Timer;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/lmtt/LMTTUpdate;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate;->taskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vlingo/client/lmtt/LMTTUpdate;->scheduleTask(Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/vlingo/client/lmtt/LMTTUpdate;->getUpdateChangedItemsList(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;Ljava/util/HashMap;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private static getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 619
    if-nez p0, :cond_4

    .line 620
    const/4 v0, 0x0

    .line 621
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private getUpdateChangedItemsList(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    .registers 29
    .parameter "lmttItemType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 459
    .local p2, synchedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, changedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    const/16 v16, 0x0

    .line 460
    .local v16, cur:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 464
    .local v17, deviceItemCount:I
    const/4 v5, 0x0

    .line 468
    .local v5, where:Ljava/lang/String;
    :try_start_5
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4c

    .line 469
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 470
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v2

    const/4 v2, 0x1

    const-string v8, "title"

    aput-object v8, v4, v2

    const/4 v2, 0x2

    const-string v8, "artist"

    aput-object v8, v4, v2

    const/4 v2, 0x3

    const-string v8, "composer"

    aput-object v8, v4, v2

    const/4 v2, 0x4

    const-string v8, "album"

    aput-object v8, v4, v2

    const/4 v2, 0x5

    const-string v8, "year"

    aput-object v8, v4, v2

    const/4 v2, 0x6

    const-string v8, "_data"

    aput-object v8, v4, v2

    .line 485
    .local v4, proj:[Ljava/lang/String;
    const-string v5, "is_music!=0"

    .line 511
    :goto_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/lmtt/LMTTUpdate;->contentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 514
    invoke-static/range {v16 .. v16}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_11a

    move-result v2

    if-nez v2, :cond_a0

    .line 517
    const/4 v2, 0x0

    .line 612
    if-eqz v16, :cond_4b

    :try_start_48
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_95

    .line 615
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    :cond_4b
    :goto_4b
    return v2

    .line 487
    :cond_4c
    :try_start_4c
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_66

    .line 490
    const-string v2, "content://media/external/audio/music_playlists"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 492
    .restart local v3       #uri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v2

    const/4 v2, 0x1

    const-string v8, "name"

    aput-object v8, v4, v2

    .restart local v4       #proj:[Ljava/lang/String;
    goto :goto_35

    .line 494
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    :cond_66
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_83

    .line 495
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 496
    .restart local v3       #uri:Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v2

    const/4 v2, 0x1

    const-string v8, "data2"

    aput-object v8, v4, v2

    const/4 v2, 0x2

    const-string v8, "data3"

    aput-object v8, v4, v2

    .line 500
    .restart local v4       #proj:[Ljava/lang/String;
    const-string v5, "mimetype=\'vnd.android.cursor.item/name\' AND in_visible_group=1"
    :try_end_82
    .catchall {:try_start_4c .. :try_end_82} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_82} :catch_11a

    goto :goto_35

    .line 506
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    :cond_83
    const/4 v2, -0x1

    .line 612
    if-eqz v16, :cond_4b

    :try_start_86
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_4b

    :catch_8a
    move-exception v19

    .local v19, ex:Ljava/lang/Exception;
    const-string v8, "VLG_EXCEPTION"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .end local v19           #ex:Ljava/lang/Exception;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #proj:[Ljava/lang/String;
    :catch_95
    move-exception v19

    .restart local v19       #ex:Ljava/lang/Exception;
    const-string v8, "VLG_EXCEPTION"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 519
    .end local v19           #ex:Ljava/lang/Exception;
    :cond_a0
    :try_start_a0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_11a

    move-result v2

    if-nez v2, :cond_b8

    .line 522
    const/4 v2, 0x0

    .line 612
    if-eqz v16, :cond_4b

    :try_start_a9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_4b

    :catch_ad
    move-exception v19

    .restart local v19       #ex:Ljava/lang/Exception;
    const-string v8, "VLG_EXCEPTION"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 525
    .end local v19           #ex:Ljava/lang/Exception;
    :cond_b8
    const/16 v24, 0x0

    .line 528
    .local v24, num:I
    :cond_ba
    const/4 v2, 0x0

    :try_start_bb
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 529
    .local v14, id:I
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_199

    .line 530
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, title:Ljava/lang/String;
    invoke-static {v7}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 584
    .end local v7           #title:Ljava/lang/String;
    :cond_d4
    :goto_d4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 586
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_e2
    :goto_e2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 587
    const/4 v6, 0x0

    .line 588
    .local v6, item:Lcom/vlingo/client/lmtt/LMTTItem;
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTItem$LmttItemType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_22c

    .line 599
    :goto_fe
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v24, v24, 0x1

    .line 601
    rem-int/lit8 v2, v24, 0xa
    :try_end_107
    .catchall {:try_start_bb .. :try_end_107} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_107} :catch_11a

    if-nez v2, :cond_e2

    .line 602
    const-wide/16 v8, 0xa

    :try_start_10b
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_e2

    :catch_10f
    move-exception v19

    .restart local v19       #ex:Ljava/lang/Exception;
    :try_start_110
    const-string v2, "VLG_EXCEPTION"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_110 .. :try_end_119} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_119} :catch_11a

    goto :goto_e2

    .line 606
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v6           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    .end local v14           #id:I
    .end local v19           #ex:Ljava/lang/Exception;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #num:I
    :catch_11a
    move-exception v18

    .line 609
    .local v18, e:Ljava/lang/Exception;
    const/4 v2, -0x1

    .line 612
    if-eqz v16, :cond_4b

    :try_start_11e
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_121} :catch_123

    goto/16 :goto_4b

    :catch_123
    move-exception v19

    .restart local v19       #ex:Ljava/lang/Exception;
    const-string v8, "VLG_EXCEPTION"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 536
    .end local v18           #e:Ljava/lang/Exception;
    .end local v19           #ex:Ljava/lang/Exception;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    .restart local v14       #id:I
    .restart local v24       #num:I
    :cond_12f
    :try_start_12f
    const-string v11, ""

    .line 538
    .local v11, genres:Ljava/lang/String;
    new-instance v6, Lcom/vlingo/client/lmtt/LMTTSongItem;

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v2, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/lmtt/LMTTUpdate;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->NOCHANGE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-direct/range {v6 .. v15}, Lcom/vlingo/client/lmtt/LMTTSongItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 564
    .end local v7           #title:Ljava/lang/String;
    .end local v11           #genres:Ljava/lang/String;
    .restart local v6       #item:Lcom/vlingo/client/lmtt/LMTTItem;
    :goto_15f
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 565
    .local v21, hashcode:Ljava/lang/Integer;
    if-nez v21, :cond_1da

    .line 567
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->INSERT:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v6, v2}, Lcom/vlingo/client/lmtt/LMTTItem;->setChangeType(Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 568
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_177
    :goto_177
    add-int/lit8 v17, v17, 0x1

    .line 577
    add-int/lit8 v24, v24, 0x1

    .line 578
    rem-int/lit8 v2, v24, 0xa
    :try_end_17d
    .catchall {:try_start_12f .. :try_end_17d} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_17d} :catch_11a

    if-nez v2, :cond_d4

    .line 579
    const-wide/16 v8, 0xa

    :try_start_181
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_184} :catch_186

    goto/16 :goto_d4

    :catch_186
    move-exception v19

    .line 580
    .restart local v19       #ex:Ljava/lang/Exception;
    :try_start_187
    const-string v2, "VLG_EXCEPTION"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_187 .. :try_end_190} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_190} :catch_11a

    goto/16 :goto_d4

    .line 612
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v6           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    .end local v14           #id:I
    .end local v19           #ex:Ljava/lang/Exception;
    .end local v21           #hashcode:Ljava/lang/Integer;
    .end local v24           #num:I
    :catchall_192
    move-exception v2

    if-eqz v16, :cond_198

    :try_start_195
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_198} :catch_220

    :cond_198
    :goto_198
    throw v2

    .line 548
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v14       #id:I
    .restart local v24       #num:I
    :cond_199
    :try_start_199
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1b4

    .line 549
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 550
    .restart local v7       #title:Ljava/lang/String;
    invoke-static {v7}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d4

    .line 553
    new-instance v6, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->NOCHANGE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-direct {v6, v7, v14, v2}, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;-><init>(Ljava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 554
    .restart local v6       #item:Lcom/vlingo/client/lmtt/LMTTItem;
    goto :goto_15f

    .line 556
    .end local v6           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    .end local v7           #title:Ljava/lang/String;
    :cond_1b4
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 557
    .local v20, firstName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 558
    .local v23, lastName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    invoke-static/range {v23 .. v23}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d4

    .line 561
    :cond_1ce
    new-instance v6, Lcom/vlingo/client/lmtt/LMTTContactItem;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->NOCHANGE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1, v14, v2}, Lcom/vlingo/client/lmtt/LMTTContactItem;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .restart local v6       #item:Lcom/vlingo/client/lmtt/LMTTItem;
    goto :goto_15f

    .line 570
    .end local v20           #firstName:Ljava/lang/String;
    .end local v23           #lastName:Ljava/lang/String;
    .restart local v21       #hashcode:Ljava/lang/Integer;
    :cond_1da
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    if-eq v2, v8, :cond_177

    .line 572
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->UPDATE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v6, v2}, Lcom/vlingo/client/lmtt/LMTTItem;->setChangeType(Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 573
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_177

    .line 590
    .end local v21           #hashcode:Ljava/lang/Integer;
    .restart local v22       #i$:Ljava/util/Iterator;
    :pswitch_1ef
    new-instance v6, Lcom/vlingo/client/lmtt/LMTTContactItem;

    .end local v6           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->DELETE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-direct {v6, v14, v2}, Lcom/vlingo/client/lmtt/LMTTContactItem;-><init>(ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 591
    .restart local v6       #item:Lcom/vlingo/client/lmtt/LMTTItem;
    goto/16 :goto_fe

    .line 593
    :pswitch_1f8
    new-instance v6, Lcom/vlingo/client/lmtt/LMTTSongItem;

    .end local v6           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->DELETE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-direct {v6, v14, v2}, Lcom/vlingo/client/lmtt/LMTTSongItem;-><init>(ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V

    .line 594
    .restart local v6       #item:Lcom/vlingo/client/lmtt/LMTTItem;
    goto/16 :goto_fe

    .line 596
    :pswitch_201
    new-instance v6, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;

    .end local v6           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->DELETE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-direct {v6, v14, v2}, Lcom/vlingo/client/lmtt/LMTTPlaylistItem;-><init>(ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    :try_end_208
    .catchall {:try_start_199 .. :try_end_208} :catchall_192
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_208} :catch_11a

    .restart local v6       #item:Lcom/vlingo/client/lmtt/LMTTItem;
    goto/16 :goto_fe

    .line 612
    .end local v6           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    :cond_20a
    if-eqz v16, :cond_20f

    :try_start_20c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_20f} :catch_215

    .line 615
    :cond_20f
    :goto_20f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_4b

    .line 612
    :catch_215
    move-exception v19

    .restart local v19       #ex:Ljava/lang/Exception;
    const-string v2, "VLG_EXCEPTION"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20f

    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v14           #id:I
    .end local v19           #ex:Ljava/lang/Exception;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #num:I
    :catch_220
    move-exception v19

    .restart local v19       #ex:Ljava/lang/Exception;
    const-string v8, "VLG_EXCEPTION"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_198

    .line 588
    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_1ef
        :pswitch_1f8
        :pswitch_201
    .end packed-switch
.end method

.method private declared-synchronized hasScheduledOrRunningTaskOfType(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;)Z
    .registers 5
    .parameter "lmttUpdateType"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTUpdate;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;

    .line 127
    .local v1, task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    invoke-virtual {v1}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->getUpdateType()Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 128
    const/4 v2, 0x1

    .line 131
    .end local v1           #task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    :goto_1a
    monitor-exit p0

    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1a

    .line 126
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized removeScheduledOrRunningTaskOfType(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;)V
    .registers 6
    .parameter "lmttUpdateType"

    .prologue
    .line 112
    monitor-enter p0

    const/4 v2, 0x0

    .line 113
    .local v2, taskToRemove:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    :try_start_2
    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTUpdate;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;

    .line 114
    .local v1, task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    invoke-virtual {v1}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->getUpdateType()Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    move-result-object v3

    if-ne v3, p1, :cond_8

    .line 115
    move-object v2, v1

    .line 119
    .end local v1           #task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    :cond_1b
    if-eqz v2, :cond_23

    .line 120
    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->cancel()Z

    .line 121
    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->end()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_25

    .line 123
    :cond_23
    monitor-exit p0

    return-void

    .line 112
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized scheduleTask(Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->getUpdateType()Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    move-result-object v0

    .line 84
    .local v0, lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;
    invoke-virtual {p1}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->isClearLMTT()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 87
    invoke-direct {p0, v0}, Lcom/vlingo/client/lmtt/LMTTUpdate;->removeScheduledOrRunningTaskOfType(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;)V

    .line 107
    :cond_e
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate;->timer:Ljava/util/Timer;

    invoke-virtual {p1}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->getWaitTime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    .line 109
    :goto_1c
    monitor-exit p0

    return-void

    .line 89
    :cond_1e
    :try_start_1e
    invoke-direct {p0, v0}, Lcom/vlingo/client/lmtt/LMTTUpdate;->hasScheduledOrRunningTaskOfType(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p1, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->langChange:Z
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_29

    if-nez v1, :cond_e

    goto :goto_1c

    .line 83
    .end local v0           #lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected declared-synchronized fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V
    .registers 13
    .parameter "lmttUpdateType"
    .parameter "waitTime"
    .parameter "clearLMTT"
    .parameter "lang_change"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;-><init>(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V

    .line 79
    .local v0, task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    invoke-direct {p0, v0}, Lcom/vlingo/client/lmtt/LMTTUpdate;->scheduleTask(Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 80
    monitor-exit p0

    return-void

    .line 77
    .end local v0           #task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;ZZZ)V
    .registers 11
    .parameter "lmttUpdateType"
    .parameter "skipDelay"
    .parameter "clearLMTT"
    .parameter "lang_change"

    .prologue
    .line 64
    if-eqz p2, :cond_c

    const-wide/16 v2, 0x0

    .local v2, delay:J
    :goto_4
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/lmtt/LMTTUpdate;->fireUpdate(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V

    .line 66
    return-void

    .line 64
    .end local v2           #delay:J
    :cond_c
    const-wide/16 v2, 0x3a98

    goto :goto_4
.end method
