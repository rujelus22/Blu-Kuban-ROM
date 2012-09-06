.class final Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# static fields
.field private static final filesToDelete:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->filesToDelete:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public delete()V
    .registers 4

    sget-object v1, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->filesToDelete:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    if-eqz v0, :cond_11

    sget-object v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->filesToDelete:Ljava/util/Set;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    :cond_11
    sget-object v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->filesToDelete:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2d

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
