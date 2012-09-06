.class public Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;
.super Ljava/lang/Object;
.source "AndroidShadowNumbers.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ShadowNumbers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_COLUMN_DESTINATION_NUMBER:Ljava/lang/String; = "destination_number"

.field private static final DB_COLUMN_DESTINATION_REVERSED_SUFFIX:Ljava/lang/String; = "destination_reversed_suffix"

.field private static final DB_COLUMN_SHADOW_NUMBER:Ljava/lang/String; = "shadow_number"

.field private static final DB_COLUMN_SHADOW_REVERSED_SUFFIX:Ljava/lang/String; = "shadow_reversed_suffix"

.field private static final DB_INDEX_DESTINATION_REVERSED_SUFFIX:Ljava/lang/String; = "idx_destination_reversed_suffix"

.field private static final DB_INDEX_SHADOW_REVERSED_SUFFIX:Ljava/lang/String; = "idx_shadow_reversed_suffix"

.field static final DB_NAME:Ljava/lang/String; = "shadowmappings.db"

.field static final DB_NAME_PREFIX:Ljava/lang/String; = "shadowmappings"

.field static final DB_NAME_SUFFIX:Ljava/lang/String; = ".db"

.field private static final DB_PROJECTION_DESTINATION_AND_SHADOW_NUMBERS:[Ljava/lang/String; = null

.field private static final DB_PROJECTION_SHADOW_NUMBER:[Ljava/lang/String; = null

.field private static final DB_QUERY_DESTINATION_NUMBER:Ljava/lang/String; = null

.field private static final DB_QUERY_DESTINATION_REVERSED_SUFFIX:Ljava/lang/String; = null

.field private static final DB_QUERY_SHADOW_REVERSED_SUFFIX:Ljava/lang/String; = null

.field static final DB_TABLE_NUMBER_MAPPINGS:Ljava/lang/String; = "number_mappings"

.field private static final DB_VERSION:I = 0x3

.field private static final PREFIX_LENGTH:I = 0x7


# instance fields
.field private clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private context:Landroid/content/Context;

.field private databaseUtils:Lcom/google/android/apps/googlevoice/DatabaseUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "destination_number"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_QUERY_DESTINATION_NUMBER:Ljava/lang/String;

    .line 50
    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "destination_reversed_suffix"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_QUERY_DESTINATION_REVERSED_SUFFIX:Ljava/lang/String;

    .line 52
    const-string v0, "%s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "shadow_reversed_suffix"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_QUERY_SHADOW_REVERSED_SUFFIX:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "destination_number"

    aput-object v1, v0, v3

    const-string v1, "shadow_number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_PROJECTION_DESTINATION_AND_SHADOW_NUMBERS:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "shadow_number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_PROJECTION_SHADOW_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DatabaseUtils;)V
    .registers 4
    .parameter "context"
    .parameter "databaseUtils"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DatabaseUtils;Lcom/google/android/apps/common/time/ClockUtils;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DatabaseUtils;Lcom/google/android/apps/common/time/ClockUtils;)V
    .registers 6
    .parameter "context"
    .parameter "databaseUtils"
    .parameter "clockUtils"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_d

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->databaseUtils:Lcom/google/android/apps/googlevoice/DatabaseUtils;

    .line 69
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 70
    return-void
.end method

