.class public Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;
.super Ljava/lang/Object;
.source "MaxFreeSpaceDeletionStrategy.java"

# interfaces
.implements Lcom/google/android/music/dl/cache/DeletionStrategy;


# static fields
.field private static final LOGV:Z


# instance fields
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

.method public constructor <init>(Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;)V
    .registers 3
    .parameter "mFileSys"
    .parameter "mStore"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 29
    iput-object p2, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    .line 30
    return-void
.end method


# virtual methods
.method public createSpace(JLjava/io/File;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)Z
    .registers 13
    .parameter "space"
    .parameter "location"
    .parameter "dontDelete"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 33
    iget-object v5, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, p3}, Lcom/google/android/music/store/Store;->getDeletableFiles(Ljava/io/File;)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    .local v0, deletable:Landroid/database/Cursor;
    :cond_8
    :goto_8
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 37
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 38
    .local v1, id:J
    iget-object v5, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    new-instance v6, Ljava/io/File;

    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/google/android/music/dl/FileSystem;->delete(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 39
    iget-object v5, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/music/store/Store;->removeFileLocation(J)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2b

    goto :goto_8

    .line 43
    .end local v1           #id:J
    :catchall_2b
    move-exception v3

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3

    :cond_30
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 46
    iget-object v5, p0, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v5, p3}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v5

    cmp-long v5, p1, v5

    if-gez v5, :cond_3e

    :goto_3d
    return v3

    :cond_3e
    move v3, v4

    goto :goto_3d
.end method
