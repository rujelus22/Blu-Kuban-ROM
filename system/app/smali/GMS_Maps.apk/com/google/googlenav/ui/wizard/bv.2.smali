.class public Lcom/google/googlenav/ui/wizard/bv;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/bw;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method private e()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bv;->g:I

    if-nez v0, :cond_7

    const/16 v0, 0x17

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x4

    goto :goto_6
.end method


# virtual methods
.method public W_()V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bv;->g:I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bv;->a:Lcom/google/googlenav/ui/wizard/bw;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bv;->a()V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/bv;->a(ILcom/google/googlenav/ui/wizard/bw;)V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public a(ILcom/google/googlenav/ui/wizard/bw;)V
    .registers 3

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bv;->a:Lcom/google/googlenav/ui/wizard/bw;

    iput p1, p0, Lcom/google/googlenav/ui/wizard/bv;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bv;->l()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5

    packed-switch p1, :pswitch_data_28

    :cond_3
    :goto_3
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bv;->a:Lcom/google/googlenav/ui/wizard/bw;

    check-cast p3, Lcom/google/googlenav/ui/wizard/bx;

    invoke-interface {v0, p3}, Lcom/google/googlenav/ui/wizard/bw;->a(Lcom/google/googlenav/ui/wizard/bx;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bv;->a()V

    goto :goto_3

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bv;->o()V

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bv;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    check-cast p3, Ljava/lang/String;

    invoke-interface {v0, p3}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_23
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bv;->o()V

    goto :goto_3

    nop

    :pswitch_data_28
    .packed-switch 0xb
        :pswitch_5
        :pswitch_10
        :pswitch_3
        :pswitch_23
    .end packed-switch
.end method

.method protected b()V
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bv;->e()I

    move-result v0

    const/16 v1, 0x19f

    new-instance v2, Lbb/s;

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/google/googlenav/ui/wizard/bv;->g:I

    invoke-direct {v2, v0, v1, v3}, Lbb/s;-><init>(ILjava/lang/String;I)V

    const/16 v1, 0x3f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    const/16 v3, 0x40

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/bm;

    invoke-direct {v4}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbb/s;->a(Lcom/google/googlenav/ui/bl;)V

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbb/s;->a(Lcom/google/googlenav/ui/bl;)V

    const/16 v1, 0x17

    if-eq v0, v1, :cond_64

    new-instance v0, Lcom/google/googlenav/ui/view/android/U;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/view/android/U;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bv;->f:Lcom/google/googlenav/ui/view/android/bs;

    :goto_5e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bv;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void

    :cond_64
    new-instance v0, Lcom/google/googlenav/ui/view/android/I;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/view/android/I;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bv;->f:Lcom/google/googlenav/ui/view/android/bs;

    goto :goto_5e
.end method

.method protected c()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bv;->a:Lcom/google/googlenav/ui/wizard/bw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bv;->a:Lcom/google/googlenav/ui/wizard/bw;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/bw;->a()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bv;->a:Lcom/google/googlenav/ui/wizard/bw;

    return-void
.end method

.method public o()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bv;->a()V

    return-void
.end method
