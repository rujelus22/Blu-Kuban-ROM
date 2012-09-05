.class public Lcom/google/android/apps/books/util/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"

# interfaces
.implements Lcom/google/android/apps/books/util/pool/Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/util/pool/Poolable",
        "<",
        "Lcom/google/android/apps/books/util/SelectionBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private mNext:Lcom/google/android/apps/books/util/SelectionBuilder;

.field private final mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelection:Ljava/lang/StringBuilder;

.field private final mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    return-void
.end method

.method private mapColumns([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "columns"

    .prologue
    .line 167
    move-object v1, p1

    .line 168
    .local v1, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_1e

    .line 169
    iget-object v3, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    aget-object v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, target:Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 171
    if-ne v1, p1, :cond_19

    .line 172
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 174
    .restart local v1       #result:[Ljava/lang/String;
    :cond_19
    aput-object v2, v1, v0

    .line 168
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 177
    .end local v2           #target:Ljava/lang/String;
    :cond_1e
    return-object v1
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 5
    .parameter "db"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    const-string v1, "Table not specified"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNextPoolable()Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mNext:Lcom/google/android/apps/books/util/SelectionBuilder;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getNextPoolable()Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public map(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 6
    .parameter "fromColumn"
    .parameter "toClause"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object p0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "db"
    .parameter "columns"
    .parameter "orderBy"

    .prologue
    const/4 v3, 0x0

    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "db"
    .parameter "columns"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    const-string v1, "Table not specified"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    if-eqz p2, :cond_d

    .line 200
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->mapColumns([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 202
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 3

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    return-object p0
.end method

.method public setNextPoolable(Lcom/google/android/apps/books/util/SelectionBuilder;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mNext:Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 67
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/apps/books/util/SelectionBuilder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/SelectionBuilder;->setNextPoolable(Lcom/google/android/apps/books/util/SelectionBuilder;)V

    return-void
.end method

.method public table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 2
    .parameter "table"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionBuilder[table="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .registers 6
    .parameter "db"
    .parameter "values"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    const-string v1, "Table not specified"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 9
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 93
    invoke-static {p1}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 94
    if-eqz p2, :cond_48

    array-length v4, p2

    if-lez v4, :cond_48

    .line 95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Valid selection required when including arguments="

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_13
    iget-object v4, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 104
    iget-object v4, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_22
    iget-object v4, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    if-eqz p2, :cond_48

    .line 109
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_38
    if-ge v2, v3, :cond_48

    aget-object v0, v1, v2

    .line 112
    .local v0, arg:Ljava/lang/Object;
    iget-object v4, p0, Lcom/google/android/apps/books/util/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 116
    .end local v0           #arg:Ljava/lang/Object;
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_48
    return-object p0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 4
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 85
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    return-object v0
.end method
