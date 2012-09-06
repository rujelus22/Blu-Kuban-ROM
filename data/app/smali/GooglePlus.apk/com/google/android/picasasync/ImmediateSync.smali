.class Lcom/google/android/picasasync/ImmediateSync;
.super Ljava/lang/Object;
.source "ImmediateSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/ImmediateSync$Task;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/picasasync/ImmediateSync;


# instance fields
.field private final mCompleteTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/ImmediateSync$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPendingTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/ImmediateSync$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    .line 113
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    .registers 7
    .parameter "task"

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/google/android/picasasync/ImmediateSync$Task;->taskId:Ljava/lang/String;

    .line 302
    .local v0, taskId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_25

    .line 303
    const-string v2, "ImmediateSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new task added, ignored old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_74

    .line 316
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 306
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getSyncRequestUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 311
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 313
    iget v2, p1, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    if-eqz v2, :cond_23

    .line 314
    const-string v2, "ImmediateSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " incomplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_25 .. :try_end_73} :catchall_74

    goto :goto_23

    .line 301
    .end local v0           #taskId:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_74
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private createTaskId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "account"

    .prologue
    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createTaskId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "account"
    .parameter "albumId"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;
    .registers 3
    .parameter "context"

    .prologue
    .line 98
    const-class v1, Lcom/google/android/picasasync/ImmediateSync;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/ImmediateSync;->sInstance:Lcom/google/android/picasasync/ImmediateSync;

    if-nez v0, :cond_e

    .line 99
    new-instance v0, Lcom/google/android/picasasync/ImmediateSync;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/ImmediateSync;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/ImmediateSync;->sInstance:Lcom/google/android/picasasync/ImmediateSync;

    .line 101
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/ImmediateSync;->sInstance:Lcom/google/android/picasasync/ImmediateSync;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs requestSyncAlbumList(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "taskId"
    .parameter "accounts"

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/picasasync/ImmediateSync$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/picasasync/ImmediateSync$1;-><init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;)V

    .line 226
    .local v0, task:Lcom/google/android/picasasync/ImmediateSync$Task;
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {v0, p2}, Lcom/google/android/picasastore/AsyncTaskUtil;->executeInParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 228
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelTask(Ljava/lang/String;)Z
    .registers 6
    .parameter "taskId"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    const-string v1, "ImmediateSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 322
    .local v0, task:Lcom/google/android/picasasync/ImmediateSync$Task;
    if-eqz v0, :cond_35

    iget v1, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    if-lez v1, :cond_35

    .line 323
    iget v1, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    if-nez v1, :cond_32

    invoke-virtual {v0}, Lcom/google/android/picasasync/ImmediateSync$Task;->cancelSync()V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_37

    .line 324
    :cond_32
    const/4 v1, 0x1

    .line 326
    :goto_33
    monitor-exit p0

    return v1

    :cond_35
    const/4 v1, 0x0

    goto :goto_33

    .line 320
    .end local v0           #task:Lcom/google/android/picasasync/ImmediateSync$Task;
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getResult(Ljava/lang/String;)I
    .registers 4
    .parameter "taskId"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 335
    .local v0, task:Lcom/google/android/picasasync/ImmediateSync$Task;
    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/google/android/picasasync/ImmediateSync$Task;
    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1b

    .line 336
    .restart local v0       #task:Lcom/google/android/picasasync/ImmediateSync$Task;
    :cond_13
    if-nez v0, :cond_18

    const/4 v1, 0x3

    :goto_16
    monitor-exit p0

    return v1

    :cond_18
    :try_start_18
    iget v1, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    goto :goto_16

    .line 334
    .end local v0           #task:Lcom/google/android/picasasync/ImmediateSync$Task;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized requestSyncAlbum(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "albumId"

    .prologue
    .line 234
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v2

    .line 236
    .local v2, dbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getAlbumEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;

    move-result-object v1

    .line 237
    .local v1, album:Lcom/google/android/picasasync/AlbumEntry;
    if-nez v1, :cond_19

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "album does not exist"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_16

    .line 234
    .end local v1           #album:Lcom/google/android/picasasync/AlbumEntry;
    .end local v2           #dbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    :catchall_16
    move-exception v5

    monitor-exit p0

    throw v5

    .line 239
    .restart local v1       #album:Lcom/google/android/picasasync/AlbumEntry;
    .restart local v2       #dbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;
    :cond_19
    :try_start_19
    iget-wide v5, v1, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getUserAccount(J)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, account:Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/google/android/picasasync/ImmediateSync;->createTaskId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, taskId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 244
    .local v3, task:Lcom/google/android/picasasync/ImmediateSync$Task;
    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Lcom/google/android/picasasync/ImmediateSync$Task;->addRequester()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 245
    const-string v5, "ImmediateSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task already exists:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_19 .. :try_end_4b} :catchall_16

    .line 288
    :goto_4b
    monitor-exit p0

    return-object v4

    .line 248
    :cond_4d
    :try_start_4d
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v3, Lcom/google/android/picasasync/ImmediateSync$2;

    .end local v3           #task:Lcom/google/android/picasasync/ImmediateSync$Task;
    invoke-direct {v3, p0, v4, v0, v1}, Lcom/google/android/picasasync/ImmediateSync$2;-><init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/AlbumEntry;)V

    .line 286
    .restart local v3       #task:Lcom/google/android/picasasync/ImmediateSync$Task;
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/picasastore/AsyncTaskUtil;->executeInParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_16

    goto :goto_4b
.end method

.method public declared-synchronized requestSyncAlbumListForAccount(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "account"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/ImmediateSync;->createTaskId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, taskId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 142
    .local v0, task:Lcom/google/android/picasasync/ImmediateSync$Task;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/picasasync/ImmediateSync$Task;->addRequester()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 143
    const-string v2, "ImmediateSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task already exists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3e

    .line 149
    :goto_2d
    monitor-exit p0

    return-object v1

    .line 146
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumList(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3e

    goto :goto_2d

    .line 138
    .end local v0           #task:Lcom/google/android/picasasync/ImmediateSync$Task;
    .end local v1           #taskId:Ljava/lang/String;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized requestSyncAlbumListForAllAccounts()Ljava/lang/String;
    .registers 5

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    const-string v1, "all"

    .line 123
    .local v1, taskId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 124
    .local v0, task:Lcom/google/android/picasasync/ImmediateSync$Task;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/google/android/picasasync/ImmediateSync$Task;->addRequester()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 125
    const-string v2, "ImmediateSync"

    const-string v3, "task already exists:all"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v2, "all"
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_32

    .line 131
    :goto_1e
    monitor-exit p0

    return-object v2

    .line 128
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v3, "all"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumList(Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    const-string v2, "all"
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_32

    goto :goto_1e

    .line 120
    .end local v0           #task:Lcom/google/android/picasasync/ImmediateSync$Task;
    .end local v1           #taskId:Ljava/lang/String;
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2
.end method
