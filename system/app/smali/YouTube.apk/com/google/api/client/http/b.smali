.class public abstract Lcom/google/api/client/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/g;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/b;->a(Ljava/lang/String;)Lcom/google/api/client/http/b;

    .line 70
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 159
    const/16 v0, 0x800

    :try_start_2
    new-array v0, v0, [B

    .line 161
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 162
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    goto :goto_4

    .line 165
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 166
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/api/client/http/b;->a:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/http/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/google/api/client/http/b;->d()Ljava/io/InputStream;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/google/api/client/http/b;->b()J

    move-result-wide v0

    .line 83
    cmp-long v3, v0, v7

    if-gez v3, :cond_12

    .line 84
    invoke-static {v2, p1}, Lcom/google/api/client/http/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 100
    :goto_11
    return-void

    .line 86
    :cond_12
    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 90
    :goto_16
    cmp-long v4, v0, v7

    if-lez v4, :cond_30

    .line 91
    const/4 v4, 0x0

    const-wide/16 v5, 0x800

    :try_start_1d
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 92
    const/4 v5, -0x1

    if-eq v4, v5, :cond_30

    .line 93
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_34

    .line 96
    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 97
    goto :goto_16

    .line 99
    :cond_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_11

    :catchall_34
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method protected abstract d()Ljava/io/InputStream;
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/client/http/b;->a:Ljava/lang/String;

    return-object v0
.end method
