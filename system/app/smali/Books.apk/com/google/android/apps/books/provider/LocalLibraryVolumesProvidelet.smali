.class Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;
.super Ljava/lang/Object;
.source "LocalLibraryVolumesProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# static fields
.field private static final COLUMNS:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

.field private final mGlobalSearchHelper:Lcom/google/android/apps/books/provider/GlobalSearchHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    invoke-static {}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->createColumns()Ljava/util/LinkedHashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->COLUMNS:Ljava/util/LinkedHashSet;

    .line 57
    sget-object v0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->COLUMNS:Ljava/util/LinkedHashSet;

    sget-object v1, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->COLUMNS:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V
    .registers 5
    .parameter "context"
    .parameter "database"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "missing database"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 92
    new-instance v0, Lcom/google/android/apps/books/provider/GlobalSearchHelper;

    iget-object v1, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mGlobalSearchHelper:Lcom/google/android/apps/books/provider/GlobalSearchHelper;

    .line 93
    return-void
.end method

.method private static createColumns()Ljava/util/LinkedHashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getCollectionVolumeColumnToClass()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 76
    .local v1, indeterminates:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    const-string v2, "volume_id"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 78
    const-string v2, "account_name"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getCollectionVolumesColumnNames()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v0, determinates:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 84
    return-object v0
.end method

.method private getQueryProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "projection"

    .prologue
    .line 206
    if-nez p1, :cond_5

    .line 207
    sget-object p1, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->PROJECTION:[Ljava/lang/String;

    .line 215
    .end local p1
    :cond_4
    return-object p1

    .line 209
    .restart local p1
    :cond_5
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 210
    .local v1, column:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->COLUMNS:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 211
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in projection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private getSelectionBuilder(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 221
    new-instance v1, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v1}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    .line 222
    .local v1, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-virtual {v1, p2, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 224
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, account:Ljava/lang/String;
    const-string v2, "account_name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 226
    return-object v1
.end method

.method private isSyncAdapter(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 96
    const-string v0, "callerIsSyncAdapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/books/util/UriUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private prefixMatchExpression(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "value"

    .prologue
    .line 109
    const-string v0, "(%s LIKE (?||\'%%\') OR %s LIKE (\'%% \'||?||\'%%\'))"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Library Uris are read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Library Uris are read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Library Uris are read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mGlobalSearchHelper:Lcom/google/android/apps/books/provider/GlobalSearchHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->isGlobalSearch(I)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 124
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mGlobalSearchHelper:Lcom/google/android/apps/books/provider/GlobalSearchHelper;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->getQueryProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, columns:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mGlobalSearchHelper:Lcom/google/android/apps/books/provider/GlobalSearchHelper;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v9

    .line 126
    .local v9, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    if-nez v9, :cond_22

    .line 130
    new-instance v10, Landroid/database/MatrixCursor;

    invoke-direct {v10, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 167
    :goto_21
    return-object v10

    .line 132
    :cond_22
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mGlobalSearchHelper:Lcom/google/android/apps/books/provider/GlobalSearchHelper;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->getQuery(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mGlobalSearchHelper:Lcom/google/android/apps/books/provider/GlobalSearchHelper;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->getSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 134
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mGlobalSearchHelper:Lcom/google/android/apps/books/provider/GlobalSearchHelper;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/provider/GlobalSearchHelper;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, limit:Ljava/lang/String;
    :goto_36
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->isSyncAdapter(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 143
    const-string v2, "dirty!=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v9, v2, v5}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 147
    :cond_4c
    if-eqz v11, :cond_83

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title"

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->prefixMatchExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "creator"

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->prefixMatchExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    aput-object v11, v5, v6

    const/4 v6, 0x3

    aput-object v11, v5, v6

    invoke-virtual {v9, v2, v5}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 156
    :cond_83
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 161
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "view_collection_volumes"

    invoke-virtual {v9, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v2

    const-string v5, "volume_id"

    const/4 v6, 0x0

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 164
    .local v10, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 165
    .local v12, resolver:Landroid/content/ContentResolver;
    invoke-interface {v10, v12, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_21

    .line 136
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #columns:[Ljava/lang/String;
    .end local v8           #limit:Ljava/lang/String;
    .end local v9           #builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #query:Ljava/lang/String;
    .end local v12           #resolver:Landroid/content/ContentResolver;
    :cond_a2
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->getQueryProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 137
    .restart local v4       #columns:[Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/apps/books/provider/LocalLibraryVolumesProvidelet;->getSelectionBuilder(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v9

    .line 138
    .restart local v9       #builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    const-string v2, "query"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 139
    .restart local v11       #query:Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #limit:Ljava/lang/String;
    goto/16 :goto_36
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Library Uris are read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
