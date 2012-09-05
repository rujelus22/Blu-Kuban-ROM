.class public Lcom/google/android/music/dl/FileSystemImpl;
.super Ljava/lang/Object;
.source "FileSystemImpl.java"

# interfaces
.implements Lcom/google/android/music/dl/FileSystem;


# instance fields
.field private final mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V
    .registers 2
    .parameter "doNotDelete"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/music/dl/FileSystemImpl;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    .line 20
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;)Z
    .registers 3
    .parameter "f"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/dl/FileSystemImpl;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-interface {v0, p1}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;->requestDeleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public exists(Ljava/io/File;)Z
    .registers 3
    .parameter "f"

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFreeSpace(Ljava/io/File;)J
    .registers 7
    .parameter "location"

    .prologue
    .line 38
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public getLength(Ljava/io/File;)J
    .registers 4
    .parameter "f"

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSpace(Ljava/io/File;)J
    .registers 7
    .parameter "location"

    .prologue
    .line 43
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method
