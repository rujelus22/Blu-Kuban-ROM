.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "BluetoothPbapVcardManager"

    const-string v1, "BluetoothPbapVcardManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 116
    return-void
.end method


# virtual methods
.method public final composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZ)I
    .registers 25
    .parameter "type"
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"

    .prologue
    .line 420
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "composeAndSendCallLogVcards"

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_12

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1c

    .line 422
    :cond_12
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/16 v2, 0xd0

    .line 477
    :goto_1b
    return v2

    .line 425
    :cond_1c
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, typeSelection:Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 428
    .local v3, myUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 431
    .local v4, CALLLOG_PROJECTION:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 433
    .local v12, ID_COLUMN_INDEX:I
    const/4 v13, 0x0

    .line 434
    .local v13, callsCursor:Landroid/database/Cursor;
    const-wide/16 v17, 0x0

    .line 435
    .local v17, startPointId:J
    const-wide/16 v14, 0x0

    .line 438
    .local v14, endPointId:J
    :try_start_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 440
    if-eqz v13, :cond_81

    .line 441
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 442
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 443
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call Log query startPointId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_cb

    .line 445
    move-wide/from16 v14, v17

    .line 450
    :goto_69
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call log query endPointId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_30 .. :try_end_81} :catchall_d6

    .line 453
    :cond_81
    if-eqz v13, :cond_86

    .line 454
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_86
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_dd

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 469
    .local v16, recordSelection:Ljava/lang/String;
    :goto_a1
    if-nez v5, :cond_109

    .line 470
    move-object/from16 v8, v16

    .line 475
    .local v8, selection:Ljava/lang/String;
    :goto_a5
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call log query selection is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    goto/16 :goto_1b

    .line 447
    .end local v8           #selection:Ljava/lang/String;
    .end local v16           #recordSelection:Ljava/lang/String;
    :cond_cb
    add-int/lit8 v2, p4, -0x1

    :try_start_cd
    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 448
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_d6

    move-result-wide v14

    goto :goto_69

    .line 453
    :catchall_d6
    move-exception v2

    if-eqz v13, :cond_dc

    .line 454
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_dc
    throw v2

    .line 464
    :cond_dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "<="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #recordSelection:Ljava/lang/String;
    goto :goto_a1

    .line 472
    :cond_109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_a5
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I
    .registers 18
    .parameter "op"
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "orderByWhat"

    .prologue
    .line 615
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "composeAndSendPhonebookOneVcard"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v1, 0x1

    if-ge p2, v1, :cond_14

    .line 617
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Internal error: offset is not correct."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/16 v1, 0xd0

    .line 666
    :goto_13
    return v1

    .line 620
    :cond_14
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 621
    .local v2, myUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 622
    .local v9, contactCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 623
    .local v5, selection:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 624
    .local v10, contactId:J
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_93

    .line 628
    :try_start_20
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    const/4 v5, 0x0

    const-string v6, "_id"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 631
    if-eqz v9, :cond_51

    .line 632
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 633
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 634
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query startPointId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_8c

    .line 637
    :cond_51
    if-eqz v9, :cond_56

    .line 638
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_56
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 664
    .restart local v5       #selection:Ljava/lang/String;
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query selection is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v1

    goto :goto_13

    .line 637
    .end local v5           #selection:Ljava/lang/String;
    :catchall_8c
    move-exception v1

    if-eqz v9, :cond_92

    .line 638
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_92
    throw v1

    .line 641
    .restart local v5       #selection:Ljava/lang/String;
    :cond_93
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_d7

    .line 645
    :try_start_99
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    const/4 v5, 0x0

    const-string v6, "display_name COLLATE NOCASE"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 648
    if-eqz v9, :cond_ca

    .line 649
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 650
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 651
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query startPointId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catchall {:try_start_99 .. :try_end_ca} :catchall_d0

    .line 654
    :cond_ca
    if-eqz v9, :cond_56

    .line 655
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_56

    .line 654
    :catchall_d0
    move-exception v1

    if-eqz v9, :cond_d6

    .line 655
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 654
    :cond_d6
    throw v1

    .line 659
    .restart local v5       #selection:Ljava/lang/String;
    :cond_d7
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Parameter orderByWhat is not supported!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/16 v1, 0xd0

    goto/16 :goto_13
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I
    .registers 21
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "ownerVCard"

    .prologue
    .line 482
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "composeAndSendPhonebookVcards"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_12

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1c

    .line 484
    :cond_12
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/16 v2, 0xd0

    .line 530
    :goto_1b
    return v2

    .line 487
    :cond_1c
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 489
    .local v3, myUri:Landroid/net/Uri;
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "composeAndSendPhonebookVcards"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v10, 0x0

    .line 492
    .local v10, contactCursor:Landroid/database/Cursor;
    const-wide/16 v13, 0x0

    .line 493
    .local v13, startPointId:J
    const-wide/16 v11, 0x0

    .line 495
    .local v11, endPointId:J
    :try_start_2a
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 498
    if-eqz v10, :cond_7a

    .line 499
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 500
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 501
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query startPointId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_ca

    .line 503
    move-wide v11, v13

    .line 508
    :goto_62
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query endPointId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_2a .. :try_end_7a} :catchall_d5

    .line 511
    :cond_7a
    if-eqz v10, :cond_7f

    .line 512
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_7f
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_dc

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 528
    .local v6, selection:Ljava/lang/String;
    :goto_a4
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query selection is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v9, 0x1

    move-object v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    goto/16 :goto_1b

    .line 505
    .end local v6           #selection:Ljava/lang/String;
    :cond_ca
    add-int/lit8 v2, p3, -0x1

    :try_start_cc
    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 506
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_d5

    move-result-wide v11

    goto :goto_62

    .line 511
    :catchall_d5
    move-exception v2

    if-eqz v10, :cond_db

    .line 512
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_db
    throw v2

    .line 524
    :cond_dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #selection:Ljava/lang/String;
    goto :goto_a4
