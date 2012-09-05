.class public Lcom/sec/android/provider/badge/BadgeProvider;
.super Landroid/content/ContentProvider;
.source "BadgeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;,
        Lcom/sec/android/provider/badge/BadgeProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "BadgeProvider"

    sput-object v0, Lcom/sec/android/provider/badge/BadgeProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/sec/android/provider/badge/BadgeProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 133
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 135
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/provider/badge/BadgeProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 137
    :cond_1c
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 85
    new-instance v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 87
    .local v0, args:Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;
    iget-object v4, p0, Lcom/sec/android/provider/badge/BadgeProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 88
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 90
    :try_start_e
    array-length v3, p2

    .line 91
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v3, :cond_29

    .line 92
    iget-object v4, v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_34

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_26

    .line 93
    const/4 v4, 0x0

    .line 97
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 101
    :goto_25
    return v4

    .line 91
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 95
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_34

    .line 97
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/provider/badge/BadgeProvider;->sendNotify(Landroid/net/Uri;)V

    .line 101
    array-length v4, p2

    goto :goto_25

    .line 97
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_34
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 53
    new-instance v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    .local v0, args:Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;
    iget-object v3, p0, Lcom/sec/android/provider/badge/BadgeProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 56
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, count:I
    if-lez v1, :cond_1a

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/provider/badge/BadgeProvider;->sendNotify(Landroid/net/Uri;)V

    .line 60
    :cond_1a
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 70
    new-instance v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 72
    .local v0, args:Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;
    iget-object v5, p0, Lcom/sec/android/provider/badge/BadgeProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 73
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 74
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_19

    .line 80
    :goto_18
    return-object v4

    .line 77
    :cond_19
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/provider/badge/BadgeProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 80
    goto :goto_18
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lcom/sec/android/provider/badge/BadgeProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/provider/badge/BadgeProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/provider/badge/BadgeProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/provider/badge/BadgeProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 48
    const/4 v0, 0x1

    return v0
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

    .line 107
    new-instance v8, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    .local v8, args:Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 109
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/sec/android/provider/badge/BadgeProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 112
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 114
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/provider/badge/BadgeProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 116
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 122
    new-instance v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 124
    .local v0, args:Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;
    iget-object v3, p0, Lcom/sec/android/provider/badge/BadgeProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 125
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/provider/badge/BadgeProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, count:I
    if-lez v1, :cond_1a

    .line 127
    invoke-direct {p0, p1}, Lcom/sec/android/provider/badge/BadgeProvider;->sendNotify(Landroid/net/Uri;)V

    .line 129
    :cond_1a
    return v1
.end method
