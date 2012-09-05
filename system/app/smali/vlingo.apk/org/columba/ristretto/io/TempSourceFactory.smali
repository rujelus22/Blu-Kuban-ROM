.class public Lorg/columba/ristretto/io/TempSourceFactory;
.super Ljava/lang/Object;
.source "TempSourceFactory.java"


# static fields
.field protected static BUFFER_SIZE:I

.field public static MAX_IN_RAM_SIZE:I

.field protected static TEMP_POSTFIX:Ljava/lang/String;

.field protected static TEMP_PREFIX:Ljava/lang/String;

.field private static counter:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/high16 v0, 0xe

    sput v0, Lorg/columba/ristretto/io/TempSourceFactory;->MAX_IN_RAM_SIZE:I

    .line 59
    const-string v0, "ristretto_"

    sput-object v0, Lorg/columba/ristretto/io/TempSourceFactory;->TEMP_PREFIX:Ljava/lang/String;

    .line 60
    const-string v0, "tmp"

    sput-object v0, Lorg/columba/ristretto/io/TempSourceFactory;->TEMP_POSTFIX:Ljava/lang/String;

    .line 61
    const v0, 0xc800

    sput v0, Lorg/columba/ristretto/io/TempSourceFactory;->BUFFER_SIZE:I

    .line 63
    const/4 v0, 0x0

    sput v0, Lorg/columba/ristretto/io/TempSourceFactory;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .registers 10
    .parameter "in"
    .parameter "out"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 162
    sget v3, Lorg/columba/ristretto/io/TempSourceFactory;->BUFFER_SIZE:I

    new-array v1, v3, [B

    .line 164
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 167
    .local v2, copied:I
    if-eq p2, v5, :cond_28

    .line 169
    :goto_9
    sub-int v3, p2, v2

    if-lez v3, :cond_1b

    .line 170
    sub-int v3, p2, v2

    sget v4, Lorg/columba/ristretto/io/TempSourceFactory;->BUFFER_SIZE:I

    if-lt v3, v4, :cond_1c

    sget v3, Lorg/columba/ristretto/io/TempSourceFactory;->BUFFER_SIZE:I

    :goto_15
    invoke-virtual {p0, v1, v6, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 177
    .local v0, actSize:I
    if-ne v0, v5, :cond_1f

    .line 193
    .end local v0           #actSize:I
    :cond_1b
    :goto_1b
    return v2

    .line 170
    :cond_1c
    sub-int v3, p2, v2

    goto :goto_15

    .line 179
    .restart local v0       #actSize:I
    :cond_1f
    invoke-virtual {p1, v1, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 180
    add-int/2addr v2, v0

    goto :goto_9

    .line 188
    :cond_24
    invoke-virtual {p1, v1, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 189
    add-int/2addr v2, v0

    .line 184
    .end local v0           #actSize:I
    :cond_28
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 186
    .restart local v0       #actSize:I
    if-ne v0, v5, :cond_24

    goto :goto_1b
.end method

.method protected static createMemoryTempSource(Ljava/io/InputStream;I)Lorg/columba/ristretto/io/Source;
    .registers 5
    .parameter "in"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lorg/columba/ristretto/io/TempSourceFactory;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 111
    new-instance v1, Lorg/columba/ristretto/io/ByteBufferSource;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/columba/ristretto/io/ByteBufferSource;-><init>([B)V

    return-object v1
.end method

.method public static createTempFile()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/columba/ristretto/io/TempSourceFactory;->TEMP_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lorg/columba/ristretto/io/TempSourceFactory;->nextID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/columba/ristretto/io/TempSourceFactory;->TEMP_POSTFIX:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 149
    .local v0, tempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 150
    return-object v0
.end method

.method public static createTempSource(Ljava/io/InputStream;)Lorg/columba/ristretto/io/Source;
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/columba/ristretto/io/TempSourceFactory;->createTempSource(Ljava/io/InputStream;I)Lorg/columba/ristretto/io/Source;

    move-result-object v0

    return-object v0
.end method

.method public static createTempSource(Ljava/io/InputStream;I)Lorg/columba/ristretto/io/Source;
    .registers 7
    .parameter "in"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v3, -0x1

    if-eq p1, v3, :cond_14

    :try_start_3
    sget v3, Lorg/columba/ristretto/io/TempSourceFactory;->MAX_IN_RAM_SIZE:I

    if-lt p1, v3, :cond_f

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    sget v4, Lorg/columba/ristretto/io/TempSourceFactory;->MAX_IN_RAM_SIZE:I

    if-ge v3, v4, :cond_14

    .line 81
    :cond_f
    invoke-static {p0, p1}, Lorg/columba/ristretto/io/TempSourceFactory;->createMemoryTempSource(Ljava/io/InputStream;I)Lorg/columba/ristretto/io/Source;

    move-result-object v3

    .line 96
    :goto_13
    return-object v3

    .line 83
    :cond_14
    invoke-static {}, Lorg/columba/ristretto/io/TempSourceFactory;->createTempFile()Ljava/io/File;

    move-result-object v2

    .line 85
    .local v2, tempFile:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {p0, v1, p1}, Lorg/columba/ristretto/io/TempSourceFactory;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 89
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 92
    new-instance v3, Lorg/columba/ristretto/io/FileSource;

    invoke-direct {v3, v2}, Lorg/columba/ristretto/io/FileSource;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_29

    goto :goto_13

    .line 95
    .end local v1           #out:Ljava/io/OutputStream;
    .end local v2           #tempFile:Ljava/io/File;
    :catch_29
    move-exception v0

    .line 96
    .local v0, ex:Ljava/io/IOException;
    invoke-static {p0, p1}, Lorg/columba/ristretto/io/TempSourceFactory;->createMemoryTempSource(Ljava/io/InputStream;I)Lorg/columba/ristretto/io/Source;

    move-result-object v3

    goto :goto_13
.end method

.method private static declared-synchronized nextID()I
    .registers 3

    .prologue
    .line 154
    const-class v1, Lorg/columba/ristretto/io/TempSourceFactory;

    monitor-enter v1

    :try_start_3
    sget v0, Lorg/columba/ristretto/io/TempSourceFactory;->counter:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/columba/ristretto/io/TempSourceFactory;->counter:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static useMemoryTemp(I)Z
    .registers 2
    .parameter "size"

    .prologue
    .line 135
    sget v0, Lorg/columba/ristretto/io/TempSourceFactory;->MAX_IN_RAM_SIZE:I

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
