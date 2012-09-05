.class Lcom/google/android/apps/books/provider/LocalStatesProvidelet;
.super Ljava/lang/Object;
.source "LocalStatesProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V
    .registers 3
    .parameter "context"
    .parameter "database"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 47
    return-void
.end method

.method private getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 11
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    new-instance v0, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    .line 145
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-virtual {v0, p3, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 146
    packed-switch p1, :pswitch_data_5a

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :pswitch_30
    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 159
    :goto_3d
    :pswitch_3d
    return-object v0

    .line 153
    :pswitch_3e
    const-string v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 154
    const-string v1, "volume_id=?"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_3d

    .line 146
    nop

    :pswitch_data_5a
    .packed-switch 0x258
        :pswitch_3d
        :pswitch_30
        :pswitch_3e
    .end packed-switch
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->mContext:Landroid/content/Context;

    .line 169
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 170
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 172
    .local v1, observer:Landroid/database/ContentObserver;
    const-string v4, "callerIsSyncAdapter"

    invoke-static {p1, v4, v3}, Lcom/google/android/apps/books/util/UriUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v3, 0x1

    .line 174
    .local v3, syncToNetwork:Z
    :cond_11
    invoke-virtual {v2, p1, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 175
    return-void
.end method


# virtual methods
.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 120
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 121
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "volume_states"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 122
    .local v1, count:I
    if-eqz v1, :cond_19

    .line 123
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 125
    :cond_19
    return v1
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 82
    const/16 v3, 0x258

    if-eq p1, v3, :cond_27

    .line 83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_27
    const-string v3, "account_name"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "volume_id"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, volumeId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 90
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "volume_states"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 92
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 94
    invoke-static {v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 65
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 66
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "volume_states"

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, p3, p6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 68
    .local v1, c:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 69
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-interface {v1, v3, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 71
    return-object v1
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 106
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 108
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "volume_states"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v3

    invoke-virtual {v3, v2, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    .line 109
    .local v1, count:I
    if-eqz v1, :cond_19

    .line 110
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalStatesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 112
    :cond_19
    return v1
.end method