.method private addMappingToDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;Z)V
    .registers 20
    .parameter "db"
    .parameter "mapping"
    .parameter "override"

    .prologue
    .line 503
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->getDestinationNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->normalizedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 504
    .local v11, destinationNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->reversedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 505
    .local v12, destinationReversedSuffix:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->getShadowNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->normalizedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 506
    .local v13, shadowNumber:Ljava/lang/String;
    invoke-static {v13}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->reversedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 508
    .local v14, shadowReversedSuffix:Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 509
    .local v15, values:Landroid/content/ContentValues;
    const-string v1, "destination_number"

    invoke-virtual {v15, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v1, "destination_reversed_suffix"

    invoke-virtual {v15, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v1, "shadow_number"

    invoke-virtual {v15, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v1, "shadow_reversed_suffix"

    invoke-virtual {v15, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-eqz p3, :cond_c2

    .line 515
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v5, v1

    .line 516
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 517
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 519
    .local v9, alreadyExists:Z
    :try_start_3b
    const-string v2, "number_mappings"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "shadow_number"

    aput-object v4, v3, v1

    sget-object v4, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_QUERY_DESTINATION_NUMBER:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 521
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_99

    move-result v1

    if-eqz v1, :cond_97

    const/4 v9, 0x1

    .line 523
    :goto_57
    if-eqz v10, :cond_5c

    .line 524
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_5c
    if-eqz v9, :cond_a0

    .line 529
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_77

    .line 530
    const-string v1, "ShadowNumbers.addMappingToDatabase(), trying to update mapping: %s -> %s (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v15, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 534
    :cond_77
    const-string v1, "number_mappings"

    sget-object v2, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_QUERY_DESTINATION_NUMBER:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v15, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 552
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v9           #alreadyExists:Z
    .end local v10           #cursor:Landroid/database/Cursor;
    :goto_80
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_96

    .line 553
    const-string v1, "ShadowNumbers.addMappingToDatabase(), added mapping: %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 557
    :cond_96
    return-void

    .line 521
    .restart local v5       #whereArgs:[Ljava/lang/String;
    .restart local v9       #alreadyExists:Z
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_97
    const/4 v9, 0x0

    goto :goto_57

    .line 523
    :catchall_99
    move-exception v1

    if-eqz v10, :cond_9f

    .line 524
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9f
    throw v1

    .line 536
    :cond_a0
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_b9

    .line 537
    const-string v1, "ShadowNumbers.addMappingToDatabase, trying to insert mapping: %s -> %s (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v15, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 541
    :cond_b9
    const-string v1, "number_mappings"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_80

    .line 544
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v9           #alreadyExists:Z
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_c2
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_db

    .line 545
    const-string v1, "ShadowNumbers.addMappingToDatabase(), trying to insert mapping: %s -> %s (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v15, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 549
    :cond_db
    const-string v1, "number_mappings"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_80
.end method

.method private addShadowNumberMappings([Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V
    .registers 13
    .parameter "shadowNumbers"

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->getShadowNumberMappings()Ljava/util/Map;

    move-result-object v5

    .line 196
    .local v5, localMappings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, diffList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v4, :cond_36

    aget-object v9, v0, v3

    .line 200
    .local v9, shadowNumberMapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->getDestinationNumber()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, destination:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->getShadowNumber()Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, shadow:Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 204
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 206
    .local v8, shadowNumber:Ljava/lang/String;
    if-eqz v8, :cond_2f

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2f

    .line 207
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v8           #shadowNumber:Ljava/lang/String;
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 211
    :cond_32
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 216
    .end local v1           #destination:Ljava/lang/String;
    .end local v7           #shadow:Ljava/lang/String;
    .end local v9           #shadowNumberMapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    :cond_36
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    .line 217
    .local v6, mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->addShadowNumberMapping(Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V

    goto :goto_3a

    .line 218
    .end local v6           #mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    :cond_4a
    return-void
.end method

.method private currentTimeMillis()J
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v0}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_a
.end method

.method private getShadowNumberMappings()Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 282
    .local v12, mappings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 283
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 285
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_7
    new-instance v11, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    const-string v2, "shadowmappings.db"

    invoke-direct {v11, v1, v2}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    .local v11, helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    invoke-virtual {v11}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 287
    const-string v1, "number_mappings"

    sget-object v2, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_PROJECTION_DESTINATION_AND_SHADOW_NUMBERS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 291
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_3c

    .line 292
    const-string v1, "Finding shadow number mappings: have %d candidate matches"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 295
    :cond_3c
    :goto_3c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 296
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 297
    .local v9, destinationNumber:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 298
    .local v13, shadowNumber:Ljava/lang/String;
    if-eqz v9, :cond_3c

    if-eqz v13, :cond_3c

    .line 299
    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_53} :catch_54

    goto :goto_3c

    .line 302
    .end local v9           #destinationNumber:Ljava/lang/String;
    .end local v11           #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .end local v13           #shadowNumber:Ljava/lang/String;
    :catch_54
    move-exception v10

    .line 303
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_55
    const-string v1, "Exception loading existing database, removing"

    invoke-static {v1, v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    const-string v2, "shadowmappings.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_77

    .line 307
    if-eqz v8, :cond_66

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_66
    if-eqz v0, :cond_6b

    .line 311
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 314
    .end local v10           #ex:Ljava/lang/RuntimeException;
    :cond_6b
    :goto_6b
    return-object v12

    .line 307
    .restart local v11       #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    :cond_6c
    if-eqz v8, :cond_71

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_71
    if-eqz v0, :cond_6b

    .line 311
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_6b

    .line 307
    .end local v11           #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    :catchall_77
    move-exception v1

    if-eqz v8, :cond_7d

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_7d
    if-eqz v0, :cond_82

    .line 311
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_82
    throw v1
.end method

.method private static normalizedNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "number"

    .prologue
    .line 425
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static reversedSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "number"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 429
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_10

    .line 432
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 435
    :cond_10
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 436
    .local v0, plusIndex:I
    if-ltz v0, :cond_1c

    .line 437
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_1c
    return-object v1
.end method


# virtual methods
.method public addOrCreateShadowNumberMappings([Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)Z
    .registers 29
    .parameter "shadowNumbers"

    .prologue
    .line 78
    sget-boolean v21, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v21, :cond_9

    .line 79
    const-string v21, "ShadowNumbers.setShadowNumberMappings():"

    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 84
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "shadowmappings.db"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_21

    .line 85
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->addShadowNumberMappings([Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V

    .line 86
    const/16 v21, 0x1

    .line 186
    :cond_20
    :goto_20
    return v21

    .line 89
    :cond_21
    const/4 v5, 0x0

    .line 91
    .local v5, exception:Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v16

    .line 92
    .local v16, timeStart:J
    const/4 v3, 0x0

    .line 93
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    .line 94
    .local v20, transactionInProgress:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->databaseUtils:Lcom/google/android/apps/googlevoice/DatabaseUtils;

    move-object/from16 v21, v0

    const-string v22, "shadowmappings"

    const-string v23, ".db"

    invoke-interface/range {v21 .. v23}, Lcom/google/android/apps/googlevoice/DatabaseUtils;->createTempDatabaseName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 98
    .local v13, tempDatabaseName:Ljava/lang/String;
    :try_start_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 99
    .local v12, tempDatabaseFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_54

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 104
    :cond_54
    new-instance v6, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0, v13}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .local v6, helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    sget-boolean v21, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v21, :cond_7a

    .line 107
    const-string v21, "AndroidShadowNumbers.setShadowNumberMappings: created temoporary database at \'%s\'"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v13, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 114
    :cond_7a
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 116
    const/16 v20, 0x1

    .line 118
    const/4 v11, 0x0

    .line 122
    .local v11, shadowNumbersWritten:I
    move-object/from16 v2, p1

    .local v2, arr$:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_88
    if-ge v7, v8, :cond_a7

    aget-object v9, v2, v7

    .line 127
    .local v9, mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->getDestinationNumber()Ljava/lang/String;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9b

    .line 122
    :goto_98
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 130
    :cond_9b
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v3, v9, v1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->addMappingToDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;Z)V

    .line 131
    add-int/lit8 v11, v11, 0x1

    goto :goto_98

    .line 133
    .end local v9           #mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    :cond_a7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v18

    .line 137
    .local v18, timeWritten:J
    sget-boolean v21, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v21, :cond_d5

    .line 138
    const-string v21, "ShadowNumbers.setShadowNumberMappings(): wrote %d shadow numbers in %d ms"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    sub-long v24, v18, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 144
    :cond_d5
    const/4 v10, 0x0

    .line 145
    .local v10, renamed:Z
    monitor-enter p0
    :try_end_d7
    .catchall {:try_start_37 .. :try_end_d7} :catchall_205
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_d7} :catch_153

    .line 146
    :try_start_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->databaseUtils:Lcom/google/android/apps/googlevoice/DatabaseUtils;

    move-object/from16 v21, v0

    const-string v22, "shadowmappings.db"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v13, v1}, Lcom/google/android/apps/googlevoice/DatabaseUtils;->renameDatabase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 147
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_d7 .. :try_end_e8} :catchall_150

    .line 148
    if-eqz v10, :cond_1a3

    .line 149
    :try_start_ea
    sget-boolean v21, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v21, :cond_109

    .line 150
    const-string v21, "AndroidShadowNumbers.setShadowNumberMappings: renamed temporary database file \'%s\' to permanent name \'%s\'"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v13, v22, v23

    const/16 v23, 0x1

    const-string v24, "shadowmappings.db"

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_ea .. :try_end_109} :catchall_205
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_109} :catch_153

    .line 155
    :cond_109
    const/16 v21, 0x1

    .line 168
    if-eqz v3, :cond_117

    .line 169
    if-eqz v20, :cond_114

    .line 170
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 171
    const/16 v20, 0x0

    .line 173
    :cond_114
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    :cond_117
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v14

    .line 176
    .local v14, timeDone:J
    sget-boolean v22, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v22, :cond_13a

    .line 177
    const-string v22, "ShadowNumbers.setShadowNumberMappings(): %d ms total"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sub-long v25, v14, v16

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 180
    :cond_13a
    if-eqz v5, :cond_20

    .line 181
    const-string v22, "Exception writing to shadow number mappings database, removing"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_20

    .line 147
    .end local v14           #timeDone:J
    :catchall_150
    move-exception v21

    :try_start_151
    monitor-exit p0
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    :try_start_152
    throw v21
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_205
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_152 .. :try_end_153} :catch_153

    .line 163
    .end local v2           #arr$:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    .end local v6           #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #renamed:Z
    .end local v11           #shadowNumbersWritten:I
    .end local v12           #tempDatabaseFile:Ljava/io/File;
    .end local v18           #timeWritten:J
    :catch_153
    move-exception v4

    .line 164
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    :try_start_154
    const-string v21, "ShadowNumbers.setShadowNumberMappings(): failed to save mappings to database"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15b
    .catchall {:try_start_154 .. :try_end_15b} :catchall_205

    .line 165
    move-object v5, v4

    .line 166
    const/16 v21, 0x0

    .line 168
    if-eqz v3, :cond_16a

    .line 169
    if-eqz v20, :cond_167

    .line 170
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 171
    const/16 v20, 0x0

    .line 173
    :cond_167
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    :cond_16a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v14

    .line 176
    .restart local v14       #timeDone:J
    sget-boolean v22, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v22, :cond_18d

    .line 177
    const-string v22, "ShadowNumbers.setShadowNumberMappings(): %d ms total"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sub-long v25, v14, v16

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 180
    :cond_18d
    if-eqz v5, :cond_20

    .line 181
    const-string v22, "Exception writing to shadow number mappings database, removing"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_20

    .line 157
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    .end local v14           #timeDone:J
    .restart local v2       #arr$:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    .restart local v6       #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #renamed:Z
    .restart local v11       #shadowNumbersWritten:I
    .restart local v12       #tempDatabaseFile:Ljava/io/File;
    .restart local v18       #timeWritten:J
    :cond_1a3
    :try_start_1a3
    const-string v21, "AndroidShadowNumbers.setShadowNumberMappings: failed to rename temporary database file \'%s\' to permanent name \'%s\'"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v13, v22, v23

    const/16 v23, 0x1

    const-string v24, "shadowmappings.db"

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V
    :try_end_1be
    .catchall {:try_start_1a3 .. :try_end_1be} :catchall_205
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a3 .. :try_end_1be} :catch_153

    .line 161
    const/16 v21, 0x0

    .line 168
    if-eqz v3, :cond_1cc

    .line 169
    if-eqz v20, :cond_1c9

    .line 170
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 171
    const/16 v20, 0x0

    .line 173
    :cond_1c9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    :cond_1cc
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v14

    .line 176
    .restart local v14       #timeDone:J
    sget-boolean v22, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v22, :cond_1ef

    .line 177
    const-string v22, "ShadowNumbers.setShadowNumberMappings(): %d ms total"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sub-long v25, v14, v16

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 180
    :cond_1ef
    if-eqz v5, :cond_20

    .line 181
    const-string v22, "Exception writing to shadow number mappings database, removing"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_20

    .line 168
    .end local v2           #arr$:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    .end local v6           #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #renamed:Z
    .end local v11           #shadowNumbersWritten:I
    .end local v12           #tempDatabaseFile:Ljava/io/File;
    .end local v14           #timeDone:J
    .end local v18           #timeWritten:J
    :catchall_205
    move-exception v21

    if-eqz v3, :cond_212

    .line 169
    if-eqz v20, :cond_20f

    .line 170
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 171
    const/16 v20, 0x0

    .line 173
    :cond_20f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    :cond_212
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v14

    .line 176
    .restart local v14       #timeDone:J
    sget-boolean v22, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v22, :cond_235

    .line 177
    const-string v22, "ShadowNumbers.setShadowNumberMappings(): %d ms total"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sub-long v25, v14, v16

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 180
    :cond_235
    if-eqz v5, :cond_249

    .line 181
    const-string v22, "Exception writing to shadow number mappings database, removing"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 186
    :cond_249
    throw v21
