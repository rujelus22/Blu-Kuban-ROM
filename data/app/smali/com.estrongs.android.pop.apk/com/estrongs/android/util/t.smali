.class public Lcom/estrongs/android/util/t;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/estrongs/android/util/t;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/t;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/t;->d:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/util/t;
    .registers 6

    const/4 v0, 0x0

    const-class v3, Lcom/estrongs/android/util/t;

    monitor-enter v3

    :try_start_4
    sget-object v1, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    if-nez v1, :cond_b2

    sget-object v1, Lcom/estrongs/android/util/t;->a:Ljava/lang/String;

    if-nez v1, :cond_13

    new-instance v0, Lcom/estrongs/android/util/t;

    invoke-direct {v0}, Lcom/estrongs/android/util/t;-><init>()V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_ac

    :goto_11
    monitor-exit v3

    return-object v0

    :cond_13
    :try_start_13
    new-instance v2, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/util/t;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_ac

    :try_start_1a
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/estrongs/android/util/t;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_ac
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1a .. :try_end_21} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_b6

    :try_start_21
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2a
    new-instance v2, Lcom/estrongs/android/util/t;

    invoke-direct {v2}, Lcom/estrongs/android/util/t;-><init>()V

    sput-object v2, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    sget-object v2, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/estrongs/android/util/t;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "cachedb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    iget-object v2, v2, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_af

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/estrongs/android/util/t;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "cachedb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/estrongs/android/util/t;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "cachedb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    iget-object v2, v2, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_af

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;
    :try_end_99
    .catchall {:try_start_21 .. :try_end_99} :catchall_ac
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_21 .. :try_end_99} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_99} :catch_b6

    goto/16 :goto_11

    :catch_9b
    move-exception v0

    :goto_9c
    const/4 v2, 0x0

    :try_start_9d
    sput-object v2, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/util/t;

    invoke-direct {v0}, Lcom/estrongs/android/util/t;-><init>()V
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_ac

    goto/16 :goto_11

    :catchall_ac
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_af
    :try_start_af
    invoke-static {}, Lcom/estrongs/android/util/t;->b()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_ac
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_af .. :try_end_b2} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b6

    :cond_b2
    :try_start_b2
    sget-object v0, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    goto/16 :goto_11

    :catch_b6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/util/t;

    invoke-direct {v0}, Lcom/estrongs/android/util/t;-><init>()V
    :try_end_bf
    .catchall {:try_start_b2 .. :try_end_bf} :catchall_ac

    goto/16 :goto_11

    :catch_c1
    move-exception v0

    move-object v1, v2

    goto :goto_9c
.end method

.method private a(ILcom/estrongs/android/util/u;Z)V
    .registers 8

    const/4 v3, 0x1

    if-eqz p3, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM file_cache WHERE server_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/estrongs/android/util/u;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2f
    iget v0, p2, Lcom/estrongs/android/util/u;->e:I

    if-ne v0, v3, :cond_75

    iget v0, p2, Lcom/estrongs/android/util/u;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/util/t;->a(II)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM file_cache WHERE server_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parent_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/estrongs/android/util/u;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6f
    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_76

    :cond_75
    return-void

    :cond_76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/u;

    iget v2, v0, Lcom/estrongs/android/util/u;->e:I

    if-ne v2, v3, :cond_6f

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/estrongs/android/util/t;->a(ILcom/estrongs/android/util/u;Z)V

    goto :goto_6f
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/t;->a:Ljava/lang/String;

    return-void
.end method

