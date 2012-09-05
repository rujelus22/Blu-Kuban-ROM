.class public final Lax/be;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0, p0}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_16

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_16

    invoke-static {v0}, Lar/e;->a([B)I

    move-result p1

    :cond_16
    return p1
.end method

.method public static a(Ljava/lang/String;ILax/bj;)V
    .registers 5

    new-instance v0, Lax/bf;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lax/bf;-><init>(Lap/c;Ljava/lang/String;ILax/bj;)V

    invoke-virtual {v0}, Lax/bf;->g()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILax/bk;)V
    .registers 5

    new-instance v0, Lax/bh;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lax/bh;-><init>(Lap/c;Ljava/lang/String;ILax/bk;)V

    invoke-virtual {v0}, Lax/bh;->g()V

    return-void
.end method

.method public static a(Ljava/lang/String;ZLax/bi;)V
    .registers 5

    new-instance v0, Lax/bg;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lax/bg;-><init>(Lap/c;Ljava/lang/String;ZLax/bi;)V

    invoke-virtual {v0}, Lax/bg;->g()V

    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-static {p1}, Lar/e;->a(I)[B

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void
.end method
