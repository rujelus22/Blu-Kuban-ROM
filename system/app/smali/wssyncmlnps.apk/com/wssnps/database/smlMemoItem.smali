.class public Lcom/wssnps/database/smlMemoItem;
.super Ljava/lang/Object;
.source "smlMemoItem.java"


# instance fields
.field public _id:I

.field public color:I

.field public description:Ljava/lang/String;

.field public dtmodify:J

.field public dtstart:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/wssnps/base/smlvCal$SmlvCal_t;)V
    .registers 4
    .parameter "smlvnote"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_6

    .line 84
    :cond_5
    :goto_5
    return-void

    .line 68
    :cond_6
    iget v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->luid:I

    iput v0, p0, Lcom/wssnps/database/smlMemoItem;->_id:I

    .line 70
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 72
    const-string v0, "NOTITLE"

    iput-object v0, p0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    .line 79
    :goto_16
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wssnps/database/smlMemoItem;->dtstart:J

    .line 82
    iget v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->color:I

    if-eqz v0, :cond_5

    .line 83
    iget v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->color:I

    iput v0, p0, Lcom/wssnps/database/smlMemoItem;->color:I

    goto :goto_5

    .line 76
    :cond_2e
    iget-object v0, p1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    iput-object v0, p0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    goto :goto_16
.end method

.method public static DecodeVNote(Ljava/lang/String;)Lcom/wssnps/database/smlMemoItem;
    .registers 3
    .parameter "vnote"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/wssnps/base/smlvCal;->DecodeVCal(Ljava/lang/String;)Lcom/wssnps/base/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 100
    .local v1, v:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    new-instance v0, Lcom/wssnps/database/smlMemoItem;

    invoke-direct {v0, v1}, Lcom/wssnps/database/smlMemoItem;-><init>(Lcom/wssnps/base/smlvCal$SmlvCal_t;)V

    .line 102
    .local v0, memo:Lcom/wssnps/database/smlMemoItem;
    return-object v0
.end method

.method public static addMemo(Landroid/content/ContentResolver;Lcom/wssnps/database/smlMemoItem;I)I
    .registers 19
    .parameter "cResolver"
    .parameter "memodb"
    .parameter "luid"

    .prologue
    .line 210
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v11, cv:Landroid/content/ContentValues;
    const-string v2, "content://com.samsung.sec.android/memo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 213
    .local v15, uri:Landroid/net/Uri;
    const-string v13, ""

    .local v13, title:Ljava/lang/String;
    const-string v10, ""

    .line 215
    .local v10, content:Ljava/lang/String;
    const/16 v14, 0x64

    .line 217
    .local v14, titlesize:I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 219
    .local v12, nIndex:I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_1a5

    .line 221
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 222
    .local v8, Date:Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 223
    const/4 v2, -0x1

    invoke-static {v8, v2}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 225
    const/4 v2, -0x1

    invoke-static {v8, v2}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_16b

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 229
    :goto_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v8, v4}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 231
    const/4 v2, -0x1

    invoke-static {v8, v2}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_188

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 235
    :goto_b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v8, v4}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 237
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    .line 254
    .end local v8           #Date:Landroid/text/format/Time;
    :goto_ea
    const-string v2, "content"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "title"

    invoke-virtual {v11, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "color"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v2, "create_t"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/wssnps/database/smlMemoItem;->dtstart:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    const-string v2, "modify_t"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    const-string v2, "delete_flag"

    const-string v4, "false"

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "synch_t"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string v2, "locked"

    const-string v4, "false"

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 272
    const-string v2, "content://com.samsung.sec.android/memo/all"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 273
    .local v3, resultUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 274
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_161

    .line 278
    :cond_14f
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/wssnps/database/smlMemoItem;->dtstart:J

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_1d3

    .line 280
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 287
    :cond_161
    :goto_161
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 289
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lcom/wssnps/database/smlMemoItem;->_id:I

    .line 291
    return p2

    .line 228
    .end local v3           #resultUri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v8       #Date:Landroid/text/format/Time;
    :cond_16b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v8, v4}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_69

    .line 234
    :cond_188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v8, v4}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_b8

    .line 241
    .end local v8           #Date:Landroid/text/format/Time;
    :cond_1a5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 242
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v14, :cond_1c7

    .line 244
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 245
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_ea

    .line 249
    :cond_1c7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    add-int/lit8 v4, v12, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_ea

    .line 284
    .restart local v3       #resultUri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_1d3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_14f

    goto :goto_161
