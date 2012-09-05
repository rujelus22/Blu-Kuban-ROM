.class public Lcom/google/googlenav/ui/wizard/bV;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/bY;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lat/d;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bV;->i:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bV;->j:Z

    new-instance v0, Lcom/google/googlenav/ui/wizard/bX;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bX;-><init>(Lcom/google/googlenav/ui/wizard/bV;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->k:Lat/d;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bV;)Lcom/google/googlenav/ui/wizard/bY;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bV;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/bV;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/bV;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bV;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/bV;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/bV;->j:Z

    return p1
.end method

.method private e()V
    .registers 12

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/google/googlenav/ui/wizard/bW;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/bW;-><init>(Lcom/google/googlenav/ui/wizard/bV;)V

    new-instance v0, Lax/bb;

    const/4 v5, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lax/bb;-><init>(ZIILax/bc;Lax/bd;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lax/bb;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bV;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x35a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/bV;->k:Lat/d;

    sget-object v7, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v8, 0x0

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method


# virtual methods
.method public W_()V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bV;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/bV;->i:Z

    iget-boolean v4, p0, Lcom/google/googlenav/ui/wizard/bV;->j:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bV;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/bV;->g:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/googlenav/ui/wizard/bV;->i:Z

    iput-boolean v4, p0, Lcom/google/googlenav/ui/wizard/bV;->j:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bV;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bV;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bV;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bV;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bV;->e:I

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/bY;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bV;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/bV;->i:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/bV;->j:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bV;->l()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_2c

    const/4 v0, 0x0

    :goto_5
    return v0

    :pswitch_6
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bV;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bV;->e()V

    goto :goto_5

    :pswitch_e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/bY;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bV;->a()V

    goto :goto_5

    :pswitch_17
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/bV;->i:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bV;->g:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/googlenav/ui/wizard/bY;->a(Ljava/lang/String;)V

    :goto_22
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bV;->a()V

    goto :goto_5

    :cond_26
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/bY;->b()V

    goto :goto_22

    :pswitch_data_2c
    .packed-switch 0x6a9
        :pswitch_6
        :pswitch_e
        :pswitch_17
    .end packed-switch
.end method

.method protected b()V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bV;->e:I

    new-instance v0, Lbb/u;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->h:Ljava/lang/String;

    const/16 v2, 0x352

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbb/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bU;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/view/android/bU;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/bV;->i:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/bV;->j:Z

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public o()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bV;->i:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bV;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/bY;->a(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bV;->a()V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bV;->a:Lcom/google/googlenav/ui/wizard/bY;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/bY;->b()V

    goto :goto_b
.end method
