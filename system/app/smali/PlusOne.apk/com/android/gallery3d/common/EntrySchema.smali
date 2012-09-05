.class public final Lcom/android/gallery3d/common/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field private static final SQLITE_TYPES:[Ljava/lang/String;


# instance fields
.field private final mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
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

    sput-object v0, Lcom/android/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

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
            "Lcom/android/gallery3d/common/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/gallery3d/common/Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 53
    .local v1, columns:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .line 57
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 58
    .local v4, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 59
    .local v2, hasFullTextIndex:Z
    if-eqz v1, :cond_2a

    .line 60
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 61
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    array-length v5, v1

    if-eq v3, v5, :cond_2a

    .line 62
    aget-object v0, v1, v3

    .line 63
    .local v0, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v5, v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 64
    iget-boolean v5, v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v5, :cond_27

    .line 65
    const/4 v2, 0x1

    .line 61
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 69
    .end local v0           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v3           #i:I
    :cond_2a
    iput-object v4, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    .line 71
    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 3
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 100
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 463
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    move v8, v9

    .line 464
    :goto_6
    array-length v0, v10

    if-eq v8, v0, :cond_87

    .line 466
    aget-object v6, v10, v8

    .line 467
    const-class v0, Lcom/android/gallery3d/common/Entry$Column;

    invoke-interface {v6, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/gallery3d/common/Entry$Column;

    .line 468
    if-nez v5, :cond_1a

    .line 464
    :goto_16
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_6

    .line 472
    :cond_1a
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 473
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_40

    move v2, v9

    .line 495
    :goto_23
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 496
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    invoke-interface {v5}, Lcom/android/gallery3d/common/Entry$Column;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lcom/android/gallery3d/common/Entry$Column;->indexed()Z

    move-result v3

    invoke-interface {v5}, Lcom/android/gallery3d/common/Entry$Column;->fullText()Z

    move-result v4

    invoke-interface {v5}, Lcom/android/gallery3d/common/Entry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/reflect/Field;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 475
    :cond_40
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_46

    .line 476
    const/4 v2, 0x1

    goto :goto_23

    .line 477
    :cond_46
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    .line 478
    const/4 v2, 0x2

    goto :goto_23

    .line 479
    :cond_4c
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_52

    .line 480
    const/4 v2, 0x3

    goto :goto_23

    .line 481
    :cond_52
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_58

    .line 482
    const/4 v2, 0x4

    goto :goto_23

    .line 483
    :cond_58
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5e

    .line 484
    const/4 v2, 0x5

    goto :goto_23

    .line 485
    :cond_5e
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_64

    .line 486
    const/4 v2, 0x6

    goto :goto_23

    .line 487
    :cond_64
    const-class v1, [B

    if-ne v0, v1, :cond_6a

    .line 488
    const/4 v2, 0x7

    goto :goto_23

    .line 490
    :cond_6a
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

    .line 499
    :cond_87
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v1, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;>;"
    :goto_5
    if-eqz p1, :cond_f

    .line 451
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 452
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_5

    .line 456
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .line 457
    .local v0, columnList:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 458
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
    .line 439
    const-class v0, Lcom/android/gallery3d/common/Entry$Table;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/common/Entry$Table;

    .line 440
    if-nez v0, :cond_c

    .line 441
    const/4 v0, 0x0

    .line 445
    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/android/gallery3d/common/Entry$Table;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "field"
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 147
    if-eqz p3, :cond_5

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    :cond_5
    return-void
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16
    .parameter "db"

    .prologue
    const/16 v13, 0x2c

    const/4 v11, 0x0

    .line 296
    iget-object v9, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 297
    .local v9, tableName:Ljava/lang/String;
    if-eqz v9, :cond_53

    const/4 v10, 0x1

    :goto_8
    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TABLE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .local v8, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v10, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1e
    if-ge v4, v7, :cond_55

    aget-object v1, v0, v4

    .line 304
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->isId()Z

    move-result v10

    if-nez v10, :cond_50

    .line 305
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    sget-object v10, Lcom/android/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v12, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    aget-object v10, v10, v12

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_50

    .line 310
    const-string v10, " DEFAULT "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #sql:Ljava/lang/StringBuilder;
    :cond_53
    move v10, v11

    .line 297
    goto :goto_8

    .line 315
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #sql:Ljava/lang/StringBuilder;
    :cond_55
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_68
    if-ge v4, v7, :cond_a6

    aget-object v1, v0, v4

    .line 322
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v10, :cond_a3

    .line 323
    const-string v10, "CREATE INDEX "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v10, "_index_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v10, " ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 320
    :cond_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 337
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_a6
    iget-boolean v10, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v10, :cond_1b7

    .line 339
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "_fulltext"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, ftsTableName:Ljava/lang/String;
    const-string v10, "CREATE VIRTUAL TABLE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v10, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_ce
    if-ge v4, v7, :cond_e6

    aget-object v1, v0, v4

    .line 344
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_e3

    .line 346
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 347
    .local v2, columnName:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v10, " TEXT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .end local v2           #columnName:Ljava/lang/String;
    :cond_e3
    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 352
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_e6
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .local v5, insertSql:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v10, " (_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_108
    if-ge v4, v7, :cond_11b

    aget-object v1, v0, v4

    .line 362
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_118

    .line 363
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_118
    add-int/lit8 v4, v4, 0x1

    goto :goto_108

    .line 367
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_11b
    const-string v10, ") VALUES (new._id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_124
    if-ge v4, v7, :cond_139

    aget-object v1, v0, v4

    .line 369
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_136

    .line 370
    const-string v10, ",new."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_136
    add-int/lit8 v4, v4, 0x1

    goto :goto_124

    .line 374
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_139
    const-string v10, ");"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, insertSqlString:Ljava/lang/String;
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v10, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 389
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v10, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 400
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v10, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v10, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v10, " WHERE _id = old._id; END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    .end local v3           #ftsTableName:Ljava/lang/String;
    .end local v5           #insertSql:Ljava/lang/StringBuilder;
    .end local v6           #insertSqlString:Ljava/lang/String;
    :cond_1b7
    return-void
.end method

.method public cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;
    .registers 15
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/gallery3d/common/Entry;",
            ">(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .local p2, object:Lcom/android/gallery3d/common/Entry;,"TT;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 105
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_6
    if-ge v5, v6, :cond_72

    aget-object v1, v0, v5

    .line 106
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 107
    .local v2, columnIndex:I
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 108
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_74

    .line 105
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 110
    :pswitch_16
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_28

    move-object v7, v8

    :goto_1d
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_13

    .line 140
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnIndex:I
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_21
    move-exception v3

    .line 141
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 110
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v2       #columnIndex:I
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_28
    :try_start_28
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1d

    .line 115
    :pswitch_2d
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-ne v7, v9, :cond_38

    move v7, v9

    :goto_34
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_13

    :cond_38
    const/4 v7, 0x0

    goto :goto_34

    .line 118
    :pswitch_3a
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_13

    .line 121
    :pswitch_42
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_13

    .line 124
    :pswitch_4a
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_13

    .line 127
    :pswitch_52
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_13

    .line 130
    :pswitch_5a
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_13

    .line 133
    :pswitch_62
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_6d

    move-object v7, v8

    :goto_69
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_6d
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_70} :catch_21

    move-result-object v7

    goto :goto_69

    .line 139
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnIndex:I
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_72
    return-object p2

    .line 108
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_16
        :pswitch_2d
        :pswitch_3a
        :pswitch_42
        :pswitch_4a
        :pswitch_52
        :pswitch_5a
        :pswitch_62
    .end packed-switch
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .registers 10
    .parameter "db"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 291
    iget-object v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

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

    .line 413
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 414
    .local v1, tableName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 418
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 420
    iget-boolean v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v2, :cond_37

    .line 421
    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v2, "_fulltext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 428
    :cond_37
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .registers 4
    .parameter "columnName"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, index:I
    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    aget-object v1, v1, v0

    goto :goto_7
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 7
    .parameter "columnName"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 87
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 88
    iget v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 91
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :goto_12
    return v4

    .line 86
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 91
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_16
    const/4 v4, -0x1

    goto :goto_12
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    .registers 10
    .parameter "db"
    .parameter "entry"

    .prologue
    .line 280
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v2}, Lcom/android/gallery3d/common/EntrySchema;->objectToValues(Lcom/android/gallery3d/common/Entry;Landroid/content/ContentValues;)V

    .line 282
    iget-wide v3, p2, Lcom/android/gallery3d/common/Entry;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 283
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 285
    :cond_15
    iget-object v3, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v4, "_id"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 286
    .local v0, id:J
    iput-wide v0, p2, Lcom/android/gallery3d/common/Entry;->id:J

    .line 287
    return-wide v0
.end method

.method public objectToValues(Lcom/android/gallery3d/common/Entry;Landroid/content/ContentValues;)V
    .registers 12
    .parameter "object"
    .parameter "values"

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v6, :cond_79

    aget-object v1, v0, v5

    .line 195
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 196
    .local v2, columnName:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 197
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_7a

    .line 194
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 199
    :pswitch_14
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 224
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_1e
    move-exception v3

    .line 225
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 202
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v2       #columnName:Ljava/lang/String;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :pswitch_25
    :try_start_25
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_11

    .line 205
    :pswitch_31
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_11

    .line 208
    :pswitch_3d
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_11

    .line 211
    :pswitch_49
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_11

    .line 214
    :pswitch_55
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_11

    .line 217
    :pswitch_61
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_11

    .line 220
    :pswitch_6d
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_78} :catch_1e

    goto :goto_11

    .line 227
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_79
    return-void

    .line 197
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_25
        :pswitch_31
        :pswitch_3d
        :pswitch_49
        :pswitch_55
        :pswitch_61
        :pswitch_6d
    .end packed-switch
