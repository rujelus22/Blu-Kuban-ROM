.class public Lcom/dropbox/android/service/CameraUploadService;
.super Landroid/app/Service;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J


# instance fields
.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/Timer;

.field private g:I

.field private volatile h:Z

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Z

.field private final k:Landroid/content/BroadcastReceiver;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/dropbox/android/service/o;

.field private n:Lcom/dropbox/android/service/v;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 73
    const-class v0, Lcom/dropbox/android/service/CameraUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    .line 96
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "htc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 104
    const-wide/16 v0, 0x1f40

    sput-wide v0, Lcom/dropbox/android/service/CameraUploadService;->b:J

    .line 108
    :goto_1e
    return-void

    .line 106
    :cond_1f
    const-wide/16 v0, 0xfa

    sput-wide v0, Lcom/dropbox/android/service/CameraUploadService;->b:J

    goto :goto_1e
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->c:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->d:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->e:Ljava/lang/Object;

    .line 134
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->f:Ljava/util/Timer;

    .line 135
    iput v2, p0, Lcom/dropbox/android/service/CameraUploadService;->g:I

    .line 137
    iput-boolean v1, p0, Lcom/dropbox/android/service/CameraUploadService;->h:Z

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    iput-boolean v1, p0, Lcom/dropbox/android/service/CameraUploadService;->j:Z

    .line 141
    new-instance v0, Lcom/dropbox/android/service/b;

    invoke-direct {v0, p0}, Lcom/dropbox/android/service/b;-><init>(Lcom/dropbox/android/service/CameraUploadService;)V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->k:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->l:Ljava/lang/Object;

    .line 160
    iput-object v4, p0, Lcom/dropbox/android/service/CameraUploadService;->m:Lcom/dropbox/android/service/o;

    .line 162
    iput-object v4, p0, Lcom/dropbox/android/service/CameraUploadService;->n:Lcom/dropbox/android/service/v;

    .line 1339
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/o;)Lcom/dropbox/android/service/o;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dropbox/android/service/CameraUploadService;->m:Lcom/dropbox/android/service/o;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/v;)Lcom/dropbox/android/service/v;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dropbox/android/service/CameraUploadService;->n:Lcom/dropbox/android/service/v;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 439
    const/16 v0, 0x2004

    new-array v3, v0, [B

    .line 442
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    .line 443
    ushr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    .line 444
    const/4 v1, 0x1

    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 445
    const/4 v1, 0x2

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 446
    const/4 v1, 0x3

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 448
    const/4 v1, 0x0

    .line 450
    :try_start_20
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_75
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_25} :catch_53
    .catch Ljava/security/DigestException; {:try_start_20 .. :try_end_25} :catch_65

    move v1, v2

    .line 454
    :cond_26
    add-int/lit8 v2, v1, 0x4

    rsub-int v4, v1, 0x2000

    :try_start_2a
    invoke-virtual {v0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 455
    if-gez v2, :cond_4d

    .line 464
    :goto_30
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 465
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 466
    const/4 v5, 0x0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v4, v3, v5, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 467
    const/4 v1, 0x0

    array-length v3, v2

    invoke-virtual {v4, v2, v1, v3}, Ljava/security/MessageDigest;->digest([BII)I

    .line 469
    invoke-static {v2}, Ldbxyzptlk/p/a;->a([B)Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_5d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_48} :catch_7c
    .catch Ljava/security/DigestException; {:try_start_2a .. :try_end_48} :catch_77

    move-result-object v1

    .line 476
    invoke-static {v0}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    return-object v1

    .line 458
    :cond_4d
    add-int/2addr v1, v2

    .line 459
    const/16 v2, 0x2000

    if-ne v1, v2, :cond_26

    goto :goto_30

    .line 470
    :catch_53
    move-exception v0

    move-object v0, v1

    .line 471
    :goto_55
    :try_start_55
    new-instance v1, Ljava/io/IOException;

    const-string v2, "no such algorithm exception"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5d

    .line 476
    :catchall_5d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_61
    invoke-static {v1}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    throw v0

    .line 472
    :catch_65
    move-exception v0

    .line 473
    :goto_66
    :try_start_66
    sget-object v2, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    const-string v3, "failed to server hash camera upload"

    invoke-static {v2, v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    new-instance v0, Ljava/io/IOException;

    const-string v2, "digest exception"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_75

    .line 476
    :catchall_75
    move-exception v0

    goto :goto_61

    .line 472
    :catch_77
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_66

    .line 470
    :catch_7c
    move-exception v1

    goto :goto_55
.end method

.method static synthetic a(Ljava/io/File;J)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/dropbox/android/service/CameraUploadService;->b(Ljava/io/File;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(J)V
    .registers 7
    .parameter

    .prologue
    .line 349
    invoke-static {}, Lcom/dropbox/android/filemanager/L;->a()[Lcom/dropbox/android/filemanager/L;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_14

    aget-object v3, v1, v0

    .line 350
    invoke-virtual {v3}, Lcom/dropbox/android/filemanager/L;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lcom/dropbox/android/service/CameraUploadService;->a(Landroid/net/Uri;J)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 352
    :cond_14
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 215
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/dropbox/android/service/CameraUploadService;->a(ZLandroid/content/Context;)V

    .line 216
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    const-string v1, "camera_upload"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/dropbox/android/service/CameraUploadService;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    return-void
.end method

.method private a(Landroid/net/Uri;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/dropbox/android/service/CameraUploadService;->h:Z

    if-eqz v0, :cond_5

    .line 346
    :goto_4
    return-void

    .line 337
    :cond_5
    iget-object v1, p0, Lcom/dropbox/android/service/CameraUploadService;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_8
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->m:Lcom/dropbox/android/service/o;

    if-nez v0, :cond_20

    .line 339
    iget-object v2, p0, Lcom/dropbox/android/service/CameraUploadService;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_27

    .line 340
    :try_start_f
    new-instance v0, Lcom/dropbox/android/service/o;

    iget v3, p0, Lcom/dropbox/android/service/CameraUploadService;->g:I

    invoke-direct {v0, p0, v3}, Lcom/dropbox/android/service/o;-><init>(Lcom/dropbox/android/service/CameraUploadService;I)V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->m:Lcom/dropbox/android/service/o;

    .line 341
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->f:Ljava/util/Timer;

    iget-object v3, p0, Lcom/dropbox/android/service/CameraUploadService;->m:Lcom/dropbox/android/service/o;

    invoke-virtual {v0, v3, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 342
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_2a

    .line 344
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->m:Lcom/dropbox/android/service/o;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/service/o;->a(Landroid/net/Uri;)V

    .line 345
    monitor-exit v1

    goto :goto_4

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v0

    .line 342
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_27
.end method

.method static synthetic a(Lcom/dropbox/android/service/CameraUploadService;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/service/CameraUploadService;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/service/CameraUploadService;Landroid/net/Uri;J)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/service/CameraUploadService;->a(Landroid/net/Uri;J)V

    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-static {p1}, Ldbxyzptlk/j/m;->b(Landroid/content/Context;)Ldbxyzptlk/j/m;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->f()Z

    move-result v1

    if-eq v1, p0, :cond_30

    .line 169
    invoke-virtual {v0, p0}, Ldbxyzptlk/j/m;->a(Z)V

    .line 170
    invoke-static {p0, p1}, Lcom/dropbox/android/service/CameraUploadService;->c(ZLandroid/content/Context;)V

    .line 171
    if-nez p0, :cond_2d

    .line 173
    sget-object v0, Lcom/dropbox/android/util/aw;->b:Lcom/dropbox/android/util/aw;

    invoke-static {p1, v0}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 174
    sget-object v0, Lcom/dropbox/android/util/aw;->c:Lcom/dropbox/android/util/aw;

    invoke-static {p1, v0}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 178
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dropbox/android/service/c;

    invoke-direct {v1}, Lcom/dropbox/android/service/c;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    :cond_2d
    invoke-static {p1}, Lcom/dropbox/android/provider/SDKProvider;->b(Landroid/content/Context;)V

    .line 189
    :cond_30
    return-void
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 2
    .parameter

    .prologue
    .line 71
    invoke-static {p0}, Lcom/dropbox/android/service/CameraUploadService;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dropbox/android/service/CameraUploadService;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/dropbox/android/service/CameraUploadService;->j:Z

    return p1
.end method

.method static synthetic b()J
    .registers 2

    .prologue
    .line 71
    sget-wide v0, Lcom/dropbox/android/service/CameraUploadService;->b:J

    return-wide v0
.end method

.method private static b(Ljava/io/File;J)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/service/CameraUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    const-string v1, "ACTION_REQUIRE_HASH_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 330
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 414
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 416
    new-instance v1, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v0, "camera_upload"

    invoke-direct {v1, p0, v0}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 417
    const-string v0, "local_hash"

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 418
    const-string v0, "ignored"

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 420
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 422
    invoke-virtual {v1, v2, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 423
    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 424
    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    goto :goto_1a

    .line 430
    :catchall_34
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 427
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 428
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_34

    .line 430
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 432
    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/service/CameraUploadService;)V
    .registers 1
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/dropbox/android/service/CameraUploadService;->c()V

    return-void
.end method

.method public static b(ZLandroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-static {p1}, Ldbxyzptlk/j/m;->b(Landroid/content/Context;)Ldbxyzptlk/j/m;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->p()Z

    move-result v1

    if-eq v1, p0, :cond_19

    .line 195
    invoke-virtual {v0, p0}, Ldbxyzptlk/j/m;->f(Z)V

    .line 197
    if-eqz p0, :cond_16

    .line 198
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->l()V

    .line 201
    :cond_16
    invoke-static {p1}, Lcom/dropbox/android/provider/SDKProvider;->b(Landroid/content/Context;)V

    .line 203
    :cond_19
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 15
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 355
    sget-object v2, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    const-string v3, "Getting hashes..."

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :try_start_b
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v2

    iget-object v2, v2, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v2}, Ldbxyzptlk/p/i;->d()Ljava/util/List;
    :try_end_14
    .catch Ldbxyzptlk/m/b; {:try_start_b .. :try_end_14} :catch_d7
    .catch Ldbxyzptlk/m/g; {:try_start_b .. :try_end_14} :catch_8c
    .catch Ldbxyzptlk/m/a; {:try_start_b .. :try_end_14} :catch_b0

    move-result-object v2

    .line 373
    sget-object v3, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    const-string v6, "Inserting hashes..."

    invoke-static {v3, v6}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ce

    .line 376
    :try_start_22
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 377
    const-string v3, "SELECT COUNT(*) FROM camera_upload"

    const/4 v6, 0x0

    invoke-static {p0, v3, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    .line 378
    cmp-long v3, v6, v4

    if-lez v3, :cond_c2

    move v6, v1

    .line 380
    :goto_31
    new-instance v7, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v0, "camera_upload"

    invoke-direct {v7, p0, v0}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 381
    const-string v0, "server_hash"

    invoke-virtual {v7, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 382
    const-string v0, "uploaded"

    invoke-virtual {v7, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 384
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_48
    :goto_48
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    if-eqz v6, :cond_d9

    .line 388
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 389
    const-string v3, "uploaded"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v3, "camera_upload"

    const-string v11, "server_hash = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-virtual {p0, v3, v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 394
    :goto_75
    cmp-long v2, v2, v4

    if-nez v2, :cond_48

    .line 395
    invoke-virtual {v7}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 396
    invoke-virtual {v7, v8, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 397
    const/4 v0, 0x1

    invoke-virtual {v7, v9, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 398
    invoke-virtual {v7}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J
    :try_end_86
    .catchall {:try_start_22 .. :try_end_86} :catchall_87

    goto :goto_48

    .line 404
    :catchall_87
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 361
    :catch_8c
    move-exception v1

    .line 362
    sget-object v2, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    const-string v3, "Error from server getting hashes."

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v2, v1, Ldbxyzptlk/m/g;->b:I

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_af

    iget v2, v1, Ldbxyzptlk/m/g;->b:I

    const/16 v3, 0x1f6

    if-eq v2, v3, :cond_af

    iget v2, v1, Ldbxyzptlk/m/g;->b:I

    const/16 v3, 0x1f7

    if-eq v2, v3, :cond_af

    .line 364
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 409
    :cond_af
    :goto_af
    return v0

    .line 367
    :catch_b0
    move-exception v1

    .line 368
    sget-object v2, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    const-string v3, "Error from server getting hashes."

    invoke-static {v2, v3, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto :goto_af

    :cond_c2
    move v6, v0

    .line 378
    goto/16 :goto_31

    .line 401
    :cond_c5
    :try_start_c5
    invoke-virtual {v7}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 402
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_cb
    .catchall {:try_start_c5 .. :try_end_cb} :catchall_87

    .line 404
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 408
    :cond_ce
    sget-object v0, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    const-string v2, "Done with hashes."

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 409
    goto :goto_af

    .line 359
    :catch_d7
    move-exception v1

    goto :goto_af

    :cond_d9
    move-wide v2, v4

    goto :goto_75
.end method

.method static synthetic c(Lcom/dropbox/android/service/CameraUploadService;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->l:Ljava/lang/Object;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 490
    iget-object v1, p0, Lcom/dropbox/android/service/CameraUploadService;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_3
    iget-object v2, p0, Lcom/dropbox/android/service/CameraUploadService;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2d

    .line 492
    :try_start_6
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 493
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->f:Ljava/util/Timer;

    .line 499
    iget v0, p0, Lcom/dropbox/android/service/CameraUploadService;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/service/CameraUploadService;->g:I

    .line 500
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_2a

    .line 505
    const/4 v0, 0x0

    :try_start_1a
    iput-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->m:Lcom/dropbox/android/service/o;

    .line 507
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 508
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2d

    .line 510
    sget-object v0, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    const-string v1, "Cancelled tasks"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void

    .line 500
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0

    .line 508
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public static c(ZLandroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/service/CameraUploadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    if-eqz p0, :cond_d

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 212
    :goto_c
    return-void

    .line 210
    :cond_d
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_c
.end method

.method static synthetic d(Lcom/dropbox/android/service/CameraUploadService;)Z
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/dropbox/android/service/CameraUploadService;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/dropbox/android/service/CameraUploadService;)Lcom/dropbox/android/service/v;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->n:Lcom/dropbox/android/service/v;

    return-object v0
.end method

.method static synthetic f(Lcom/dropbox/android/service/CameraUploadService;)Z
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/dropbox/android/service/CameraUploadService;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/dropbox/android/service/CameraUploadService;)I
    .registers 2
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/dropbox/android/service/CameraUploadService;->g:I

    return v0
.end method

.method static synthetic h(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/Timer;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->f:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic i(Lcom/dropbox/android/service/CameraUploadService;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->c:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    .line 222
    const-string v0, "create"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Service;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 224
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 227
    invoke-virtual {p0}, Lcom/dropbox/android/service/CameraUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 228
    invoke-static {}, Lcom/dropbox/android/filemanager/L;->a()[Lcom/dropbox/android/filemanager/L;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v3, :cond_34

    aget-object v4, v2, v0

    .line 229
    invoke-virtual {v4}, Lcom/dropbox/android/filemanager/L;->b()Landroid/net/Uri;

    move-result-object v4

    .line 230
    new-instance v5, Lcom/dropbox/android/service/d;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6, v4}, Lcom/dropbox/android/service/d;-><init>(Lcom/dropbox/android/service/CameraUploadService;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 236
    iget-object v6, p0, Lcom/dropbox/android/service/CameraUploadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 240
    :cond_34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/dropbox/android/service/CameraUploadService;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/service/CameraUploadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/dropbox/android/service/CameraUploadService;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/service/CameraUploadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 292
    sget-object v0, Lcom/dropbox/android/service/CameraUploadService;->a:Ljava/lang/String;

    const-string v1, "Destroying camera upload service."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v0, "destroy"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Service;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/service/CameraUploadService;->h:Z

    .line 304
    invoke-direct {p0}, Lcom/dropbox/android/service/CameraUploadService;->c()V

    .line 309
    invoke-virtual {p0}, Lcom/dropbox/android/service/CameraUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 310
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    .line 311
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_20

    .line 314
    :cond_30
    iget-object v0, p0, Lcom/dropbox/android/service/CameraUploadService;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/service/CameraUploadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    invoke-static {}, Lcom/dropbox/android/util/h;->af()V

    .line 317
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 318
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    if-eqz p1, :cond_7

    .line 254
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_7
    invoke-static {}, Lcom/dropbox/android/util/h;->v()Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 259
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v1

    .line 261
    const-string v2, "ACTION_REQUIRE_HASH_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 264
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/dropbox/android/service/e;

    invoke-direct {v2, p0, v1}, Lcom/dropbox/android/service/e;-><init>(Lcom/dropbox/android/service/CameraUploadService;Ldbxyzptlk/j/m;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    :goto_2d
    invoke-virtual {v1}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 279
    const/4 v0, 0x1

    .line 286
    :goto_34
    return v0

    .line 275
    :cond_35
    const-wide/16 v2, 0x2710

    invoke-direct {p0, v2, v3}, Lcom/dropbox/android/service/CameraUploadService;->a(J)V

    goto :goto_2d

    .line 285
    :cond_3b
    invoke-virtual {p0}, Lcom/dropbox/android/service/CameraUploadService;->stopSelf()V

    .line 286
    const/4 v0, 0x2

    goto :goto_34
.end method
