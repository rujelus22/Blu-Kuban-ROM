.class public Lorg/apache/james/mime4j/storage/TempFileStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;


# static fields
.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "m4j"


# instance fields
.field private final directory:Ljava/io/File;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const-string v0, "m4j"

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    const-string v0, "m4j"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid prefix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    if-eqz p3, :cond_2a

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->suffix:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->directory:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->suffix:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->directory:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v1, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method
