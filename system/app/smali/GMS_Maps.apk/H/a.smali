.class public final LH/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LH/e;LH/f;)J
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-interface {p0}, LH/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 118
    :try_start_7
    invoke-interface {p1}, LH/f;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1e

    .line 120
    :try_start_d
    invoke-static {v0, v1}, LH/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_19

    move-result-wide v3

    .line 121
    const/4 v2, 0x0

    .line 124
    :try_start_12
    invoke-static {v1, v2}, LH/b;->a(Ljava/io/Closeable;Z)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1e

    .line 127
    invoke-static {v0, v2}, LH/b;->a(Ljava/io/Closeable;Z)V

    return-wide v3

    .line 124
    :catchall_19
    move-exception v3

    :try_start_1a
    invoke-static {v1, v2}, LH/b;->a(Ljava/io/Closeable;Z)V

    throw v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    .line 127
    :catchall_1e
    move-exception v1

    invoke-static {v0, v2}, LH/b;->a(Ljava/io/Closeable;Z)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 165
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 166
    const-wide/16 v0, 0x0

    .line 168
    :goto_6
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 169
    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    .line 175
    return-wide v0

    .line 172
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 173
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 174
    goto :goto_6
.end method