.end method

.method public varargs toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "entry"
    .parameter "columnNames"

    .prologue
    .line 248
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v9, "ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_13
    if-ge v5, v6, :cond_40

    aget-object v2, v0, v5

    .line 251
    .local v2, columnName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 252
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 253
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 254
    .local v8, value:Ljava/lang/Object;
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v8, :cond_3b

    const-string v9, "null"

    :goto_35
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 254
    :cond_3b
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_35

    .line 257
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v8           #value:Ljava/lang/Object;
    :cond_40
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_43} :catch_45

    move-result-object v9

    return-object v9

    .line 258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :catch_45
    move-exception v3

    .line 259
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public valuesToObject(Landroid/content/ContentValues;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;
    .registers 11
    .parameter "values"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/gallery3d/common/Entry;",
            ">(",
            "Landroid/content/ContentValues;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, object:Lcom/android/gallery3d/common/Entry;,"TT;"
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v6, :cond_5b

    aget-object v1, v0, v5

    .line 157
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 158
    .local v2, columnName:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 159
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_5c

    .line 156
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 161
    :pswitch_14
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 187
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_1c
    move-exception v3

    .line 188
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 164
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v2       #columnName:Ljava/lang/String;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :pswitch_23
    :try_start_23
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 167
    :pswitch_2b
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 170
    :pswitch_33
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 173
    :pswitch_3b
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 176
    :pswitch_43
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 179
    :pswitch_4b
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 182
    :pswitch_53
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_5a} :catch_1c

    goto :goto_11

    .line 186
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_5b
    return-object p2

    .line 159
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_23
        :pswitch_2b
        :pswitch_33
        :pswitch_3b
        :pswitch_43
        :pswitch_4b
        :pswitch_53
    .end packed-switch
.end method
