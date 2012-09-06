.class public Lcom/anddoes/launcher/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field static final a:Landroid/net/Uri;


# instance fields
.field private b:Lcom/anddoes/launcher/hu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-string v0, "content://com.anddoes.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    sput-object v0, Lcom/anddoes/launcher/LauncherProvider;->a:Landroid/net/Uri;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {p0, p1, p2}, Lcom/anddoes/launcher/LauncherProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-gez v0, :cond_f

    .line 1125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1120
    :cond_f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1121
    if-lez v0, :cond_25

    .line 1122
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {p1, p2}, Lcom/anddoes/launcher/hy;->a(J)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/anddoes/launcher/hv;

    invoke-direct {v1, v0, v2, v2}, Lcom/anddoes/launcher/hv;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, v1, Lcom/anddoes/launcher/hv;->a:Ljava/lang/String;

    iget-object v2, v1, Lcom/anddoes/launcher/hv;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/anddoes/launcher/hv;->c:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 190
    const-string v0, "notify"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_10

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 192
    :cond_10
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 194
    :cond_1c
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    invoke-virtual {v0}, Lcom/anddoes/launcher/hu;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/io/File;)Z
    .registers 3
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    invoke-static {v0, p1}, Lcom/anddoes/launcher/hu;->a(Lcom/anddoes/launcher/hu;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/io/File;)Z
    .registers 3
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    invoke-static {v0, p1}, Lcom/anddoes/launcher/hu;->b(Lcom/anddoes/launcher/hu;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 147
    new-instance v2, Lcom/anddoes/launcher/hv;

    invoke-direct {v2, p1}, Lcom/anddoes/launcher/hv;-><init>(Landroid/net/Uri;)V

    .line 149
    iget-object v1, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    invoke-virtual {v1}, Lcom/anddoes/launcher/hu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 152
    :try_start_f
    array-length v4, p2

    move v1, v0

    .line 153
    :goto_11
    if-lt v1, v4, :cond_1e

    .line 158
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_35

    .line 160
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/net/Uri;)V

    .line 164
    array-length v0, p2

    :goto_1d
    return v0

    .line 154
    :cond_1e
    :try_start_1e
    iget-object v5, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    iget-object v5, v2, Lcom/anddoes/launcher/hv;->a:Ljava/lang/String;

    aget-object v6, p2, v1

    invoke-static {v3, v5, v6}, Lcom/anddoes/launcher/LauncherProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_35

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_32

    .line 160
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1d

    .line 153
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 159
    :catchall_35
    move-exception v0

    .line 160
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 161
    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    new-instance v0, Lcom/anddoes/launcher/hv;

    invoke-direct {v0, p1, p2, p3}, Lcom/anddoes/launcher/hv;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    invoke-virtual {v1}, Lcom/anddoes/launcher/hu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 172
    iget-object v2, v0, Lcom/anddoes/launcher/hv;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/anddoes/launcher/hv;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/anddoes/launcher/hv;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 173
    if-lez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/net/Uri;)V

    .line 175
    :cond_1a
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 94
    new-instance v0, Lcom/anddoes/launcher/hv;

    invoke-direct {v0, p1, v1, v1}, Lcom/anddoes/launcher/hv;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    iget-object v1, v0, Lcom/anddoes/launcher/hv;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.dir/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/anddoes/launcher/hv;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_1f
    return-object v0

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.item/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/anddoes/launcher/hv;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Lcom/anddoes/launcher/hv;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/hv;-><init>(Landroid/net/Uri;)V

    .line 135
    iget-object v1, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    invoke-virtual {v1}, Lcom/anddoes/launcher/hu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    iget-object v0, v0, Lcom/anddoes/launcher/hv;->a:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/anddoes/launcher/LauncherProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 137
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1b

    const/4 v0, 0x0

    .line 142
    :goto_1a
    return-object v0

    .line 139
    :cond_1b
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/net/Uri;)V

    goto :goto_1a
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 87
    new-instance v0, Lcom/anddoes/launcher/hu;

    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/hu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    .line 88
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/LauncherApplication;->a(Lcom/anddoes/launcher/LauncherProvider;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 106
    new-instance v2, Lcom/anddoes/launcher/hv;

    invoke-direct {v2, p1, p3, p4}, Lcom/anddoes/launcher/hv;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 108
    iget-object v1, v2, Lcom/anddoes/launcher/hv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    invoke-virtual {v1}, Lcom/anddoes/launcher/hu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 111
    iget-object v3, v2, Lcom/anddoes/launcher/hv;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/anddoes/launcher/hv;->c:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/anddoes/launcher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 114
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    new-instance v0, Lcom/anddoes/launcher/hv;

    invoke-direct {v0, p1, p3, p4}, Lcom/anddoes/launcher/hv;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/anddoes/launcher/LauncherProvider;->b:Lcom/anddoes/launcher/hu;

    invoke-virtual {v1}, Lcom/anddoes/launcher/hu;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 183
    iget-object v2, v0, Lcom/anddoes/launcher/hv;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/anddoes/launcher/hv;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/anddoes/launcher/hv;->c:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 184
    if-lez v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/anddoes/launcher/LauncherProvider;->a(Landroid/net/Uri;)V

    .line 186
    :cond_1a
    return v0
.end method
