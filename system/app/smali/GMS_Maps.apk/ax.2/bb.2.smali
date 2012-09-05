.class public Lax/bb;
.super Lat/a;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:Lax/bc;

.field private final e:Lax/bd;

.field private f:Ljava/lang/String;

.field private g:Lam/b;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZIILax/bc;Lax/bd;)V
    .registers 6

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-boolean p1, p0, Lax/bb;->a:Z

    iput p2, p0, Lax/bb;->b:I

    iput p3, p0, Lax/bb;->c:I

    iput-object p4, p0, Lax/bb;->d:Lax/bc;

    iput-object p5, p0, Lax/bb;->e:Lax/bd;

    return-void
.end method

.method private b(Lam/b;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/dT;->f:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lax/bb;->a:Z

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    iget-object v1, p0, Lax/bb;->g:Lam/b;

    if-eqz v1, :cond_17

    const/4 v1, 0x3

    iget-object v2, p0, Lax/bb;->g:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_17
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lam/b;->b(ILam/b;)V

    return-void
.end method

.method private c(Lam/b;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/dT;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lax/bb;->a:Z

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    iget-object v1, p0, Lax/bb;->f:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lax/bb;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f

    const/4 v1, 0x2

    iget-object v2, p0, Lax/bb;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_1f
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lam/b;->b(ILam/b;)V

    return-void
.end method

.method private d(Lam/b;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/dT;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lax/bb;->a:Z

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    const/4 v1, 0x2

    iget v2, p0, Lax/bb;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lam/b;->b(ILam/b;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x53

    return v0
.end method

.method public a(Lam/b;)V
    .registers 2

    iput-object p1, p0, Lax/bb;->g:Lam/b;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/dT;->j:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget v1, p0, Lax/bb;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    invoke-direct {p0, v0}, Lax/bb;->d(Lam/b;)V

    :cond_f
    :goto_f
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_15
    iget v1, p0, Lax/bb;->c:I

    if-nez v1, :cond_1d

    invoke-direct {p0, v0}, Lax/bb;->c(Lam/b;)V

    goto :goto_f

    :cond_1d
    iget v1, p0, Lax/bb;->c:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_f

    invoke-direct {p0, v0}, Lax/bb;->b(Lam/b;)V

    goto :goto_f
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lax/bb;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/dT;->k:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    iput v1, p0, Lax/bb;->h:I

    const/4 v1, 0x3

    invoke-static {v0, v1, v3}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lax/bb;->i:Ljava/lang/String;

    const-string v1, ""

    iget-object v2, p0, Lax/bb;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lax/bb;->i:Ljava/lang/String;

    if-nez v1, :cond_2a

    :cond_23
    const/4 v1, 0x4

    invoke-static {v0, v1, v3}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lax/bb;->i:Ljava/lang/String;

    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    return v3
.end method

.method public b()V
    .registers 3

    iget v0, p0, Lax/bb;->h:I

    packed-switch v0, :pswitch_data_32

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lax/bb;->e:Lax/bd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lax/bb;->e:Lax/bd;

    iget-object v1, p0, Lax/bb;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lax/bd;->a(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lax/bb;->d:Lax/bc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lax/bb;->d:Lax/bc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lax/bc;->a(I)V

    goto :goto_5

    :pswitch_1c
    iget-object v0, p0, Lax/bb;->d:Lax/bc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lax/bb;->d:Lax/bc;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lax/bc;->a(I)V

    goto :goto_5

    :pswitch_27
    iget-object v0, p0, Lax/bb;->d:Lax/bc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lax/bb;->d:Lax/bc;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lax/bc;->a(I)V

    goto :goto_5

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_6
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
