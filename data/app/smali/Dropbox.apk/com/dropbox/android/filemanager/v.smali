.class public Lcom/dropbox/android/filemanager/v;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dropbox/android/filemanager/v;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/dropbox/android/provider/g;

.field private final f:Lcom/dropbox/android/util/ad;

.field private final g:Ljava/lang/Object;

.field private volatile h:Lcom/dropbox/android/taskqueue/G;

.field private i:Lcom/dropbox/android/taskqueue/p;

.field private j:Lcom/dropbox/android/taskqueue/i;

.field private k:Lcom/dropbox/android/taskqueue/q;

.field private l:Ljava/lang/Thread;

.field private final m:Ldbxyzptlk/i/g;

.field private final n:Lcom/dropbox/android/filemanager/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const-class v0, Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/android/filemanager/v;->b:Lcom/dropbox/android/filemanager/v;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->g:Ljava/lang/Object;

    .line 101
    new-instance v0, Ldbxyzptlk/i/g;

    invoke-direct {v0}, Ldbxyzptlk/i/g;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    .line 102
    new-instance v0, Lcom/dropbox/android/filemanager/B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/filemanager/B;-><init>(Lcom/dropbox/android/filemanager/v;Lcom/dropbox/android/filemanager/w;)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->n:Lcom/dropbox/android/filemanager/B;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->d:Landroid/os/Handler;

    .line 107
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    .line 109
    new-instance v0, Lcom/dropbox/android/util/ad;

    invoke-direct {v0}, Lcom/dropbox/android/util/ad;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->f:Lcom/dropbox/android/util/ad;

    .line 111
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/v;->o()V

    .line 115
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Start UploadQueue Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/dropbox/android/filemanager/w;

    invoke-direct {v1, p0}, Lcom/dropbox/android/filemanager/w;-><init>(Lcom/dropbox/android/filemanager/v;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 122
    return-void
.end method

.method public static a()Lcom/dropbox/android/filemanager/v;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/android/filemanager/v;->b:Lcom/dropbox/android/filemanager/v;

    if-nez v0, :cond_a

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :cond_a
    sget-object v0, Lcom/dropbox/android/filemanager/v;->b:Lcom/dropbox/android/filemanager/v;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/v;)Lcom/dropbox/android/util/ad;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->f:Lcom/dropbox/android/util/ad;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    sget-object v0, Lcom/dropbox/android/filemanager/v;->b:Lcom/dropbox/android/filemanager/v;

    if-nez v0, :cond_c

    .line 126
    new-instance v0, Lcom/dropbox/android/filemanager/v;

    invoke-direct {v0, p0}, Lcom/dropbox/android/filemanager/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dropbox/android/filemanager/v;->b:Lcom/dropbox/android/filemanager/v;

    .line 130
    return-void

    .line 128
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Ljava/util/HashSet;)V
    .registers 4
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->i:Lcom/dropbox/android/taskqueue/p;

    if-eqz v0, :cond_9

    .line 199
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->i:Lcom/dropbox/android/taskqueue/p;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/p;->b()V

    .line 202
    :cond_9
    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/dropbox/android/util/ab;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/HashSet;)V

    .line 206
    invoke-static {}, Lcom/dropbox/android/util/ab;->k()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/ab;->a(Ljava/io/File;)V

    .line 209
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->k:Lcom/dropbox/android/taskqueue/q;

    if-eqz v0, :cond_22

    .line 210
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->k:Lcom/dropbox/android/taskqueue/q;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/util/HashSet;)V

    .line 212
    :cond_22
    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/filemanager/v;)Ldbxyzptlk/i/g;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/android/filemanager/v;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/filemanager/v;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private e(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter

    .prologue
    .line 814
    new-instance v0, Lcom/dropbox/android/taskqueue/DownloadTask;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/dropbox/android/taskqueue/DownloadTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 815
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->i()Lcom/dropbox/android/taskqueue/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dropbox/android/taskqueue/p;->b(Ljava/lang/String;)Z

    .line 816
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/android/filemanager/x;

    invoke-direct {v0, p0}, Lcom/dropbox/android/filemanager/x;-><init>(Lcom/dropbox/android/filemanager/v;)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->l:Ljava/lang/Thread;

    .line 156
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->l:Ljava/lang/Thread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 157
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    return-void
.end method

.method private p()Ljava/util/HashSet;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 221
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 223
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    const-string v1, "dropbox"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "canon_path"

    aput-object v3, v2, v9

    const-string v3, "is_favorite= 1"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 227
    :goto_1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 228
    new-instance v1, Lcom/dropbox/android/util/Z;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 230
    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 232
    return-object v8
.end method

.method private q()V
    .registers 3

    .prologue
    .line 240
    const/4 v0, 0x0

    move v1, v0

    .line 244
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_7} :catch_16

    .line 251
    if-eqz v1, :cond_10

    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 254
    :cond_10
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->f:Lcom/dropbox/android/util/ad;

    invoke-virtual {v0}, Lcom/dropbox/android/util/ad;->a()V

    .line 255
    return-void

    .line 246
    :catch_16
    move-exception v0

    .line 247
    const/4 v0, 0x1

    move v1, v0

    .line 248
    goto :goto_2

    .line 251
    :catchall_1a
    move-exception v0

    if-eqz v1, :cond_24

    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 385
    new-instance v2, Ldbxyzptlk/i/e;

    invoke-direct {v2}, Ldbxyzptlk/i/e;-><init>()V

    .line 386
    new-instance v3, Ldbxyzptlk/i/i;

    new-instance v1, Lcom/dropbox/android/util/Z;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    .line 387
    iget-object v1, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    invoke-virtual {v1, v3, v2}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 390
    :try_start_18
    new-instance v1, Lcom/dropbox/android/util/Z;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->e()Lcom/dropbox/android/util/Z;

    move-result-object v1

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 393
    sget-object v1, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Renaming "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ldbxyzptlk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v1

    .line 396
    iget-object v1, v1, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ldbxyzptlk/p/i;->b(Ljava/lang/String;Ljava/lang/String;)Ldbxyzptlk/l/k;

    move-result-object v5

    .line 398
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    .line 401
    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 402
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 405
    :cond_87
    new-instance v6, Lcom/dropbox/android/util/Z;

    invoke-direct {v6, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v6

    .line 406
    invoke-virtual {v6}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v6

    .line 407
    new-instance v7, Lcom/dropbox/android/util/Z;

    iget-object v8, v5, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v7

    .line 409
    iget-object v8, p0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-virtual {v8}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a4
    .catchall {:try_start_18 .. :try_end_a4} :catchall_215

    move-result-object v8

    .line 411
    :try_start_a5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 413
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 416
    const-string v10, "canon_path = ?"

    .line 417
    invoke-static {v5}, Lcom/dropbox/android/filemanager/LocalEntry;->a(Ldbxyzptlk/l/k;)Landroid/content/ContentValues;

    move-result-object v11

    .line 418
    if-eqz v6, :cond_cd

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_cd

    .line 419
    const-string v12, "_data"

    invoke-virtual {v7}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_cd
    const-string v12, "dropbox"

    invoke-virtual {v8, v12, v11, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 423
    const/4 v12, 0x1

    if-eq v10, v12, :cond_f8

    .line 424
    sget-object v12, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error moving entry, not one: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " for "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_f8
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 429
    sget-object v12, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    iget-object v12, v12, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v4, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    iget-object v13, v13, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v4, v10, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v4, :cond_21c

    .line 438
    if-eqz v6, :cond_138

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_138

    .line 439
    iget-object v4, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/dropbox/android/util/ab;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/HashSet;)V

    .line 442
    :cond_138
    iget-object v4, p0, Lcom/dropbox/android/filemanager/v;->k:Lcom/dropbox/android/taskqueue/q;

    new-instance v6, Lcom/dropbox/android/util/Z;

    invoke-direct {v6, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/util/Z;)V

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 452
    iget-object v6, v5, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-static {v6}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 453
    const-string v7, "update dropbox set canon_path= ? || substr(canon_path,?), path= ? || substr(path,?), canon_parent_path= ? || substr(canon_parent_path,?), parent_path=? || substr(parent_path,?)  where canon_parent_path LIKE ?"

    .line 459
    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x2

    iget-object v12, v5, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    aput-object v12, v9, v10

    const/4 v10, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x4

    aput-object v6, v9, v10

    const/4 v10, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x6

    iget-object v5, v5, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    aput-object v5, v9, v10

    const/4 v5, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const/16 v5, 0x8

    aput-object v4, v9, v5
    :try_end_197
    .catchall {:try_start_a5 .. :try_end_197} :catchall_210

    .line 466
    :try_start_197
    invoke-virtual {v8, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19a
    .catchall {:try_start_197 .. :try_end_19a} :catchall_210
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_19a} :catch_20b

    .line 470
    :goto_19a
    :try_start_19a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " set "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "= ? || substr("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",?) "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " where "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIKE ?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 473
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v7, v9

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v6

    const/4 v1, 0x2

    aput-object v4, v7, v1

    .line 474
    invoke-virtual {v8, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    invoke-static {}, Lcom/dropbox/android/util/h;->S()Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 487
    :goto_1f9
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 489
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/dropbox/android/filemanager/LocalEntry;->a(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/ContentValues;)Lcom/dropbox/android/filemanager/LocalEntry;
    :try_end_201
    .catchall {:try_start_19a .. :try_end_201} :catchall_210

    move-result-object v1

    .line 491
    :try_start_202
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_205
    .catchall {:try_start_202 .. :try_end_205} :catchall_215

    .line 495
    iget-object v4, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    invoke-virtual {v4, v3, v2}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    return-object v1

    .line 467
    :catch_20b
    move-exception v5

    .line 468
    :try_start_20c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20f
    .catchall {:try_start_20c .. :try_end_20f} :catchall_210

    goto :goto_19a

    .line 491
    :catchall_210
    move-exception v1

    :try_start_211
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_215
    .catchall {:try_start_211 .. :try_end_215} :catchall_215

    .line 495
    :catchall_215
    move-exception v1

    iget-object v4, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    invoke-virtual {v4, v3, v2}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    throw v1

    .line 477
    :cond_21c
    :try_start_21c
    invoke-virtual {v7}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v1

    .line 480
    if-eqz v6, :cond_22b

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22b

    .line 481
    invoke-virtual {v6, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 483
    :cond_22b
    const-string v1, "rename"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/LocalEntry;)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 485
    iget-object v1, p0, Lcom/dropbox/android/filemanager/v;->k:Lcom/dropbox/android/taskqueue/q;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v5, v5, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_241
    .catchall {:try_start_21c .. :try_end_241} :catchall_210

    goto :goto_1f9
.end method

.method public final a(Lcom/dropbox/android/util/Z;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 781
    const-string v3, "canon_path = ?"

    .line 782
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 784
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 788
    :try_start_17
    const-string v1, "dropbox"

    sget-object v2, Lcom/dropbox/android/provider/B;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_3b

    move-result-object v1

    .line 791
    if-eqz v1, :cond_34

    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 792
    invoke-static {v1}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_42

    move-result-object v0

    .line 796
    if-eqz v1, :cond_33

    .line 797
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_33
    :goto_33
    return-object v0

    .line 796
    :cond_34
    if-eqz v1, :cond_39

    .line 797
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_39
    move-object v0, v8

    .line 800
    goto :goto_33

    .line 796
    :catchall_3b
    move-exception v0

    :goto_3c
    if-eqz v8, :cond_41

    .line 797
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0

    .line 796
    :catchall_42
    move-exception v0

    move-object v8, v1

    goto :goto_3c
.end method

.method public final a(Ljava/lang/String;)Lcom/dropbox/android/taskqueue/m;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 500
    new-instance v1, Lcom/dropbox/android/util/Z;

    invoke-direct {v1, p1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    :try_start_a
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v2

    .line 506
    iget-object v2, v2, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v2, v0}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;)Ldbxyzptlk/l/k;
    :try_end_13
    .catch Ldbxyzptlk/m/b; {:try_start_a .. :try_end_13} :catch_34
    .catch Ldbxyzptlk/m/g; {:try_start_a .. :try_end_13} :catch_38
    .catch Ldbxyzptlk/m/a; {:try_start_a .. :try_end_13} :catch_75

    move-result-object v0

    .line 527
    invoke-static {v0}, Lcom/dropbox/android/filemanager/LocalEntry;->a(Ldbxyzptlk/l/k;)Landroid/content/ContentValues;

    move-result-object v0

    .line 529
    iget-object v2, p0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-virtual {v2}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 532
    :try_start_1e
    const-string v3, "dropbox"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1e .. :try_end_24} :catch_82
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_24} :catch_b0

    .line 543
    :cond_24
    :goto_24
    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->e()Lcom/dropbox/android/util/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 546
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    :goto_33
    return-object v0

    .line 507
    :catch_34
    move-exception v0

    .line 508
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    goto :goto_33

    .line 509
    :catch_38
    move-exception v0

    .line 510
    iget-object v1, v0, Ldbxyzptlk/m/g;->a:Ldbxyzptlk/m/h;

    iget-object v1, v1, Ldbxyzptlk/m/h;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 511
    sget-object v1, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Ldbxyzptlk/m/g;->a:Ldbxyzptlk/m/h;

    iget-object v3, v3, Ldbxyzptlk/m/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_5f
    iget v0, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_72

    .line 517
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->n:Lcom/dropbox/android/taskqueue/m;

    goto :goto_33

    .line 514
    :cond_68
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto :goto_5f

    .line 519
    :cond_72
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    goto :goto_33

    .line 521
    :catch_75
    move-exception v0

    .line 523
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 524
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    goto :goto_33

    .line 533
    :catch_82
    move-exception v3

    .line 534
    const-string v3, "dropbox"

    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 535
    const/4 v2, 0x1

    if-eq v0, v2, :cond_24

    .line 536
    sget-object v2, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert fell back to update.  Odd result, with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " rows changed.  path was: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 538
    :catch_b0
    move-exception v0

    .line 539
    sget-object v2, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    const-string v3, "Crazy error in insert"

    invoke-static {v2, v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_24
.end method

.method public final a(Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 580
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 583
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create export destination path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_36
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_40

    if-nez p3, :cond_40

    move-object p2, v0

    .line 601
    :goto_3f
    return-object p2

    .line 590
    :cond_40
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v5, v1

    mul-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_65

    const/4 v1, 0x1

    .line 591
    :goto_54
    if-eqz v1, :cond_67

    .line 592
    invoke-static {p1, p2}, Lcom/dropbox/android/util/ab;->a(Ljava/io/File;Ljava/io/File;)V

    .line 600
    :goto_59
    new-instance v1, Lcom/dropbox/android/util/at;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/dropbox/android/util/at;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3f

    :cond_65
    move v1, v2

    .line 590
    goto :goto_54

    .line 595
    :cond_67
    sget-object v1, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    const-string v3, "Not enough free space to copy, trying a move"

    invoke-static {v1, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_59
.end method

.method public final a(J)V
    .registers 4
    .parameter

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/android/taskqueue/G;->a(J)V

    .line 810
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->l()V

    .line 811
    return-void
.end method

.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/io/File;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->i()Lcom/dropbox/android/taskqueue/p;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_10

    .line 614
    new-instance v1, Lcom/dropbox/android/taskqueue/ExportTask;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/dropbox/android/taskqueue/ExportTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/io/File;Z)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/p;->b(Lcom/dropbox/android/taskqueue/k;)V

    .line 616
    :cond_10
    return-void
.end method

.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 550
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 551
    const-string v1, "is_favorite"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 553
    const-string v1, "canon_path = ?"

    .line 554
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 556
    iget-object v3, p0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-virtual {v3}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 557
    const-string v4, "dropbox"

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 558
    if-eq v0, v5, :cond_65

    .line 559
    sget-object v1, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rows when setting favorite, instead of just 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_48
    if-eqz p2, :cond_78

    .line 568
    new-instance v0, Lcom/dropbox/android/taskqueue/DownloadTask;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/dropbox/android/taskqueue/DownloadTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 569
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->i()Lcom/dropbox/android/taskqueue/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dropbox/android/taskqueue/p;->b(Lcom/dropbox/android/taskqueue/k;)V

    .line 570
    invoke-static {p1}, Lcom/dropbox/android/filemanager/s;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 571
    const-string v0, "favorite"

    invoke-static {v0, p1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/LocalEntry;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 576
    :goto_64
    return-void

    .line 562
    :cond_65
    iput-boolean p2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    .line 563
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    new-instance v1, Lcom/dropbox/android/util/Z;

    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_48

    .line 574
    :cond_78
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/v;->e(Lcom/dropbox/android/filemanager/LocalEntry;)V

    goto :goto_64
.end method

.method public final a(Lcom/dropbox/android/util/Z;Landroid/net/Uri;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 673
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/util/Z;Landroid/net/Uri;ZZ)V

    .line 674
    return-void
.end method

.method public final a(Lcom/dropbox/android/util/Z;Landroid/net/Uri;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/util/Z;Ljava/util/Collection;ZZ)V

    .line 679
    return-void
.end method

.method public final a(Lcom/dropbox/android/util/Z;Ljava/util/Collection;ZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 683
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 685
    if-eqz p4, :cond_2f

    .line 686
    new-instance v1, Lcom/dropbox/android/taskqueue/UserImportUploadTask;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v5, v0, p3}, Lcom/dropbox/android/taskqueue/UserImportUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 690
    :goto_2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 688
    :cond_2f
    new-instance v1, Lcom/dropbox/android/taskqueue/UploadTask;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v5, v0, p3}, Lcom/dropbox/android/taskqueue/UploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_2b

    .line 692
    :cond_40
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/util/List;)V

    .line 693
    return-void
.end method

.method public final a(Lcom/dropbox/android/util/ap;)V
    .registers 19
    .parameter

    .prologue
    .line 700
    const-string v4, "canon_path = ?"

    .line 701
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/dropbox/android/util/ap;->e()Lcom/dropbox/android/util/Z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-virtual {v1}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 707
    const/4 v14, 0x0

    .line 708
    const-wide/16 v12, 0x0

    .line 709
    const-string v11, ""

    .line 710
    const-string v10, ""

    .line 712
    const/4 v9, 0x0

    .line 714
    :try_start_24
    const-string v2, "dropbox"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "local_modified"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "local_hash"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "local_revision"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_93

    move-result-object v6

    .line 722
    if-eqz v6, :cond_163

    :try_start_46
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_163

    .line 723
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 724
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 725
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 726
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_15f

    move-result-object v1

    move-object v15, v1

    move-object/from16 v16, v2

    move-wide v1, v7

    move-object v7, v15

    move-object/from16 v8, v16

    .line 729
    :goto_67
    if-eqz v6, :cond_6c

    .line 730
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 734
    :cond_6c
    if-nez v3, :cond_9f

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/dropbox/android/util/ap;->b()Ljava/io/File;

    move-result-object v3

    .line 739
    const-wide/16 v1, 0x1

    .line 740
    if-nez v3, :cond_9b

    .line 742
    sget-object v1, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t update, since couldn\'t get a new file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/dropbox/android/util/ap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_92
    :goto_92
    return-void

    .line 729
    :catchall_93
    move-exception v1

    move-object v2, v9

    :goto_95
    if-eqz v2, :cond_9a

    .line 730
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9a
    throw v1

    .line 745
    :cond_9b
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 748
    :cond_9f
    new-instance v6, Lcom/dropbox/android/filemanager/u;

    invoke-direct {v6, v8, v1, v2, v7}, Lcom/dropbox/android/filemanager/u;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v3, v6}, Lcom/dropbox/android/filemanager/s;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/u;)Lcom/dropbox/android/filemanager/t;

    move-result-object v6

    .line 750
    iget-boolean v7, v6, Lcom/dropbox/android/filemanager/t;->a:Z

    if-eqz v7, :cond_f1

    .line 751
    sget-object v1, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File changed, uploading: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v1, Lcom/dropbox/android/taskqueue/UploadTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/dropbox/android/util/ap;->e()Lcom/dropbox/android/util/Z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/Z;->e()Lcom/dropbox/android/util/Z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/dropbox/android/util/ap;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/taskqueue/UploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/DbTask;->e()Ldbxyzptlk/i/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dropbox/android/taskqueue/G;->a(Ldbxyzptlk/i/i;)V

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dropbox/android/taskqueue/G;->a(Lcom/dropbox/android/taskqueue/DbTask;)V

    goto :goto_92

    .line 755
    :cond_f1
    iget-wide v7, v6, Lcom/dropbox/android/filemanager/t;->c:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_92

    .line 758
    sget-object v1, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File unchanged: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-wide v1, v6, Lcom/dropbox/android/filemanager/t;->c:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_92

    .line 761
    sget-object v1, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    const-string v2, "File didn\'t really change, updating local modified time"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 763
    const-string v2, "local_modified"

    iget-wide v6, v6, Lcom/dropbox/android/filemanager/t;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-virtual {v2}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 767
    const-string v3, "dropbox"

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 768
    const/4 v2, 0x1

    if-eq v1, v2, :cond_92

    .line 769
    sget-object v2, Lcom/dropbox/android/filemanager/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows modified in uploadNewVersion update operation, unexpected!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 729
    :catchall_15f
    move-exception v1

    move-object v2, v6

    goto/16 :goto_95

    :cond_163
    move-object v7, v10

    move-object v8, v11

    move-wide v1, v12

    move-object v3, v14

    goto/16 :goto_67
