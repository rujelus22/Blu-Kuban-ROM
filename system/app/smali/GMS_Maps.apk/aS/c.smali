.class public LaS/c;
.super Lat/a;


# instance fields
.field private a:LaS/d;


# direct methods
.method public constructor <init>(LaS/d;)V
    .registers 2

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, LaS/c;->a:LaS/d;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x47

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/dT;->h:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lam/b;->a(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v7, 0x7

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, LaS/c;->a:LaS/d;

    if-nez v3, :cond_a

    :goto_9
    return v1

    :cond_a
    sget-object v3, LbD/dT;->i:Lam/e;

    invoke-static {v3, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v3

    invoke-static {v3, v2, v6}, Lam/g;->c(Lam/b;II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lam/b;->h(I)Lam/b;

    move-result-object v5

    invoke-static {v5, v2, v6}, Lam/g;->c(Lam/b;II)I

    move-result v5

    packed-switch v4, :pswitch_data_46

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/login/g;->a(I)V

    iget-object v3, p0, LaS/c;->a:LaS/d;

    invoke-interface {v3, v0, v1}, LaS/d;->a(Ljava/lang/String;Z)V

    :goto_2c
    move v1, v2

    goto :goto_9

    :pswitch_2e
    invoke-virtual {v3, v7}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v3, v7}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bw;->d(Lam/b;)Z

    move-result v1

    invoke-static {v0}, Lcom/google/googlenav/bw;->a(Lam/b;)Ljava/lang/String;

    move-result-object v0

    :cond_40
    iget-object v3, p0, LaS/c;->a:LaS/d;

    invoke-interface {v3, v0, v1}, LaS/d;->a(Ljava/lang/String;Z)V

    goto :goto_2c

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2e
    .end packed-switch
.end method