.end method

.method public final composeAndSendSimPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I
    .registers 19
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "ownerVCard"

    .prologue
    .line 537
    const-string v9, "BluetoothPbapVcardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "composeAndSendSimPhonebookVcards: startPoint = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", endPoint = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v9, 0x1

    if-lt p2, v9, :cond_2b

    move/from16 v0, p3

    if-le p2, v0, :cond_35

    .line 541
    :cond_2b
    const-string v9, "BluetoothPbapVcardManager"

    const-string v10, "composeAndSendSimPhonebookVcards: internal error: startPoint or endPoint is not correct."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/16 v9, 0xd0

    .line 607
    .end local p1
    :cond_34
    :goto_34
    return v9

    .line 546
    .restart local p1
    :cond_35
    const-wide/16 v5, 0x0

    .line 548
    .local v5, timestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 550
    const/4 v3, 0x0

    .line 551
    .local v3, composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    const/4 v1, 0x0

    .line 555
    .local v1, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p4, :cond_71

    .line 556
    const/high16 v8, -0x4000

    .line 560
    .local v8, vcardType:I
    :goto_41
    const/high16 v9, 0x80

    or-int/2addr v8, v9

    .line 562
    :try_start_44
    new-instance v4, Lcom/android/bluetooth/pbap/SimVCardComposer;

    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9, v8}, Lcom/android/bluetooth/pbap/SimVCardComposer;-><init>(Landroid/content/Context;I)V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_f5

    .line 563
    .end local v3           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .local v4, composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    :try_start_4b
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p5

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_101

    .line 564
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v2, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    add-int/lit8 v9, p2, -0x1

    add-int/lit8 v10, p3, -0x1

    :try_start_56
    invoke-virtual {v4, v9, v10}, Lcom/android/bluetooth/pbap/SimVCardComposer;->init(II)Z

    move-result v9

    if-eqz v9, :cond_64

    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_104

    move-result v9

    if-nez v9, :cond_75

    .line 566
    :cond_64
    const/16 v9, 0xd0

    .line 595
    if-eqz v4, :cond_6b

    .line 596
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/SimVCardComposer;->terminate()V

    .line 598
    :cond_6b
    if-eqz v2, :cond_34

    .line 599
    :goto_6d
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto :goto_34

    .line 558
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .end local v8           #vcardType:I
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    :cond_71
    const v8, -0x3fffffff

    .restart local v8       #vcardType:I
    goto :goto_41

    .line 569
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    :cond_75
    :try_start_75
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/SimVCardComposer;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_87

    .line 570
    sget-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v9, :cond_b8

    .line 571
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v9, 0x1

    iput-boolean v9, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 572
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_87
    .catchall {:try_start_75 .. :try_end_87} :catchall_104

    .line 595
    :cond_87
    if-eqz v4, :cond_8c

    .line 596
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/SimVCardComposer;->terminate()V

    .line 598
    :cond_8c
    if-eqz v2, :cond_91

    .line 599
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 604
    :cond_91
    const-string v9, "BluetoothPbapVcardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total vcard composing and sending out takes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v9, 0xa0

    goto/16 :goto_34

    .line 582
    .restart local p1
    :cond_b8
    :try_start_b8
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/SimVCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, vcard:Ljava/lang/String;
    if-nez v7, :cond_e4

    .line 584
    const-string v9, "BluetoothPbapVcardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read a contact. Error reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/SimVCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_b8 .. :try_end_da} :catchall_104

    .line 586
    const/16 v9, 0xd0

    .line 595
    if-eqz v4, :cond_e1

    .line 596
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/SimVCardComposer;->terminate()V

    .line 598
    :cond_e1
    if-eqz v2, :cond_34

    goto :goto_6d

    .line 588
    :cond_e4
    :try_start_e4
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_104

    move-result v9

    if-nez v9, :cond_75

    .line 590
    const/16 v9, 0xd0

    .line 595
    if-eqz v4, :cond_f1

    .line 596
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/SimVCardComposer;->terminate()V

    .line 598
    :cond_f1
    if-eqz v2, :cond_34

    goto/16 :goto_6d

    .line 595
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .end local v7           #vcard:Ljava/lang/String;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    :catchall_f5
    move-exception v9

    .end local p1
    :goto_f6
    if-eqz v3, :cond_fb

    .line 596
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/SimVCardComposer;->terminate()V

    .line 598
    :cond_fb
    if-eqz v1, :cond_100

    .line 599
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 595
    :cond_100
    throw v9

    .end local v3           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .restart local p1
    :catchall_101
    move-exception v9

    move-object v3, v4

    .end local v4           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    goto :goto_f6

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .end local p1
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    :catchall_104
    move-exception v9

    move-object v1, v2

    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v4

    .end local v4           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    goto :goto_f6