.method private static b()V
    .registers 2

    const-string v0, "CREATE TABLE IF NOT EXISTS server_id (id INTEGER PRIMARY KEY,server TEXT UNIQUE)"

    sget-object v1, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    iget-object v1, v1, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS file_cache (id INTEGER PRIMARY KEY,server_id INTEGER,path TEXT,isdir INTEGER,hash  TEXT,mtime  INTEGER,parent_id  INTEGER,checktime INTEGER,size  INTEGER)"

    sget-object v1, Lcom/estrongs/android/util/t;->b:Lcom/estrongs/android/util/t;

    iget-object v1, v1, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string v0, "\"\""

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .registers 13

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_9

    move v0, v8

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_21

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_21
    invoke-direct {p0, p2}, Lcom/estrongs/android/util/t;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_25
    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "server_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5d
    .catchall {:try_start_25 .. :try_end_5d} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5d} :catch_7b

    move-result-object v1

    if-eqz v1, :cond_66

    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_8e
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_91

    move-result v0

    if-nez v0, :cond_6d

    :cond_66
    if-eqz v1, :cond_6b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6b
    move v0, v8

    goto :goto_8

    :cond_6d
    :try_start_6d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_8e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_91

    move-result v0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catch_7b
    move-exception v0

    move-object v1, v9

    :goto_7d
    :try_start_7d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_8e

    if-eqz v1, :cond_85

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_85
    move v0, v8

    goto :goto_8

    :catchall_87
    move-exception v0

    :goto_88
    if-eqz v9, :cond_8d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw v0

    :catchall_8e
    move-exception v0

    move-object v9, v1

    goto :goto_88

    :catch_91
    move-exception v0

    goto :goto_7d
.end method

.method public a(II)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/u;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7

    move-object v0, v8

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mtime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "checktime"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "server_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_c2

    move-result-object v1

    if-eqz v1, :cond_66

    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_d9

    move-result v0

    if-nez v0, :cond_6d

    :cond_66
    if-eqz v1, :cond_6b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6b
    move-object v0, v8

    goto :goto_6

    :cond_6d
    :try_start_6d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_75} :catch_d9

    move-result v2

    :goto_76
    if-nez v2, :cond_7e

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_7e
    :try_start_7e
    new-instance v2, Lcom/estrongs/android/util/u;

    invoke-direct {v2}, Lcom/estrongs/android/util/u;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/util/u;->a:I

    iput p1, v2, Lcom/estrongs/android/util/u;->b:I

    iput p2, v2, Lcom/estrongs/android/util/u;->c:I

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/util/u;->e:I

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/util/u;->g:I

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/util/u;->h:I

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/util/u;->i:I

    iget-object v3, v2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c0
    .catchall {:try_start_7e .. :try_end_c0} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_c0} :catch_d9

    move-result v2

    goto :goto_76

    :catch_c2
    move-exception v0

    move-object v1, v8

    :goto_c4
    :try_start_c4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_d6

    if-eqz v1, :cond_cc

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_cc
    move-object v0, v8

    goto/16 :goto_6

    :catchall_cf
    move-exception v0

    :goto_d0
    if-eqz v8, :cond_d5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d5
    throw v0

    :catchall_d6
    move-exception v0

    move-object v8, v1

    goto :goto_d0

    :catch_d9
    move-exception v0

    goto :goto_c4
.end method

.method public a(IILjava/util/HashMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/u;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :try_start_b
    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mtime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "checktime"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "server_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_61
    .catchall {:try_start_b .. :try_end_61} :catchall_c9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_61} :catch_bd

    move-result-object v1

    if-eqz v1, :cond_70

    :try_start_64
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6d} :catch_d3

    move-result v0

    :goto_6e
    if-nez v0, :cond_79

    :cond_70
    if-eqz v1, :cond_75

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_75
    invoke-virtual {p0, p1, p2, v9, p3}, Lcom/estrongs/android/util/t;->a(IILjava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_5

    :cond_79
    :try_start_79
    new-instance v0, Lcom/estrongs/android/util/u;

    invoke-direct {v0}, Lcom/estrongs/android/util/u;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->a:I

    iput p1, v0, Lcom/estrongs/android/util/u;->b:I

    iput p2, v0, Lcom/estrongs/android/util/u;->c:I

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->e:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->g:I

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->h:I

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->i:I

    iget-object v2, v0, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_bb
    .catchall {:try_start_79 .. :try_end_bb} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_bb} :catch_d3

    move-result v0

    goto :goto_6e

    :catch_bd
    move-exception v0

    move-object v1, v8

    :goto_bf
    :try_start_bf
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_d0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_c9
    move-exception v0

    :goto_ca
    if-eqz v8, :cond_cf

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_cf
    throw v0

    :catchall_d0
    move-exception v0

    move-object v8, v1

    goto :goto_ca

    :catch_d3
    move-exception v0

    goto :goto_bf
