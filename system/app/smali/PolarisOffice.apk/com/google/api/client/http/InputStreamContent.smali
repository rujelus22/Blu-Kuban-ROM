.class public final Lcom/google/api/client/http/InputStreamContent;
.super Ljava/lang/Object;
.source "InputStreamContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field public encoding:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;

.field public length:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFileInput(Ljava/io/File;)V
    .registers 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 62
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 15
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, -0x1

    .line 65
    iget-object v3, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 66
    .local v3, inputStream:Ljava/io/InputStream;
    iget-wide v1, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 67
    .local v1, contentLength:J
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 70
    .local v0, buffer:[B
    cmp-long v7, v1, v11

    if-gez v7, :cond_1f

    .line 72
    :goto_f
    :try_start_f
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, read:I
    if-eq v4, v10, :cond_32

    .line 73
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1a

    goto :goto_f

    .line 90
    .end local v4           #read:I
    :catchall_1a
    move-exception v7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7

    .line 77
    :cond_1f
    move-wide v5, v1

    .line 78
    .local v5, remaining:J
    :goto_20
    cmp-long v7, v5, v11

    if-lez v7, :cond_32

    .line 79
    const/4 v7, 0x0

    const-wide/16 v8, 0x800

    :try_start_27
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_1a

    move-result v4

    .line 82
    .restart local v4       #read:I
    if-ne v4, v10, :cond_36

    .line 90
    .end local v4           #read:I
    .end local v5           #remaining:J
    :cond_32
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 92
    return-void

    .line 85
    .restart local v4       #read:I
    .restart local v5       #remaining:J
    :cond_36
    const/4 v7, 0x0

    :try_start_37
    invoke-virtual {p1, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_1a

    .line 86
    int-to-long v7, v4

    sub-long/2addr v5, v7

    goto :goto_20
.end method