.end method

.method public final composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I
    .registers 19
    .parameter "op"
    .parameter "selection"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "isContacts"

    .prologue
    .line 718
    const-string v9, "BluetoothPbapVcardManager"

    const-string v10, "composeAndSendVCards"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-wide/16 v5, 0x0

    .line 720
    .local v5, timestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 722
    if-eqz p5, :cond_e8

    .line 723
    const/4 v3, 0x0

    .line 724
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    const/4 v1, 0x0

    .line 728
    .local v1, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p3, :cond_50

    .line 729
    const/high16 v8, -0x4000

    .line 733
    .local v8, vcardType:I
    :goto_15
    const/high16 v9, 0x80

    or-int/2addr v8, v9

    .line 735
    :try_start_18
    new-instance v4, Lcom/android/vcard/VCardComposer;

    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct {v4, v9, v8, v10}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_dc

    .line 738
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .local v4, composer:Lcom/android/vcard/VCardComposer;
    :try_start_20
    new-instance v9, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;

    invoke-direct {v9, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {v4, v9}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 751
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_182

    .line 752
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v2, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_2f
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const-string v11, "_id"

    invoke-virtual {v4, v9, p2, v10, v11}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_42

    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_186

    move-result v9

    if-nez v9, :cond_54

    .line 754
    :cond_42
    const/16 v9, 0xd0

    .line 775
    if-eqz v4, :cond_49

    .line 776
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 778
    :cond_49
    if-eqz v2, :cond_4e

    .line 779
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_4e
    move-object v1, v2

    .line 822
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v8           #vcardType:I
    .end local p1
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_4f
    return v9

    .line 731
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    .restart local p1
    :cond_50
    const v8, -0x3fffffff

    .restart local v8       #vcardType:I
    goto :goto_15

    .line 757
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    :cond_54
    :try_start_54
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_66

    .line 758
    sget-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v9, :cond_97

    .line 759
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v9, 0x1

    iput-boolean v9, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 760
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_186

    .line 775
    :cond_66
    if-eqz v4, :cond_6b

    .line 776
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 778
    :cond_6b
    if-eqz v2, :cond_70

    .line 779
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_70
    move-object v1, v2

    .line 819
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v8           #vcardType:I
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_71
    const-string v9, "BluetoothPbapVcardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total vcard composing and sending out takes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/16 v9, 0xa0

    goto :goto_4f

    .line 763
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v8       #vcardType:I
    .restart local p1
    :cond_97
    :try_start_97
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, vcard:Ljava/lang/String;
    if-nez v7, :cond_c7

    .line 765
    const-string v9, "BluetoothPbapVcardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read a contact. Error reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_97 .. :try_end_b9} :catchall_186

    .line 767
    const/16 v9, 0xd0

    .line 775
    if-eqz v4, :cond_c0

    .line 776
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 778
    :cond_c0
    if-eqz v2, :cond_c5

    .line 779
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_c5
    move-object v1, v2

    .line 767
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto :goto_4f

    .line 769
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :cond_c7
    :try_start_c7
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_186

    move-result v9

    if-nez v9, :cond_54

    .line 771
    const/16 v9, 0xd0

    .line 775
    if-eqz v4, :cond_d4

    .line 776
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 778
    :cond_d4
    if-eqz v2, :cond_d9

    .line 779
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_d9
    move-object v1, v2

    .line 771
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_4f

    .line 775
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v7           #vcard:Ljava/lang/String;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :catchall_dc
    move-exception v9

    .end local p1
    :goto_dd
    if-eqz v3, :cond_e2

    .line 776
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 778
    :cond_e2
    if-eqz v1, :cond_e7

    .line 779
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 775
    :cond_e7
    throw v9

    .line 783
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v8           #vcardType:I
    .restart local p1
    :cond_e8
    const/4 v3, 0x0

    .line 784
    .local v3, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    const/4 v1, 0x0

    .line 787
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_ea
    new-instance v4, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_16f

    .line 788
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v4, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_f1
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_17b

    .line 789
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_f8
    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const-string v11, "_id DESC"

    invoke-virtual {v4, v9, p2, v10, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10b

    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_108
    .catchall {:try_start_f8 .. :try_end_108} :catchall_17e

    move-result v9

    if-nez v9, :cond_11d

    .line 792
    :cond_10b
    const/16 v9, 0xd0

    .line 810
    if-eqz v4, :cond_112

    .line 811
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 813
    :cond_112
    if-eqz v2, :cond_117

    .line 814
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_117
    move-object v1, v2

    .line 792
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_4f

    .line 807
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v7       #vcard:Ljava/lang/String;
    :cond_11a
    :try_start_11a
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    .line 795
    .end local v7           #vcard:Ljava/lang/String;
    :cond_11d
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_12f

    .line 796
    sget-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v9, :cond_13c

    .line 797
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v9, 0x1

    iput-boolean v9, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 798
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_12f
    .catchall {:try_start_11a .. :try_end_12f} :catchall_17e

    .line 810
    :cond_12f
    if-eqz v4, :cond_134

    .line 811
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 813
    :cond_134
    if-eqz v2, :cond_139

    .line 814
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_139
    move-object v1, v2

    .line 816
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_71

    .line 801
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local p1
    :cond_13c
    :try_start_13c
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v7

    .line 802
    .restart local v7       #vcard:Ljava/lang/String;
    if-nez v7, :cond_11a

    .line 803
    const-string v9, "BluetoothPbapVcardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read a contact. Error reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catchall {:try_start_13c .. :try_end_160} :catchall_17e

    .line 805
    const/16 v9, 0xd0

    .line 810
    if-eqz v4, :cond_167

    .line 811
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 813
    :cond_167
    if-eqz v2, :cond_16c

    .line 814
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_16c
    move-object v1, v2

    .line 805
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_4f

    .line 810
    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v7           #vcard:Ljava/lang/String;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_16f
    move-exception v9

    .end local p1
    :goto_170
    if-eqz v3, :cond_175

    .line 811
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 813
    :cond_175
    if-eqz v1, :cond_17a

    .line 814
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 810
    :cond_17a
    throw v9

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local p1
    :catchall_17b
    move-exception v9

    move-object v3, v4

    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_170

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local p1
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_17e
    move-exception v9

    move-object v1, v2

    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v4

    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_170

    .line 775
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v4, composer:Lcom/android/vcard/VCardComposer;
    .restart local v8       #vcardType:I
    .restart local p1
    :catchall_182
    move-exception v9

    move-object v3, v4

    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_dd

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local p1
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    :catchall_186
    move-exception v9

    move-object v1, v2

    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v4

    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_dd
.end method

.method public final getCallHistorySize(I)I
    .registers 15
    .parameter "type"

    .prologue
    .line 194
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getCallHistorySize"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 196
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, selection:Ljava/lang/String;
    const/4 v12, 0x0

    .line 198
    .local v12, size:I
    const/4 v7, 0x0

    .line 199
    .local v7, callCursor:Landroid/database/Cursor;
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHost="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQuery="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScheme="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toString="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getCallHistorySize"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_a2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 209
    if-eqz v7, :cond_f6

    .line 210
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 211
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, columnNames:[Ljava/lang/String;
    move-object v6, v9

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_bf
    if-ge v10, v11, :cond_de

    aget-object v8, v6, v10

    .line 216
    .local v8, column:Ljava/lang/String;
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "column= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    add-int/lit8 v10, v10, 0x1

    goto :goto_bf

    .line 219
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #column:Ljava/lang/String;
    .end local v9           #columnNames:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_de
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_a2 .. :try_end_f6} :catchall_fc

    .line 222
    :cond_f6
    if-eqz v7, :cond_fb

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_fb
    return v12

    .line 222
    :catchall_fc
    move-exception v0

    if-eqz v7, :cond_102

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_102
    throw v0
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .parameter "phoneNumber"
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
    .line 347
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getContactNamesByNumber"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v10, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 351
    .local v6, contactCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 353
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_83

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_83

    .line 354
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 363
    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 366
    if-eqz v6, :cond_8e

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2a
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 369
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 370
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 371
    .local v7, id:J
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 374
    :cond_49
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7b
    .catchall {:try_start_18 .. :try_end_7b} :catchall_7c

    goto :goto_2a

    .line 379
    .end local v7           #id:J
    .end local v9           #name:Ljava/lang/String;
    :catchall_7c
    move-exception v0

    if-eqz v6, :cond_82

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_82
    throw v0

    .line 356
    :cond_83
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_18

    .line 379
    :cond_8e
    if-eqz v6, :cond_93

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_93
    return-object v10
.end method

.method public final getContactsSize()I
    .registers 9

    .prologue
    .line 150
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getContactsSize"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 152
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 153
    .local v7, size:I
    const/4 v6, 0x0

    .line 156
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_b
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    if-eqz v6, :cond_1e

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_3c

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 161
    :cond_1e
    if-eqz v6, :cond_23

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_23
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactsSize: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v7

    .line 161
    :catchall_3c
    move-exception v0

    if-eqz v6, :cond_42

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_42
    throw v0
.end method

.method public final getOwnerPhoneNumberVcard(Z)Ljava/lang/String;
    .registers 8
    .parameter "vcardType21"

    .prologue
    .line 119
    const-string v4, "BluetoothPbapVcardManager"

    const-string v5, "getOwnerPhoneNumberVcard"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, number:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, vcard:Ljava/lang/String;
    return-object v3
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .registers 11
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    const-string v0, "PBAP"

    const-string v2, "getPhoneBookNameList"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getPhonebookNameList"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v8, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 276
    .local v1, myUri:Landroid/net/Uri;
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getPhonebookNameList"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v6, 0x0

    .line 279
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_24
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_69

    .line 281
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getPhonebookNameList, order by index"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    :cond_3c
    :goto_3c
    if-eqz v6, :cond_82

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_41
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_82

    .line 297
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 299
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    :cond_5b
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_61
    .catchall {:try_start_24 .. :try_end_61} :catchall_62

    goto :goto_41

    .line 305
    .end local v7           #name:Ljava/lang/String;
    :catchall_62
    move-exception v0

    if-eqz v6, :cond_68

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_68
    throw v0

    .line 286
    :cond_69
    :try_start_69
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_3c

    .line 288
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getPhonebookNameList, order by alpha"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\' AND link_type1 != \'vnd.sec.contact.my_profile\'"

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE NOCASE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_80
    .catchall {:try_start_69 .. :try_end_80} :catchall_62

    move-result-object v6

    goto :goto_3c

    .line 305
    :cond_82
    if-eqz v6, :cond_87

    .line 306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_87
    return-object v8
.end method

.method public final getPhonebookSize(I)I
    .registers 6
    .parameter "type"

    .prologue
    .line 129
    const-string v1, "BluetoothPbapVcardManager"

    const-string v2, "getPhonebookSize"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sparse-switch p1, :sswitch_data_42

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 145
    .local v0, size:I
    :goto_e
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhonebookSzie size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v0

    .line 133
    .end local v0           #size:I
    :sswitch_31
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .line 134
    .restart local v0       #size:I
    goto :goto_e

    .line 137
    .end local v0           #size:I
    :sswitch_36
    const-string v1, "PBAP"

    const-string v2, "case get SIM_PHONEBOOK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSimContactsSize()I

    move-result v0

    .line 139
    .restart local v0       #size:I
    goto :goto_e

    .line 131
    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_31
        0xb -> :sswitch_36
    .end sparse-switch
.end method

.method public final getSimContactsSize()I
    .registers 9

    .prologue
    .line 171
    const-string v0, "BluetoothPbapVcardManager"

    const-string v1, "getSimContactsSize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v7, 0x0

    .line 173
    .local v7, size:I
    const/4 v6, 0x0

    .line 174
    .local v6, contactCursor:Landroid/database/Cursor;
    const-string v0, "PBAP"

    const-string v1, "getSimContactSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_10
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v3, "link_type1 = \'vnd.sec.contact.sim\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    if-eqz v6, :cond_26

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_44

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 184
    :cond_26
    if-eqz v6, :cond_2b

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_2b
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimContactsSize: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v7

    .line 184
    :catchall_44
    move-exception v0

    if-eqz v6, :cond_4a

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_4a
    throw v0
.end method

.method public final getSimPhonebookNameList(I)Ljava/util/ArrayList;
    .registers 11
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const-string v0, "PBAP"

    const-string v1, "getSimBookNameList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimPhonebookNameList: orderByWhat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v8, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const/4 v6, 0x0

    .line 325
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2c
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v3, "link_type1 = \'vnd.sec.contact.sim\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    if-eqz v6, :cond_67

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3f
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_67

    .line 329
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 333
    :cond_59
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5f
    .catchall {:try_start_2c .. :try_end_5f} :catchall_60

    goto :goto_3f

    .line 337
    .end local v7           #name:Ljava/lang/String;
    :catchall_60
    move-exception v0

    if-eqz v6, :cond_66

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_66
    throw v0

    :cond_67
    if-eqz v6, :cond_6c

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_6c
    return-object v8
.end method

.method public final getSimPhonebookVcard(IZI)Ljava/lang/String;
    .registers 16
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "orderByWhat"

    .prologue
    .line 674
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimPhonebookVcard: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vcardType21 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v9, 0x0

    .line 678
    .local v9, name:Ljava/lang/String;
    const/4 v10, 0x0

    .line 679
    .local v10, number:Ljava/lang/String;
    const/4 v8, 0x0

    .line 680
    .local v8, emails:Ljava/lang/String;
    const/4 v7, 0x0

    .line 682
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_26
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v3, "link_type1 = \'vnd.sec.contact.sim\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 684
    if-eqz v7, :cond_4a

    .line 685
    add-int/lit8 v0, p1, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 686
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 687
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 688
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_94

    move-result-object v8

    .line 691
    :cond_4a
    if-eqz v7, :cond_4f

    .line 692
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_4f
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimPhonebookVcard: name = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], number = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], emails = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz p2, :cond_9b

    .line 703
    const/high16 v11, -0x4000

    .line 707
    .local v11, vcardType:I
    :goto_85
    const/high16 v0, 0x80

    or-int/2addr v11, v0

    .line 709
    new-instance v6, Lcom/android/bluetooth/pbap/SimVCardComposer;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v11}, Lcom/android/bluetooth/pbap/SimVCardComposer;-><init>(Landroid/content/Context;I)V

    .line 710
    .local v6, composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    invoke-virtual {v6, v9, v10, v8}, Lcom/android/bluetooth/pbap/SimVCardComposer;->buildSimVCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 691
    .end local v6           #composer:Lcom/android/bluetooth/pbap/SimVCardComposer;
    .end local v11           #vcardType:I
    :catchall_94
    move-exception v0

    if-eqz v7, :cond_9a

    .line 692
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 691
    :cond_9a
    throw v0

    .line 705
    :cond_9b
    const v11, -0x3fffffff

    .restart local v11       #vcardType:I
    goto :goto_85
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .registers 14
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 230
    const-string v0, "BluetoothPbapVcardManager"

    const-string v4, "loadCallHistoryList"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 232
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v5

    const-string v0, "name"

    aput-object v0, v2, v11

    .line 236
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 237
    .local v7, CALLS_NUMBER_COLUMN_INDEX:I
    const/4 v6, 0x1

    .line 239
    .local v6, CALLS_NAME_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 240
    .local v8, callCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_22
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 244
    if-eqz v8, :cond_75

    .line 245
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_30
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_75

    .line 247
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 250
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    const-string v0, "-1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "-2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "-3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 254
    :cond_5e
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040004

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 257
    :cond_67
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6d
    .catchall {:try_start_22 .. :try_end_6d} :catchall_6e

    goto :goto_30

    .line 261
    .end local v10           #name:Ljava/lang/String;
    :catchall_6e
    move-exception v0

    if-eqz v8, :cond_74

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_74
    throw v0

    :cond_75
    if-eqz v8, :cond_7a

    .line 262
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_7a
    return-object v9
.end method
