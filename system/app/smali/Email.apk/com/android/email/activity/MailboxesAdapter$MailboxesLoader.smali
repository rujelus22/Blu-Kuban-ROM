.class Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailboxesLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    }
.end annotation


# instance fields
.field private final mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JI)V
    .registers 12
    .parameter "context"
    .parameter "accountId"
    .parameter "mode"

    .prologue
    .line 1204
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-static {p4}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->getSelection(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, p2, p3}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->getSelectionArg(IJ)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iput p4, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mMode:I

    .line 1209
    return-void
.end method

.method private getRealName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "mailboxName"
    .parameter "delimiter"

    .prologue
    .line 1268
    move-object v2, p1

    .line 1269
    .local v2, tempName:Ljava/lang/String;
    if-nez p1, :cond_17

    .line 1270
    const-string v2, ""

    .line 1274
    :goto_5
    invoke-static {p2}, Lcom/android/emailcommon/utility/Utility;->makeVaildRegularExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1275
    .local v1, splitDelimiter:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, nameArray:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    .line 1277
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v0, v3

    .line 1279
    .end local v2           #tempName:Ljava/lang/String;
    :cond_16
    return-object v2

    .line 1272
    .end local v0           #nameArray:[Ljava/lang/String;
    .end local v1           #splitDelimiter:Ljava/lang/String;
    .restart local v2       #tempName:Ljava/lang/String;
    :cond_17
    move-object v2, p1

    goto :goto_5
.end method

.method private static getSelection(I)Ljava/lang/String;
    .registers 2
    .parameter "mode"

    .prologue
    .line 1186
    if-nez p0, :cond_5

    .line 1187
    const-string v0, "accountKey=? AND type<64 AND flagVisible=1"

    .line 1189
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "type<64 AND flagVisible=1 AND type NOT IN (3,4,5,8)"

    goto :goto_4
.end method

