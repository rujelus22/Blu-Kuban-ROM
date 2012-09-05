.class public Lcom/android/sprintmenu/SDCardFormat;
.super Ljava/lang/Object;
.source "SDCardFormat.java"


# static fields
.field private static checkDelay:I

.field private static checkRetry:I

.field private static mDBOPContentsCount:I

.field private static mExistFileCount:I

.field private static mProtectFileNameArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CONTENTS_LIST_DB:Ljava/lang/String;

.field private final CONTENTS_LIST_DB_TABLE_NAME:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dbCursor:Landroid/database/Cursor;

.field private failMsg:Landroid/os/Message;

.field isForcedFormat:Z

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBIsExist:Z

.field private mHandlerSDUnmounted:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private passMsg:Landroid/os/Message;

.field private resultHandler:Landroid/os/Handler;

.field private service:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput v0, Lcom/android/sprintmenu/SDCardFormat;->mExistFileCount:I

    .line 63
    sput v0, Lcom/android/sprintmenu/SDCardFormat;->mDBOPContentsCount:I

    .line 70
    const/16 v0, 0x3e8

    sput v0, Lcom/android/sprintmenu/SDCardFormat;->checkDelay:I

    .line 71
    const/16 v0, 0xa

    sput v0, Lcom/android/sprintmenu/SDCardFormat;->checkRetry:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Message;Landroid/os/Message;)V
    .registers 5
    .parameter "context"
    .parameter "passMsg"
    .parameter "failMsg"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "SDCardForamt"

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sprintmenu/SDCardFormat;->mDBIsExist:Z

    .line 85
    const-string v0, "/system/csc/contents.db"

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->CONTENTS_LIST_DB:Ljava/lang/String;

    .line 86
    const-string v0, "contents"

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->CONTENTS_LIST_DB_TABLE_NAME:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->mMountService:Landroid/os/storage/IMountService;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sprintmenu/SDCardFormat;->isForcedFormat:Z

    .line 345
    new-instance v0, Lcom/android/sprintmenu/SDCardFormat$2;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/SDCardFormat$2;-><init>(Lcom/android/sprintmenu/SDCardFormat;)V

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->mHandlerSDUnmounted:Landroid/os/Handler;

    .line 444
    new-instance v0, Lcom/android/sprintmenu/SDCardFormat$4;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/SDCardFormat$4;-><init>(Lcom/android/sprintmenu/SDCardFormat;)V

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 97
    iput-object p1, p0, Lcom/android/sprintmenu/SDCardFormat;->context:Landroid/content/Context;

    .line 98
    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->resultHandler:Landroid/os/Handler;

    .line 99
    iput-object p2, p0, Lcom/android/sprintmenu/SDCardFormat;->passMsg:Landroid/os/Message;

    .line 100
    iput-object p3, p0, Lcom/android/sprintmenu/SDCardFormat;->failMsg:Landroid/os/Message;

    .line 101
    invoke-virtual {p0}, Lcom/android/sprintmenu/SDCardFormat;->init()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/storage/IMountService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->service:Landroid/os/storage/IMountService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/SDCardFormat;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->passMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 55
    sget v0, Lcom/android/sprintmenu/SDCardFormat;->checkDelay:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->resultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->failMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 55
    sget v0, Lcom/android/sprintmenu/SDCardFormat;->checkRetry:I

    return v0
.end method

.method static synthetic access$610()I
    .registers 2

    .prologue
    .line 55
    sget v0, Lcom/android/sprintmenu/SDCardFormat;->checkRetry:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/sprintmenu/SDCardFormat;->checkRetry:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/sprintmenu/SDCardFormat;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->mHandlerSDUnmounted:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/sprintmenu/SDCardFormat;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/sprintmenu/SDCardFormat;->isFileDeleteComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/sprintmenu/SDCardFormat;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/sprintmenu/SDCardFormat;->runSDFormatThread()V

    return-void
.end method

.method public static countExistFile(Ljava/io/File;)Z
    .registers 4
    .parameter "folder"

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 221
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_27

    .line 223
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_27

    .line 224
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 230
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/sprintmenu/SDCardFormat;->countExistFile(Ljava/io/File;)Z

    .line 223
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 235
    :cond_20
    sget v2, Lcom/android/sprintmenu/SDCardFormat;->mExistFileCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/sprintmenu/SDCardFormat;->mExistFileCount:I

    goto :goto_1d

    .line 240
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_27
    const/4 v2, 0x1

    return v2
.end method

