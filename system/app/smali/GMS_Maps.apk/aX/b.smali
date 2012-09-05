.class LaX/b;
.super Lap/b;


# instance fields
.field final synthetic a:Lax/bz;

.field final synthetic e:LaX/a;


# direct methods
.method constructor <init>(LaX/a;Lap/c;Lax/bz;)V
    .registers 4

    iput-object p1, p0, LaX/b;->e:LaX/a;

    iput-object p3, p0, LaX/b;->a:Lax/bz;

    invoke-direct {p0, p2}, Lap/b;-><init>(Lap/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v0, "SAVED_BGSF_"

    iget-object v2, p0, LaX/b;->a:Lax/bz;

    if-nez v2, :cond_12

    invoke-interface {v1, v0}, Lak/m;->b(Ljava/lang/String;)Z

    :goto_11
    return-void

    :cond_12
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_1c
    iget-object v4, p0, LaX/b;->a:Lax/bz;

    invoke-virtual {v4}, Lax/bz;->c()Lam/b;

    move-result-object v4

    invoke-static {v3, v4}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2c} :catch_2d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_2c} :catch_34

    goto :goto_11

    :catch_2d
    move-exception v0

    const-string v2, "-Error saving suggested friends"

    invoke-static {v1, v0, v2}, LaX/a;->a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_11

    :catch_34
    move-exception v0

    const-string v2, "-OOME saving suggested friends"

    invoke-static {v1, v0, v2}, LaX/a;->a(Lak/m;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_11
.end method