.end method

.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;)Z
    .registers 7
    .parameter

    .prologue
    .line 357
    new-instance v1, Ldbxyzptlk/i/b;

    invoke-direct {v1}, Ldbxyzptlk/i/b;-><init>()V

    .line 358
    new-instance v2, Ldbxyzptlk/i/i;

    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    .line 359
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    invoke-virtual {v0, v2, v1}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 361
    :try_start_16
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 362
    iget-object v0, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ldbxyzptlk/p/i;->b(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/v;->e(Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 364
    new-instance v3, Lcom/dropbox/android/util/U;

    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-direct {v3, v0}, Lcom/dropbox/android/util/U;-><init>(Lcom/dropbox/android/provider/g;)V
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_4e

    .line 366
    :try_start_2b
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-static {v0, v3, p1}, Lcom/dropbox/android/filemanager/s;->a(Landroid/content/Context;Lcom/dropbox/android/util/U;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 367
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->b()V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_49

    .line 369
    :try_start_33
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->c()V

    .line 371
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->k:Lcom/dropbox/android/taskqueue/q;

    new-instance v3, Lcom/dropbox/android/util/Z;

    iget-object v4, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/util/Z;)V
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_4e

    .line 373
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    invoke-virtual {v0, v2, v1}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 375
    const/4 v0, 0x1

    return v0

    .line 369
    :catchall_49
    move-exception v0

    :try_start_4a
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->c()V

    throw v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    .line 373
    :catchall_4e
    move-exception v0

    iget-object v3, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    invoke-virtual {v3, v2, v1}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    throw v0
.end method

.method public final b(Lcom/dropbox/android/filemanager/LocalEntry;)Ldbxyzptlk/i/f;
    .registers 6
    .parameter

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v0

    new-instance v1, Ldbxyzptlk/i/i;

    new-instance v2, Lcom/dropbox/android/util/Z;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldbxyzptlk/i/g;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->m:Ldbxyzptlk/i/g;

    return-object v0
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/v;->q()V

    .line 165
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/v;->p()Ljava/util/HashSet;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/v;->a(Ljava/util/HashSet;)V

    .line 168
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/v;->o()V

    .line 169
    return-void
.end method

.method public final c(Lcom/dropbox/android/filemanager/LocalEntry;)Z
    .registers 3
    .parameter

    .prologue
    .line 828
    invoke-virtual {p0, p1}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/LocalEntry;)Ldbxyzptlk/i/f;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ldbxyzptlk/i/f;->a()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->h:Lcom/dropbox/android/taskqueue/G;

    if-eqz v0, :cond_9

    .line 174
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->h:Lcom/dropbox/android/taskqueue/G;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->a()V

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->i:Lcom/dropbox/android/taskqueue/p;

    if-eqz v0, :cond_12

    .line 178
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->i:Lcom/dropbox/android/taskqueue/p;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/p;->b()V

    .line 181
    :cond_12
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->j:Lcom/dropbox/android/taskqueue/i;

    if-eqz v0, :cond_1b

    .line 182
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->j:Lcom/dropbox/android/taskqueue/i;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/i;->b()V

    .line 184
    :cond_1b
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/v;->q()V

    .line 185
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->n:Lcom/dropbox/android/filemanager/B;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/B;->a()V

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/v;->a(Ljava/util/HashSet;)V

    .line 189
    return-void
.end method

.method public final d(Lcom/dropbox/android/filemanager/LocalEntry;)Z
    .registers 3
    .parameter

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/LocalEntry;)Ldbxyzptlk/i/f;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ldbxyzptlk/i/f;->b()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/android/filemanager/v;->a(Ljava/util/HashSet;)V

    .line 194
    return-void