.method private countOPContentsAndMakeContentList()V
    .registers 6

    .prologue
    .line 296
    const/4 v2, 0x0

    sput v2, Lcom/android/sprintmenu/SDCardFormat;->mDBOPContentsCount:I

    .line 297
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * from contents"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->dbCursor:Landroid/database/Cursor;

    .line 300
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 301
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->dbCursor:Landroid/database/Cursor;

    const-string v3, "filePath"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 303
    .local v1, pathIndex:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/sprintmenu/SDCardFormat;->mProtectFileNameArray:Ljava/util/ArrayList;

    .line 305
    :goto_22
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 306
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, currentPath:Ljava/lang/String;
    const-string v2, "/sdcard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "sdcard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 309
    :cond_40
    sget v2, Lcom/android/sprintmenu/SDCardFormat;->mDBOPContentsCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/sprintmenu/SDCardFormat;->mDBOPContentsCount:I

    .line 310
    const-string v2, "sdcard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_61
    sget-object v2, Lcom/android/sprintmenu/SDCardFormat;->mProtectFileNameArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FilePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> add filepath to list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_84
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->dbCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_22

    .line 317
    .end local v0           #currentPath:Ljava/lang/String;
    :cond_8a
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDCardContent Count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/sprintmenu/SDCardFormat;->mDBOPContentsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 320
    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .registers 4

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v2, "getMountService ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_1a

    .line 245
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 246
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1e

    .line 247
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/SDCardFormat;->mMountService:Landroid/os/storage/IMountService;

    .line 252
    .end local v0           #service:Landroid/os/IBinder;
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat;->mMountService:Landroid/os/storage/IMountService;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_26

    monitor-exit p0

    return-object v1

    .line 249
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_1a

    .line 243
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isFileDeleteComplete()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 322
    sput v0, Lcom/android/sprintmenu/SDCardFormat;->mExistFileCount:I

    .line 323
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/sprintmenu/SDCardFormat;->countExistFile(Ljava/io/File;)Z

    .line 324
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDcard :Exists File:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/sprintmenu/SDCardFormat;->mExistFileCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / OP\'s Contents File:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/sprintmenu/SDCardFormat;->mDBOPContentsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget v1, Lcom/android/sprintmenu/SDCardFormat;->mDBOPContentsCount:I

    sget v2, Lcom/android/sprintmenu/SDCardFormat;->mExistFileCount:I

    if-ne v1, v2, :cond_3a

    .line 326
    const/4 v0, 0x1

    .line 328
    :cond_3a
    return v0
.end method

