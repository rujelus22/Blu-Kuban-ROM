.class public LaT/a;
.super Lat/a;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:LaJ/B;

.field private e:Lt/y;

.field private final f:LaJ/H;

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Z

.field private k:LaT/b;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;[BLaJ/B;Lt/y;ZILaJ/H;IIIILjava/lang/String;Ljava/lang/String;LaT/b;)V
    .registers 16

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p8, p0, LaT/a;->f:LaJ/H;

    iput p9, p0, LaT/a;->g:I

    iput p10, p0, LaT/a;->h:I

    iput p1, p0, LaT/a;->a:I

    iput-object p2, p0, LaT/a;->b:Ljava/lang/String;

    iput-object p3, p0, LaT/a;->c:[B

    iput-object p4, p0, LaT/a;->d:LaJ/B;

    iput-object p5, p0, LaT/a;->e:Lt/y;

    iput-boolean p6, p0, LaT/a;->j:Z

    iput p7, p0, LaT/a;->i:I

    iput-object p14, p0, LaT/a;->q:Ljava/lang/String;

    iput-object p15, p0, LaT/a;->k:LaT/b;

    iput p11, p0, LaT/a;->n:I

    iput p12, p0, LaT/a;->o:I

    iput-object p13, p0, LaT/a;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BLaJ/B;Lt/y;ZILaJ/H;IILjava/lang/String;LaT/b;)V
    .registers 13

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p8, p0, LaT/a;->f:LaJ/H;

    iput p9, p0, LaT/a;->g:I

    iput p10, p0, LaT/a;->h:I

    iput p1, p0, LaT/a;->a:I

    iput-object p2, p0, LaT/a;->b:Ljava/lang/String;

    iput-object p3, p0, LaT/a;->c:[B

    iput-object p4, p0, LaT/a;->d:LaJ/B;

    iput-object p5, p0, LaT/a;->e:Lt/y;

    iput-boolean p6, p0, LaT/a;->j:Z

    iput p7, p0, LaT/a;->i:I

    iput-object p11, p0, LaT/a;->q:Ljava/lang/String;

    iput-object p12, p0, LaT/a;->k:LaT/b;

    return-void
.end method

.method private static a(I)Z
    .registers 2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/4 v0, 0x6

    if-eq p0, v0, :cond_9

    const/4 v0, 0x7

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x4f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 11

    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    new-instance v0, Lam/b;

    sget-object v1, LbD/eo;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget v1, p0, LaT/a;->a:I

    invoke-virtual {v0, v6, v1}, Lam/b;->h(II)V

    iget-object v1, p0, LaT/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, LaT/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_1a
    iget-object v1, p0, LaT/a;->c:[B

    if-eqz v1, :cond_24

    const/4 v1, 0x7

    iget-object v2, p0, LaT/a;->c:[B

    invoke-virtual {v0, v1, v2}, Lam/b;->b(I[B)V

    :cond_24
    iget-boolean v1, p0, LaT/a;->j:Z

    invoke-virtual {v0, v7, v1}, Lam/b;->b(IZ)V

    const/16 v1, 0x8

    iget v2, p0, LaT/a;->i:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget-object v1, p0, LaT/a;->q:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const/16 v1, 0xb

    iget-object v2, p0, LaT/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_3f
    iget-object v1, p0, LaT/a;->d:LaJ/B;

    invoke-static {v1}, LaJ/C;->d(LaJ/B;)Lam/b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, LaT/a;->f:LaJ/H;

    invoke-virtual {v1}, LaJ/H;->a()LaJ/B;

    move-result-object v1

    iget v2, p0, LaT/a;->g:I

    iget v3, p0, LaT/a;->h:I

    iget-object v4, p0, LaT/a;->f:LaJ/H;

    invoke-virtual {v4}, LaJ/H;->b()LaJ/Y;

    move-result-object v4

    invoke-virtual {v4}, LaJ/Y;->a()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, LaT/a;->e:Lt/y;

    if-eqz v1, :cond_82

    new-instance v1, Lam/b;

    sget-object v2, LbD/dH;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-object v2, p0, LaT/a;->e:Lt/y;

    invoke-virtual {v2}, Lt/y;->a()Lt/r;

    move-result-object v2

    invoke-virtual {v2}, Lt/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    :cond_82
    new-instance v1, Lam/b;

    sget-object v2, LbD/eo;->b:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget v2, p0, LaT/a;->a:I

    invoke-static {v2}, LaT/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_cd

    iget v2, p0, LaT/a;->n:I

    invoke-virtual {v1, v6, v2}, Lam/b;->h(II)V

    iget v2, p0, LaT/a;->o:I

    invoke-virtual {v1, v7, v2}, Lam/b;->h(II)V

    iget-object v2, p0, LaT/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_a0
    :goto_a0
    invoke-virtual {v1, v5}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_aa

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    :cond_aa
    iget-object v1, p0, LaT/a;->s:[B

    if-eqz v1, :cond_b8

    iget-object v1, p0, LaT/a;->s:[B

    array-length v1, v1

    if-lez v1, :cond_b8

    iget-object v1, p0, LaT/a;->s:[B

    invoke-virtual {v0, v8, v1}, Lam/b;->b(I[B)V

    :cond_b8
    iget-object v1, p0, LaT/a;->r:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c7

    const/16 v1, 0xa

    iget-object v2, p0, LaT/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_c7
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_cd
    iget v2, p0, LaT/a;->a:I

    if-ne v2, v8, :cond_a0

    iget-object v2, p0, LaT/a;->p:Ljava/lang/String;

    if-eqz v2, :cond_a0

    iget-object v2, p0, LaT/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lam/b;->b(ILjava/lang/String;)V

    goto :goto_a0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    sget-object v0, LbD/eo;->c:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lam/g;->c(Lam/b;II)I

    move-result v1

    iput v1, p0, LaT/a;->l:I

    iput v2, p0, LaT/a;->m:I

    invoke-virtual {v0, v4}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, LaT/a;->m:I

    :cond_21
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget v1, p0, LaT/a;->m:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(I)V

    return v3
.end method

.method public b()V
    .registers 3

    iget v0, p0, LaT/a;->l:I

    packed-switch v0, :pswitch_data_1c

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, LaT/a;->k:LaT/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, LaT/a;->k:LaT/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LaT/b;->a(I)V

    goto :goto_5

    :pswitch_11
    iget-object v0, p0, LaT/a;->k:LaT/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, LaT/a;->k:LaT/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaT/b;->a(I)V

    goto :goto_5

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_11
    .end packed-switch
.end method
