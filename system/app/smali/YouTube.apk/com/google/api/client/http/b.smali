.class public abstract Lcom/google/api/client/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/b;->c:Z

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/b;->a(Ljava/lang/String;)Lcom/google/api/client/http/b;

    .line 58
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/api/client/http/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 180
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    const/16 v0, 0x800

    :try_start_2
    new-array v0, v0, [B

    .line 212
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    .line 213
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    goto :goto_4

    .line 216
    :catchall_10
    move-exception v0

    if-eqz p2, :cond_16

    .line 217
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_16
    throw v0

    .line 216
    :cond_17
    if-eqz p2, :cond_1c

    .line 217
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 220
    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/api/client/http/b;->a:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/client/http/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/google/api/client/http/b;->d()Ljava/io/InputStream;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/google/api/client/http/b;->b()J

    move-result-wide v0

    .line 77
    cmp-long v3, v0, v7

    if-gez v3, :cond_17

    .line 78
    iget-boolean v0, p0, Lcom/google/api/client/http/b;->c:Z

    invoke-static {v2, p1, v0}, Lcom/google/api/client/http/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 98
    :cond_13
    :goto_13
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 99
    return-void

    .line 80
    :cond_17
    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 84
    :goto_1b
    cmp-long v4, v0, v7

    if-lez v4, :cond_35

    .line 85
    const/4 v4, 0x0

    const-wide/16 v5, 0x800

    :try_start_22
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 86
    const/4 v5, -0x1

    if-eq v4, v5, :cond_35

    .line 87
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_3d

    .line 90
    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 91
    goto :goto_1b

    .line 93
    :cond_35
    iget-boolean v0, p0, Lcom/google/api/client/http/b;->c:Z

    if-eqz v0, :cond_13

    .line 94
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_13

    .line 93
    :catchall_3d
    move-exception v0

    iget-boolean v1, p0, Lcom/google/api/client/http/b;->c:Z

    if-eqz v1, :cond_45

    .line 94
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_45
    throw v0
.end method

.method public abstract d()Ljava/io/InputStream;
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/client/http/b;->a:Ljava/lang/String;

    return-object v0
.end method