.method private isOPContentsExist()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 258
    iget-boolean v1, p0, Lcom/android/sprintmenu/SDCardFormat;->mDBIsExist:Z

    if-nez v1, :cond_6

    .line 270
    :goto_5
    return v0

    .line 262
    :cond_6
    invoke-direct {p0}, Lcom/android/sprintmenu/SDCardFormat;->countOPContentsAndMakeContentList()V

    .line 264
    sget v1, Lcom/android/sprintmenu/SDCardFormat;->mDBOPContentsCount:I

    if-nez v1, :cond_15

    .line 266
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v2, "Opeartor\'s ContentsDB is not exits!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 269
    :cond_15
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v1, "Opeartor\'s ContentsDB is exits!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private runSDFormatThread()V
    .registers 4

    .prologue
    .line 191
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, interStoragePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/sprintmenu/SDCardFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/sprintmenu/SDCardFormat;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 194
    new-instance v1, Lcom/android/sprintmenu/SDCardFormat$1;

    invoke-direct {v1, p0, v0}, Lcom/android/sprintmenu/SDCardFormat$1;-><init>(Lcom/android/sprintmenu/SDCardFormat;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/sprintmenu/SDCardFormat$1;->start()V

    .line 216
    return-void
.end method


# virtual methods
.method StartThreadDeleteAllFiles()V
    .registers 3

    .prologue
    .line 369
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/sprintmenu/SDCardFormat$3;

    invoke-direct {v1, p0}, Lcom/android/sprintmenu/SDCardFormat$3;-><init>(Lcom/android/sprintmenu/SDCardFormat;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 389
    .local v0, threadDeleteAllFiles:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 390
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 391
    return-void
.end method

.method chekExtSDUnmounted()Z
    .registers 7

    .prologue
    .line 276
    const-string v2, "mounted"

    .line 278
    .local v2, statusExternal:Ljava/lang/String;
    :try_start_2
    invoke-direct {p0}, Lcom/android/sprintmenu/SDCardFormat;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 279
    .local v0, mountService:Landroid/os/storage/IMountService;
    const-string v3, "/mnt/sdcard/external_sd"

    invoke-interface {v0, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_3e

    move-result-object v2

    .line 285
    .end local v0           #mountService:Landroid/os/storage/IMountService;
    :goto_c
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusExternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "bad_removal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 289
    :cond_3c
    const/4 v3, 0x1

    .line 291
    :goto_3d
    return v3

    .line 281
    :catch_3e
    move-exception v1

    .line 282
    .local v1, rex:Ljava/lang/Exception;
    const-string v2, "removed"

    goto :goto_c

    .line 291
    .end local v1           #rex:Ljava/lang/Exception;
    :cond_42
    const/4 v3, 0x0

    goto :goto_3d
.end method

.method public deleteDirectory(Ljava/io/File;)Z
    .registers 6
    .parameter "folder"

    .prologue
    .line 395
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 396
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 398
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_e

    .line 399
    const/4 v3, 0x1

    .line 419
    .end local v1           #files:[Ljava/io/File;
    :goto_d
    return v3

    .line 403
    .restart local v1       #files:[Ljava/io/File;
    :cond_e
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    :try_start_f
    array-length v3, v1

    if-ge v2, v3, :cond_33

    .line 404
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 405
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/SDCardFormat;->deleteDirectory(Ljava/io/File;)Z

    .line 403
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 408
    :cond_22
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/SDCardFormat;->isDeleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 409
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_2f} :catch_30

    goto :goto_1f

    .line 415
    :catch_30
    move-exception v0

    .line 416
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_d

    .line 419
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #i:I
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_d
.end method

.method public init()V
    .registers 3

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/sprintmenu/SDCardFormat;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->service:Landroid/os/storage/IMountService;

    .line 335
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_28

    .line 336
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->context:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 337
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v1, "GET STORAGE_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_28

    .line 339
    iget-object v0, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get StorageManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_28
    return-void
.end method

.method isDeleteFile(Ljava/io/File;)Z
    .registers 8
    .parameter "f"

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, protectFileName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, currentFileName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    sget-object v3, Lcom/android/sprintmenu/SDCardFormat;->mProtectFileNameArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    .line 428
    sget-object v3, Lcom/android/sprintmenu/SDCardFormat;->mProtectFileNameArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #protectFileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 429
    .restart local v2       #protectFileName:Ljava/lang/String;
    if-eqz v2, :cond_40

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 432
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protected file! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v3, 0x0

    .line 440
    :goto_3f
    return v3

    .line 427
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 438
    :cond_43
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v3, 0x1

    goto :goto_3f
.end method

.method public startSDCardFormat()V
    .registers 8

    .prologue
    .line 133
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v4, "SDCARD_format : start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/android/sprintmenu/SDCardFormat;->isOPContentsExist()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-boolean v3, p0, Lcom/android/sprintmenu/SDCardFormat;->isForcedFormat:Z

    if-nez v3, :cond_23

    .line 150
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->mHandlerSDUnmounted:Landroid/os/Handler;

    const/16 v4, 0x7cf

    sget v5, Lcom/android/sprintmenu/SDCardFormat;->checkDelay:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v4, "SDCard_format : end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 157
    :cond_23
    const-string v2, "unmounted"

    .line 159
    .local v2, statusExternal:Ljava/lang/String;
    :try_start_25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_4d

    move-result-object v2

    .line 163
    :goto_29
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusExternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 166
    invoke-direct {p0}, Lcom/android/sprintmenu/SDCardFormat;->runSDFormatThread()V

    goto :goto_1b

    .line 160
    :catch_4d
    move-exception v1

    .line 161
    .local v1, rex:Ljava/lang/Exception;
    const-string v2, "unmounted"

    goto :goto_29

    .line 170
    .end local v1           #rex:Ljava/lang/Exception;
    :cond_51
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/sprintmenu/SDCardFormat;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 173
    :try_start_58
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->service:Landroid/os/storage/IMountService;

    if-eqz v3, :cond_1b

    .line 174
    invoke-virtual {p0}, Lcom/android/sprintmenu/SDCardFormat;->chekExtSDUnmounted()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 175
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->service:Landroid/os/storage/IMountService;

    const-string v4, "/mnt/sdcard/external_sd"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 177
    :cond_6b
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->service:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_7a} :catch_7b

    goto :goto_1b

    .line 181
    :catch_7b
    move-exception v0

    .line 182
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/sprintmenu/SDCardFormat;->TAG:Ljava/lang/String;

    const-string v4, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method
