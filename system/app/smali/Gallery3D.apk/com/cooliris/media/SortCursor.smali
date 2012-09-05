.class public Lcom/cooliris/media/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# instance fields
.field private mAscending:Z

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursorIndex:I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I

.field private mType:I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V
    .registers 15
    .parameter "cursors"
    .parameter "sortcolumn"
    .parameter "type"
    .parameter "ascending"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 39
    const/16 v8, 0x40

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mRowNumCache:[I

    .line 40
    const/16 v8, 0x40

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursorCache:[I

    .line 42
    const/4 v8, -0x1

    iput v8, p0, Lcom/cooliris/media/SortCursor;->mLastCacheHit:I

    .line 48
    new-instance v8, Lcom/cooliris/media/SortCursor$1;

    invoke-direct {v8, p0}, Lcom/cooliris/media/SortCursor$1;-><init>(Lcom/cooliris/media/SortCursor;)V

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 64
    iput-boolean p4, p0, Lcom/cooliris/media/SortCursor;->mAscending:Z

    .line 65
    invoke-virtual {p1}, [Landroid/database/Cursor;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/database/Cursor;

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 66
    iput p3, p0, Lcom/cooliris/media/SortCursor;->mType:I

    .line 67
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v5, v8

    .line 68
    .local v5, length:I
    new-array v8, v5, [I

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mSortColumns:[I

    .line 69
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2d
    if-ge v3, v5, :cond_55

    .line 70
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    if-nez v8, :cond_38

    .line 69
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 74
    :cond_38
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/cooliris/media/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mSortColumns:[I

    iget-object v9, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    invoke-interface {v9, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v3

    goto :goto_35

    .line 79
    :cond_55
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 80
    if-nez p3, :cond_94

    .line 81
    const-string v6, ""

    .line 82
    .local v6, smallest:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5d
    if-ge v4, v5, :cond_e1

    .line 83
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    if-eqz v8, :cond_6f

    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 82
    :cond_6f
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 85
    :cond_72
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/cooliris/media/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, current:Ljava/lang/String;
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_8a

    if-eqz v1, :cond_8a

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_6f

    .line 87
    :cond_8a
    move-object v6, v1

    .line 88
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 89
    iput v4, p0, Lcom/cooliris/media/SortCursor;->mCursorIndex:I

    goto :goto_6f

    .line 93
    .end local v1           #current:Ljava/lang/String;
    .end local v4           #j:I
    .end local v6           #smallest:Ljava/lang/String;
    :cond_94
    if-eqz p4, :cond_b1

    const-wide v6, 0x7fffffffffffffffL

    .line 94
    .local v6, smallest:J
    :goto_9b
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_9c
    if-ge v4, v5, :cond_e1

    .line 95
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    if-eqz v8, :cond_ae

    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 94
    :cond_ae
    :goto_ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 93
    .end local v4           #j:I
    .end local v6           #smallest:J
    :cond_b1
    const-wide/high16 v6, -0x8000

    goto :goto_9b

    .line 98
    .restart local v4       #j:I
    .restart local v6       #smallest:J
    :cond_b4
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/cooliris/media/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 99
    .local v1, current:J
    if-eqz p4, :cond_d9

    cmp-long v8, v1, v6

    if-gez v8, :cond_d7

    const/4 v0, 0x1

    .line 100
    .local v0, comparison:Z
    :goto_c7
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_cd

    if-eqz v0, :cond_ae

    .line 101
    :cond_cd
    move-wide v6, v1

    .line 102
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 103
    iput v4, p0, Lcom/cooliris/media/SortCursor;->mCursorIndex:I

    goto :goto_ae

    .line 99
    .end local v0           #comparison:Z
    :cond_d7
    const/4 v0, 0x0

    goto :goto_c7

    :cond_d9
    cmp-long v8, v1, v6

    if-lez v8, :cond_df

    const/4 v0, 0x1

    goto :goto_c7

    :cond_df
    const/4 v0, 0x0

    goto :goto_c7

    .line 108
    .end local v1           #current:J
    .end local v6           #smallest:J
    :cond_e1
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mRowNumCache:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    :goto_e6
    if-ltz v3, :cond_f0

    .line 109
    iget-object v8, p0, Lcom/cooliris/media/SortCursor;->mRowNumCache:[I

    const/4 v9, -0x2

    aput v9, v8, v3

    .line 108
    add-int/lit8 v3, v3, -0x1

    goto :goto_e6

    .line 111
    :cond_f0
    const/16 v8, 0x40

    filled-new-array {v8, v5}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    iput-object v8, p0, Lcom/cooliris/media/SortCursor;->mCurRowNumCache:[[I

    .line 112
    return-void
.end method

.method static synthetic access$002(Lcom/cooliris/media/SortCursor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/cooliris/media/SortCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/cooliris/media/SortCursor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/cooliris/media/SortCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 305
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 306
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_17

    .line 307
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    .line 306
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 309
    :cond_f
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_c

    .line 311
    :cond_17
    return-void
.end method

.method public deactivate()V
    .registers 4

    .prologue
    .line 295
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 296
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_17

    .line 297
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    .line 296
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 299
    :cond_f
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_c

    .line 301
    :cond_17
    return-void
.end method

.method public getBlob(I)[B
    .registers 3
    .parameter "column"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 278
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_b

    .line 279
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 286
    :goto_a
    return-object v2

    .line 283
    :cond_b
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 284
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-ge v0, v1, :cond_23

    .line 285
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_20

    .line 286
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 284
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 289
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, count:I
    iget-object v3, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 118
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_19

    .line 119
    iget-object v3, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_16

    .line 120
    iget-object v3, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 118
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 123
    :cond_19
    return v0
.end method

.method public getCurrentCursorIndex()I
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Lcom/cooliris/media/SortCursor;->mCursorIndex:I

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "column"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "column"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .registers 19
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 128
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_8

    .line 129
    const/4 v13, 0x1

    .line 233
    :goto_7
    return v13

    .line 139
    :cond_8
    rem-int/lit8 v2, p2, 0x40

    .line 141
    .local v2, cache_entry:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mRowNumCache:[I

    aget v13, v13, v2

    move/from16 v0, p2

    if-ne v13, v0, :cond_4c

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursorCache:[I

    aget v12, v13, v2

    .line 143
    .local v12, which:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v12

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 144
    move-object/from16 v0, p0

    iput v12, v0, Lcom/cooliris/media/SortCursor;->mCursorIndex:I

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v13, :cond_37

    .line 146
    const-string v13, "SortCursor"

    const-string v14, "onMove: cache results in a null cursor."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v13, 0x0

    goto :goto_7

    .line 149
    :cond_37
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/SortCursor;->mCurRowNumCache:[[I

    aget-object v14, v14, v2

    aget v14, v14, v12

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 150
    move-object/from16 v0, p0

    iput v2, v0, Lcom/cooliris/media/SortCursor;->mLastCacheHit:I

    .line 151
    const/4 v13, 0x1

    goto :goto_7

    .line 154
    .end local v12           #which:I
    :cond_4c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v8, v13

    .line 157
    .local v8, length:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/SortCursor;->mLastCacheHit:I

    if-ltz v13, :cond_80

    .line 158
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5d
    if-ge v6, v8, :cond_80

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    if-nez v13, :cond_6a

    .line 158
    :goto_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 161
    :cond_6a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/SortCursor;->mCurRowNumCache:[[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/SortCursor;->mLastCacheHit:I

    aget-object v14, v14, v15

    aget v14, v14, v6

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_67

    .line 165
    .end local v6           #i:I
    :cond_80
    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_8b

    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_a5

    .line 166
    :cond_8b
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_8c
    if-ge v6, v8, :cond_a3

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    if-nez v13, :cond_99

    .line 166
    :goto_96
    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    .line 169
    :cond_99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_96

    .line 171
    :cond_a3
    const/16 p1, 0x0

    .line 173
    .end local v6           #i:I
    :cond_a5
    if-gez p1, :cond_a9

    .line 174
    const/16 p1, 0x0

    .line 178
    :cond_a9
    const/4 v11, -0x1

    .line 179
    .local v11, smallestIdx:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/SortCursor;->mType:I

    if-nez v13, :cond_143

    .line 180
    move/from16 v6, p1

    .restart local v6       #i:I
    :goto_b2
    move/from16 v0, p2

    if-gt v6, v0, :cond_f4

    .line 181
    const-string v9, ""

    .line 182
    .local v9, smallest:Ljava/lang/String;
    const/4 v11, -0x1

    .line 183
    const/4 v7, 0x0

    .local v7, j:I
    :goto_ba
    if-ge v7, v8, :cond_f0

    .line 184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    if-eqz v13, :cond_d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_d3

    .line 183
    :cond_d0
    :goto_d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_ba

    .line 187
    :cond_d3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/SortCursor;->mSortColumns:[I

    aget v14, v14, v7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, current:Ljava/lang/String;
    if-ltz v11, :cond_ed

    if-eqz v4, :cond_ed

    invoke-virtual {v4, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_d0

    .line 189
    :cond_ed
    move-object v9, v4

    .line 190
    move v11, v7

    goto :goto_d0

    .line 193
    .end local v4           #current:Ljava/lang/String;
    :cond_f0
    move/from16 v0, p2

    if-ne v6, v0, :cond_12e

    .line 223
    .end local v7           #j:I
    .end local v9           #smallest:Ljava/lang/String;
    :cond_f4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 224
    move-object/from16 v0, p0

    iput v11, v0, Lcom/cooliris/media/SortCursor;->mCursorIndex:I

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mRowNumCache:[I

    aput p2, v13, v2

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursorCache:[I

    aput v11, v13, v2

    .line 227
    const/4 v6, 0x0

    :goto_10f
    if-ge v6, v8, :cond_1b6

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    if-eqz v13, :cond_12b

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCurRowNumCache:[[I

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v14, v14, v6

    invoke-interface {v14}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    aput v14, v13, v6

    .line 227
    :cond_12b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10f

    .line 196
    .restart local v7       #j:I
    .restart local v9       #smallest:Ljava/lang/String;
    :cond_12e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    if-eqz v13, :cond_13f

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 180
    :cond_13f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b2

    .line 201
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #smallest:Ljava/lang/String;
    :cond_143
    move/from16 v6, p1

    .restart local v6       #i:I
    :goto_145
    move/from16 v0, p2

    if-gt v6, v0, :cond_f4

    .line 202
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cooliris/media/SortCursor;->mAscending:Z

    if-eqz v13, :cond_16f

    const-wide v9, 0x7fffffffffffffffL

    .line 203
    .local v9, smallest:J
    :goto_154
    const/4 v11, -0x1

    .line 204
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_156
    if-ge v7, v8, :cond_19e

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    if-eqz v13, :cond_16c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_172

    .line 204
    :cond_16c
    :goto_16c
    add-int/lit8 v7, v7, 0x1

    goto :goto_156

    .line 202
    .end local v7           #j:I
    .end local v9           #smallest:J
    :cond_16f
    const-wide/high16 v9, -0x8000

    goto :goto_154

    .line 208
    .restart local v7       #j:I
    .restart local v9       #smallest:J
    :cond_172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/SortCursor;->mSortColumns:[I

    aget v14, v14, v7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 209
    .local v4, current:J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cooliris/media/SortCursor;->mAscending:Z

    if-eqz v13, :cond_196

    cmp-long v13, v4, v9

    if-gez v13, :cond_194

    const/4 v3, 0x1

    .line 210
    .local v3, comparison:Z
    :goto_18d
    if-ltz v11, :cond_191

    if-eqz v3, :cond_16c

    .line 211
    :cond_191
    move-wide v9, v4

    .line 212
    move v11, v7

    goto :goto_16c

    .line 209
    .end local v3           #comparison:Z
    :cond_194
    const/4 v3, 0x0

    goto :goto_18d

    :cond_196
    cmp-long v13, v4, v9

    if-lez v13, :cond_19c

    const/4 v3, 0x1

    goto :goto_18d

    :cond_19c
    const/4 v3, 0x0

    goto :goto_18d

    .line 215
    .end local v4           #current:J
    :cond_19e
    move/from16 v0, p2

    if-eq v6, v0, :cond_f4

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    if-eqz v13, :cond_1b3

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 201
    :cond_1b3
    add-int/lit8 v6, v6, 0x1

    goto :goto_145

    .line 232
    .end local v7           #j:I
    .end local v9           #smallest:J
    :cond_1b6
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cooliris/media/SortCursor;->mLastCacheHit:I

    .line 233
    const/4 v13, 0x1

    goto/16 :goto_7
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5
    .parameter "observer"

    .prologue
    .line 315
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 316
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_16

    .line 317
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    .line 318
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 321
    :cond_16
    return-void
.end method

.method public requery()Z
    .registers 4

    .prologue
    .line 335
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 336
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_1b

    .line 337
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    .line 336
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 340
    :cond_f
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_c

    .line 341
    const/4 v2, 0x0

    .line 345
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5
    .parameter "observer"

    .prologue
    .line 325
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 326
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_16

    .line 327
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    .line 328
    iget-object v2, p0, Lcom/cooliris/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 326
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 331
    :cond_16
    return-void
.end method