.end method

.method public declared-synchronized addShadowNumberMapping(Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V
    .registers 20
    .parameter "mapping"

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    sget-boolean v12, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v12, :cond_33

    .line 377
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ShadowNumbers.addShadowNumber("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->getDestinationNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;->getShadowNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 381
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_cf

    move-result-wide v7

    .line 382
    .local v7, timeStart:J
    const/4 v2, 0x0

    .line 383
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 387
    .local v11, transactionInProgress:Z
    :try_start_39
    new-instance v4, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    const-string v13, "shadowmappings.db"

    invoke-direct {v4, v12, v13}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    .local v4, helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 392
    const/4 v11, 0x1

    .line 394
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v12}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->addMappingToDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;Z)V

    .line 396
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v9

    .line 400
    .local v9, timeWritten:J
    sget-boolean v12, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v12, :cond_74

    .line 401
    const-string v12, "ShadowNumbers.addShadowNumber(): added shadow number mapping in %d ms"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sub-long v15, v9, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_39 .. :try_end_74} :catchall_d2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_74} :catch_9f

    .line 408
    :cond_74
    if-eqz v2, :cond_80

    .line 409
    if-eqz v11, :cond_7c

    .line 410
    :try_start_78
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 411
    const/4 v11, 0x0

    .line 413
    :cond_7c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 414
    const/4 v2, 0x0

    .line 416
    :cond_80
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v5

    .line 417
    .local v5, timeDone:J
    sget-boolean v12, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v12, :cond_9d

    .line 418
    const-string v12, "ShadowNumbers.addShadowNumber(): %d ms total"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sub-long v15, v5, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_78 .. :try_end_9d} :catchall_cf

    .line 422
    .end local v4           #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .end local v9           #timeWritten:J
    :cond_9d
    :goto_9d
    monitor-exit p0

    return-void

    .line 405
    .end local v5           #timeDone:J
    :catch_9f
    move-exception v3

    .line 406
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_a0
    const-string v12, "ShadowNumbers.addShadowNumber(): failed to add shadow number to database"

    invoke-static {v12, v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_d2

    .line 408
    if-eqz v2, :cond_b1

    .line 409
    if-eqz v11, :cond_ad

    .line 410
    :try_start_a9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 411
    const/4 v11, 0x0

    .line 413
    :cond_ad
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 414
    const/4 v2, 0x0

    .line 416
    :cond_b1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v5

    .line 417
    .restart local v5       #timeDone:J
    sget-boolean v12, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v12, :cond_9d

    .line 418
    const-string v12, "ShadowNumbers.addShadowNumber(): %d ms total"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sub-long v15, v5, v7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_a9 .. :try_end_ce} :catchall_cf

    goto :goto_9d

    .line 376
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    .end local v5           #timeDone:J
    .end local v7           #timeStart:J
    .end local v11           #transactionInProgress:Z
    :catchall_cf
    move-exception v12

    monitor-exit p0

    throw v12

    .line 408
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7       #timeStart:J
    .restart local v11       #transactionInProgress:Z
    :catchall_d2
    move-exception v12

    if-eqz v2, :cond_df

    .line 409
    if-eqz v11, :cond_db

    .line 410
    :try_start_d7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 411
    const/4 v11, 0x0

    .line 413
    :cond_db
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 414
    const/4 v2, 0x0

    .line 416
    :cond_df
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->currentTimeMillis()J

    move-result-wide v5

    .line 417
    .restart local v5       #timeDone:J
    sget-boolean v13, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v13, :cond_fc

    .line 418
    const-string v13, "ShadowNumbers.addShadowNumber(): %d ms total"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sub-long v16, v5, v7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 421
    :cond_fc
    throw v12
    :try_end_fd
    .catchall {:try_start_d7 .. :try_end_fd} :catchall_cf
