.class public Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;
.super Ljava/lang/Object;
.source "MaxFreeSpaceDeletionStrategy.java"

# interfaces
.implements Lcom/google/android/music/dl/cache/DeletionStrategy;


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFileSys:Lcom/google/android/music/dl/FileSystem;

.field private mStore:Lcom/google/android/music/store/Store;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;)V
    .registers 4
    .parameter "context"
    .parameter "mFileSys"
    .parameter "mStore"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 30
    iput-object p3, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    .line 31
    iput-object p1, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public createSpace(JLcom/google/android/music/dl/cache/CacheLocation;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)Z
    .registers 14
    .parameter "space"
    .parameter "cacheLocation"
    .parameter "dontDelete"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 35
    iget-object v6, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {p3}, Lcom/google/android/music/dl/cache/CacheLocation;->getSchemaValueForStorageType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/music/store/Store;->getDeletableFiles(I)Landroid/database/Cursor;

    move-result-object v0

    .line 38
    .local v0, deletable:Landroid/database/Cursor;
    :cond_c
    :goto_c
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 39
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 40
    .local v2, id:J
    iget-object v6, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/google/android/music/dl/cache/CacheUtils;->resolveMusicPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 41
    .local v1, file:Ljava/io/File;
    iget-object v6, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v6, v1}, Lcom/google/android/music/dl/FileSystem;->delete(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 42
    iget-object v6, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v2, v3}, Lcom/google/android/music/store/Store;->removeFileLocation(J)V
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_35

    goto :goto_c

    .line 46
    .end local v1           #file:Ljava/io/File;
    .end local v2           #id:J
    :catchall_35
    move-exception v4

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4

    :cond_3a
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 49
    iget-object v6, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-virtual {p3}, Lcom/google/android/music/dl/cache/CacheLocation;->getPath()Ljava/io/File;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-gez v6, :cond_4c

    :goto_4b
    return v4

    :cond_4c
    move v4, v5

    goto :goto_4b
.end method
