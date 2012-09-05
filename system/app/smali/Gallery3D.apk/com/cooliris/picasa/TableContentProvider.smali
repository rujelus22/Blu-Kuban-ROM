.class public Lcom/cooliris/picasa/TableContentProvider;
.super Landroid/content/ContentProvider;
.source "TableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/picasa/TableContentProvider$Mapping;
    }
.end annotation


# instance fields
.field protected mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/picasa/TableContentProvider$Mapping;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/cooliris/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    .line 233
    return-void
.end method

.method private final notifyChange(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/cooliris/picasa/TableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 231
    return-void
.end method

.method private final whereWithId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "uri"
    .parameter "selection"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, where:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 222
    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cooliris/picasa/EntrySchema;)V
    .registers 9
    .parameter "authority"
    .parameter "path"
    .parameter "mimeSubtype"
    .parameter "table"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cooliris/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    .line 51
    .local v0, mappings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/picasa/TableContentProvider$Mapping;>;"
    iget-object v1, p0, Lcom/cooliris/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 52
    .local v1, matcher:Landroid/content/UriMatcher;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    new-instance v2, Lcom/cooliris/picasa/TableContentProvider$Mapping;

    const/4 v3, 0x0

    invoke-direct {v2, p4, p3, v3}, Lcom/cooliris/picasa/TableContentProvider$Mapping;-><init>(Lcom/cooliris/picasa/EntrySchema;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    new-instance v2, Lcom/cooliris/picasa/TableContentProvider$Mapping;

    const/4 v3, 0x1

    invoke-direct {v2, p4, p3, v3}, Lcom/cooliris/picasa/TableContentProvider$Mapping;-><init>(Lcom/cooliris/picasa/EntrySchema;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 13
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 145
    iget-object v7, p0, Lcom/cooliris/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 146
    .local v4, match:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_31

    iget-object v7, p0, Lcom/cooliris/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cooliris/picasa/TableContentProvider$Mapping;

    move-object v3, v7

    .line 147
    .local v3, mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    :goto_12
    if-eqz v3, :cond_18

    iget-boolean v7, v3, Lcom/cooliris/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v7, :cond_33

    .line 148
    :cond_18
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 146
    .end local v3           #mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    :cond_31
    const/4 v3, 0x0

    goto :goto_12

    .line 152
    .restart local v3       #mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    :cond_33
    iget-object v7, v3, Lcom/cooliris/picasa/TableContentProvider$Mapping;->table:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v7}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, tableName:Ljava/lang/String;
    iget-object v7, p0, Lcom/cooliris/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 156
    .local v5, numInserted:I
    :try_start_40
    array-length v2, p2

    .line 157
    .local v2, length:I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_45
    if-eq v1, v2, :cond_51

    .line 159
    const-string v7, "_id"

    aget-object v8, p2, v1

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 161
    :cond_51
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_5f

    .line 162
    move v5, v2

    .line 164
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 165
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 167
    invoke-direct {p0, p1}, Lcom/cooliris/picasa/TableContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 168
    return v5

    .line 164
    .end local v1           #i:I
    .end local v2           #length:I
    :catchall_5f
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 165
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v7
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 197
    iget-object v5, p0, Lcom/cooliris/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 198
    .local v3, match:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_22

    .line 199
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_22
    iget-object v5, p0, Lcom/cooliris/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/picasa/TableContentProvider$Mapping;

    .line 204
    .local v2, mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    iget-boolean v5, v2, Lcom/cooliris/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v5, :cond_32

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/cooliris/picasa/TableContentProvider;->whereWithId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 209
    :cond_32
    iget-object v5, p0, Lcom/cooliris/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 210
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v2, Lcom/cooliris/picasa/TableContentProvider$Mapping;->table:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v5}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, tableName:Ljava/lang/String;
    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/cooliris/picasa/TableContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 213
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 214
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter "uri"

    .prologue
    .line 72
    iget-object v3, p0, Lcom/cooliris/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 73
    .local v1, match:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_22

    .line 74
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_22
    iget-object v3, p0, Lcom/cooliris/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/picasa/TableContentProvider$Mapping;

    .line 79
    .local v0, mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    iget-boolean v3, v0, Lcom/cooliris/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v3, :cond_4a

    const-string v2, "vnd.android.cursor.item"

    .line 81
    .local v2, prefix:Ljava/lang/String;
    :goto_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/cooliris/picasa/TableContentProvider$Mapping;->mimeSubtype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 79
    .end local v2           #prefix:Ljava/lang/String;
    :cond_4a
    const-string v2, "vnd.android.cursor.dir"

    goto :goto_30
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 117
    iget-object v6, p0, Lcom/cooliris/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 118
    .local v2, match:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_31

    iget-object v6, p0, Lcom/cooliris/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/picasa/TableContentProvider$Mapping;

    move-object v1, v6

    .line 119
    .local v1, mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    :goto_12
    if-eqz v1, :cond_18

    iget-boolean v6, v1, Lcom/cooliris/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v6, :cond_33

    .line 120
    :cond_18
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 118
    .end local v1           #mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    :cond_31
    const/4 v1, 0x0

    goto :goto_12

    .line 125
    .restart local v1       #mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    :cond_33
    iget-object v6, v1, Lcom/cooliris/picasa/TableContentProvider$Mapping;->table:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v6}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, tableName:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 128
    .local v3, rowId:J
    :try_start_3b
    iget-object v6, p0, Lcom/cooliris/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "_id"

    invoke-virtual {v6, v5, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_46
    .catch Landroid/database/SQLException; {:try_start_3b .. :try_end_46} :catch_58

    .line 134
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_72

    .line 135
    invoke-direct {p0, p1}, Lcom/cooliris/picasa/TableContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    return-object v6

    .line 129
    :catch_58
    move-exception v0

    .line 130
    .local v0, e:Landroid/database/SQLException;
    const-string v6, "TableContentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert:: SQLException... row at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    throw v0

    .line 138
    .end local v0           #e:Landroid/database/SQLException;
    :cond_72
    new-instance v6, Landroid/database/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert row at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cooliris/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 89
    .local v11, match:I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_22

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_22
    iget-object v0, p0, Lcom/cooliris/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cooliris/picasa/TableContentProvider$Mapping;

    .line 95
    .local v10, mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    iget-boolean v0, v10, Lcom/cooliris/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v0, :cond_32

    .line 96
    invoke-direct {p0, p1, p3}, Lcom/cooliris/picasa/TableContentProvider;->whereWithId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 102
    :cond_32
    iget-object v0, v10, Lcom/cooliris/picasa/TableContentProvider$Mapping;->table:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, tableName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 105
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_39
    iget-object v0, p0, Lcom/cooliris/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    invoke-virtual {p0}, Lcom/cooliris/picasa/TableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_56} :catch_57

    .line 111
    :goto_56
    return-object v8

    .line 108
    :catch_57
    move-exception v9

    .line 109
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "TableContentProvider"

    const-string v2, "query:"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method public setDatabase(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .registers 2
    .parameter "database"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cooliris/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 46
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 174
    iget-object v5, p0, Lcom/cooliris/picasa/TableContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 175
    .local v3, match:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_22

    .line 176
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    :cond_22
    iget-object v5, p0, Lcom/cooliris/picasa/TableContentProvider;->mMappings:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/picasa/TableContentProvider$Mapping;

    .line 181
    .local v2, mapping:Lcom/cooliris/picasa/TableContentProvider$Mapping;
    iget-boolean v5, v2, Lcom/cooliris/picasa/TableContentProvider$Mapping;->hasId:Z

    if-eqz v5, :cond_32

    .line 182
    invoke-direct {p0, p1, p3}, Lcom/cooliris/picasa/TableContentProvider;->whereWithId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 186
    :cond_32
    iget-object v5, p0, Lcom/cooliris/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 187
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v2, Lcom/cooliris/picasa/TableContentProvider$Mapping;->table:Lcom/cooliris/picasa/EntrySchema;

    invoke-virtual {v5}, Lcom/cooliris/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, tableName:Ljava/lang/String;
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/cooliris/picasa/TableContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 190
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 191
    return v0
.end method