.end method

.method public a(IILjava/util/HashMap;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/u;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/u;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    if-eqz p4, :cond_11

    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_11
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_76

    :cond_21
    return-void

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/u;

    iput p1, v0, Lcom/estrongs/android/util/u;->b:I

    iput p2, v0, Lcom/estrongs/android/util/u;->c:I

    if-nez p3, :cond_5c

    const/4 v2, 0x0

    :goto_3b
    if-eqz v2, :cond_72

    iget v4, v2, Lcom/estrongs/android/util/u;->e:I

    if-nez v4, :cond_63

    iget v4, v0, Lcom/estrongs/android/util/u;->e:I

    if-nez v4, :cond_63

    iget v4, v0, Lcom/estrongs/android/util/u;->h:I

    iget v5, v2, Lcom/estrongs/android/util/u;->h:I

    if-ne v4, v5, :cond_51

    iget v4, v0, Lcom/estrongs/android/util/u;->g:I

    iget v5, v2, Lcom/estrongs/android/util/u;->g:I

    if-eq v4, v5, :cond_58

    :cond_51
    iget v2, v2, Lcom/estrongs/android/util/u;->a:I

    iput v2, v0, Lcom/estrongs/android/util/u;->a:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/t;->b(Lcom/estrongs/android/util/u;)V

    :cond_58
    :goto_58
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_5c
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/u;

    goto :goto_3b

    :cond_63
    iget v4, v2, Lcom/estrongs/android/util/u;->e:I

    iget v5, v0, Lcom/estrongs/android/util/u;->e:I

    if-eq v4, v5, :cond_58

    iget v4, v2, Lcom/estrongs/android/util/u;->b:I

    invoke-direct {p0, v4, v2, v6}, Lcom/estrongs/android/util/t;->a(ILcom/estrongs/android/util/u;Z)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/t;->a(Lcom/estrongs/android/util/u;)V

    goto :goto_58

    :cond_72
    invoke-virtual {p0, v0}, Lcom/estrongs/android/util/t;->a(Lcom/estrongs/android/util/u;)V

    goto :goto_b

    :cond_76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/u;

    iget v2, v0, Lcom/estrongs/android/util/u;->b:I

    invoke-direct {p0, v2, v0, v6}, Lcom/estrongs/android/util/t;->a(ILcom/estrongs/android/util/u;Z)V

    goto :goto_1b
.end method

.method public a(Lcom/estrongs/android/util/u;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO file_cache (server_id,path,isdir,hash,mtime,size,parent_id,checktime) values("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/estrongs/android/util/u;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/util/t;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/util/t;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_78
    iget-object v1, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7d} :catch_7e

    goto :goto_4

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public b(II)Lcom/estrongs/android/util/u;
    .registers 12

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7

    move-object v0, v8

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parent_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mtime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "checktime"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "server_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_c9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_bc

    move-result-object v1

    if-eqz v1, :cond_66

    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_d3

    move-result v0

    if-nez v0, :cond_6d

    :cond_66
    if-eqz v1, :cond_6b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6b
    move-object v0, v8

    goto :goto_6

    :cond_6d
    :try_start_6d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b4

    new-instance v0, Lcom/estrongs/android/util/u;

    invoke-direct {v0}, Lcom/estrongs/android/util/u;-><init>()V

    iput p2, v0, Lcom/estrongs/android/util/u;->a:I

    iput p1, v0, Lcom/estrongs/android/util/u;->b:I

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->c:I

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->e:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->g:I

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->h:I

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->i:I
    :try_end_ad
    .catchall {:try_start_6d .. :try_end_ad} :catchall_d0
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_ad} :catch_d3

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :cond_b4
    if-eqz v1, :cond_b9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b9
    move-object v0, v8

    goto/16 :goto_6

    :catch_bc
    move-exception v0

    move-object v1, v8

    :goto_be
    :try_start_be
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_d0

    if-eqz v1, :cond_c6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c6
    move-object v0, v8

    goto/16 :goto_6

    :catchall_c9
    move-exception v0

    :goto_ca
    if-eqz v8, :cond_cf

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_cf
    throw v0

    :catchall_d0
    move-exception v0

    move-object v8, v1

    goto :goto_ca

    :catch_d3
    move-exception v0

    goto :goto_be
.end method

.method public b(ILjava/lang/String;)Lcom/estrongs/android/util/u;
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_9

    move-object v0, v8

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_21

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "parent_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hash"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mtime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "checktime"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "server_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/t;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7b
    .catchall {:try_start_21 .. :try_end_7b} :catchall_e8
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_7b} :catch_db

    move-result-object v1

    if-eqz v1, :cond_84

    :try_start_7e
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_ef
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_f2

    move-result v0

    if-nez v0, :cond_8c

    :cond_84
    if-eqz v1, :cond_89

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_89
    move-object v0, v8

    goto/16 :goto_8

    :cond_8c
    :try_start_8c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d3

    new-instance v0, Lcom/estrongs/android/util/u;

    invoke-direct {v0}, Lcom/estrongs/android/util/u;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->a:I

    iput p1, v0, Lcom/estrongs/android/util/u;->b:I

    iput-object p2, v0, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->c:I

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->e:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->g:I

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->h:I

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/u;->i:I
    :try_end_cc
    .catchall {:try_start_8c .. :try_end_cc} :catchall_ef
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_cc} :catch_f2

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    :cond_d3
    if-eqz v1, :cond_d8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d8
    move-object v0, v8

    goto/16 :goto_8

    :catch_db
    move-exception v0

    move-object v1, v8

    :goto_dd
    :try_start_dd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_ef

    if-eqz v1, :cond_e5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e5
    move-object v0, v8

    goto/16 :goto_8

    :catchall_e8
    move-exception v0

    :goto_e9
    if-eqz v8, :cond_ee

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_ee
    throw v0

    :catchall_ef
    move-exception v0

    move-object v8, v1

    goto :goto_e9

    :catch_f2
    move-exception v0

    goto :goto_dd
