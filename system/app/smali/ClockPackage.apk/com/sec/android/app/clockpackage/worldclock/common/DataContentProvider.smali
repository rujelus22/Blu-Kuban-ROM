.class public Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;
.super Landroid/content/ContentProvider;
.source "DataContentProvider.java"


# static fields
.field private static final MATCHER:Landroid/content/UriMatcher;

.field static dbAdapter:Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 59
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    .line 61
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.provider.stri_s1_worldclock"

    const-string v2, "HOMEZONE"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 170
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_38

    .line 180
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

    .line 174
    :pswitch_22
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->dbAdapter:Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;

    const-string v2, "worldclock"

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 186
    return v0

    .line 170
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_22
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v1, 0x0

    .line 106
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    .line 124
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

    .line 112
    :pswitch_23
    :try_start_23
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->dbAdapter:Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;

    const-string v3, "worldclock"

    invoke-virtual {v2, v3, p2}, Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_23 .. :try_end_2a} :catch_36

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 130
    .end local p1
    :goto_35
    return-object p1

    .line 114
    .restart local p1
    :catch_36
    move-exception v0

    .local v0, se:Landroid/database/sqlite/SQLiteFullException;
    move-object p1, v1

    .line 116
    goto :goto_35

    .line 106
    nop

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_23
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 68
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "worldclock"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->dbAdapter:Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;

    .line 70
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->dbAdapter:Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;->open()Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 81
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_23
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->dbAdapter:Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;

    const-string v1, "worldclock"

    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;->selectAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 98
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 100
    return-object v8

    .line 81
    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_23
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 138
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    .line 156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :pswitch_22
    :try_start_22
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->dbAdapter:Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;

    const-string v3, "worldclock"

    invoke-virtual {v2, v3, p2, p3}, Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;->updateByWhere(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_22 .. :try_end_29} :catch_37

    move-result v0

    .line 160
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 162
    .end local v0           #count:I
    :goto_36
    return v0

    .line 146
    :catch_37
    move-exception v1

    .line 148
    .local v1, se:Landroid/database/sqlite/SQLiteFullException;
    const/4 v0, -0x1

    goto :goto_36

    .line 138
    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_22
    .end packed-switch
.end method