.end method

.method public declared-synchronized addShadowNumberMappingAsync(Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V
    .registers 5
    .parameter "mapping"

    .prologue
    .line 370
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;-><init>(Lcom/google/android/apps/googlevoice/ShadowNumbers;)V

    .line 371
    .local v0, task:Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 372
    monitor-exit p0

    return-void

    .line 370
    .end local v0           #task:Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 486
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_a

    .line 487
    const-string v0, "ShadowNumbers.clear():"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 490
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    const-string v1, "shadowmappings.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 491
    monitor-exit p0

    return-void

    .line 486
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShadowNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "destinationNumber"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->normalizedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->reversedSuffix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_8d

    move-result-object v12

    .line 233
    .local v12, reversedSuffix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 234
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 236
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_b
    new-instance v11, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    const-string v2, "shadowmappings.db"

    invoke-direct {v11, v1, v2}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    .local v11, helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    invoke-virtual {v11}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 238
    const-string v1, "number_mappings"

    sget-object v2, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_PROJECTION_DESTINATION_AND_SHADOW_NUMBERS:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_QUERY_DESTINATION_REVERSED_SUFFIX:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 244
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_49

    .line 245
    const-string v1, "Finding shadow for destination \'%s\': have %d candidate matches"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 248
    :cond_49
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 249
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, candidate:Ljava/lang/String;
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 251
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 252
    .local v13, shadowNumber:Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_75

    .line 253
    const-string v1, "ShadowNumbers: found mapping: %s -> %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_b .. :try_end_75} :catchall_a9
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_75} :catch_90

    .line 266
    :cond_75
    if-eqz v9, :cond_7a

    .line 267
    :try_start_77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_7a
    if-eqz v0, :cond_7f

    .line 270
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_8d

    .end local v8           #candidate:Ljava/lang/String;
    .end local v11           #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .end local v13           #shadowNumber:Ljava/lang/String;
    :cond_7f
    :goto_7f
    monitor-exit p0

    return-object v13

    .line 259
    .restart local v11       #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    :cond_81
    const/4 v13, 0x0

    .line 266
    if-eqz v9, :cond_87

    .line 267
    :try_start_84
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_87
    if-eqz v0, :cond_7f

    .line 270
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_8d

    goto :goto_7f

    .line 230
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .end local v12           #reversedSuffix:Ljava/lang/String;
    :catchall_8d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 260
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v12       #reversedSuffix:Ljava/lang/String;
    :catch_90
    move-exception v10

    .line 261
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_91
    const-string v1, "Exception loading existing database, removing"

    invoke-static {v1, v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    const-string v2, "shadowmappings.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_a9

    .line 264
    const/4 v13, 0x0

    .line 266
    if-eqz v9, :cond_a3

    .line 267
    :try_start_a0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_a3
    if-eqz v0, :cond_7f

    .line 270
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7f

    .line 266
    .end local v10           #ex:Ljava/lang/RuntimeException;
    :catchall_a9
    move-exception v1

    if-eqz v9, :cond_af

    .line 267
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_af
    if-eqz v0, :cond_b4

    .line 270
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b4
    throw v1
    :try_end_b5
    .catchall {:try_start_a0 .. :try_end_b5} :catchall_8d
.end method

.method public declared-synchronized isShadowNumber(Ljava/lang/String;)Z
    .registers 15
    .parameter "number"

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->normalizedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->reversedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 322
    .local v12, reversedSuffix:Ljava/lang/String;
    new-instance v11, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    const-string v2, "shadowmappings.db"

    invoke-direct {v11, v1, v2}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_9c

    .line 323
    .local v11, helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    const/4 v0, 0x0

    .line 324
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 327
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_14
    invoke-virtual {v11}, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 328
    const-string v1, "number_mappings"

    sget-object v2, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_PROJECTION_SHADOW_NUMBER:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->DB_QUERY_SHADOW_REVERSED_SUFFIX:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 334
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_49

    .line 335
    const-string v1, "Checking for shadow-ness of \'%s\': have %d candidate matches"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 338
    :cond_49
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 339
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, candidate:Ljava/lang/String;
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 341
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_70

    .line 342
    const-string v1, "ShadowNumbers: found match: \'%s\' -> \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_14 .. :try_end_70} :catchall_b8
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_70} :catch_9f

    .line 345
    :cond_70
    const/4 v1, 0x1

    .line 359
    if-eqz v9, :cond_76

    .line 360
    :try_start_73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_76
    if-eqz v0, :cond_7b

    .line 363
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_9c

    .end local v8           #candidate:Ljava/lang/String;
    :cond_7b
    :goto_7b
    monitor-exit p0

    return v1

    .line 349
    :cond_7d
    :try_start_7d
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_90

    .line 350
    const-string v1, "ShadowNumbers: found no match for \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_b8
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_90} :catch_9f

    .line 352
    :cond_90
    const/4 v1, 0x0

    .line 359
    if-eqz v9, :cond_96

    .line 360
    :try_start_93
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_96
    if-eqz v0, :cond_7b

    .line 363
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_9c

    goto :goto_7b

    .line 319
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .end local v12           #reversedSuffix:Ljava/lang/String;
    :catchall_9c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 353
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #helper:Lcom/google/android/apps/googlevoice/AndroidShadowNumbers$DatabaseHelper;
    .restart local v12       #reversedSuffix:Ljava/lang/String;
    :catch_9f
    move-exception v10

    .line 354
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_a0
    const-string v1, "Exception loading existing database, removing"

    invoke-static {v1, v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidShadowNumbers;->context:Landroid/content/Context;

    const-string v2, "shadowmappings.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_ac
    .catchall {:try_start_a0 .. :try_end_ac} :catchall_b8

    .line 357
    const/4 v1, 0x0

    .line 359
    if-eqz v9, :cond_b2

    .line 360
    :try_start_af
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_b2
    if-eqz v0, :cond_7b

    .line 363
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7b

    .line 359
    .end local v10           #ex:Ljava/lang/RuntimeException;
    :catchall_b8
    move-exception v1

    if-eqz v9, :cond_be

    .line 360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_be
    if-eqz v0, :cond_c3

    .line 363
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c3
    throw v1
    :try_end_c4
    .catchall {:try_start_af .. :try_end_c4} :catchall_9c
.end method

.method public refreshFailed(Ljava/lang/Exception;)V
    .registers 2
    .parameter "ex"

    .prologue
    .line 482
    return-void
.end method