.end method

.method public b(Lcom/estrongs/android/util/u;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE file_cache SET mtime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/estrongs/android/util/u;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/util/t;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checktime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/util/t;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/u;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b3} :catch_b5

    goto/16 :goto_4

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/t;->d(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM server_id WHERE id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM file_cache WHERE server_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_34

    goto :goto_4

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public c(ILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/util/t;->b(ILjava/lang/String;)Lcom/estrongs/android/util/u;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/util/t;->a(ILcom/estrongs/android/util/u;Z)V

    goto :goto_6
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/estrongs/android/util/t;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_9
    iget-object v1, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO server_id (server) values("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    goto :goto_4

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public d(Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    move v0, v8

    :goto_7
    return v0

    :cond_8
    sget-object v0, Lcom/estrongs/android/util/t;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_63

    invoke-direct {p0, p1}, Lcom/estrongs/android/util/t;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_16
    iget-object v0, p0, Lcom/estrongs/android/util/t;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "server_id"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "server="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_38} :catch_80

    move-result-object v1

    if-eqz v1, :cond_41

    :try_start_3b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_6b

    move-result v0

    if-nez v0, :cond_48

    :cond_41
    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    move v0, v8

    goto :goto_7

    :cond_48
    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lcom/estrongs/android/util/t;->d:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_58} :catch_6b

    :try_start_58
    sget-object v3, Lcom/estrongs/android/util/t;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_68

    if-eqz v1, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v0

    :goto_6c
    :try_start_6c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_7d

    if-eqz v1, :cond_74

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_74
    move v0, v8

    goto :goto_7

    :catchall_76
    move-exception v0

    :goto_77
    if-eqz v9, :cond_7c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v0

    :catchall_7d
    move-exception v0

    move-object v9, v1

    goto :goto_77

    :catch_80
    move-exception v0

    move-object v1, v9

    goto :goto_6c
.end method
