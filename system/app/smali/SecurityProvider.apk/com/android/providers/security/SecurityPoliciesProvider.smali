.class public Lcom/android/providers/security/SecurityPoliciesProvider;
.super Landroid/content/ContentProvider;
.source "SecurityPoliciesProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/android/providers/security/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 27
    const-class v0, Lcom/android/providers/security/SecurityPoliciesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/security/SecurityPoliciesProvider;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/security/SecurityPoliciesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 46
    sget-object v0, Lcom/android/providers/security/SecurityPoliciesProvider;->TAG:Ljava/lang/String;

    const-string v1, "Static initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/android/providers/security/SecurityPoliciesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 50
    const-string v1, "com.android.security"

    const-string v2, "password"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    const-string v1, "com.android.security"

    const-string v2, "password/#"

    const/16 v3, 0x7d1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "id"
    .parameter "selection"

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    if-eqz p2, :cond_1e

    .line 221
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 73
    sget-object v3, Lcom/android/providers/security/SecurityPoliciesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 74
    .local v2, match:I
    const/4 v1, 0x0

    .line 75
    .local v1, delCount:I
    iget-object v3, p0, Lcom/android/providers/security/SecurityPoliciesProvider;->mDbHelper:Lcom/android/providers/security/DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/security/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v2, :pswitch_data_30

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :pswitch_29
    const-string v3, "passwords"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 85
    return v1

    .line 77
    :pswitch_data_30
    .packed-switch 0x7d0
        :pswitch_29
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 90
    sget-object v1, Lcom/android/providers/security/SecurityPoliciesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 97
    .local v0, match:I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 124
    sget-object v6, Lcom/android/providers/security/SecurityPoliciesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 126
    .local v3, match:I
    iget-object v6, p0, Lcom/android/providers/security/SecurityPoliciesProvider;->mDbHelper:Lcom/android/providers/security/DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/providers/security/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, 0x0

    .line 130
    .local v1, id:J
    packed-switch v3, :pswitch_data_2a

    .line 137
    :goto_12
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gez v6, :cond_25

    .line 141
    :goto_18
    return-object v5

    .line 132
    :pswitch_19
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v4, value:Landroid/content/ContentValues;
    const-string v6, "passwords"

    invoke-virtual {v0, v6, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_12

    .line 141
    .end local v4           #value:Landroid/content/ContentValues;
    :cond_25
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_18

    .line 130
    :pswitch_data_2a
    .packed-switch 0x7d0
        :pswitch_19
    .end packed-switch
.end method

.method public onBegin()V
    .registers 1

    .prologue
    .line 208
    return-void
.end method

.method public onCommit()V
    .registers 1

    .prologue
    .line 214
    return-void
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/providers/security/SecurityPoliciesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, context:Landroid/content/Context;
    :try_start_4
    invoke-static {v0}, Lcom/android/providers/security/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/security/DatabaseHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/security/SecurityPoliciesProvider;->mDbHelper:Lcom/android/providers/security/DatabaseHelper;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_a} :catch_c

    .line 68
    const/4 v2, 0x1

    :goto_b
    return v2

    .line 63
    :catch_c
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/providers/security/SecurityPoliciesProvider;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start provider"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public onRollback()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 147
    sget-object v1, Lcom/android/providers/security/SecurityPoliciesProvider;->TAG:Ljava/lang/String;

    const-string v2, "Executing query"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v1, Lcom/android/providers/security/SecurityPoliciesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 150
    .local v9, match:I
    iget-object v1, p0, Lcom/android/providers/security/SecurityPoliciesProvider;->mDbHelper:Lcom/android/providers/security/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/security/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 152
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 154
    .local v8, cursor:Landroid/database/Cursor;
    packed-switch v9, :pswitch_data_26

    .line 162
    :goto_18
    return-object v8

    .line 157
    :pswitch_19
    const-string v1, "passwords"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_18

    .line 154
    nop

    :pswitch_data_26
    .packed-switch 0x7d0
        :pswitch_19
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 168
    sget-object v4, Lcom/android/providers/security/SecurityPoliciesProvider;->TAG:Ljava/lang/String;

    const-string v5, "Executing update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v4, Lcom/android/providers/security/SecurityPoliciesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 171
    .local v3, match:I
    iget-object v4, p0, Lcom/android/providers/security/SecurityPoliciesProvider;->mDbHelper:Lcom/android/providers/security/DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/security/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 173
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 175
    .local v0, count:I
    packed-switch v3, :pswitch_data_56

    .line 195
    :goto_17
    return v0

    .line 177
    :pswitch_18
    sget-object v4, Lcom/android/providers/security/SecurityPoliciesProvider;->TAG:Ljava/lang/String;

    const-string v5, "Password update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 179
    const-string v4, "passwords"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 181
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_17

    .line 185
    :pswitch_2f
    sget-object v4, Lcom/android/providers/security/SecurityPoliciesProvider;->TAG:Ljava/lang/String;

    const-string v5, "Password id update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 187
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 188
    const-string v4, "passwords"

    invoke-direct {p0, v2, p3}, Lcom/android/providers/security/SecurityPoliciesProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 191
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_17

    .line 175
    nop

    :pswitch_data_56
    .packed-switch 0x7d0
        :pswitch_18
        :pswitch_2f
    .end packed-switch
.end method
