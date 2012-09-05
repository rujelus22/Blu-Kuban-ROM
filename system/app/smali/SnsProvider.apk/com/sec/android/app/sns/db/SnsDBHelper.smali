.class public Lcom/sec/android/app/sns/db/SnsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SnsDBHelper.java"


# static fields
.field private static mDBRefCount:I

.field private static mInstance:Lcom/sec/android/app/sns/db/SnsDBHelper;

.field private static mLATMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ECLAIR_DATABASE_VERSION:I

.field private final FROYO_DATABASE_VERSION:I

.field private final SNS_DB_BIRTHDAY_TYPE:Ljava/lang/String;

.field private final SNS_DB_BOOLEAN_TYPE:Ljava/lang/String;

.field private final SNS_DB_CONTENT_TYPE:Ljava/lang/String;

.field private final SNS_DB_EMAIL_TYPE:Ljava/lang/String;

.field private final SNS_DB_ID_TYPE:Ljava/lang/String;

.field private final SNS_DB_INTEGER_TYPE:Ljava/lang/String;

.field private final SNS_DB_NAME_TYPE:Ljava/lang/String;

.field private final SNS_DB_PHONENUMBER_TYPE:Ljava/lang/String;

.field private final SNS_DB_PHONETYPE_TYPE:Ljava/lang/String;

.field private final SNS_DB_PRIMARY_KEY_TYPE:Ljava/lang/String;

.field private final SNS_DB_SP_TYPE:Ljava/lang/String;

.field private final SNS_DB_TEXT_TYPE:Ljava/lang/String;

.field private final SNS_DB_TIME_TYPE:Ljava/lang/String;

.field private final SNS_DB_TITLE_TYPE:Ljava/lang/String;

.field private final SNS_DB_URL_FILEPATH:Ljava/lang/String;

.field private final SNS_DB_URL_TYPE:Ljava/lang/String;

.field private mbIsLoggable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mInstance:Lcom/sec/android/app/sns/db/SnsDBHelper;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mLATMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mDBRefCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 65
    const-string v0, "snsDB.db"

    const/4 v1, 0x0

    const/16 v2, 0x56

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    const/16 v0, 0x4f

    iput v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->ECLAIR_DATABASE_VERSION:I

    .line 20
    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->FROYO_DATABASE_VERSION:I

    .line 22
    const-string v0, "INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_PRIMARY_KEY_TYPE:Ljava/lang/String;

    .line 24
    const-string v0, "BOOLEAN"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_BOOLEAN_TYPE:Ljava/lang/String;

    .line 26
    const-string v0, "INTEGER"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_INTEGER_TYPE:Ljava/lang/String;

    .line 28
    const-string v0, "INTEGER"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_SP_TYPE:Ljava/lang/String;

    .line 30
    const-string v0, "VARCHAR(20)"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_ID_TYPE:Ljava/lang/String;

    .line 32
    const-string v0, "VARCHAR(100)"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_NAME_TYPE:Ljava/lang/String;

    .line 34
    const-string v0, "VARCHAR(150)"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_EMAIL_TYPE:Ljava/lang/String;

    .line 36
    const-string v0, "VARCHAR(20)"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_PHONETYPE_TYPE:Ljava/lang/String;

    .line 38
    const-string v0, "VARCHAR(40)"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_PHONENUMBER_TYPE:Ljava/lang/String;

    .line 40
    const-string v0, "VARCHAR(15)"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_BIRTHDAY_TYPE:Ljava/lang/String;

    .line 42
    const-string v0, "TEXT"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_TITLE_TYPE:Ljava/lang/String;

    .line 44
    const-string v0, "TEXT"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_CONTENT_TYPE:Ljava/lang/String;

    .line 46
    const-string v0, "TEXT"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_TEXT_TYPE:Ljava/lang/String;

    .line 48
    const-string v0, "VARCHAR(1024)"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_URL_TYPE:Ljava/lang/String;

    .line 50
    const-string v0, "VARCHAR(512)"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_URL_FILEPATH:Ljava/lang/String;

    .line 52
    const-string v0, "TIMESTAMP"

    iput-object v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->SNS_DB_TIME_TYPE:Ljava/lang/String;

    .line 54
    iput-boolean v3, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mbIsLoggable:Z

    .line 67
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "SNS_DB"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mbIsLoggable:Z

    .line 72
    :goto_65
    return-void

    .line 70
    :cond_66
    iput-boolean v3, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mbIsLoggable:Z

    goto :goto_65
.end method

