.class public Lcom/sec/android/widgetapp/dualclock/DataContentProvider;
.super Landroid/content/ContentProvider;
.source "DataContentProvider.java"


# static fields
.field static final DATA_URI:Landroid/net/Uri;

.field static final INTENT_URI:Landroid/net/Uri;

.field static final INTENT_URI2:Landroid/net/Uri;

.field private static final MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private dbAdapter:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 29
    const-string v0, "content://com.sec.android.widgetapp.dualclock/HOMEZONE/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->DATA_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.sec.android.widgetapp.dualclock/dualclock/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->INTENT_URI:Landroid/net/Uri;

    .line 34
    const-string v0, "content://com.sec.android.widgetapp.dualclock/dualclock2/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->INTENT_URI2:Landroid/net/Uri;

    .line 45
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    .line 47
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.widgetapp.dualclock"

    const-string v2, "HOMEZONE"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
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
    .line 148
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_38

    .line 158
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

    .line 152
    :pswitch_22
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->dbAdapter:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;

    const-string v2, "dualclock"

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 164
    return v0

    .line 148
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
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 96
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 106
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

    .line 100
    :pswitch_22
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->dbAdapter:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;

    const-string v1, "dualclock"

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 112
    return-object p1

    .line 96
    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_22
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    .line 55
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dualclock"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->dbAdapter:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;

    .line 58
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->dbAdapter:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->open()Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;

    .line 60
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

    .line 70
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 83
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

    .line 74
    :pswitch_23
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->dbAdapter:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;

    const-string v1, "dualclock"

    sget-object v2, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->selectAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 87
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 89
    return-object v8

    .line 70
    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_23
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 122
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_38

    .line 133
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

    .line 126
    :pswitch_22
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->dbAdapter:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;

    const-string v2, "dualclock"

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->updateByWhere(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 139
    return v0

    .line 122
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_22
    .end packed-switch
.end method
