.class public Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final DIR_SEPARATOR:C

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static mCopyAllCancel:Z

.field private static mCopyCancel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 103
    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Lorg/apache/commons/io/IOUtils;->DIR_SEPARATOR:C

    .line 118
    new-instance v0, Ljava/io/StringWriter;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 119
    .local v0, buf:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 120
    .local v1, out:Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 121
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1268
    sput-boolean v3, Lorg/apache/commons/io/IOUtils;->mCopyCancel:Z

    .line 1270
    sput-boolean v3, Lorg/apache/commons/io/IOUtils;->mCopyAllCancel:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .registers 2
    .parameter "input"

    .prologue
    .line 147
    if-eqz p0, :cond_5

    .line 148
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 153
    :cond_5
    :goto_5
    return-void

    .line 150
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1000
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 1001
    const/4 v2, -0x1

    .line 1003
    :goto_c
    return v2

    :cond_d
    long-to-int v2, v0

    goto :goto_c
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 1022
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 1023
    .local v1, count:J
    const/4 v3, 0x0

    .line 1024
    .local v3, n:I
    :goto_7
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_15

    .line 1025
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1026
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_7

    .line 1028
    :cond_15
    return-wide v1
.end method
