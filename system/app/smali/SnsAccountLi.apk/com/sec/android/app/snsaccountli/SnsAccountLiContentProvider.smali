.class public Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;
.super Landroid/content/ContentProvider;
.source "SnsAccountLiContentProvider.java"


# static fields
.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 209
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 211
    sget-object v0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.provider.snsaccountli"

    const-string v2, "polling_cycle"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.provider.snsaccountli"

    const-string v2, "polling_cycle/update"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.provider.snsaccountli"

    const-string v2, "username_list"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.provider.snsaccountli"

    const-string v2, "previous_request_id"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "uri"
    .parameter "where"
    .parameter "whereargs"

    .prologue
    .line 57
    sget-object v5, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 58
    .local v3, match:I
    const/4 v4, 0x0

    .line 59
    .local v4, table:Ljava/lang/String;
    const/4 v0, 0x0

    .line 60
    .local v0, cnt:I
    sparse-switch v3, :sswitch_data_3a

    .line 70
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 62
    :sswitch_24
    const-string v4, "username_list"

    .line 73
    :goto_26
    const/4 v1, 0x0

    .line 76
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_27
    iget-object v5, p0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mOpenHelper:Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;

    invoke-virtual {v5}, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_30} :catch_36

    move-result v0

    move v5, v0

    .line 82
    :goto_32
    return v5

    .line 66
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_33
    const-string v4, "previous_request_id"

    .line 67
    goto :goto_26

    .line 78
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_36
    move-exception v2

    .line 79
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const/4 v5, 0x0

    goto :goto_32

    .line 60
    nop

    :sswitch_data_3a
    .sparse-switch
        0xc8 -> :sswitch_24
        0x12c -> :sswitch_33
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 87
    sget-object v0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 96
    sget-object v4, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 97
    .local v2, match:I
    const/4 v3, 0x0

    .line 98
    .local v3, table:Ljava/lang/String;
    sparse-switch v2, :sswitch_data_38

    .line 108
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :sswitch_24
    const-string v3, "username_list"

    .line 111
    :goto_26
    const/4 v0, 0x0

    .line 114
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_27
    iget-object v4, p0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mOpenHelper:Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;

    invoke-virtual {v4}, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_31} :catch_35

    .line 120
    :goto_31
    return-object v5

    .line 104
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_32
    const-string v3, "previous_request_id"

    .line 105
    goto :goto_26

    .line 116
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_35
    move-exception v1

    .line 117
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    goto :goto_31

    .line 98
    nop

    :sswitch_data_38
    .sparse-switch
        0xc8 -> :sswitch_24
        0x12c -> :sswitch_32
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mOpenHelper:Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, orderby:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 134
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 135
    .local v10, match:I
    sparse-switch v10, :sswitch_data_5e

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :sswitch_28
    const-string v2, "polling_cycle"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 153
    :goto_2d
    const/4 v1, 0x0

    .line 154
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 157
    .local v8, c:Landroid/database/Cursor;
    :try_start_2f
    iget-object v2, p0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mOpenHelper:Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 159
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 160
    if-eqz v8, :cond_4b

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_4b} :catch_5b

    :cond_4b
    move-object v2, v8

    .line 167
    :goto_4c
    return-object v2

    .line 141
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :sswitch_4d
    const-string v2, "username_list"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 142
    move-object/from16 v7, p5

    .line 143
    goto :goto_2d

    .line 146
    :sswitch_55
    const-string v2, "previous_request_id"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_2d

    .line 163
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    :catch_5b
    move-exception v9

    .line 164
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    goto :goto_4c

    .line 135
    :sswitch_data_5e
    .sparse-switch
        0x64 -> :sswitch_28
        0xc8 -> :sswitch_4d
        0x12c -> :sswitch_55
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 172
    sget-object v5, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 174
    .local v3, match:I
    const/4 v4, 0x0

    .line 175
    .local v4, table:Ljava/lang/String;
    sparse-switch v3, :sswitch_data_48

    .line 189
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    :sswitch_23
    const-string v4, "polling_cycle"

    .line 192
    :goto_25
    const/4 v1, 0x0

    .line 195
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_26
    iget-object v5, p0, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->mOpenHelper:Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;

    invoke-virtual {v5}, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 197
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, cnt:I
    if-lez v0, :cond_3e

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/SnsAccountLiContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_3e} :catch_45

    .line 205
    .end local v0           #cnt:I
    :cond_3e
    :goto_3e
    return v0

    .line 181
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_3f
    const-string v4, "username_list"

    .line 182
    goto :goto_25

    .line 185
    :sswitch_42
    const-string v4, "previous_request_id"

    .line 186
    goto :goto_25

    .line 201
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_45
    move-exception v2

    .line 202
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const/4 v0, 0x0

    goto :goto_3e

    .line 175
    :sswitch_data_48
    .sparse-switch
        0x64 -> :sswitch_23
        0xc8 -> :sswitch_3f
        0x12c -> :sswitch_42
    .end sparse-switch
.end method
