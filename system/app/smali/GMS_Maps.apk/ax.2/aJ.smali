.class public Lax/aJ;
.super Lat/a;


# instance fields
.field private a:J

.field private b:Z

.field private c:Lax/aK;


# direct methods
.method public constructor <init>(JLax/aK;)V
    .registers 4

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-wide p1, p0, Lax/aJ;->a:J

    iput-object p3, p0, Lax/aJ;->c:Lax/aK;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x6d

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/bx;->aj:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/t;->o:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-wide v2, p0, Lax/aJ;->a:J

    invoke-virtual {v1, v4, v2, v3}, Lam/b;->a(IJ)V

    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILam/b;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->ak:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    packed-switch v1, :pswitch_data_26

    const/4 v1, 0x0

    iput-boolean v1, p0, Lax/aJ;->b:Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_22
    return v3

    :pswitch_23
    iput-boolean v3, p0, Lax/aJ;->b:Z

    goto :goto_22

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lax/aJ;->c:Lax/aK;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lax/aJ;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/aJ;->c:Lax/aK;

    invoke-interface {v0}, Lax/aK;->a()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lax/aJ;->c:Lax/aK;

    invoke-interface {v0}, Lax/aK;->b()V

    goto :goto_d
.end method
