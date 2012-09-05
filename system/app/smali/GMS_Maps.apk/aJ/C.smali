.class public LaJ/C;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 3

    const v1, 0x15752a00

    const v0, 0xaba9500

    if-le p0, v0, :cond_a

    sub-int/2addr p0, v1

    :cond_9
    :goto_9
    return p0

    :cond_a
    const v0, -0xaba9500

    if-ge p0, v0, :cond_9

    add-int/2addr p0, v1

    goto :goto_9
.end method

.method public static a(II)I
    .registers 5

    const v2, 0xaba9500

    add-int v0, p0, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_10

    add-int/2addr v0, v2

    :cond_10
    invoke-static {v0}, LaJ/C;->a(I)I

    move-result v0

    return v0
.end method

.method public static a(Lam/b;)LaJ/B;
    .registers 4

    new-instance v0, LaJ/B;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    return-object v0
.end method

.method public static a(LaJ/B;)Lam/b;
    .registers 5

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0x16

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1}, LaJ/B;->a(LaJ/Y;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lam/b;->h(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1}, LaJ/B;->b(LaJ/Y;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lam/b;->h(II)V

    const/4 v2, 0x3

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lam/b;->h(II)V

    return-object v0
.end method

.method public static a(LaJ/B;III)Lam/b;
    .registers 7

    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->g:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-static {p0}, LaJ/C;->b(LaJ/B;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lam/b;->h(II)V

    if-lez p3, :cond_1d

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3}, Lam/b;->h(II)V

    :cond_1d
    return-object v0
.end method

.method public static b(Lam/b;)LaJ/B;
    .registers 4

    new-instance v0, LaJ/B;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    return-object v0
.end method

.method public static b(LaJ/B;)Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    return-object v0
.end method

.method public static c(Lam/b;)LaJ/B;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    :pswitch_c
    goto :goto_3

    :pswitch_d
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->a(Lam/b;)LaJ/B;

    move-result-object v0

    goto :goto_3

    :pswitch_17
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->b(Lam/b;)LaJ/B;

    move-result-object v0

    goto :goto_3

    :pswitch_22
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->e(Lam/b;)LaJ/B;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method

.method public static c(LaJ/B;)Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    return-object v0
.end method

.method public static d(Lam/b;)LaJ/Y;
    .registers 3

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    goto :goto_f
.end method

.method public static d(LaJ/B;)Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/16 v1, 0xe

    invoke-static {p0}, LaJ/C;->c(LaJ/B;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    return-object v0
.end method

.method public static e(Lam/b;)LaJ/B;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v2

    invoke-static {v0, v1, v2}, LaJ/B;->a(III)LaJ/B;

    move-result-object v0

    return-object v0
.end method
