.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;
.super Landroid/content/ContentProvider;
.source "UinboxProvider.java"


# static fields
.field static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field static mUinboxHandler:Landroid/os/Handler;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->mUinboxHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 60
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.socialhub.unifiedinbox"

    const-string v2, "accounts"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.socialhub.unifiedinbox"

    const-string v2, "messages"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.socialhub.unifiedinbox"

    const-string v2, "temp_email_sync"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.socialhub.unifiedinbox"

    const-string v2, "temp_messaging_sync"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .parameter "context"

    .prologue
    .line 329
    const-class v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_b

    .line 331
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_46

    .line 364
    :goto_9
    monitor-exit v2

    return-object v1

    .line 334
    :cond_b
    :try_start_b
    const-string v1, "UinboxProvider"

    const-string v3, "getDatabase()"

    const-string v4, "start get DB"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;

    const-string v1, "UinboxProvider.db"

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    .local v0, helper:Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 340
    const-string v1, "UinboxProvider"

    const-string v3, "getDatabase()"

    const-string v4, "provider is created"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3a

    .line 344
    const-string v1, "UinboxProvider"

    const-string v3, "getDatabase()"

    const-string v4, "mDatabase is null!!!"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_9

    .line 362
    :cond_3a
    const-string v1, "UinboxProvider"

    const-string v3, "getDatabase()"

    const-string v4, "end get DB"

    invoke-static {v1, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_45
    .catchall {:try_start_b .. :try_end_45} :catchall_46

    goto :goto_9

    .line 329
    .end local v0           #helper:Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxDbHelper;
    :catchall_46
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 14
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 247
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 249
    .local v4, matchedUriId:I
    const/4 v5, 0x0

    .line 250
    .local v5, nValue_length:I
    array-length v5, p2

    .line 252
    const/4 v3, 0x0

    .line 254
    .local v3, insert_cnt:I
    const/4 v6, 0x0

    .line 256
    .local v6, table_name:Ljava/lang/String;
    packed-switch v4, :pswitch_data_86

    .line 277
    :goto_15
    if-eqz v6, :cond_52

    .line 283
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_1e

    .line 284
    const/16 v5, 0xbb8

    .line 286
    :cond_1e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 290
    const/4 v2, 0x0

    .local v2, index:I
    :goto_22
    if-ge v2, v5, :cond_7d

    .line 294
    const/4 v7, 0x0

    :try_start_25
    aget-object v8, p2, v2

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_81
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_25 .. :try_end_2a} :catch_38
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_48

    .line 295
    add-int/lit8 v3, v3, 0x1

    .line 290
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 259
    .end local v2           #index:I
    :pswitch_2f
    const-string v6, "messages"

    .line 261
    goto :goto_15

    .line 264
    :pswitch_32
    const-string v6, "temp_email_sync"

    .line 266
    goto :goto_15

    .line 269
    :pswitch_35
    const-string v6, "temp_messaging_sync"

    .line 271
    goto :goto_15

    .line 297
    .restart local v2       #index:I
    :catch_38
    move-exception v1

    .line 299
    .local v1, e:Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_39
    const-string v7, "UinboxProvider"

    const-string v8, "bulkInsert()"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_48

    goto :goto_2c

    .line 305
    .end local v1           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_48
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/Exception;
    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_81

    .line 311
    .end local v1           #e:Ljava/lang/Exception;
    :goto_4c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->notifyChange()V

    .line 317
    .end local v2           #index:I
    :cond_52
    const-string v7, "UinboxProvider"

    const-string v8, "bulkInsert()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is inserted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return v3

    .line 303
    .restart local v2       #index:I
    :cond_7d
    :try_start_7d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_48

    goto :goto_4c

    .line 311
    :catchall_81
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 256
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_32
        :pswitch_35
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_c

    const/4 v2, 0x0

    .line 151
    :goto_b
    return v2

    .line 118
    :cond_c
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 120
    .local v1, matchedUriId:I
    const/4 v2, 0x0

    .line 122
    .local v2, ret:I
    const-string v3, "UinboxProvider"

    const-string v4, "delete()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data delete. type - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    packed-switch v1, :pswitch_data_5c

    goto :goto_b

    .line 127
    :pswitch_31
    const-string v3, "accounts"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 128
    goto :goto_b

    .line 131
    :pswitch_38
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    :try_start_3b
    const-string v3, "messages"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 135
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_48

    .line 139
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_b

    :catchall_48
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 144
    :pswitch_4d
    const-string v3, "temp_email_sync"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 145
    goto :goto_b

    .line 148
    :pswitch_54
    const-string v3, "temp_messaging_sync"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_b

    .line 124
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_38
        :pswitch_4d
        :pswitch_54
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 79
    .local v2, match:I
    if-nez v0, :cond_12

    .line 109
    :goto_11
    return-object v7

    .line 81
    :cond_12
    packed-switch v2, :pswitch_data_56

    .line 107
    :goto_15
    const-string v3, "UinboxProvider"

    const-string v4, "insert()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data insert. type - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 84
    :pswitch_30
    const-string v3, "accounts"

    invoke-virtual {v0, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_15

    .line 90
    :pswitch_36
    :try_start_36
    const-string v3, "messages"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_36 .. :try_end_3c} :catch_3d

    goto :goto_15

    .line 92
    :catch_3d
    move-exception v1

    .line 94
    .local v1, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v3, "UinboxProvider"

    const-string v4, "insert()"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConstraintException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 99
    .end local v1           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :pswitch_4a
    const-string v3, "temp_email_sync"

    invoke-virtual {v0, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_15

    .line 103
    :pswitch_50
    const-string v3, "temp_messaging_sync"

    invoke-virtual {v0, v3, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_15

    .line 81
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_30
        :pswitch_36
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method

.method protected notifyChange()V
    .registers 5

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 325
    return-void
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "uri"
    .parameter "proj"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 194
    const-string v3, "UinboxProvider"

    const-string v4, "query()"

    const-string v5, "query Called"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 197
    .local v11, matchedUriId:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 199
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1b

    const/4 v9, 0x0

    .line 239
    :cond_1a
    :goto_1a
    return-object v9

    .line 201
    :cond_1b
    const/4 v9, 0x0

    .line 202
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 204
    .local v2, table:Ljava/lang/String;
    packed-switch v11, :pswitch_data_44

    .line 222
    :goto_20
    if-eqz v2, :cond_1a

    .line 230
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    :try_start_2a
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v9, v0
    :try_end_32
    .catch Landroid/database/SQLException; {:try_start_2a .. :try_end_32} :catch_3f

    goto :goto_1a

    .line 207
    :pswitch_33
    const-string v2, "accounts"

    .line 208
    goto :goto_20

    .line 210
    :pswitch_36
    const-string v2, "messages"

    .line 211
    goto :goto_20

    .line 214
    :pswitch_39
    const-string v2, "temp_email_sync"

    .line 215
    goto :goto_20

    .line 218
    :pswitch_3c
    const-string v2, "temp_messaging_sync"

    goto :goto_20

    .line 233
    :catch_3f
    move-exception v10

    .line 235
    .local v10, e:Landroid/database/SQLException;
    invoke-virtual {v10}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1a

    .line 204
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "uri"
    .parameter "cv"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 160
    .local v1, match:I
    const/4 v2, 0x0

    .line 162
    .local v2, ret:I
    if-nez v0, :cond_13

    const/4 v3, 0x0

    .line 185
    :goto_12
    return v3

    .line 164
    :cond_13
    packed-switch v1, :pswitch_data_58

    .line 183
    :goto_16
    const-string v3, "UinboxProvider"

    const-string v4, "update()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data updated. type - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and  arg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/provider/ProviderLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 185
    goto :goto_12

    .line 167
    :pswitch_3c
    const-string v3, "accounts"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 168
    goto :goto_16

    .line 171
    :pswitch_43
    const-string v3, "messages"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 172
    goto :goto_16

    .line 175
    :pswitch_4a
    const-string v3, "temp_email_sync"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 176
    goto :goto_16

    .line 179
    :pswitch_51
    const-string v3, "temp_messaging_sync"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_16

    .line 164
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_43
        :pswitch_4a
        :pswitch_51
    .end packed-switch
.end method
