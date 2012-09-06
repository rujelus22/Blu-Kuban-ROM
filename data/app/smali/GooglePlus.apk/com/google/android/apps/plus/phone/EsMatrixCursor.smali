.class public Lcom/google/android/apps/plus/phone/EsMatrixCursor;
.super Landroid/database/AbstractCursor;
.source "EsMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private final mExtras:Landroid/os/Bundle;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter "columnNames"

    .prologue
    .line 74
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .registers 4
    .parameter "columnNames"
    .parameter "initialCapacity"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->rowCount:I

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->mExtras:Landroid/os/Bundle;

    .line 57
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnNames:[Ljava/lang/String;

    .line 58
    array-length v0, p1

    iput v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    .line 60
    const/4 v0, 0x1

    if-ge p2, v0, :cond_16

    .line 61
    const/4 p2, 0x1

    .line 64
    :cond_16
    iget v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/EsMatrixCursor;)[Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method private ensureCapacity(I)V
    .registers 7
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1a

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    .line 189
    .local v1, oldData:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 190
    .local v0, newSize:I
    if-ge v0, p1, :cond_10

    .line 191
    move v0, p1

    .line 193
    :cond_10
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    .line 194
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    .end local v0           #newSize:I
    .end local v1           #oldData:[Ljava/lang/Object;
    :cond_1a
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .registers 5
    .parameter "column"

    .prologue
    .line 81
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_2b

    .line 82
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

    iget v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2b
    iget v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->mPos:I

    if-gez v0, :cond_37

    .line 86
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_37
    iget v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->mPos:I

    iget v1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_45

    .line 89
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_45
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->mPos:I

    iget v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

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
    .line 119
    array-length v1, p1

    iget v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    if-eq v1, v2, :cond_2b

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

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

    .line 125
    :cond_2b
    iget v1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->rowCount:I

    iget v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    mul-int v0, v1, v2

    .line 126
    .local v0, start:I
    iget v1, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->ensureCapacity(I)V

    .line 127
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    return-void
.end method

.method public getBlob(I)[B
    .registers 3
    .parameter "column"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, value:Ljava/lang/Object;
    check-cast v0, [B

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .registers 5
    .parameter "column"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 285
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    .line 287
    .end local v0           #value:Ljava/lang/Object;
    :goto_8
    return-wide v1

    .line 286
    .restart local v0       #value:Ljava/lang/Object;
    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_8

    .line 287
    .restart local v0       #value:Ljava/lang/Object;
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_8
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .registers 4
    .parameter "column"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 279
    .end local v0           #value:Ljava/lang/Object;
    :goto_7
    return v1

    .line 278
    .restart local v0       #value:Ljava/lang/Object;
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_7

    .line 279
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
    .line 260
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 263
    .end local v0           #value:Ljava/lang/Object;
    :goto_7
    return v1

    .line 262
    .restart local v0       #value:Ljava/lang/Object;
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_7

    .line 263
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
    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    .line 271
    .end local v0           #value:Ljava/lang/Object;
    :goto_8
    return-wide v1

    .line 270
    .restart local v0       #value:Ljava/lang/Object;
    :cond_9
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_8

    .line 271
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
    .line 252
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 255
    .end local v0           #value:Ljava/lang/Object;
    :goto_7
    return v1

    .line 254
    .restart local v0       #value:Ljava/lang/Object;
    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_7

    .line 255
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
    .line 245
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 247
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
    .line 298
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 300
    const/4 v1, 0x0

    .line 308
    :goto_7
    return v1

    .line 301
    :cond_8
    instance-of v1, v0, [B

    if-eqz v1, :cond_e

    .line 302
    const/4 v1, 0x4

    goto :goto_7

    .line 303
    :cond_e
    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_16

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_18

    .line 304
    :cond_16
    const/4 v1, 0x2

    goto :goto_7

    .line 305
    :cond_18
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_20

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_22

    .line 306
    :cond_20
    const/4 v1, 0x1

    goto :goto_7

    .line 308
    :cond_22
    const/4 v1, 0x3

    goto :goto_7
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    .registers 5

    .prologue
    .line 102
    iget v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->rowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->rowCount:I

    .line 103
    iget v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->rowCount:I

    iget v3, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    mul-int v0, v2, v3

    .line 104
    .local v0, endIndex:I
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->ensureCapacity(I)V

    .line 105
    iget v2, p0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->columnCount:I

    sub-int v1, v0, v2

    .line 106
    .local v1, start:I
    new-instance v2, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;-><init>(Lcom/google/android/apps/plus/phone/EsMatrixCursor;II)V

    return-object v2
.end method
