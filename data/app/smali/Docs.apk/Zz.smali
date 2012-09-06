.class public LZz;
.super Ljava/lang/Object;
.source "LockedFile.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final a:Ljava/io/RandomAccessFile;

.field private final a:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, LZz;->a:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, LZz;->a:Ljava/io/RandomAccessFile;

    .line 31
    iget-object v0, p0, LZz;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, LZz;->a:Ljava/nio/channels/FileLock;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LZz;->a:Ljava/io/File;

    return-object v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, LZz;->a:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 40
    iget-object v0, p0, LZz;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_11

    .line 44
    :goto_a
    iget-object v0, p0, LZz;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 41
    :catch_11
    move-exception v0

    .line 42
    const-string v0, "LockedFile"

    const-string v1, "Error when releasing temp file lock."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