.end method

.method public final f()J
    .registers 3

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/v;->p()Ljava/util/HashSet;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dropbox/android/util/ab;->a(Ljava/io/File;Ljava/util/Set;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Lcom/dropbox/android/taskqueue/i;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->j:Lcom/dropbox/android/taskqueue/i;

    if-nez v0, :cond_b

    .line 260
    new-instance v0, Lcom/dropbox/android/taskqueue/i;

    invoke-direct {v0}, Lcom/dropbox/android/taskqueue/i;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->j:Lcom/dropbox/android/taskqueue/i;

    .line 263
    :cond_b
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->j:Lcom/dropbox/android/taskqueue/i;

    return-object v0
.end method

.method public final h()Lcom/dropbox/android/taskqueue/q;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->k:Lcom/dropbox/android/taskqueue/q;

    if-nez v0, :cond_b

    .line 269
    new-instance v0, Lcom/dropbox/android/taskqueue/q;

    invoke-direct {v0}, Lcom/dropbox/android/taskqueue/q;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->k:Lcom/dropbox/android/taskqueue/q;

    .line 271
    :cond_b
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->k:Lcom/dropbox/android/taskqueue/q;

    return-object v0
.end method

.method public final i()Lcom/dropbox/android/taskqueue/p;
    .registers 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->i:Lcom/dropbox/android/taskqueue/p;

    if-nez v0, :cond_1a

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v1, Lcom/dropbox/android/filemanager/y;

    invoke-direct {v1, p0}, Lcom/dropbox/android/filemanager/y;-><init>(Lcom/dropbox/android/filemanager/v;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Lcom/dropbox/android/taskqueue/p;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/android/taskqueue/p;-><init>(IILjava/util/List;)V

    iput-object v1, p0, Lcom/dropbox/android/filemanager/v;->i:Lcom/dropbox/android/taskqueue/p;

    .line 304
    :cond_1a
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->i:Lcom/dropbox/android/taskqueue/p;

    return-object v0
.end method

.method protected final j()Lcom/dropbox/android/taskqueue/G;
    .registers 6

    .prologue
    .line 310
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/dropbox/android/taskqueue/UploadTask;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/dropbox/android/taskqueue/UserImportUploadTask;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    aput-object v2, v0, v1

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    new-instance v2, Lcom/dropbox/android/filemanager/A;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dropbox/android/filemanager/A;-><init>(Lcom/dropbox/android/filemanager/v;Lcom/dropbox/android/filemanager/w;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v2, p0, Lcom/dropbox/android/filemanager/v;->n:Lcom/dropbox/android/filemanager/B;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v2, Lcom/dropbox/android/taskqueue/G;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/v;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/android/filemanager/v;->e:Lcom/dropbox/android/provider/g;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/dropbox/android/taskqueue/G;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;[Ljava/lang/Class;Ljava/util/List;)V

    return-object v2
.end method

.method public final k()Lcom/dropbox/android/taskqueue/G;
    .registers 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/dropbox/android/filemanager/v;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->h:Lcom/dropbox/android/taskqueue/G;

    if-eqz v0, :cond_b

    .line 328
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->h:Lcom/dropbox/android/taskqueue/G;

    monitor-exit v1

    .line 331
    :goto_a
    return-object v0

    .line 330
    :cond_b
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->j()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/v;->h:Lcom/dropbox/android/taskqueue/G;

    .line 331
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->h:Lcom/dropbox/android/taskqueue/G;

    monitor-exit v1

    goto :goto_a

    .line 332
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final l()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->h:Lcom/dropbox/android/taskqueue/G;

    if-eqz v0, :cond_9

    .line 342
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->h:Lcom/dropbox/android/taskqueue/G;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->b()V

    .line 344
    :cond_9
    return-void
.end method

.method public final m()Lcom/dropbox/android/util/ad;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dropbox/android/filemanager/v;->f:Lcom/dropbox/android/util/ad;

    return-object v0
.end method

.method public final n()V
    .registers 3

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    const-class v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/lang/Class;)V

    .line 820
    return-void
.end method
