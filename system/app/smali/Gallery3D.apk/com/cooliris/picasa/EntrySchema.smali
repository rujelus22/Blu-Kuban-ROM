.class public final Lcom/cooliris/picasa/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field public static final SQLITE_TYPES:[Ljava/lang/String;


# instance fields
.field private final mColumnInfo:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cooliris/picasa/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cooliris/picasa/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/cooliris/picasa/Entry;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-direct {p0, p1}, Lcom/cooliris/picasa/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 64
    .local v1, columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    invoke-direct {p0, p1}, Lcom/cooliris/picasa/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cooliris/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/cooliris/picasa/EntrySchema;->mColumnInfo:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;

    .line 68
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 69
    .local v4, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 70
    .local v2, hasFullTextIndex:Z
    if-eqz v1, :cond_2a

    .line 71
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 72
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    array-length v5, v1

    if-eq v3, v5, :cond_2a

    .line 73
    aget-object v0, v1, v3

    .line 74
    .local v0, column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    iget-object v5, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 75
    iget-boolean v5, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v5, :cond_27

    .line 76
    const/4 v2, 0x1

    .line 72
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 80
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v3           #i:I
    :cond_2a
    iput-object v4, p0, Lcom/cooliris/picasa/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/cooliris/picasa/EntrySchema;->mHasFullTextIndex:Z

    .line 82
    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 3
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 98
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/cooliris/picasa/EntrySchema$ColumnInfo;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 402
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 403
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    move v7, v8

    .line 404
    :goto_b
    array-length v0, v10

    if-eq v7, v0, :cond_88

    .line 406
    aget-object v5, v10, v7

    .line 407
    const-class v0, Lcom/cooliris/picasa/Entry$Column;

    invoke-interface {v5, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/cooliris/picasa/Entry$Column;

    .line 408
    if-nez v4, :cond_1f

    .line 404
    :goto_1b
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_b

    .line 414
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 415
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_41

    move v2, v8

    .line 437
    :goto_28
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 438
    new-instance v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;

    invoke-interface {v4}, Lcom/cooliris/picasa/Entry$Column;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lcom/cooliris/picasa/Entry$Column;->indexed()Z

    move-result v3

    invoke-interface {v4}, Lcom/cooliris/picasa/Entry$Column;->fullText()Z

    move-result v4

    invoke-direct/range {v0 .. v6}, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZLjava/lang/reflect/Field;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 417
    :cond_41
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_47

    .line 418
    const/4 v2, 0x1

    goto :goto_28

    .line 419
    :cond_47
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4d

    .line 420
    const/4 v2, 0x2

    goto :goto_28

    .line 421
    :cond_4d
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_53

    .line 422
    const/4 v2, 0x3

    goto :goto_28

    .line 423
    :cond_53
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_59

    .line 424
    const/4 v2, 0x4

    goto :goto_28

    .line 425
    :cond_59
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5f

    .line 426
    const/4 v2, 0x5

    goto :goto_28

    .line 427
    :cond_5f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_65

    .line 428
    const/4 v2, 0x6

    goto :goto_28

    .line 429
    :cond_65
    const-class v1, [B

    if-ne v0, v1, :cond_6b

    .line 430
    const/4 v2, 0x7

    goto :goto_28

    .line 432
    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field type for column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_88
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cooliris/picasa/EntrySchema$ColumnInfo;

    .line 444
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 445
    return-object v0
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 391
    const-class v0, Lcom/cooliris/picasa/Entry$Table;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/cooliris/picasa/Entry$Table;

    .line 392
    if-nez v0, :cond_c

    .line 393
    const/4 v0, 0x0

    .line 397
    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/cooliris/picasa/Entry$Table;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14
    .parameter "db"

    .prologue
    .line 239
    iget-object v9, p0, Lcom/cooliris/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    .line 240
    .local v9, tableName:Ljava/lang/String;
    if-nez v9, :cond_5

    .line 362
    :cond_4
    :goto_4
    return-void

    .line 245
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TABLE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v8, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v10, " (_id INTEGER PRIMARY KEY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v2, p0, Lcom/cooliris/picasa/EntrySchema;->mColumnInfo:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;

    .line 249
    .local v2, columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    array-length v7, v2

    .line 250
    .local v7, numColumns:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_18
    if-eq v4, v7, :cond_51

    .line 251
    aget-object v0, v2, v4

    .line 252
    .local v0, column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    invoke-virtual {v0}, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->isId()Z

    move-result v10

    if-nez v10, :cond_4e

    .line 253
    const/16 v10, 0x2c

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    iget-object v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    sget-object v10, Lcom/cooliris/picasa/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v11, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->type:I

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ""

    if-eqz v10, :cond_4e

    .line 258
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 263
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    :cond_51
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/cooliris/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 265
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    const/4 v4, 0x0

    :goto_62
    if-eq v4, v7, :cond_a1

    .line 270
    aget-object v0, v2, v4

    .line 271
    .restart local v0       #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    iget-boolean v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v10, :cond_9e

    .line 272
    const-string v10, "CREATE INDEX "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v10, "_index_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v10, " ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/cooliris/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 282
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 286
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    :cond_a1
    iget-boolean v10, p0, Lcom/cooliris/picasa/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v10, :cond_4

    .line 288
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_fulltext"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, ftsTableName:Ljava/lang/String;
    const-string v10, "CREATE VIRTUAL TABLE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v10, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/4 v4, 0x0

    :goto_c6
    if-eq v4, v7, :cond_e0

    .line 293
    aget-object v0, v2, v4

    .line 294
    .restart local v0       #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    iget-boolean v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_dd

    .line 296
    iget-object v1, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 297
    .local v1, columnName:Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v10, " TEXT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .end local v1           #columnName:Ljava/lang/String;
    :cond_dd
    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    .line 302
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    :cond_e0
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/cooliris/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 304
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .local v5, insertSql:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v10, " (_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const/4 v4, 0x0

    :goto_100
    if-eq v4, v7, :cond_115

    .line 312
    aget-object v0, v2, v4

    .line 313
    .restart local v0       #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    iget-boolean v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_112

    .line 314
    const/16 v10, 0x2c

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    iget-object v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_112
    add-int/lit8 v4, v4, 0x1

    goto :goto_100

    .line 318
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    :cond_115
    const-string v10, ") VALUES (new._id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const/4 v4, 0x0

    :goto_11b
    if-eq v4, v7, :cond_130

    .line 320
    aget-object v0, v2, v4

    .line 321
    .restart local v0       #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    iget-boolean v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_12d

    .line 322
    const-string v10, ",new."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-object v10, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_12d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11b

    .line 326
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    :cond_130
    const-string v10, ");"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, insertSqlString:Ljava/lang/String;
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v10, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/cooliris/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 338
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 341
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v10, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/cooliris/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 349
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 352
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v10, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v10, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v10, " WHERE _id = old._id; END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/cooliris/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 360
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_4
.end method

.method public cursorToObject(Landroid/database/Cursor;Lcom/cooliris/picasa/Entry;)V
    .registers 14
    .parameter "cursor"
    .parameter "object"

    .prologue
    const/4 v8, 0x1

    .line 103
    :try_start_1
    iget-object v2, p0, Lcom/cooliris/picasa/EntrySchema;->mColumnInfo:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;

    .line 104
    .local v2, columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    const/4 v5, 0x0

    .local v5, i:I
    array-length v6, v2

    .local v6, size:I
    :goto_5
    if-eq v5, v6, :cond_25

    .line 105
    aget-object v0, v2, v5

    .line 106
    .local v0, column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    iget v1, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 107
    .local v1, columnIndex:I
    iget-object v4, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 108
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_6c

    .line 104
    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 110
    :pswitch_15
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1c} :catch_31

    goto :goto_12

    .line 137
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v1           #columnIndex:I
    .end local v2           #columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i:I
    .end local v6           #size:I
    :catch_1d
    move-exception v3

    .line 138
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "SchemaInfo"

    const-string v8, "SchemaInfo.setFromCursor: object not of the right type"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_25
    :goto_25
    return-void

    .line 113
    .restart local v0       #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .restart local v1       #columnIndex:I
    .restart local v2       #columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i:I
    .restart local v6       #size:I
    :pswitch_26
    :try_start_26
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-ne v7, v8, :cond_3a

    move v7, v8

    :goto_2d
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_30} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_12

    .line 139
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v1           #columnIndex:I
    .end local v2           #columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i:I
    .end local v6           #size:I
    :catch_31
    move-exception v3

    .line 140
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v7, "SchemaInfo"

    const-string v8, "SchemaInfo.setFromCursor: field not accessible"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 113
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .restart local v1       #columnIndex:I
    .restart local v2       #columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i:I
    .restart local v6       #size:I
    :cond_3a
    const/4 v7, 0x0

    goto :goto_2d

    .line 116
    :pswitch_3c
    :try_start_3c
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_12

    .line 119
    :pswitch_44
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_12

    .line 122
    :pswitch_4c
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v4, p2, v9, v10}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_12

    .line 125
    :pswitch_54
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_12

    .line 128
    :pswitch_5c
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-virtual {v4, p2, v9, v10}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_12

    .line 131
    :pswitch_64
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_6b} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_6b} :catch_31

    goto :goto_12

    .line 108
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_15
        :pswitch_26
        :pswitch_3c
        :pswitch_44
        :pswitch_4c
        :pswitch_54
        :pswitch_5c
        :pswitch_64
    .end packed-switch
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .registers 10
    .parameter "db"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 232
    iget-object v2, p0, Lcom/cooliris/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    const/16 v3, 0x3b

    .line 365
    iget-object v1, p0, Lcom/cooliris/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    .line 366
    .local v1, tableName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/cooliris/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 370
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 372
    iget-boolean v2, p0, Lcom/cooliris/picasa/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v2, :cond_37

    .line 373
    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v2, "_fulltext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/cooliris/picasa/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 380
    :cond_37
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cooliris/picasa/EntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cooliris/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/cooliris/picasa/Entry;)J
    .registers 11
    .parameter "db"
    .parameter "entry"

    .prologue
    .line 215
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v3}, Lcom/cooliris/picasa/EntrySchema;->objectToValues(Lcom/cooliris/picasa/Entry;Landroid/content/ContentValues;)V

    .line 217
    iget-wide v4, p2, Lcom/cooliris/picasa/Entry;->id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1c

    .line 218
    const-string v4, "SchemaInfo"

    const-string v5, "removing id before insert"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 221
    :cond_1c
    const-wide/16 v1, 0x0

    .line 223
    .local v1, id:J
    :try_start_1e
    iget-object v4, p0, Lcom/cooliris/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v5, "_id"

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_28

    .line 227
    :goto_25
    iput-wide v1, p2, Lcom/cooliris/picasa/Entry;->id:J

    .line 228
    return-wide v1

    .line 224
    :catch_28
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SchemaInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertOrReplace:: Exception... values : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public objectToValues(Lcom/cooliris/picasa/Entry;Landroid/content/ContentValues;)V
    .registers 12
    .parameter "object"
    .parameter "values"

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/cooliris/picasa/EntrySchema;->mColumnInfo:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;

    .line 147
    .local v2, columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    const/4 v5, 0x0

    .local v5, i:I
    array-length v6, v2

    .local v6, size:I
    :goto_4
    if-eq v5, v6, :cond_26

    .line 148
    aget-object v0, v2, v5

    .line 149
    .local v0, column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    iget-object v1, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 150
    .local v1, columnName:Ljava/lang/String;
    iget-object v4, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 151
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v0, Lcom/cooliris/picasa/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_84

    .line 147
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 153
    :pswitch_14
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_33

    goto :goto_11

    .line 180
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v1           #columnName:Ljava/lang/String;
    .end local v2           #columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i:I
    .end local v6           #size:I
    :catch_1e
    move-exception v3

    .line 181
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "SchemaInfo"

    const-string v8, "SchemaInfo.setFromCursor: object not of the right type"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_26
    :goto_26
    return-void

    .line 156
    .restart local v0       #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .restart local v1       #columnName:Ljava/lang/String;
    .restart local v2       #columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i:I
    .restart local v6       #size:I
    :pswitch_27
    :try_start_27
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_32} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_32} :catch_33

    goto :goto_11

    .line 182
    .end local v0           #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v1           #columnName:Ljava/lang/String;
    .end local v2           #columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i:I
    .end local v6           #size:I
    :catch_33
    move-exception v3

    .line 183
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v7, "SchemaInfo"

    const-string v8, "SchemaInfo.setFromCursor: field not accessible"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 159
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #column:Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .restart local v1       #columnName:Ljava/lang/String;
    .restart local v2       #columns:[Lcom/cooliris/picasa/EntrySchema$ColumnInfo;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i:I
    .restart local v6       #size:I
    :pswitch_3c
    :try_start_3c
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {p2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_11

    .line 162
    :pswitch_48
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_11

    .line 165
    :pswitch_54
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_11

    .line 168
    :pswitch_60
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_11

    .line 171
    :pswitch_6c
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_11

    .line 174
    :pswitch_78
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {p2, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_83} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_83} :catch_33

    goto :goto_11

    .line 151
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_14
        :pswitch_27
        :pswitch_3c
        :pswitch_48
        :pswitch_54
        :pswitch_60
        :pswitch_6c
        :pswitch_78
    .end packed-switch
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .registers 11
    .parameter "db"

    .prologue
    .line 188
    const/4 v8, 0x0

    .line 191
    .local v8, cur:Landroid/database/Cursor;
    if-eqz p1, :cond_12

    .line 192
    :try_start_3
    iget-object v1, p0, Lcom/cooliris/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cooliris/picasa/EntrySchema;->mProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 198
    :goto_11
    return-object v8

    .line 194
    :cond_12
    const-string v0, "SchemaInfo"

    const-string v1, "queryAll:: db is null....."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 196
    :catch_1a
    move-exception v0

    goto :goto_11
.end method

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/cooliris/picasa/Entry;)Z
    .registers 15
    .parameter "db"
    .parameter "id"
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-object v1, p0, Lcom/cooliris/picasa/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cooliris/picasa/EntrySchema;->mProjection:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 205
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 206
    .local v9, success:Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 207
    invoke-virtual {p0, v8, p4}, Lcom/cooliris/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/cooliris/picasa/Entry;)V

    .line 208
    const/4 v9, 0x1

    .line 210
    :cond_23
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 211
    return v9
.end method
