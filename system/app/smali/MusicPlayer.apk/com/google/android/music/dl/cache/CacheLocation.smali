.class public final Lcom/google/android/music/dl/cache/CacheLocation;
.super Ljava/lang/Object;
.source "CacheLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/cache/CacheLocation$StorageType;
    }
.end annotation


# instance fields
.field private final mPath:Ljava/io/File;

.field private final mStorageType:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/google/android/music/dl/cache/CacheLocation$StorageType;)V
    .registers 5
    .parameter "path"
    .parameter "storageType"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_d

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The path provided is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_d
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheLocation;->mPath:Ljava/io/File;

    .line 31
    iput-object p2, p0, Lcom/google/android/music/dl/cache/CacheLocation;->mStorageType:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    .line 32
    return-void
.end method


# virtual methods
.method public getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "relativePath"

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheLocation;->mPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheLocation;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getSchemaValueForStorageType()I
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x2

    .line 58
    .local v0, value:I
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheLocation;->mStorageType:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    sget-object v2, Lcom/google/android/music/dl/cache/CacheLocation$StorageType;->INTERNAL:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    if-ne v1, v2, :cond_8

    .line 59
    const/4 v0, 0x1

    .line 61
    :cond_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheLocation;->mPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheLocation;->mStorageType:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
