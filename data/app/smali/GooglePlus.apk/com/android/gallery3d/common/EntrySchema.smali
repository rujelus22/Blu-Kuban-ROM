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
    .line 39
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
    .line 49
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/gallery3d/common/Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 52
    .local v1, columns:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .line 56
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 57
    .local v4, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 58
    .local v2, hasFullTextIndex:Z
    if-eqz v1, :cond_2a

    .line 59
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 60
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    array-length v5, v1

    if-eq v3, v5, :cond_2a

    .line 61
    aget-object v0, v1, v3

    .line 62
    .local v0, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v5, v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 63
    iget-boolean v5, v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v5, :cond_27

    .line 64
    const/4 v2, 0x1

    .line 60
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 68
    .end local v0           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v3           #i:I
    :cond_2a
    iput-object v4, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    .line 70
    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 3
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 99
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .registers 16
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
    .line 465
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 466
    .local v10, fields:[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    array-length v0, v10

    if-eq v11, v0, :cond_88

    .line 468
    aget-object v7, v10, v11

    .line 469
    .local v7, field:Ljava/lang/reflect/Field;
    const-class v0, Lcom/android/gallery3d/common/Entry$Column;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/common/Entry$Column;

    .line 470
    .local v12, info:Lcom/android/gallery3d/common/Entry$Column;
    if-nez v12, :cond_17

    .line 466
    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 474
    :cond_17
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 475
    .local v9, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    if-ne v9, v0, :cond_41

    .line 476
    const/4 v2, 0x0

    .line 497
    .local v2, type:I
    :goto_20
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 498
    .local v8, index:I
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->indexed()Z

    move-result v3

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->fullText()Z

    move-result v4

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->allowNull()Z

    move-result v5

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/reflect/Field;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 477
    .end local v2           #type:I
    .end local v8           #index:I
    :cond_41
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_47

    .line 478
    const/4 v2, 0x1

    .restart local v2       #type:I
    goto :goto_20

    .line 479
    .end local v2           #type:I
    :cond_47
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_4d

    .line 480
    const/4 v2, 0x2

    .restart local v2       #type:I
    goto :goto_20

    .line 481
    .end local v2           #type:I
    :cond_4d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_53

    .line 482
    const/4 v2, 0x3

    .restart local v2       #type:I
    goto :goto_20

    .line 483
    .end local v2           #type:I
    :cond_53
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_59

    .line 484
    const/4 v2, 0x4

    .restart local v2       #type:I
    goto :goto_20

    .line 485
    .end local v2           #type:I
    :cond_59
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_5f

    .line 486
    const/4 v2, 0x5

    .restart local v2       #type:I
    goto :goto_20

    .line 487
    .end local v2           #type:I
    :cond_5f
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_65

    .line 488
    const/4 v2, 0x6

    .restart local v2       #type:I
    goto :goto_20

    .line 489
    .end local v2           #type:I
    :cond_65
    const-class v0, [B

    if-ne v9, v0, :cond_6b

    .line 490
    const/4 v2, 0x7

    .restart local v2       #type:I
    goto :goto_20

    .line 492
    .end local v2           #type:I
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field type for column: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    .end local v7           #field:Ljava/lang/reflect/Field;
    .end local v9           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #info:Lcom/android/gallery3d/common/Entry$Column;
    :cond_88
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
    .line 451
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v1, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;>;"
    :goto_5
    if-eqz p1, :cond_f

    .line 453
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 454
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_5

    .line 458
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .line 459
    .local v0, columnList:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 460
    return-object v0
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
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
    .line 441
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-class v1, Lcom/android/gallery3d/common/Entry$Table;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/common/Entry$Table;

    .line 442
    .local v0, table:Lcom/android/gallery3d/common/Entry$Table;
    if-nez v0, :cond_c

    .line 443
    const/4 v1, 0x0

    .line 447
    :goto_b
    return-object v1

    :cond_c
    invoke-interface {v0}, Lcom/android/gallery3d/common/Entry$Table;->value()Ljava/lang/String;

    move-result-object v1

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
    .line 146
    if-eqz p3, :cond_5

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
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

    .line 295
    iget-object v9, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 296
    .local v9, tableName:Ljava/lang/String;
    if-eqz v9, :cond_5c

    const/4 v10, 0x1

    :goto_8
    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TABLE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .local v8, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v10, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1e
    if-ge v4, v7, :cond_5e

    aget-object v1, v0, v4

    .line 303
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->isId()Z

    move-result v10

    if-nez v10, :cond_59

    .line 304
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    sget-object v10, Lcom/android/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v12, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    aget-object v10, v10, v12

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->allowNull:Z

    if-nez v10, :cond_47

    .line 309
    const-string v10, " NOT NULL"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_47
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_59

    .line 312
    const-string v10, " DEFAULT "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #sql:Ljava/lang/StringBuilder;
    :cond_5c
    move v10, v11

    .line 296
    goto :goto_8

    .line 317
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #sql:Ljava/lang/StringBuilder;
    :cond_5e
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_71
    if-ge v4, v7, :cond_af

    aget-object v1, v0, v4

    .line 324
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v10, :cond_ac

    .line 325
    const-string v10, "CREATE INDEX "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v10, "_index_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v10, " ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    :cond_ac
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 339
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_af
    iget-boolean v10, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v10, :cond_1c0

    .line 341
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "_fulltext"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, ftsTableName:Ljava/lang/String;
    const-string v10, "CREATE VIRTUAL TABLE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v10, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_d7
    if-ge v4, v7, :cond_ef

    aget-object v1, v0, v4

    .line 346
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_ec

    .line 348
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 349
    .local v2, columnName:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v10, " TEXT"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .end local v2           #columnName:Ljava/lang/String;
    :cond_ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_d7

    .line 354
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_ef
    const-string v10, ");"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .local v5, insertSql:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v10, " (_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_111
    if-ge v4, v7, :cond_124

    aget-object v1, v0, v4

    .line 364
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_121

    .line 365
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_121
    add-int/lit8 v4, v4, 0x1

    goto :goto_111

    .line 369
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_124
    const-string v10, ") VALUES (new._id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_12d
    if-ge v4, v7, :cond_142

    aget-object v1, v0, v4

    .line 371
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v10, :cond_13f

    .line 372
    const-string v10, ",new."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v10, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_13f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12d

    .line 376
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_142
    const-string v10, ");"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, insertSqlString:Ljava/lang/String;
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v10, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 391
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v10, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v10, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v10, "END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 402
    const-string v10, "CREATE TRIGGER "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v10, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v10, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v10, " WHERE _id = old._id; END;"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 412
    .end local v3           #ftsTableName:Ljava/lang/String;
    .end local v5           #insertSql:Ljava/lang/StringBuilder;
    .end local v6           #insertSqlString:Ljava/lang/String;
    :cond_1c0
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

    .line 104
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

    .line 105
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 106
    .local v2, columnIndex:I
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 107
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_74

    .line 104
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 109
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

    .line 139
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnIndex:I
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_21
    move-exception v3

    .line 140
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 109
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

    .line 114
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

    .line 117
    :pswitch_3a
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_13

    .line 120
    :pswitch_42
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_13

    .line 123
    :pswitch_4a
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_13

    .line 126
    :pswitch_52
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_13

    .line 129
    :pswitch_5a
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_13

    .line 132
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

    .line 138
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnIndex:I
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_72
    return-object p2

    .line 107
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

    .line 290
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

    .line 415
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 416
    .local v1, tableName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 420
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 422
    iget-boolean v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v2, :cond_37

    .line 423
    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v2, "_fulltext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 430
    :cond_37
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .registers 4
    .parameter "columnName"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 95
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
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 86
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 87
    iget v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 90
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :goto_12
    return v4

    .line 85
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 90
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_16
    const/4 v4, -0x1

    goto :goto_12
.end method

.method public getProjection()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    .registers 10
    .parameter "db"
    .parameter "entry"

    .prologue
    .line 279
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v2}, Lcom/android/gallery3d/common/EntrySchema;->objectToValues(Lcom/android/gallery3d/common/Entry;Landroid/content/ContentValues;)V

    .line 281
    iget-wide v3, p2, Lcom/android/gallery3d/common/Entry;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 282
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 284
    :cond_15
    iget-object v3, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v4, "_id"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 285
    .local v0, id:J
    iput-wide v0, p2, Lcom/android/gallery3d/common/Entry;->id:J

    .line 286
    return-wide v0
.end method

.method public objectToValues(Lcom/android/gallery3d/common/Entry;Landroid/content/ContentValues;)V
    .registers 12
    .parameter "object"
    .parameter "values"

    .prologue
    .line 193
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

    .line 194
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 195
    .local v2, columnName:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 196
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_7a

    .line 193
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 198
    :pswitch_14
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 223
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_1e
    move-exception v3

    .line 224
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 201
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

    .line 204
    :pswitch_31
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_11

    .line 207
    :pswitch_3d
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_11

    .line 210
    :pswitch_49
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_11

    .line 213
    :pswitch_55
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_11

    .line 216
    :pswitch_61
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_11

    .line 219
    :pswitch_6d
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_78} :catch_1e

    goto :goto_11

    .line 226
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_79
    return-void

    .line 196
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

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/common/Entry;)Z
    .registers 15
    .parameter "db"
    .parameter "id"
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

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

    .line 269
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 270
    .local v9, success:Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 271
    invoke-virtual {p0, v8, p4}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    .line 272
    const/4 v9, 0x1

    .line 274
    :cond_23
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 275
    return v9
.end method

.method public varargs toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "entry"
    .parameter "columnNames"

    .prologue
    .line 247
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v9, "ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 249
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_13
    if-ge v5, v6, :cond_40

    aget-object v2, v0, v5

    .line 250
    .local v2, columnName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 251
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 252
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 253
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

    .line 249
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 253
    :cond_3b
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_35

    .line 256
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

    .line 257
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :catch_45
    move-exception v3

    .line 258
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
    .line 155
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

    .line 156
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 157
    .local v2, columnName:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 158
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_5c

    .line 155
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 160
    :pswitch_14
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 186
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_1c
    move-exception v3

    .line 187
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 163
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

    .line 166
    :pswitch_2b
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 169
    :pswitch_33
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 172
    :pswitch_3b
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 175
    :pswitch_43
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 178
    :pswitch_4b
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 181
    :pswitch_53
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_5a} :catch_1c

    goto :goto_11

    .line 185
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_5b
    return-object p2

    .line 158
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
