.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SnsImageCacheDBHelper.java"


# static fields
.field private static mInstance:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

.field private static mLATMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SNS_DB_PRIMARY_KEY_TYPE:Ljava/lang/String;

.field private final SNS_DB_TIME_TYPE:Ljava/lang/String;

.field private final SNS_DB_URL_FILEPATH:Ljava/lang/String;

.field private final SNS_DB_URL_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->mInstance:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->mLATMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "SnsImageCache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 12
    const-string v0, "INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL"

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->SNS_DB_PRIMARY_KEY_TYPE:Ljava/lang/String;

    .line 14
    const-string v0, "VARCHAR(1024)"

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->SNS_DB_URL_TYPE:Ljava/lang/String;

    .line 16
    const-string v0, "VARCHAR(512)"

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->SNS_DB_URL_FILEPATH:Ljava/lang/String;

    .line 18
    const-string v0, "TIMESTAMP"

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->SNS_DB_TIME_TYPE:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    const-class v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->mInstance:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    if-nez v0, :cond_e

    .line 38
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->mInstance:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    .line 40
    :cond_e
    sget-object v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->mInstance:Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLATMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const-class v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->mLATMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS received_image (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url VARCHAR(1024) UNIQUE,file_name VARCHAR(512),last_access_time TIMESTAMP);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "SNS_IMAGE_CACHE"

    const-string v1, "DB TABLE(received_image) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 72
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 78
    const-string v0, "SNS_IMAGE_CACHE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    return-void
.end method

.method public upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 90
    const-string v0, "DROP TABLE IF EXISTS received_image"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    return-void
.end method
