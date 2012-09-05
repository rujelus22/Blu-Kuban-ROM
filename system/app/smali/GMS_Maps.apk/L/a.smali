.class public final LL/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LL/e;LL/f;)J
    .registers 7

    const/4 v2, 0x1

    invoke-interface {p0}, LL/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    :try_start_7
    invoke-interface {p1}, LL/f;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1e

    :try_start_d
    invoke-static {v0, v1}, LL/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_19

    move-result-wide v3

    const/4 v2, 0x0

    :try_start_12
    invoke-static {v1, v2}, LL/b;->a(Ljava/io/Closeable;Z)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1e

    invoke-static {v0, v2}, LL/b;->a(Ljava/io/Closeable;Z)V

    return-wide v3

    :catchall_19
    move-exception v3

    :try_start_1a
    invoke-static {v1, v2}, LL/b;->a(Ljava/io/Closeable;Z)V

    throw v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v1

    invoke-static {v0, v2}, LL/b;->a(Ljava/io/Closeable;Z)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7

    const/16 v0, 0x1000

    new-array v2, v0, [B

    const-wide/16 v0, 0x0

    :goto_6
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    return-wide v0

    :cond_e
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_6
.end method
