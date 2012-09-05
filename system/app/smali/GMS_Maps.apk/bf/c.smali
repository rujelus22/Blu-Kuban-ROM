.class public final Lbf/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .registers 7

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, v2, v3}, Laf/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v4

    invoke-virtual {v4}, Laf/b;->v()Laf/a;

    move-result-object v4

    invoke-interface {v4}, Laf/a;->b()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1a

    :goto_19
    return-wide v0

    :cond_1a
    move-wide v0, v2

    goto :goto_19
.end method

.method public static a(Ljava/lang/String;Lam/b;)Lam/b;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-interface {v1, p0}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_30

    array-length v2, v1

    if-lez v2, :cond_30

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lam/b;->a(Ljava/io/InputStream;I)I

    move-result v1

    if-eqz v1, :cond_32

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v1

    invoke-static {p0, v0}, Lbf/c;->b(Ljava/lang/String;Lam/b;)V

    :cond_30
    move-object p1, v0

    :goto_31
    return-object p1

    :cond_32
    if-eqz v2, :cond_30

    goto :goto_31
.end method

.method public static a()V
    .registers 2

    new-instance v0, Lbf/d;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lbf/d;-><init>(Lap/c;)V

    invoke-virtual {v0}, Lbf/d;->g()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Laf/l;->a(Ljava/lang/String;J)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void
.end method

.method public static b(Ljava/lang/String;Lam/b;)V
    .registers 2

    invoke-static {p0, p1}, Lbf/c;->c(Ljava/lang/String;Lam/b;)V

    invoke-static {}, Lbf/c;->a()V

    return-void
.end method

.method public static c(Ljava/lang/String;Lam/b;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_d
    invoke-virtual {p1, v2}, Lam/b;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_20

    move-result-object v0

    :cond_14
    :goto_14
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lak/m;->a(Ljava/lang/String;[B)Z

    return-void

    :catch_20
    move-exception v1

    goto :goto_14
.end method