.method private static getSelectionArg(IJ)[Ljava/lang/String;
    .registers 6
    .parameter "mode"
    .parameter "accountId"

    .prologue
    .line 1194
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    .line 1195
    const/4 v0, 0x0

    .line 1197
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_4
.end method

.method private declared-synchronized makeNewCursor(Landroid/database/Cursor;)V
    .registers 31
    .parameter "oldCursor"

    .prologue
    .line 1286
    monitor-enter p0

    :try_start_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v17, mailboxDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v19, remainder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_117

    .line 1291
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1293
    new-instance v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;-><init>(Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;)V

    .line 1294
    .local v3, data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->id:J

    .line 1295
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    .line 1296
    const/16 v24, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1297
    .local v23, serverId:Ljava/lang/String;
    const/16 v24, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1298
    .local v4, delimiter:I
    int-to-char v0, v4

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 1300
    .local v5, delimiterStr:Ljava/lang/String;
    if-eqz v4, :cond_5b

    if-eqz v23, :cond_67

    :cond_5b
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f8

    .line 1301
    :cond_67
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->getRealName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;

    .line 1306
    :goto_7d
    const/16 v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxType:I

    .line 1307
    const/16 v24, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->unreadCount:I

    .line 1308
    const/16 v24, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->messageCount:I

    .line 1309
    const/16 v24, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->rowType:I

    .line 1310
    const/16 v24, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->accountKey:J

    .line 1311
    const/16 v24, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->flagNoSelected:I

    .line 1312
    const/16 v24, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    .line 1314
    const/16 v24, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_10b

    .line 1316
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    :goto_f4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_c

    .line 1304
    :cond_f8
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;
    :try_end_106
    .catchall {:try_start_1 .. :try_end_106} :catchall_108

    goto/16 :goto_7d

    .line 1286
    .end local v3           #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v4           #delimiter:I
    .end local v5           #delimiterStr:Ljava/lang/String;
    .end local v9           #i:I
    .end local v17           #mailboxDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    .end local v19           #remainder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    .end local v23           #serverId:Ljava/lang/String;
    :catchall_108
    move-exception v24

    monitor-exit p0

    throw v24

    .line 1319
    .restart local v3       #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .restart local v4       #delimiter:I
    .restart local v5       #delimiterStr:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v17       #mailboxDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    .restart local v19       #remainder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    .restart local v23       #serverId:Ljava/lang/String;
    :cond_10b
    :try_start_10b
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    goto :goto_f4

    .line 1325
    .end local v3           #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v4           #delimiter:I
    .end local v5           #delimiterStr:Ljava/lang/String;
    .end local v23           #serverId:Ljava/lang/String;
    :cond_117
    const/16 v16, 0x0

    .line 1326
    .local v16, loopCount:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    .local v21, removeIdx:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    :goto_11e
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1cc

    .line 1329
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v9, v24, -0x1

    :goto_12a
    if-ltz v9, :cond_177

    .line 1330
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    .line 1331
    .local v20, remainderData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_135
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_171

    .line 1332
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    .line 1333
    .local v15, listData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    move-wide/from16 v24, v0

    iget-wide v0, v15, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-nez v24, :cond_174

    .line 1334
    iget v0, v15, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    .line 1335
    add-int/lit8 v24, v14, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1336
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    .end local v15           #listData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    :cond_171
    add-int/lit8 v9, v9, -0x1

    goto :goto_12a

    .line 1331
    .restart local v15       #listData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    :cond_174
    add-int/lit8 v14, v14, 0x1

    goto :goto_135

    .line 1341
    .end local v14           #j:I
    .end local v15           #listData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v20           #remainderData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    :cond_177
    const/4 v9, 0x0

    :goto_178
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_190

    .line 1342
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1341
    add-int/lit8 v9, v9, 0x1

    goto :goto_178

    .line 1344
    :cond_190
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 1345
    const/16 v24, 0x1f4

    move/from16 v0, v16

    move/from16 v1, v24

    if-le v0, v1, :cond_334

    .line 1346
    const-string v24, "MailboxesAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "remainder size : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mailboxList size : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const-string v24, "MailboxesAdapter"

    const-string v25, "100th loop count. we\'ll stop this loop forcefully"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_1cc
    new-instance v18, Landroid/database/MatrixCursor;

    sget-object v24, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1356
    .local v18, newCursor:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    if-eqz v24, :cond_338

    .line 1357
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 1358
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 1365
    :goto_1f1
    const/4 v8, 0x0

    .line 1367
    .local v8, hasChild:I
    const/4 v9, 0x0

    :goto_1f3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_35a

    .line 1368
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    .line 1371
    .restart local v3       #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v22

    .line 1372
    .local v22, row:Landroid/database/MatrixCursor$RowBuilder;
    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1373
    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1374
    iget-object v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1375
    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1376
    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->unreadCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1377
    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->messageCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1378
    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->rowType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1379
    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->accountKey:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1380
    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->flagNoSelected:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1381
    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1382
    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1383
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v9, v0, :cond_34a

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v25, v0

    add-int/lit8 v24, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    move-wide/from16 v27, v0

    cmp-long v24, v25, v27

    if-nez v24, :cond_34a

    .line 1385
    const/4 v8, 0x1

    .line 1386
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1393
    :goto_2d8
    new-instance v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;-><init>(Lcom/android/email/activity/MailboxesAdapter$1;)V

    .line 1394
    .local v6, extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_357

    const/16 v24, 0x1

    :goto_2e9
    move/from16 v0, v24

    iput-boolean v0, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    .line 1395
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 1396
    new-instance v7, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;-><init>(Lcom/android/email/activity/MailboxesAdapter$1;)V

    .line 1397
    .local v7, extraDataPrev:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v0, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    .line 1398
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 1399
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v24

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1f3

    .line 1351
    .end local v3           #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v6           #extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    .end local v7           #extraDataPrev:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    .end local v8           #hasChild:I
    .end local v18           #newCursor:Landroid/database/MatrixCursor;
    .end local v22           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_334
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_11e

    .line 1360
    .restart local v18       #newCursor:Landroid/database/MatrixCursor;
    :cond_338
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1361
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$202(Ljava/util/HashMap;)Ljava/util/HashMap;

    goto/16 :goto_1f1

    .line 1388
    .restart local v3       #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .restart local v8       #hasChild:I
    .restart local v22       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_34a
    const/4 v8, 0x0

    .line 1389
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2d8

    .line 1394
    .restart local v6       #extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    :cond_357
    const/16 v24, 0x0

    goto :goto_2e9

    .line 1404
    .end local v3           #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v6           #extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    .end local v22           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_35a
    const-wide/16 v11, -0x1

    .line 1405
    .local v11, id:J
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    if-nez v24, :cond_38a

    .line 1406
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$402(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1407
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$502(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1427
    :cond_372
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 1428
    const/16 v21, 0x0

    .line 1429
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1430
    const/16 v17, 0x0

    .line 1431
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1432
    const/16 v19, 0x0

    .line 1433
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$602(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_388
    .catchall {:try_start_10b .. :try_end_388} :catchall_108

    .line 1434
    monitor-exit p0

    return-void

    .line 1409
    :cond_38a
    :try_start_38a
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_396
    :goto_396
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_372

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1410
    .local v13, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1411
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_396

    .line 1412
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    if-nez v24, :cond_3de

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    if-nez v24, :cond_396

    .line 1416
    :cond_3de
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    if-eqz v24, :cond_430

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    if-nez v24, :cond_430

    .line 1417
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 1418
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    goto/16 :goto_396

    .line 1420
    :cond_430
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v25

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 1421
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$500()Ljava/util/HashMap;

    move-result-object v25

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z
    :try_end_480
    .catchall {:try_start_38a .. :try_end_480} :catchall_108

    goto/16 :goto_396
.end method

.method private declared-synchronized makeNewCursorForAllAccount(Landroid/database/Cursor;)V
    .registers 21
    .parameter "oldCursor"

    .prologue
    .line 1439
    monitor-enter p0

    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .local v8, mailboxDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    .local v10, remainder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-ge v4, v14, :cond_99

    .line 1444
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1446
    new-instance v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;-><init>(Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;)V

    .line 1447
    .local v2, data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->id:J

    .line 1448
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    .line 1462
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;

    .line 1463
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxType:I

    .line 1464
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->unreadCount:I

    .line 1465
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->messageCount:I

    .line 1466
    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->rowType:I

    .line 1467
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->accountKey:J

    .line 1468
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->flagNoSelected:I

    .line 1469
    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    .line 1471
    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_8f

    .line 1473
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    :goto_8b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 1476
    :cond_8f
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    const/4 v14, 0x0

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I
    :try_end_95
    .catchall {:try_start_1 .. :try_end_95} :catchall_96

    goto :goto_8b

    .line 1439
    .end local v2           #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v4           #i:I
    .end local v8           #mailboxDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    .end local v10           #remainder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    :catchall_96
    move-exception v14

    monitor-exit p0

    throw v14

    .line 1482
    .restart local v4       #i:I
    .restart local v8       #mailboxDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    .restart local v10       #remainder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    :cond_99
    const/4 v7, 0x0

    .line 1483
    .local v7, loopCount:I
    :try_start_9a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    .local v12, removeIdx:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;>;"
    :goto_9f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_127

    .line 1486
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    :goto_ab
    if-ltz v4, :cond_de

    .line 1487
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    .line 1488
    .local v11, remainderData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_b4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_d8

    .line 1489
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    .line 1490
    .local v6, listData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    iget-wide v14, v11, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    iget-wide v0, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_db

    .line 1491
    iget v14, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v11, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    .line 1492
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v8, v14, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1493
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    .end local v6           #listData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    :cond_d8
    add-int/lit8 v4, v4, -0x1

    goto :goto_ab

    .line 1488
    .restart local v6       #listData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    :cond_db
    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    .line 1498
    .end local v5           #j:I
    .end local v6           #listData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v11           #remainderData:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    :cond_de
    const/4 v4, 0x0

    :goto_df
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_ef

    .line 1499
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1498
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 1501
    :cond_ef
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1502
    const/16 v14, 0x1f4

    if-le v7, v14, :cond_1c9

    .line 1503
    const-string v14, "MailboxesAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remainder size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mailboxList size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const-string v14, "MailboxesAdapter"

    const-string v15, "100th loop count. we\'ll stop this loop forcefully"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_127
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v14, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-direct {v9, v14, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1515
    .local v9, newCursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .line 1517
    .local v3, hasChild:I
    const/4 v4, 0x0

    :goto_134
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_1d6

    .line 1518
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    .line 1521
    .restart local v2       #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    invoke-virtual {v9}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    .line 1522
    .local v13, row:Landroid/database/MatrixCursor$RowBuilder;
    iget-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1523
    iget-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1524
    iget-object v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1525
    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1526
    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->unreadCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1527
    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->messageCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1528
    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->rowType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1529
    iget-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->accountKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1530
    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->flagNoSelected:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1531
    iget-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1532
    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1533
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v4, v14, :cond_1cd

    iget-wide v15, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    iget-wide v0, v14, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    move-wide/from16 v17, v0

    cmp-long v14, v15, v17

    if-nez v14, :cond_1cd

    .line 1535
    const/4 v3, 0x1

    .line 1536
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1517
    :goto_1c5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_134

    .line 1508
    .end local v2           #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v3           #hasChild:I
    .end local v9           #newCursor:Landroid/database/MatrixCursor;
    .end local v13           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_1c9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9f

    .line 1538
    .restart local v2       #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .restart local v3       #hasChild:I
    .restart local v9       #newCursor:Landroid/database/MatrixCursor;
    .restart local v13       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_1cd
    const/4 v3, 0x0

    .line 1539
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1c5

    .line 1543
    .end local v2           #data:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    .end local v13           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_1d6
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1544
    const/4 v12, 0x0

    .line 1545
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1546
    const/4 v8, 0x0

    .line 1547
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1548
    const/4 v10, 0x0

    .line 1549
    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v14

    invoke-static {v14}, Lcom/android/email/activity/MailboxesAdapter;->access$702(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1e9
    .catchall {:try_start_9a .. :try_end_1e9} :catchall_96

    .line 1550
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 4

    .prologue
    .line 1221
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 1223
    .local v1, oldCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_13

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_13

    .line 1224
    iget v2, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mMode:I

    if-nez v2, :cond_18

    .line 1225
    invoke-direct {p0, v1}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->makeNewCursor(Landroid/database/Cursor;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_1c

    .line 1247
    :cond_13
    :goto_13
    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 1227
    :cond_18
    :try_start_18
    invoke-direct {p0, v1}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->makeNewCursorForAllAccount(Landroid/database/Cursor;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_13

    .line 1230
    :catch_1c
    move-exception v0

    .line 1231
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 1213
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1214
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->onContentChanged()V

    .line 1216
    :cond_9
    return-void
.end method
