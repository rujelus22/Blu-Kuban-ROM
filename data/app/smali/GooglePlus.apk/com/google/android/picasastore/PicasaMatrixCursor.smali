.class public Lcom/google/android/picasastore/PicasaMatrixCursor;
.super Landroid/database/AbstractCursor;
.source "PicasaMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter "columnNames"

    .prologue
    .line 60
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/google/android/picasastore/PicasaMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .registers 4
    .parameter "columnNames"
    .parameter "initialCapacity"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->rowCount:I

    .line 43
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnNames:[Ljava/lang/String;

    .line 44
    array-length v0, p1

    iput v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    .line 46
    const/4 v0, 0x1

    if-ge p2, v0, :cond_f

    .line 47
    const/4 p2, 0x1

    .line 50
    :cond_f
    iget v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasastore/PicasaMatrixCursor;)[Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method private ensureCapacity(I)V
    .registers 7
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1a

    .line 174
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    .line 175
    .local v1, oldData:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 176
    .local v0, newSize:I
    if-ge v0, p1, :cond_10

    .line 177
    move v0, p1

    .line 179
    :cond_10
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    .line 180
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    .end local v0           #newSize:I
    .end local v1           #oldData:[Ljava/lang/Object;
    :cond_1a
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .registers 5
    .parameter "column"

    .prologue
    .line 67
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_2b

    .line 68
    :cond_6
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2b
    iget v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->mPos:I

    if-gez v0, :cond_37

    .line 72
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_37
    iget v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->mPos:I

    iget v1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_45

    .line 75
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_45
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->mPos:I

    iget v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addRow([Ljava/lang/Object;)V
    .registers 6
    .parameter "columnValues"

    .prologue
    .line 105
    array-length v1, p1

    iget v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    if-eq v1, v2, :cond_2b

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_2b
    iget v1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->rowCount:I

    iget v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    mul-int v0, v1, v2

    .line 112
    .local v0, start:I
    iget v1, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->ensureCapacity(I)V

    .line 113
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    return-void
.end method

.method public getBlob(I)[B
    .registers 3
    .parameter "column"

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, value:Ljava/lang/Object;
    check-cast v0, [B

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .registers 5
    .parameter "column"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    .line 273
    .end local v0           #value:Ljava/lang/Object;
    :goto_8
    return-wide v1

    .line 272
    .restart local v0       #value:Ljava/lang/Object;
    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_8

    .line 273
    .restart local v0       #value:Ljava/lang/Object;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_8
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "column"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 265
    .end local v0           #value:Ljava/lang/Object;
    :goto_7
    return v1

    .line 264
    .restart local v0       #value:Ljava/lang/Object;
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_7

    .line 265
    .restart local v0       #value:Ljava/lang/Object;
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_7
.end method

.method public getInt(I)I
    .registers 4
    .parameter "column"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 249
    .end local v0           #value:Ljava/lang/Object;
    :goto_7
    return v1

    .line 248
    .restart local v0       #value:Ljava/lang/Object;
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_7

    .line 249
    .restart local v0       #value:Ljava/lang/Object;
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_7
.end method

.method public getLong(I)J
    .registers 5
    .parameter "column"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    .line 257
    .end local v0           #value:Ljava/lang/Object;
    :goto_8
    return-wide v1

    .line 256
    .restart local v0       #value:Ljava/lang/Object;
    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_8

    .line 257
    .restart local v0       #value:Ljava/lang/Object;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_8
.end method

.method public getShort(I)S
    .registers 4
    .parameter "column"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 239
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 241
    .end local v0           #value:Ljava/lang/Object;
    :goto_7
    return v1

    .line 240
    .restart local v0       #value:Ljava/lang/Object;
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_7

    .line 241
    .restart local v0       #value:Ljava/lang/Object;
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_7
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "column"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 233
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getType(I)I
    .registers 4
    .parameter "column"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 285
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 286
    const/4 v1, 0x0

    .line 294
    :goto_7
    return v1

    .line 287
    :cond_8
    instance-of v1, v0, [B

    if-eqz v1, :cond_e

    .line 288
    const/4 v1, 0x4

    goto :goto_7

    .line 289
    :cond_e
    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_16

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_18

    .line 290
    :cond_16
    const/4 v1, 0x2

    goto :goto_7

    .line 291
    :cond_18
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_20

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_22

    .line 292
    :cond_20
    const/4 v1, 0x1

    goto :goto_7

    .line 294
    :cond_22
    const/4 v1, 0x3

    goto :goto_7
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public newRow()Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;
    .registers 5

    .prologue
    .line 88
    iget v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->rowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->rowCount:I

    .line 89
    iget v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->rowCount:I

    iget v3, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    mul-int v0, v2, v3

    .line 90
    .local v0, endIndex:I
    invoke-direct {p0, v0}, Lcom/google/android/picasastore/PicasaMatrixCursor;->ensureCapacity(I)V

    .line 91
    iget v2, p0, Lcom/google/android/picasastore/PicasaMatrixCursor;->columnCount:I

    sub-int v1, v0, v2

    .line 92
    .local v1, start:I
    new-instance v2, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;-><init>(Lcom/google/android/picasastore/PicasaMatrixCursor;II)V

    return-object v2
.end method
