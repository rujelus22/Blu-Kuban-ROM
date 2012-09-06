.class public final Ldbxyzptlk/z/c;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static final a:C

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 100
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Ldbxyzptlk/z/c;->a:C

    .line 115
    new-instance v0, Ldbxyzptlk/A/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ldbxyzptlk/A/a;-><init>(I)V

    .line 116
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 117
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 118
    invoke-virtual {v0}, Ldbxyzptlk/A/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/z/c;->b:Ljava/lang/String;

    .line 119
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 120
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1357
    invoke-static {p0, p1}, Ldbxyzptlk/z/c;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1358
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 1359
    const/4 v0, -0x1

    .line 1361
    :goto_c
    return v0

    :cond_d
    long-to-int v0, v0

    goto :goto_c
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    if-eqz p0, :cond_5

    .line 281
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 286
    :cond_5
    :goto_5
    return-void

    .line 283
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 1
    .parameter

    .prologue
    .line 224
    invoke-static {p0}, Ldbxyzptlk/z/c;->a(Ljava/io/Closeable;)V

    .line 225
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 1
    .parameter

    .prologue
    .line 252
    invoke-static {p0}, Ldbxyzptlk/z/c;->a(Ljava/io/Closeable;)V

    .line 253
    return-void
.end method

.method public static a(Ljava/io/Reader;)V
    .registers 1
    .parameter

    .prologue
    .line 171
    invoke-static {p0}, Ldbxyzptlk/z/c;->a(Ljava/io/Closeable;)V

    .line 172
    return-void
.end method

.method public static a(Ljava/io/Writer;)V
    .registers 1
    .parameter

    .prologue
    .line 197
    invoke-static {p0}, Ldbxyzptlk/z/c;->a(Ljava/io/Closeable;)V

    .line 198
    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1380
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 1381
    const-wide/16 v0, 0x0

    .line 1383
    :goto_6
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_14

    .line 1384
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1385
    int-to-long v3, v4

    add-long/2addr v0, v3

    goto :goto_6

    .line 1387
    :cond_14
    return-wide v0
.end method
