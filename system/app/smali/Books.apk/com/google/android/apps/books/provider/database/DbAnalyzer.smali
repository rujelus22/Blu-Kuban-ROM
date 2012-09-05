.class public Lcom/google/android/apps/books/provider/database/DbAnalyzer;
.super Ljava/lang/Object;
.source "DbAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;
    }
.end annotation


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "missing db"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    return-void
.end method

.method private computeSize(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;
    .registers 12
    .parameter "tableName"
    .parameter "columnName"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 156
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUM(IFNULL(LENGTH("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), 0))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 157
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 159
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_30
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 160
    new-instance v0, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;-><init>(II)V
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_46

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_46
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private findColumnNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .parameter "tableName"

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "0"

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 145
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    move-result-object v0

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_16
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private findTableNames()Ljava/lang/Iterable;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 125
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v1

    .line 126
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "type=\'table\' AND name != \'sqlite_sequence\' AND name != \'android_metadata\'"

    .line 128
    .local v11, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sqlite_master"

    const-string v3, "type=\'table\' AND name != \'sqlite_sequence\' AND name != \'android_metadata\'"

    const-string v7, "name ASC"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 131
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_19
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 132
    .local v10, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 133
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, name:Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_2c

    goto :goto_1d

    .line 138
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2c
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v10       #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v10
.end method

.method private getColumnToSize(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .parameter "tableName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v5

    .line 173
    .local v5, nameToSize:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->findColumnNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, columnNames:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_30

    aget-object v1, v0, v3

    .line 175
    .local v1, columnName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->computeSize(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 177
    .end local v1           #columnName:Ljava/lang/String;
    :cond_30
    return-object v5
.end method

.method public static shouldLogColumns()Z
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 47
    const-string v2, "TableToLog"

    const-string v3, "DbAnalyzer"

    invoke-static {v2, v4, v3}, Lcom/google/android/apps/books/util/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, table:Ljava/lang/String;
    const-string v2, "ColumnsToLog"

    const-string v3, "DbAnalyzer"

    invoke-static {v2, v4, v3}, Lcom/google/android/apps/books/util/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, columnNames:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {v0}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    :goto_1e
    return v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public static shouldLogSizes()Z
    .registers 2

    .prologue
    .line 39
    const-string v0, "DbAnalyzer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getColumnToSize()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v1

    .line 103
    .local v1, nameToSize:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;>;"
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->findTableNames()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .local v2, tableName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->getColumnToSize(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_c

    .line 106
    .end local v2           #tableName:Ljava/lang/String;
    :cond_20
    return-object v1
.end method

.method public maybeLogColumns()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 63
    const-string v0, "TableToLog"

    const-string v4, "DbAnalyzer"

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/books/util/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, table:Ljava/lang/String;
    const-string v0, "ColumnsToLog"

    const-string v4, "DbAnalyzer"

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/books/util/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, columnNames:Ljava/lang/String;
    const-string v0, "DbAnalyzer"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 67
    const-string v0, "DbAnalyzer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Logging "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3c
    invoke-static {v1}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {v10}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 96
    :cond_48
    :goto_48
    return-void

    .line 73
    :cond_49
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 77
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_59
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, actualColumns:[Ljava/lang/String;
    array-length v9, v8

    .line 79
    .local v9, columnCount:I
    const-string v0, "DbAnalyzer"

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "DbAnalyzer"

    const-string v3, "-------------------------------------------------------------------"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_6e
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 82
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_7a
    if-ge v12, v9, :cond_97

    .line 84
    if-lez v12, :cond_83

    .line 85
    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_83
    const-string v0, "\""

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v0, "\""

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v12, v12, 0x1

    goto :goto_7a

    .line 91
    :cond_97
    const-string v0, "DbAnalyzer"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_59 .. :try_end_a0} :catchall_a1

    goto :goto_6e

    .line 94
    .end local v8           #actualColumns:[Ljava/lang/String;
    .end local v9           #columnCount:I
    .end local v12           #i:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :catchall_a1
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #actualColumns:[Ljava/lang/String;
    .restart local v9       #columnCount:I
    :cond_a6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_48
.end method

.method public maybeLogSizes()V
    .registers 9

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->shouldLogSizes()Z

    move-result v5

    if-nez v5, :cond_7

    .line 122
    :cond_6
    return-void

    .line 116
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/database/DbAnalyzer;->getColumnToSize()Ljava/util/Map;

    move-result-object v3

    .line 117
    .local v3, nameToSize:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, columnName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;

    .line 120
    .local v4, size:Lcom/google/android/apps/books/provider/database/DbAnalyzer$Size;
    const-string v5, "DbAnalyzer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