.method public static declared-synchronized decreaseDBRefCount()V
    .registers 2

    .prologue
    .line 104
    const-class v1, Lcom/sec/android/app/sns/db/SnsDBHelper;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mDBRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mDBRefCount:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 105
    monitor-exit v1

    return-void

    .line 104
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getDBRefCount()I
    .registers 2

    .prologue
    .line 92
    const-class v0, Lcom/sec/android/app/sns/db/SnsDBHelper;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/sec/android/app/sns/db/SnsDBHelper;->mDBRefCount:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDirtyActivityPropertyColumns()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1146
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    const/16 v3, 0xf

    if-ge v1, v3, :cond_2c

    .line 1147
    const/4 v2, 0x0

    .local v2, j:I
    :goto_b
    const/4 v3, 0x3

    if-ge v2, v3, :cond_29

    .line 1148
    sget-object v3, Lcom/sec/android/app/sns/db/SnsDB;->PROPERTYS:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v3, "TEXT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1146
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1154
    .end local v2           #j:I
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/db/SnsDBHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 81
    const-class v1, Lcom/sec/android/app/sns/db/SnsDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mInstance:Lcom/sec/android/app/sns/db/SnsDBHelper;

    if-nez v0, :cond_e

    .line 82
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sns/db/SnsDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mInstance:Lcom/sec/android/app/sns/db/SnsDBHelper;

    .line 84
    :cond_e
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mInstance:Lcom/sec/android/app/sns/db/SnsDBHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized increaseDBRefCount()V
    .registers 2

    .prologue
    .line 100
    const-class v1, Lcom/sec/android/app/sns/db/SnsDBHelper;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mDBRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mDBRefCount:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 101
    monitor-exit v1

    return-void

    .line 100
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetDBRefCount()V
    .registers 2

    .prologue
    .line 96
    const-class v0, Lcom/sec/android/app/sns/db/SnsDBHelper;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/sec/android/app/sns/db/SnsDBHelper;->mDBRefCount:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 97
    monitor-exit v0

    return-void

    .line 96
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private upgradeDBFromEclairToFroyo(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 1065
    const-string v0, "polling_cycle"

    .line 1068
    .local v0, POLLING_CYCLE_TABLE_NAME:Ljava/lang/String;
    const-string v1, "DROP TABLE IF EXISTS polling_cycle"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1072
    const-string v1, "CREATE TABLE IF NOT EXISTS friend_responsetime (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,sp INTEGER,full_response_time TIMESTAMP,updated_response_time TIMESTAMP);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1078
    const-string v1, "SNS_DB"

    const-string v2, "DB TABLE(friend_responsetime) Has been created."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBHelper;->initFriendResponseTime(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1081
    return-void
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 121
    const-string v0, "CREATE TABLE IF NOT EXISTS activity_statuslist (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,status_id VARCHAR(20),status_createtime TIMESTAMP,UTC_offset INTEGER,forwardable BOOLEAN,is_favorite BOOLEAN,content TEXT,creator_id VARCHAR(20),creator_name VARCHAR(100),creator_fullname VARCHAR(100),creator_isfollowing BOOLEAN,creator_photo_url VARCHAR(512),forwarder_id VARCHAR(20),forwarder_name VARCHAR(100),forwarder_photo_url VARCHAR(512));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(activity_statuslist) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "CREATE TABLE IF NOT EXISTS activity (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,activity_id VARCHAR(20),title TEXT,attachment_type TEXT,attachment_url VARCHAR(512),media_count INTEGER,media_type INTEGER,property_name TEXT,content TEXT,time TIMESTAMP,comment_type TEXT,comment_target_id VARCHAR(20),comment_sub_id VARCHAR(20),comment_count INTEGER,commentable BOOLEAN,target_id VARCHAR(20),target_display_name TEXT,target_type TEXT,actor_id VARCHAR(20),actor_name VARCHAR(100),actor_photo_url VARCHAR(512),forwardable TEXT,forwarder_id VARCHAR(20),forwarder_name VARCHAR(100),forwarder_photo_url VARCHAR(512),icon_url VARCHAR(512),read_status INTEGER DEFAULT 0,recommend_count INTEGER,recommendable TEXT,is_favorite BOOLEAN,is_friend BOOLEAN,application TEXT,common_status INTEGER DEFAULT 0,UNIQUE(service_provider,activity_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string v0, "CREATE TRIGGER activity_check_commonActivity AFTER INSERT ON activity BEGIN UPDATE friend_activity SET common_status = 1 WHERE activity_id = new.activity_id;UPDATE group_activity SET common_status = 1 WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const-string v0, "CREATE TRIGGER activity_update_favorite AFTER UPDATE OF is_favorite ON activity BEGIN UPDATE friend_activity SET is_favorite = new.is_favorite WHERE activity_id = new.activity_id;UPDATE group_activity SET is_favorite = new.is_favorite WHERE activity_id = new.activity_id;UPDATE activity_statuslist SET is_favorite = new.is_favorite WHERE status_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v0, "CREATE TRIGGER activity_update_commentcount AFTER UPDATE OF comment_count ON activity BEGIN UPDATE friend_activity SET comment_count = new.comment_count WHERE activity_id = new.activity_id;UPDATE group_activity SET comment_count = new.comment_count WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    const-string v0, "CREATE TRIGGER activity_update_recommend AFTER UPDATE OF recommendable ON activity BEGIN UPDATE friend_activity SET recommendable = new.recommendable, recommend_count = new.recommend_count WHERE activity_id = new.activity_id;UPDATE group_activity SET recommendable = new.recommendable, recommend_count = new.recommend_count WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    const-string v0, "CREATE TRIGGER activity_cleanup DELETE ON activity BEGIN DELETE FROM comment WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM attachment WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM activity_tag WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM activity_target WHERE old.common_status = 0 AND activity_id = old.activity_id;DELETE FROM dirt_activity WHERE old.common_status = 0 AND attach_target_id = old.activity_id;UPDATE friend_activity SET common_status = 0 WHERE activity_id = old.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(activity) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "CREATE TABLE IF NOT EXISTS friend_activity (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,activity_id VARCHAR(20),title TEXT,attachment_type TEXT,attachment_url VARCHAR(512),media_count INTEGER,media_type INTEGER,property_name TEXT,content TEXT,time TIMESTAMP,comment_type TEXT,comment_target_id VARCHAR(20),comment_sub_id VARCHAR(20),comment_count INTEGER,commentable BOOLEAN,target_id VARCHAR(20),target_display_name TEXT,target_type TEXT,actor_id VARCHAR(20),actor_name VARCHAR(100),actor_photo_url VARCHAR(512),forwardable TEXT,forwarder_id VARCHAR(20),forwarder_name VARCHAR(100),forwarder_photo_url VARCHAR(512),icon_url VARCHAR(512),read_status INTEGER DEFAULT 0,recommend_count INTEGER,recommendable TEXT,is_favorite BOOLEAN,is_friend BOOLEAN,application TEXT,common_status INTEGER DEFAULT 0,UNIQUE(service_provider,activity_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const-string v0, "CREATE TRIGGER friendactivity_check_commonActivity AFTER INSERT ON friend_activity BEGIN UPDATE activity SET common_status = 1 WHERE activity_id = new.activity_id;UPDATE group_activity SET common_status = 1 WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    const-string v0, "CREATE TRIGGER friendactivity_update_favorite AFTER UPDATE OF is_favorite ON friend_activity BEGIN UPDATE activity SET is_favorite = new.is_favorite WHERE activity_id = new.activity_id;UPDATE group_activity SET is_favorite = new.is_favorite WHERE activity_id = new.activity_id;UPDATE activity_statuslist SET is_favorite = new.is_favorite WHERE status_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    const-string v0, "CREATE TRIGGER friendactivity_update_commentcount AFTER UPDATE OF comment_count ON friend_activity BEGIN UPDATE activity SET comment_count = new.comment_count WHERE activity_id = new.activity_id;UPDATE group_activity SET comment_count = new.comment_count WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    const-string v0, "CREATE TRIGGER friendactivity_update_recommend AFTER UPDATE OF recommendable ON friend_activity BEGIN UPDATE activity SET recommendable = new.recommendable, recommend_count = new.recommend_count WHERE activity_id = new.activity_id;UPDATE group_activity SET recommendable = new.recommendable, recommend_count = new.recommend_count WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    const-string v0, "CREATE TRIGGER friendactivity_cleanup DELETE ON friend_activity BEGIN DELETE FROM comment WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM attachment WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM activity_tag WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM activity_target WHERE old.common_status = 0 AND activity_id = old.activity_id;DELETE FROM dirt_activity WHERE old.common_status = 0 AND attach_target_id = old.activity_id;UPDATE activity SET common_status = 0 WHERE activity_id = old.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(friend_activity) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v0, "CREATE TABLE IF NOT EXISTS group_activity (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,activity_id VARCHAR(20),title TEXT,attachment_type TEXT,attachment_url VARCHAR(512),media_count INTEGER,media_type INTEGER,property_name TEXT,content TEXT,time TIMESTAMP,comment_type TEXT,comment_target_id VARCHAR(20),comment_sub_id VARCHAR(20),comment_count INTEGER,commentable BOOLEAN,target_id VARCHAR(20),target_display_name TEXT,target_type TEXT,actor_id VARCHAR(20),actor_name VARCHAR(100),actor_photo_url VARCHAR(512),forwardable TEXT,forwarder_id VARCHAR(20),forwarder_name VARCHAR(100),forwarder_photo_url VARCHAR(512),icon_url VARCHAR(512),read_status INTEGER DEFAULT 0,recommend_count INTEGER,recommendable TEXT,is_favorite BOOLEAN,is_friend BOOLEAN,application TEXT,common_status INTEGER DEFAULT 0,UNIQUE(service_provider,activity_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string v0, "CREATE TRIGGER groupactivity_check_commonActivity AFTER INSERT ON group_activity BEGIN UPDATE activity SET common_status = 1 WHERE activity_id = new.activity_id;UPDATE friend_activity SET common_status = 1 WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 372
    const-string v0, "CREATE TRIGGER groupactivity_update_favorite AFTER UPDATE OF is_favorite ON group_activity BEGIN UPDATE activity SET is_favorite = new.is_favorite WHERE activity_id = new.activity_id;UPDATE friend_activity SET is_favorite = new.is_favorite WHERE activity_id = new.activity_id;UPDATE activity_statuslist SET is_favorite = new.is_favorite WHERE status_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    const-string v0, "CREATE TRIGGER groupactivity_update_commentcount AFTER UPDATE OF comment_count ON group_activity BEGIN UPDATE activity SET comment_count = new.comment_count WHERE activity_id = new.activity_id;UPDATE friend_activity SET comment_count = new.comment_count WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    const-string v0, "CREATE TRIGGER groupactivity_update_recommend AFTER UPDATE OF recommendable ON group_activity BEGIN UPDATE activity SET recommendable = new.recommendable, recommend_count = new.recommend_count WHERE activity_id = new.activity_id;UPDATE friend_activity SET recommendable = new.recommendable, recommend_count = new.recommend_count WHERE activity_id = new.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    const-string v0, "CREATE TRIGGER groupactivity_cleanup DELETE ON group_activity BEGIN DELETE FROM comment WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM attachment WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM activity_tag WHERE old.common_status = 0 AND target_id = old.activity_id;DELETE FROM activity_target WHERE old.common_status = 0 AND activity_id = old.activity_id;DELETE FROM dirt_activity WHERE old.common_status = 0 AND attach_target_id = old.activity_id;UPDATE activity SET common_status = 0 WHERE activity_id = old.activity_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(group_activity) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v0, "CREATE TABLE IF NOT EXISTS attachment (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,target_id VARCHAR(20),attachment_name VARCHAR(100),href VARCHAR(512),caption TEXT,description TEXT,type TEXT,album_name TEXT,profile_id VARCHAR(20),photo_id VARCHAR(20),album_id VARCHAR(20),event_id VARCHAR(20),group_id VARCHAR(20),note_id VARCHAR(20),video_id VARCHAR(20));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    const-string v0, "CREATE INDEX targetIdIndex ON attachment (target_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    const-string v0, "CREATE TRIGGER attachment_cleanup DELETE ON attachment BEGIN DELETE FROM property WHERE attachment_id = old._id;DELETE FROM attachmedia WHERE attachment_id = old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(attachment) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v0, "CREATE TABLE IF NOT EXISTS property (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,attachment_id VARCHAR(20),property_name VARCHAR(100),property_text TEXT,property_href TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v0, "CREATE INDEX propAttachIdIndex ON property (attachment_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(property) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v0, "CREATE TABLE IF NOT EXISTS attachmedia (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,attachment_id VARCHAR(20),photo_id VARCHAR(20),album_id VARCHAR(20),video_id VARCHAR(20),note_id VARCHAR(20),mood_id VARCHAR(20),media_href TEXT,media_alt TEXT,media_type TEXT,media_src TEXT,thumbnail_url VARCHAR(512),wapphoto_id VARCHAR(20),album_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 471
    const-string v0, "CREATE INDEX mediaAttachIdIndex ON attachmedia (attachment_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(attachmedia) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "CREATE TABLE IF NOT EXISTS activity_tag (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,target_id VARCHAR(20),tag_id VARCHAR(20),name VARCHAR(100));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(activity_tag) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS dirt_activity (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,attach_albumid VARCHAR(20),attach_caption VARCHAR(20),attach_desc VARCHAR(20),attach_eventid VARCHAR(20),attach_groupid VARCHAR(20),attach_name VARCHAR(20),attach_noteid VARCHAR(20),attach_objectid VARCHAR(20),attach_photoid VARCHAR(20),attach_profid VARCHAR(20),attach_target_id VARCHAR(20),attach_type VARCHAR(20),attach_album_name TEXT,attach_videoid VARCHAR(20),attachm_albumid VARCHAR(20),attachm_attachid VARCHAR(20),attachm_m_alt VARCHAR(20),attachm_m_href VARCHAR(20),attachm_m_src VARCHAR(20),attachm_m_type VARCHAR(20),attachm_moodid VARCHAR(20),attachm_noteid VARCHAR(20),attachm_objectid VARCHAR(20),attachm_wapphotoid VARCHAR(20),attachm_photoid VARCHAR(20),attachm_thumb_url VARCHAR(20),attachm_album_name TEXT,attachm_videoid VARCHAR(20),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sns/db/SnsDBHelper;->getDirtyActivityPropertyColumns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tag_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VARCHAR(20)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tag_tag_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VARCHAR(20)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tag_target_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VARCHAR(20)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 520
    const-string v0, "CREATE INDEX dirtyActivityTargetIdx ON dirt_activity (attach_target_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 523
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(dirt_activity) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v0, "CREATE TABLE IF NOT EXISTS activity_target (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,activity_id VARCHAR(20),activity_targetId VARCHAR(20),activity_target_displayname VARCHAR(20),activity_target_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 533
    const-string v0, "CREATE INDEX activityTargetIdx ON activity_target (activity_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 536
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(activity_target) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v0, "CREATE TABLE IF NOT EXISTS address (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,people_id VARCHAR(20),country TEXT,city TEXT,zipcode TEXT,detail VARCHAR(100));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 546
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(address) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v0, "CREATE TABLE IF NOT EXISTS album (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,album_id VARCHAR(20),wap_id VARCHAR(20),title TEXT,visible TEXT,place TEXT,creater_id VARCHAR(20),create_time TIMESTAMP,modify_time TIMESTAMP,photo_count INTEGER,cover_photo_url VARCHAR(512),UNIQUE(service_provider,album_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 561
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(album) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v0, "CREATE TABLE IF NOT EXISTS comment (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,comment_id VARCHAR(20),target_id VARCHAR(20),commenter_id VARCHAR(20),commenter_name VARCHAR(100),commenter_photo_url VARCHAR(512),content TEXT,time TIMESTAMP,UNIQUE(service_provider,comment_id,target_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 575
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(comment) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v0, "CREATE TABLE IF NOT EXISTS comment_favorite (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,user_id VARCHAR(20),user_name VARCHAR(100),user_photo_url VARCHAR(512),UNIQUE(service_provider,user_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 586
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(comment_favorite) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v0, "CREATE TABLE IF NOT EXISTS deeplink (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,link_type TEXT,target_id VARCHAR(20),url VARCHAR(512));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 595
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(deeplink) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v0, "CREATE TABLE IF NOT EXISTS email (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,people_id VARCHAR(20),email_address VARCHAR(150),email_dist BOOLEAN, UNIQUE (service_provider,people_id,email_address));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 605
    const-string v0, "CREATE INDEX peopleIdIndexOnEmail ON email (people_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 608
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(email) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v0, "CREATE TABLE IF NOT EXISTS friend (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,friend_id VARCHAR(20),first_name VARCHAR(100),last_name VARCHAR(100),full_name VARCHAR(100),display_name VARCHAR(100),firstlast_name VARCHAR(100),lastfirst_name VARCHAR(100),small_photo_url VARCHAR(1024),medium_photo_url VARCHAR(1024),full_photo_url VARCHAR(1024),birthday VARCHAR(15),company TEXT,city TEXT,jobtitle TEXT,use_contact INTEGER,new BOOLEAN,mood_id VARCHAR(20),mood_text TEXT,mood_iconid VARCHAR(20),mood_iconurl VARCHAR(512),status_id VARCHAR(20),status_status TEXT,status_commentscount INTEGER,status_createtime INTEGER,phone_count INTEGER,email_count INTEGER, UNIQUE (service_provider,friend_id,new));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 637
    const-string v0, "CREATE INDEX friendIdIndexOnFriend ON friend (friend_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 640
    const-string v0, "CREATE TRIGGER friend_cleanup DELETE ON friend BEGIN DELETE FROM email WHERE people_id = old._id AND email_dist = 1;DELETE FROM phonenumber WHERE people_id = old._id AND phone_dist = 1; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 646
    const-string v0, "CREATE TRIGGER usecontact_update UPDATE OF use_contact ON friend BEGIN UPDATE use_contact SET used = new.use_contact WHERE sp = old.service_provider AND f_id = old.friend_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 656
    const-string v0, "CREATE VIEW IF NOT EXISTS VFriend AS SELECT * FROM friend WHERE new = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 659
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(friend) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v0, "CREATE TABLE IF NOT EXISTS friend_grouping (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,grouping_id VARCHAR(20),name VARCHAR(100),full_name VARCHAR(100),description VARCHAR(100),mode VARCHAR(100),friend_count INTEGER,following INTEGER,follower INTEGER,owner VARCHAR(20),owner_name VARCHAR(100),owner_photo_url VARCHAR(512), UNIQUE (service_provider,grouping_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 679
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(friend_grouping) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v0, "CREATE TABLE IF NOT EXISTS friend_list (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,friend_id VARCHAR(20),first_name VARCHAR(100),last_name VARCHAR(100),full_name VARCHAR(100),display_name VARCHAR(100),firstlast_name VARCHAR(100),lastfirst_name VARCHAR(100),small_photo_url VARCHAR(1024),medium_photo_url VARCHAR(1024),full_photo_url VARCHAR(1024),email_address VARCHAR(150),new BOOLEAN,email_count INTEGER, UNIQUE (service_provider,friend_id,new));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 700
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(friend_list) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v0, "CREATE TABLE IF NOT EXISTS groups (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,group_id VARCHAR(20),name VARCHAR(100),type VARCHAR(100),description VARCHAR(100),mem_count INTEGER,modify_time TIMESTAMP,cover_photo_url VARCHAR(512),member_id VARCHAR(20),member_name VARCHAR(100), UNIQUE (service_provider,group_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 717
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(groups) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v0, "CREATE TABLE IF NOT EXISTS message (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,thread_id VARCHAR(20),thread_modify_time TIMESTAMP,message_id VARCHAR(20),title TEXT,content TEXT,send_time TIMESTAMP,sent BOOLEAN,read_state INTEGER,result INTEGER,folder VARCHAR(100),sender_name VARCHAR(100),sender_id VARCHAR(20),new BOOLEAN,sender_photo_url VARCHAR(512),representative_receiver_id VARCHAR(20),representative_receiver VARCHAR(100),representative_receiver_url VARCHAR(512),receiver_count INTEGER,UNIQUE(thread_id,message_id,new));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    const-string v0, "CREATE TRIGGER message_cleanup DELETE ON message BEGIN DELETE FROM msg_receiver_map WHERE message_id = old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 743
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(message) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v0, "CREATE TABLE IF NOT EXISTS notification (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,name VARCHAR(100),count INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 752
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(notification) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v0, "CREATE TABLE IF NOT EXISTS notification_list (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,notification_id VARCHAR(20),name VARCHAR(100),content TEXT,related_type VARCHAR(100),related_id VARCHAR(20),related_name VARCHAR(100),related_content TEXT,related_href VARCHAR(1024),sub_related_id VARCHAR(20),owner_id VARCHAR(20),owner_name VARCHAR(100),owner_photo_url VARCHAR(1024),type_icon_url VARCHAR(1024),create_time TIMESTAMP,unread BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 774
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(notification_list) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v0, "CREATE TABLE IF NOT EXISTS msg_receiver_map (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,message_id VARCHAR(20),service_provider INTEGER,receiver_id VARCHAR(20),receiver_name VARCHAR(100),receiver_email VARCHAR(150),receiver_photo_url VARCHAR(512));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 786
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(msg_receiver_map) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string v0, "CREATE TABLE IF NOT EXISTS thread_message (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,thread_id VARCHAR(20),thread_modify_time TIMESTAMP,message_id VARCHAR(20),title TEXT,content TEXT,send_time TIMESTAMP,sent BOOLEAN,read_state INTEGER,result INTEGER,folder VARCHAR(100),sender_name VARCHAR(100),sender_id VARCHAR(20),sender_photo_url VARCHAR(512),representative_receiver_id VARCHAR(20),representative_receiver VARCHAR(100),representative_receiver_url VARCHAR(512),receiver_count INTEGER,UNIQUE(thread_id,message_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 811
    const-string v0, "CREATE TRIGGER thread_message_cleanup DELETE ON thread_message BEGIN DELETE FROM thread_msg_receiver_map WHERE message_id = old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 815
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(thread_message) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v0, "CREATE TABLE IF NOT EXISTS thread_msg_receiver_map (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,message_id VARCHAR(20),receiver_id VARCHAR(20),receiver_name VARCHAR(100),receiver_email VARCHAR(150),receiver_photo_url VARCHAR(512));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 826
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(msg_receiver_map) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const-string v0, "CREATE TABLE IF NOT EXISTS phonenumber (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,people_id VARCHAR(20),phone_type VARCHAR(20),phone_number VARCHAR(40),phone_dist BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 837
    const-string v0, "CREATE INDEX peopleIdIndexOnPhoneNumber ON phonenumber (people_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 840
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(phonenumber) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v0, "CREATE TABLE IF NOT EXISTS photo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,photo_id VARCHAR(20),album_id VARCHAR(20),author_id VARCHAR(20),author_name VARCHAR(100),content TEXT,comment_count INTEGER,upload_time TIMESTAMP,location TEXT,title TEXT,thumbnail_url VARCHAR(512),main_url VARCHAR(512), UNIQUE (service_provider,photo_id,album_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 856
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(photo) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const-string v0, "CREATE TABLE IF NOT EXISTS photo_upload_body (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,photo_id VARCHAR(20),album_id VARCHAR(20),status TEXT,url VARCHAR(512),thumbnail_url VARCHAR(512), UNIQUE (service_provider,status));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    const-string v0, "CREATE TRIGGER photouploadbody_cleanup BEFORE INSERT ON photo_upload_body BEGIN DELETE FROM photo_upload_body WHERE service_provider = new.service_provider; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 875
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(photo_upload_body) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v0, "CREATE TABLE IF NOT EXISTS people (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,people_id VARCHAR(20),service_provider INTEGER,first_name VARCHAR(100),last_name VARCHAR(100),name VARCHAR(100),display_name VARCHAR(100),jobtitle TEXT,company TEXT,birthday VARCHAR(15),email TEXT,small_photo_url VARCHAR(512),medium_photo_url VARCHAR(512),full_photo_url VARCHAR(512),status_id VARCHAR(20),status TEXT,comments_count TEXT,create_time INTEGER,mood_id VARCHAR(20),mood_text TEXT,mood_iconid VARCHAR(20),mood_iconurl VARCHAR(512),following_number INTEGER,follower_number INTEGER,friend_number INTEGER,degree INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 901
    const-string v0, "CREATE TRIGGER people_cleanup DELETE ON people BEGIN DELETE FROM phonenumber WHERE people_id = old._id AND phone_dist = 0;DELETE FROM address WHERE people_id = old._id;DELETE FROM email WHERE people_id = old._id AND email_dist = 0; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 908
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(people) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v0, "CREATE TABLE IF NOT EXISTS event_rsvp_map (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,event_id INTEGER,event_member_id TEXT,event_member_name TEXT,event_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 929
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(event_rsvp_map) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v0, "CREATE TABLE IF NOT EXISTS event (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,event_id VARCHAR(20),service_provider INTEGER,event_type TEXT,title TEXT,content TEXT,more_description TEXT,owner VARCHAR(20),owner_name VARCHAR(100),owner_photo_url VARCHAR(512),hostname TEXT,start_time TIMESTAMP,end_time TIMESTAMP,post_time TIMESTAMP,place TEXT,address TEXT,photo_url VARCHAR(512),mem_count INTEGER,UNIQUE(service_provider,event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 950
    const-string v0, "CREATE TRIGGER event_cleanup DELETE ON event BEGIN DELETE FROM event_rsvp_map WHERE event_id = old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 954
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(event) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v0, "CREATE TABLE IF NOT EXISTS searching_keywords (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,keyword_id VARCHAR(20),value TEXT,created_time TIMESTAMP,UNIQUE (service_provider,keyword_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 966
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(searching_keywords) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-string v0, "CREATE TABLE IF NOT EXISTS searching (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,searching_id VARCHAR(20),service_provider INTEGER,type TEXT,title TEXT,content TEXT,creator_id VARCHAR(20),creator_name VARCHAR(100),creator_profile_photo VARCHAR(512),create_time TIMESTAMP,rep_photo_url VARCHAR(512),url VARCHAR(512),UNIQUE (service_provider,searching_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 982
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(searching) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-string v0, "CREATE TABLE IF NOT EXISTS status (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,person_id VARCHAR(20),status_id VARCHAR(20),service_provider INTEGER,content TEXT,create_time TIMESTAMP,comments_count INTEGER,mood_id VARCHAR(20),mood_text TEXT,mood_iconid VARCHAR(20),mood_iconurl VARCHAR(512),UNIQUE (service_provider,status_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 996
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(status) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v0, "CREATE TABLE IF NOT EXISTS offset (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,start_offset TEXT,start_context TEXT,max_count INTEGER,offset_type INTEGER,content TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1007
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(offset) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v0, "CREATE TABLE IF NOT EXISTS polling_log (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,service_provider INTEGER,req_type INTEGER,success BOOLEAN,time TIMESTAMP,attempt_count INTEGER,elapse_time TIMESTAMP);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1018
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(polling_log) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v0, "CREATE TABLE IF NOT EXISTS use_contact (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,sp INTEGER,f_id VARCHAR(20),used INTEGER, UNIQUE (sp,f_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1027
    const-string v0, "CREATE INDEX IF NOT EXISTS friendIdIndexOnUseContact ON use_contact (f_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1030
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(use_contact) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v0, "CREATE TABLE IF NOT EXISTS friend_responsetime (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,sp INTEGER,full_response_time TIMESTAMP,updated_response_time TIMESTAMP,friendlist_full_response_time TIMESTAMP,friendlist_updated_response_time TIMESTAMP);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1042
    const-string v0, "SNS_DB"

    const-string v1, "DB TABLE(friend_responsetime) Has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBHelper;->initFriendResponseTime(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1046
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1047
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1048
    return-void
.end method

.method public initFriendResponseTime(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter "db"

    .prologue
    .line 1158
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1160
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_73

    aget v3, v0, v1

    .line 1161
    .local v3, spType:I
    const-string v5, "sp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1163
    const-string v5, "friend_responsetime"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4c

    .line 1164
    iget-boolean v5, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mbIsLoggable:Z

    if-eqz v5, :cond_49

    .line 1165
    const-string v5, "SNS_DB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initFriendResponseTime TABLE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - SUCCESS!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1168
    :cond_4c
    iget-boolean v5, p0, Lcom/sec/android/app/sns/db/SnsDBHelper;->mbIsLoggable:Z

    if-eqz v5, :cond_49

    .line 1169
    const-string v5, "SNS_DB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initFriendResponseTime TABLE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - FAILED!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1173
    .end local v3           #spType:I
    :cond_73
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1053
    const-string v0, "SNS_DB"

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

    .line 1054
    const/16 v0, 0x4f

    if-lt v0, p2, :cond_35

    const/16 v0, 0x50

    if-ne v0, p3, :cond_35

    .line 1056
    const-string v0, "SNS_DB"

    const-string v1, "Leave all data in case that user upgrades binary from Eclair to Froyo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBHelper;->upgradeDBFromEclairToFroyo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1062
    :goto_34
    return-void

    .line 1060
    :cond_35
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBHelper;->upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_34
.end method

.method public upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 1091
    const-string v0, "DROP TABLE IF EXISTS activity_statuslist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1092
    const-string v0, "DROP TABLE IF EXISTS activity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1093
    const-string v0, "DROP TABLE IF EXISTS album"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1094
    const-string v0, "DROP TABLE IF EXISTS friend"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1095
    const-string v0, "DROP TABLE IF EXISTS friend_activity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1096
    const-string v0, "DROP TABLE IF EXISTS friend_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1097
    const-string v0, "DROP TABLE IF EXISTS friend_grouping"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1098
    const-string v0, "DROP TABLE IF EXISTS groups"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1099
    const-string v0, "DROP TABLE IF EXISTS group_activity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1100
    const-string v0, "DROP TABLE IF EXISTS message"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1101
    const-string v0, "DROP TABLE IF EXISTS people"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1102
    const-string v0, "DROP TABLE IF EXISTS photo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1103
    const-string v0, "DROP TABLE IF EXISTS event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1104
    const-string v0, "DROP TABLE IF EXISTS searching_keywords"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1105
    const-string v0, "DROP TABLE IF EXISTS searching"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1106
    const-string v0, "DROP TABLE IF EXISTS thread_message"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1109
    const-string v0, "DROP TABLE IF EXISTS attachment"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1110
    const-string v0, "DROP TABLE IF EXISTS attachmedia"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1111
    const-string v0, "DROP TABLE IF EXISTS activity_tag"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1112
    const-string v0, "DROP TABLE IF EXISTS dirt_activity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1113
    const-string v0, "DROP TABLE IF EXISTS activity_target"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    const-string v0, "DROP TABLE IF EXISTS address"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1115
    const-string v0, "DROP TABLE IF EXISTS comment"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1116
    const-string v0, "DROP TABLE IF EXISTS comment_favorite"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1117
    const-string v0, "DROP TABLE IF EXISTS deeplink"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    const-string v0, "DROP TABLE IF EXISTS email"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    const-string v0, "DROP TABLE IF EXISTS msg_receiver_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1120
    const-string v0, "DROP TABLE IF EXISTS phonenumber"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1121
    const-string v0, "DROP TABLE IF EXISTS photo_upload_body"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1122
    const-string v0, "DROP TABLE IF EXISTS property"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1123
    const-string v0, "DROP TABLE IF EXISTS event_rsvp_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1124
    const-string v0, "DROP TABLE IF EXISTS status"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    const-string v0, "DROP TABLE IF EXISTS thread_msg_receiver_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1126
    const-string v0, "DROP TABLE IF EXISTS notification"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1127
    const-string v0, "DROP TABLE IF EXISTS notification_list"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v0, "DROP TABLE IF EXISTS offset"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1133
    const-string v0, "DROP TABLE IF EXISTS polling_log"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1136
    const-string v0, "DROP TABLE IF EXISTS friend_responsetime"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1139
    const-string v0, "DROP TABLE IF EXISTS use_contact"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/db/SnsDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1142
    return-void
.end method