.end method

.method public static addSMemo(Landroid/content/ContentResolver;Lcom/wssnps/database/smlMemoItem;I)I
    .registers 31
    .parameter "cResolver"
    .parameter "memodb"
    .parameter "luid"

    .prologue
    .line 475
    const/4 v13, 0x0

    .line 476
    .local v13, i:I
    const/16 v22, 0x0

    .line 477
    .local v22, txtTmp:[Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 478
    .local v14, id:J
    const/16 v21, 0x64

    .line 479
    .local v21, titlesize:I
    const-string v20, ""

    .local v20, title:Ljava/lang/String;
    const-string v9, ""

    .line 482
    .local v9, content:Ljava/lang/String;
    const/4 v7, 0x0

    .line 484
    .local v7, PileOrder:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v10, cv1:Landroid/content/ContentValues;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 486
    .local v11, cv2:Landroid/content/ContentValues;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 487
    .local v12, cv3:Landroid/content/ContentValues;
    const-string v24, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 488
    .local v18, penmemo_Uri:Landroid/net/Uri;
    const/16 v19, 0x0

    .line 489
    .local v19, thumb_data:[B
    const/16 v24, 0x34

    move/from16 v0, v24

    new-array v5, v0, [B

    fill-array-data v5, :array_4da

    .line 494
    .local v5, Drwing_data:[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/wssnps/database/smlSmemoItem;->devidebyOnePage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 496
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 498
    .local v17, nIndex:I
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_31a

    .line 500
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 501
    .local v4, Date:Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 502
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-static {v4, v0}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x4

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 503
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 504
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-static {v4, v0}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2d0

    .line 505
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 508
    :goto_ae
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x5

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 509
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 510
    const/16 v24, -0x1

    move/from16 v0, v24

    invoke-static {v4, v0}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2f5

    .line 511
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 514
    :goto_115
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x7

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 515
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 516
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    .line 532
    .end local v4           #Date:Landroid/text/format/Time;
    :goto_153
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_36a

    .line 534
    const/16 v24, 0x0

    aget-object v24, v22, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/wssnps/database/smlSmemoItem;->createPile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v14

    .line 536
    const/4 v13, 0x0

    :goto_185
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_366

    .line 538
    add-int/lit8 v7, v13, 0x1

    .line 539
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 540
    const-string v24, "Title"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v24, "Text"

    aget-object v25, v22, v13

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v24, "Content"

    aget-object v25, v22, v13

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v24, "ParentID"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 544
    const-string v24, "PileOrder"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v24, "IsLock"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v24, "IsFavorite"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 547
    const-string v24, "Drawing"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 548
    const-string v24, "Tehme"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    const-string v24, "LastMode"

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string v24, "HasVoice"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v24, "CreateDate"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 552
    const-string v24, "Date"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 555
    .local v16, inserted:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 556
    .local v6, MemoID:Ljava/lang/String;
    if-eqz v16, :cond_263

    .line 557
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #MemoID:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 559
    .restart local v6       #MemoID:Ljava/lang/String;
    :cond_263
    aget-object v24, v22, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/wssnps/database/smlSmemoItem;->buildThumbnail(Landroid/content/ContentValues;Ljava/lang/String;)[B

    move-result-object v19

    .line 560
    if-eqz v19, :cond_2cc

    .line 562
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 563
    .local v8, Thumb_filepath:Ljava/lang/StringBuffer;
    sget-object v24, Lcom/wssnps/database/smlSmemoItem;->thumbFileName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ".png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 565
    const-string v24, "Thumb"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 566
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 567
    .local v23, update_uri:Landroid/net/Uri;
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 568
    sget-object v24, Lcom/wssnps/database/smlSmemoItem;->cacheFilePath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/wssnps/database/smlSmemoItem;->fileAdd(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 536
    .end local v8           #Thumb_filepath:Ljava/lang/StringBuffer;
    .end local v23           #update_uri:Landroid/net/Uri;
    :cond_2cc
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_185

    .line 507
    .end local v6           #MemoID:Ljava/lang/String;
    .end local v16           #inserted:Landroid/net/Uri;
    .restart local v4       #Date:Landroid/text/format/Time;
    :cond_2d0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_ae

    .line 513
    :cond_2f5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x6

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_115

    .line 520
    .end local v4           #Date:Landroid/text/format/Time;
    :cond_31a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 521
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v21

    if-le v0, v1, :cond_358

    .line 523
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 524
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_153

    .line 528
    :cond_358
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    add-int/lit8 v25, v17, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_153

    .line 577
    :cond_366
    long-to-int v0, v14

    move/from16 v24, v0

    .line 621
    :goto_369
    return v24

    .line 581
    :cond_36a
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 582
    const-string v24, "Title"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v24, "Text"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v24, "Content"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v24, "IsFavorite"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 586
    const-string v24, "IsLock"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 587
    const-string v24, "Drawing"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 588
    const-string v24, "Tehme"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    const-string v24, "Tag"

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v24, "ParentID"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const-string v24, "LastMode"

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    const-string v24, "HasVoice"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    const-string v24, "PileOrder"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v24, "IsFolder"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v24, "CreateDate"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 596
    const-string v24, "Date"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 597
    const-string v24, "isTemp"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 599
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 600
    .restart local v16       #inserted:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 601
    .restart local v6       #MemoID:Ljava/lang/String;
    if-eqz v16, :cond_46a

    .line 602
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #MemoID:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 604
    .restart local v6       #MemoID:Ljava/lang/String;
    :cond_46a
    aget-object v24, v22, v13

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lcom/wssnps/database/smlSmemoItem;->buildThumbnail(Landroid/content/ContentValues;Ljava/lang/String;)[B

    move-result-object v19

    .line 605
    if-eqz v19, :cond_4d3

    .line 607
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 608
    .restart local v8       #Thumb_filepath:Ljava/lang/StringBuffer;
    sget-object v24, Lcom/wssnps/database/smlSmemoItem;->thumbFileName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ".png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 610
    const-string v24, "Thumb"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 611
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 612
    .restart local v23       #update_uri:Landroid/net/Uri;
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 613
    sget-object v24, Lcom/wssnps/database/smlSmemoItem;->cacheFilePath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/wssnps/database/smlSmemoItem;->fileAdd(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 621
    .end local v8           #Thumb_filepath:Ljava/lang/StringBuffer;
    .end local v23           #update_uri:Landroid/net/Uri;
    :cond_4d3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_369

    .line 489
    nop

    :array_4da
    .array-data 0x1
        0x3ct
        0x73t
        0x6ct
        0x69t
        0x64t
        0x65t
        0x20t
        0x73t
        0x69t
        0x7at
        0x65t
        0x3dt
        0x22t
        0x37t
        0x38t
        0x34t
        0x2ct
        0x32t
        0x32t
        0x34t
        0x32t
        0x33t
        0x3et
        0xdt
        0xat
        0x9t
        0x3ct
        0x69t
        0x6et
        0x6bt
        0x3et
        0xdt
        0xat
        0x9t
        0x3ct
        0x2ft
        0x69t
        0x6et
        0x6bt
        0x3et
        0xdt
        0xat
        0x3ct
        0x2ft
        0x73t
        0x6ct
        0x69t
        0x64t
        0x65t
        0x3et
        0xdt
        0xat
    .end array-data
.end method

.method public static deleteMemo(Landroid/content/ContentResolver;I)Z
    .registers 5
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    .line 365
    const-string v1, "content://com.samsung.sec.android/memo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 367
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_22

    .line 368
    const/4 v1, 0x1

    .line 370
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public static deleteSmemo(Landroid/content/ContentResolver;I)Z
    .registers 7
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    const/4 v4, 0x0

    .line 633
    const-string v2, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 634
    .local v1, penmemo_Uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3e

    .line 636
    const-string v2, "content://com.sec.android.widgetapp.q1_penmemo/ExtData"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 637
    .local v0, extdata_Uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemoID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 638
    const/4 v2, 0x1

    .line 642
    .end local v0           #extdata_Uri:Landroid/net/Uri;
    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public static getMemoIndexArray(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .registers 10
    .parameter "cResolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v6, aListId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "content://com.samsung.sec.android/memo/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .local v8, nIdIndex:I
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 165
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 166
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 169
    :cond_21
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_21

    .line 172
    :cond_32
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 174
    return-object v6
.end method

.method public static getMemoItem(Landroid/content/ContentResolver;I)Lcom/wssnps/database/smlMemoItem;
    .registers 10
    .parameter "cResolver"
    .parameter "nLuid"

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v7, 0x0

    .line 180
    .local v7, memoItem:Lcom/wssnps/database/smlMemoItem;
    const-string v0, "content://com.samsung.sec.android/memo/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 181
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 187
    :cond_16
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, p1, :cond_73

    .line 189
    new-instance v7, Lcom/wssnps/database/smlMemoItem;

    .end local v7           #memoItem:Lcom/wssnps/database/smlMemoItem;
    invoke-direct {v7}, Lcom/wssnps/database/smlMemoItem;-><init>()V

    .line 191
    .restart local v7       #memoItem:Lcom/wssnps/database/smlMemoItem;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/wssnps/database/smlMemoItem;->_id:I

    .line 192
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/database/smlMemoItem;->title:Ljava/lang/String;

    .line 193
    const-string v0, "content"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    .line 194
    const-string v0, "color"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/wssnps/database/smlMemoItem;->color:I

    .line 195
    const-string v0, "create_t"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/wssnps/database/smlMemoItem;->dtstart:J

    .line 196
    const-string v0, "modify_t"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    .line 203
    :cond_6f
    :goto_6f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    return-object v7

    .line 200
    :cond_73
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_6f
.end method

.method public static getMemoSize(Landroid/content/ContentResolver;)I
    .registers 9
    .parameter "cResolver"

    .prologue
    const/4 v2, 0x0

    .line 148
    const-string v0, "content://com.samsung.sec.android/memo/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .local v7, nCount:I
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 151
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    return v7
.end method

.method public static getSMemoIndexArray(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .registers 16
    .parameter "cResolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 415
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v9, aListId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 417
    .local v1, penmemo_Uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 418
    .local v12, m_HasVoice:I
    const/4 v14, 0x0

    .line 419
    .local v14, nIdIndex:I
    const/4 v13, 0x0

    .local v13, m_ParentID:I
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 421
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 422
    .local v10, cursor:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 424
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 427
    :cond_23
    const-string v0, "HasVoice"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 428
    const-string v0, "ParentID"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemoID=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, selection:Ljava/lang/String;
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/ExtData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, extdata_Uri:Landroid/net/Uri;
    move-object v3, p0

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    .line 431
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 432
    .local v11, ed_cursor:Landroid/database/Cursor;
    if-nez v12, :cond_7b

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7b

    if-nez v13, :cond_7b

    .line 434
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_7b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 437
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 439
    .end local v4           #extdata_Uri:Landroid/net/Uri;
    .end local v6           #selection:Ljava/lang/String;
    .end local v11           #ed_cursor:Landroid/database/Cursor;
    :cond_84
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 441
    return-object v9
.end method

.method public static getSMemoItem(Landroid/content/ContentResolver;I)Lcom/wssnps/database/smlMemoItem;
    .registers 10
    .parameter "cResolver"
    .parameter "nLuid"

    .prologue
    const/4 v2, 0x0

    .line 446
    const/4 v7, 0x0

    .line 447
    .local v7, memoItem:Lcom/wssnps/database/smlMemoItem;
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, penmemo_Uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 449
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 451
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 455
    :cond_16
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, p1, :cond_67

    .line 457
    new-instance v7, Lcom/wssnps/database/smlMemoItem;

    .end local v7           #memoItem:Lcom/wssnps/database/smlMemoItem;
    invoke-direct {v7}, Lcom/wssnps/database/smlMemoItem;-><init>()V

    .line 458
    .restart local v7       #memoItem:Lcom/wssnps/database/smlMemoItem;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/wssnps/database/smlMemoItem;->_id:I

    .line 459
    const-string v0, "Text"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    .line 460
    const-string v0, "Title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/wssnps/database/smlMemoItem;->title:Ljava/lang/String;

    .line 461
    const-string v0, "CreateDate"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/wssnps/database/smlMemoItem;->dtstart:J

    .line 462
    const-string v0, "Date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    .line 468
    :cond_63
    :goto_63
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 470
    return-object v7

    .line 465
    :cond_67
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_63
.end method

.method public static getSMemoSize(Landroid/content/ContentResolver;)I
    .registers 16
    .parameter "cResolver"

    .prologue
    const/4 v2, 0x0

    .line 383
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/PenMemo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 384
    .local v1, penmemo_Uri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 385
    .local v13, nCount:I
    const/4 v11, 0x0

    .line 386
    .local v11, m_HasVoice:I
    const/4 v14, 0x0

    .line 387
    .local v14, nIdIndex:I
    const/4 v12, 0x0

    .local v12, m_ParentID:I
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 389
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 390
    .local v9, cursor:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 392
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 395
    :cond_1f
    const-string v0, "HasVoice"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 396
    const-string v0, "ParentID"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemoID=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, selection:Ljava/lang/String;
    const-string v0, "content://com.sec.android.widgetapp.q1_penmemo/ExtData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, extdata_Uri:Landroid/net/Uri;
    move-object v3, p0

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    .line 400
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 401
    .local v10, ed_cursor:Landroid/database/Cursor;
    if-nez v11, :cond_6e

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6e

    if-nez v12, :cond_6e

    .line 403
    add-int/lit8 v13, v13, 0x1

    .line 405
    :cond_6e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 406
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 408
    .end local v4           #extdata_Uri:Landroid/net/Uri;
    .end local v6           #selection:Ljava/lang/String;
    .end local v10           #ed_cursor:Landroid/database/Cursor;
    :cond_77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 410
    return v13
.end method

.method public static replaceMemo(Landroid/content/ContentResolver;Lcom/wssnps/database/smlMemoItem;I)I
    .registers 14
    .parameter "cResolver"
    .parameter "memodb"
    .parameter "luid"

    .prologue
    .line 296
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v2, cv:Landroid/content/ContentValues;
    const-string v8, "content://com.samsung.sec.android/memo"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 300
    .local v7, uri:Landroid/net/Uri;
    const-string v5, ""

    .local v5, title:Ljava/lang/String;
    const-string v1, ""

    .line 302
    .local v1, content:Ljava/lang/String;
    const/16 v6, 0x64

    .line 304
    .local v6, titlesize:I
    iget-object v8, p1, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 306
    .local v3, nIndex:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_151

    .line 308
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 309
    .local v0, Date:Landroid/text/format/Time;
    iget-wide v8, p1, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 310
    const/4 v8, -0x1

    invoke-static {v0, v8}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 312
    const/4 v8, -0x1

    invoke-static {v0, v8}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_117

    .line 313
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    :goto_65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v0, v9}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    const/4 v8, -0x1

    invoke-static {v0, v8}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_134

    .line 319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    :goto_b4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v0, v9}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 324
    iget-object v1, p1, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    .line 342
    .end local v0           #Date:Landroid/text/format/Time;
    :goto_e4
    const-string v8, "content"

    iget-object v9, p1, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v8, "title"

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v8, "color"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    if-eqz v2, :cond_179

    .line 353
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, selection:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v2, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_177

    .line 360
    .end local v4           #selection:Ljava/lang/String;
    .end local p2
    :goto_116
    return p2

    .line 315
    .restart local v0       #Date:Landroid/text/format/Time;
    .restart local p2
    :cond_117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v0, v9}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_65

    .line 321
    :cond_134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v0, v9}, Lcom/wssnps/base/smlvItemApi;->VItemTimeToStringTime(Landroid/text/format/Time;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_b4

    .line 329
    .end local v0           #Date:Landroid/text/format/Time;
    :cond_151
    iget-object v8, p1, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 330
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_16d

    .line 332
    iget-object v8, p1, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 333
    iget-object v8, p1, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e4

    .line 337
    :cond_16d
    iget-object v8, p1, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e4

    .line 357
    .restart local v4       #selection:Ljava/lang/String;
    :cond_177
    const/4 p2, 0x0

    goto :goto_116

    .line 360
    .end local v4           #selection:Ljava/lang/String;
    :cond_179
    const/4 p2, 0x0

    goto :goto_116
.end method

.method public static replaceSMemo(Landroid/content/ContentResolver;Lcom/wssnps/database/smlMemoItem;I)I
    .registers 4
    .parameter "cResolver"
    .parameter "memodb"
    .parameter "luid"

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public EncodeVNote()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/wssnps/database/smlMemoItem;->ToSmlvCal_t()Lcom/wssnps/base/smlvCal$SmlvCal_t;

    move-result-object v1

    .line 90
    .local v1, v:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    invoke-static {v1}, Lcom/wssnps/base/smlvCal;->EncodeVCal(Lcom/wssnps/base/smlvCal$SmlvCal_t;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method

.method public ToSmlvCal_t()Lcom/wssnps/base/smlvCal$SmlvCal_t;
    .registers 10

    .prologue
    .line 107
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 108
    .local v2, time:Landroid/text/format/Time;
    iget-object v4, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 110
    .local v3, timezone:Ljava/util/TimeZone;
    new-instance v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;

    invoke-direct {v1}, Lcom/wssnps/base/smlvCal$SmlvCal_t;-><init>()V

    .line 111
    .local v1, smlvcal:Lcom/wssnps/base/smlvCal$SmlvCal_t;
    iget v4, p0, Lcom/wssnps/database/smlMemoItem;->_id:I

    iput v4, v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->luid:I

    .line 113
    sget-object v4, Lcom/wssnps/base/smlvCal$SmlvCalVersion;->VCAL_V10:Lcom/wssnps/base/smlvCal$SmlvCalVersion;

    iput-object v4, v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->VERSION:Lcom/wssnps/base/smlvCal$SmlvCalVersion;

    .line 116
    iget-object v4, p0, Lcom/wssnps/database/smlMemoItem;->description:Ljava/lang/String;

    iput-object v4, v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->DESCRIPTION:Ljava/lang/String;

    .line 131
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    .line 134
    iget-wide v4, p0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    invoke-virtual {v3, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 135
    .local v0, realOffset:I
    iget-object v4, v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->StartDate:Landroid/text/format/Time;

    iget-wide v5, p0, Lcom/wssnps/database/smlMemoItem;->dtmodify:J

    int-to-long v7, v0

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 140
    const/4 v4, 0x0

    iput v4, v1, Lcom/wssnps/base/smlvCal$SmlvCal_t;->AllDay:I

    .line 142
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/wssnps/database/smlMemoItem;->EncodeVNote()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
