.class public Lcom/android/providers/calendar/OrderCursor;
.super Landroid/database/AbstractCursor;
.source "OrderCursor.java"


# instance fields
.field private cols:[Ljava/lang/String;

.field private mCacheValid:Z

.field private mCursor:Landroid/database/Cursor;

.field private mIndent:I

.field private mOrder:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 26
    iput v0, p0, Lcom/android/providers/calendar/OrderCursor;->mIndent:I

    .line 29
    iput-boolean v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCacheValid:Z

    .line 31
    if-eqz p1, :cond_12

    .line 32
    iput-object p1, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/OrderCursor;->newOrderByGroup(Landroid/database/Cursor;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/providers/calendar/OrderCursor;->moveToFirst()Z

    .line 36
    :cond_12
    return-void
.end method

.method private newOrderByGroup(Landroid/database/Cursor;)V
    .registers 23
    .parameter "c"

    .prologue
    .line 53
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 54
    .local v17, size:I
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/providers/calendar/OrderCursor;->mCacheValid:Z

    .line 55
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    .line 56
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ge v0, v1, :cond_18

    .line 99
    :goto_17
    return-void

    .line 57
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    .line 58
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 59
    .local v2, mId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 60
    .local v3, mPre:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 61
    .local v4, mPar:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Long;[Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .line 62
    .local v14, j:I
    const/4 v5, 0x0

    .line 63
    .local v5, lastPos:I
    const-wide/16 v6, -0x1

    .line 64
    .local v6, groupid:J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 66
    .local v11, idx_id:I
    const-string v1, "groupId"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 67
    .local v10, idx_group:I
    const-string v1, "previousId"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 68
    .local v13, idx_previous:I
    const-string v1, "parentId"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 70
    .local v12, idx_parent:I
    :cond_57
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 71
    .local v9, id:Ljava/lang/Long;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 72
    .local v8, g:Ljava/lang/Long;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 73
    .local v15, p:Ljava/lang/Long;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 74
    .local v16, pa:Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v1, v18, v6

    if-eqz v1, :cond_a0

    .line 75
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_9b

    move-object/from16 v1, p0

    .line 76
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/calendar/OrderCursor;->updateOrder(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Hashtable;IJ)V

    .line 77
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 78
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 79
    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 81
    :cond_9b
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 82
    move v5, v14

    .line 84
    :cond_a0
    add-int/lit8 v14, v14, 0x1

    .line 85
    invoke-virtual {v2, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v3, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    const/16 v18, 0x0

    aput-object v16, v1, v18

    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v1, v18

    invoke-virtual {v4, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_57

    .line 90
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_d6

    move-object/from16 v1, p0

    .line 91
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/calendar/OrderCursor;->updateOrder(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Hashtable;IJ)V

    .line 92
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 93
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 94
    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 96
    :cond_d6
    const/4 v2, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    goto/16 :goto_17
.end method

.method private updateOrder(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Hashtable;IJ)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter "from"
    .parameter "gid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Long;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, mId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Long;>;"
    .local p2, mPre:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Long;>;"
    .local p3, mPar:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Long;[Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Vector;

    .line 102
    .local v9, tmp:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v8

    .line 103
    .local v8, size:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_c
    if-ge v2, v8, :cond_50

    .line 104
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 105
    .local v7, pId:Ljava/lang/Long;
    if-eqz v7, :cond_df

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_27

    move v1, v2

    .line 103
    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_23
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_c

    .line 108
    :cond_27
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v5, v11, 0x1

    .line 109
    .local v5, nextP:I
    if-ne v2, v5, :cond_33

    move v1, v2

    .line 110
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_23

    .line 112
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_33
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 114
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v7}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 115
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_23

    .line 117
    .end local v1           #i:I
    .end local v5           #nextP:I
    .end local v7           #pId:Ljava/lang/Long;
    .restart local v2       #i:I
    :cond_50
    const/4 v1, 0x0

    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_51
    if-ge v1, v8, :cond_da

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 119
    .local v3, id:Ljava/lang/Long;
    invoke-virtual {v9, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v11

    sub-int v6, v11, v1

    .line 120
    .local v6, off:I
    add-int v4, p4, v1

    .line 121
    .local v4, idx:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Long;

    .line 122
    .local v10, val:[Ljava/lang/Long;
    const/4 v11, 0x0

    aget-object v11, v10, v11

    if-eqz v11, :cond_99

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_99

    .line 123
    const/4 v12, 0x1

    const/4 v11, 0x0

    aget-object v11, v10, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Long;

    const/4 v13, 0x1

    aget-object v11, v11, v13

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    .line 125
    :cond_99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    const/4 v11, 0x6

    new-array v13, v11, [J

    const/4 v11, 0x0

    add-int v14, v4, v6

    int-to-long v14, v14

    aput-wide v14, v13, v11

    const/4 v11, 0x1

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v13, v11

    const/4 v11, 0x2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v13, v11

    const/4 v11, 0x3

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v13, v11

    const/4 v11, 0x4

    aput-wide p5, v13, v11

    const/4 v14, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    aput-wide v15, v13, v14

    invoke-virtual {v12, v4, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_51

    .line 128
    .end local v3           #id:Ljava/lang/Long;
    .end local v4           #idx:I
    .end local v6           #off:I
    .end local v10           #val:[Ljava/lang/Long;
    :cond_da
    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 129
    const/4 v9, 0x0

    .line 130
    return-void

    .end local v1           #i:I
    .restart local v2       #i:I
    .restart local v7       #pId:Ljava/lang/Long;
    :cond_df
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto/16 :goto_23
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    if-eqz v0, :cond_c

    .line 397
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 398
    iput-object v1, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    .line 400
    :cond_c
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->cols:[Ljava/lang/String;

    if-eqz v0, :cond_12

    iput-object v1, p0, Lcom/android/providers/calendar/OrderCursor;->cols:[Ljava/lang/String;

    .line 401
    :cond_12
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1d

    .line 402
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 403
    iput-object v1, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    .line 405
    :cond_1d
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 4
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 343
    return-void
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 410
    return-void
.end method

.method public getBlob(I)[B
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getCacheValid()Z
    .registers 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCacheValid:Z

    return v0
.end method

.method public getChildIds(J)Ljava/lang/String;
    .registers 14
    .parameter "id"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, obj:[J
    const-string v1, ""

    .line 184
    .local v1, ids:Ljava/lang/String;
    const/4 v2, -0x1

    .line 185
    .local v2, l:I
    iget-object v5, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 186
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v4, :cond_21

    .line 187
    iget-object v5, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #obj:[J
    check-cast v3, [J

    .line 188
    .restart local v3       #obj:[J
    const/4 v5, -0x1

    if-eq v2, v5, :cond_50

    .line 189
    aget-wide v5, v3, v9

    int-to-long v7, v2

    cmp-long v5, v5, v7

    if-gtz v5, :cond_34

    .line 195
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_33

    .line 196
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .end local v1           #ids:Ljava/lang/String;
    :cond_33
    return-object v1

    .line 190
    .restart local v1       #ids:Ljava/lang/String;
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v3, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 191
    :cond_50
    aget-wide v5, v3, v10

    cmp-long v5, p1, v5

    if-nez v5, :cond_4d

    .line 192
    aget-wide v5, v3, v9

    long-to-int v2, v5

    goto :goto_4d
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->cols:[Ljava/lang/String;

    if-nez v2, :cond_28

    .line 304
    iget-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 305
    .local v1, size:I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->cols:[Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_22

    .line 307
    iget-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->cols:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 309
    :cond_22
    iget-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->cols:[Ljava/lang/String;

    const-string v3, "indent"

    aput-object v3, v2, v1

    .line 311
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_28
    iget-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->cols:[Ljava/lang/String;

    return-object v2
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "arg0"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "arg0"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "idx"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParentIds(J)Ljava/lang/String;
    .registers 15
    .parameter "id"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 157
    const/4 v4, 0x0

    .line 158
    .local v4, obj:[J
    const-string v1, ""

    .line 159
    .local v1, ids:Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 160
    .local v2, l:J
    iget-object v6, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 161
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v5, :cond_55

    .line 162
    iget-object v6, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #obj:[J
    check-cast v4, [J

    .line 163
    .restart local v4       #obj:[J
    aget-wide v6, v4, v11

    cmp-long v6, p1, v6

    if-nez v6, :cond_68

    .line 164
    aget-wide v2, v4, v10

    .line 165
    :cond_20
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_55

    .line 166
    iget-object v6, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #obj:[J
    check-cast v4, [J

    .line 167
    .restart local v4       #obj:[J
    aget-wide v6, v4, v10

    cmp-long v6, v6, v2

    if-gez v6, :cond_4d

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, v4, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    aget-wide v2, v4, v10

    .line 171
    :cond_4d
    aget-wide v6, v4, v10

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_20

    .line 176
    :cond_55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_67

    .line 177
    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .end local v1           #ids:Ljava/lang/String;
    :cond_67
    return-object v1

    .line 161
    .restart local v1       #ids:Ljava/lang/String;
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public getShort(I)S
    .registers 3
    .parameter "arg0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 374
    iget v0, p0, Lcom/android/providers/calendar/OrderCursor;->mIndent:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getUnIndentNextId(JJ)Ljava/lang/String;
    .registers 16
    .parameter "id"
    .parameter "newParent"

    .prologue
    .line 132
    const/4 v5, 0x0

    .line 133
    .local v5, obj:[J
    const/4 v4, 0x0

    .line 134
    .local v4, item:[J
    const-string v3, ""

    .line 135
    .local v3, ids:Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 136
    .local v0, gid:J
    iget-object v7, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v6

    .line 137
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v6, :cond_20

    .line 138
    iget-object v7, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #obj:[J
    check-cast v5, [J

    .line 139
    .restart local v5       #obj:[J
    if-eqz v4, :cond_5b

    .line 140
    const/4 v7, 0x4

    aget-wide v7, v5, v7

    cmp-long v7, v0, v7

    if-eqz v7, :cond_34

    .line 150
    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_33

    .line 151
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .end local v3           #ids:Ljava/lang/String;
    :cond_33
    return-object v3

    .line 141
    .restart local v3       #ids:Ljava/lang/String;
    :cond_34
    const/4 v7, 0x3

    aget-wide v7, v4, v7

    const/4 v9, 0x3

    aget-wide v9, v5, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_58

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-wide v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 144
    :cond_5b
    const/4 v7, 0x2

    aget-wide v7, v5, v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_58

    .line 145
    const/4 v7, 0x3

    aget-wide v7, v5, v7

    cmp-long v7, p3, v7

    if-eqz v7, :cond_33

    .line 146
    move-object v4, v5

    .line 147
    const/4 v7, 0x4

    aget-wide v0, v5, v7

    goto :goto_58
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .registers 7
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 385
    move v0, p2

    .line 386
    .local v0, p:I
    iget-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p2, v2, :cond_1b

    .line 387
    iget-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->mOrder:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 388
    .local v1, val:[J
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v0, v2

    .line 389
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/providers/calendar/OrderCursor;->mIndent:I

    .line 391
    .end local v1           #val:[J
    :cond_1b
    iget-object v2, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    return v2
.end method

.method public refreshFromDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 221
    iget-boolean v1, p0, Lcom/android/providers/calendar/OrderCursor;->mCacheValid:Z

    if-eqz v1, :cond_5

    .line 231
    :cond_4
    :goto_4
    return-void

    .line 222
    :cond_5
    const-string v1, "SELECT t._id AS _id,parentId,groupId,previousId FROM Tasks t, TaskGroup tg WHERE tg._id=t.groupId AND selected=1 ORDER BY groupId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 226
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 227
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/OrderCursor;->newOrderByGroup(Landroid/database/Cursor;)V

    .line 228
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 453
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 458
    return-void
.end method

.method public requery()Z
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .parameter "extras"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setCacheInvalid()V
    .registers 2

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCacheValid:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/providers/calendar/OrderCursor;->close()V

    .line 332
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .parameter "cr"
    .parameter "notifyUri"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 473
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 479
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/providers/calendar/OrderCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 484
    return-void
.end method
