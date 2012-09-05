.class public Lcom/google/googlenav/ui/wizard/br;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Ljava/util/Date;

.field private g:I

.field private h:Lcom/google/googlenav/ui/wizard/bs;

.field private i:Lbb/i;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/br;->h:Lcom/google/googlenav/ui/wizard/bs;

    return-void
.end method


# virtual methods
.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/br;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/br;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/br;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/br;->e:I

    return v0
.end method

.method public a(Lau/l;)V
    .registers 3

    invoke-virtual {p1}, Lau/l;->c()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/br;->a:Ljava/util/Date;

    invoke-virtual {p1}, Lau/l;->d()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/br;->g:I

    return-void
.end method

.method public a(Lau/l;Lcom/google/googlenav/ui/wizard/bs;)V
    .registers 3

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/br;->h:Lcom/google/googlenav/ui/wizard/bs;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/br;->a(Lau/l;)V

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x3

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/br;->a:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sparse-switch p1, :sswitch_data_54

    iput v3, p0, Lcom/google/googlenav/ui/wizard/br;->e:I

    const/4 v0, 0x0

    :goto_11
    return v0

    :sswitch_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/br;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/br;->i:Lbb/i;

    invoke-virtual {v1}, Lbb/i;->g()Lau/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/br;->a(Lau/l;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/br;->h:Lcom/google/googlenav/ui/wizard/bs;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/br;->h:Lcom/google/googlenav/ui/wizard/bs;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/br;->f()Lau/l;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/ui/wizard/bs;->a(Lau/l;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/br;->h:Lcom/google/googlenav/ui/wizard/bs;

    :cond_2e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/br;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->M()V

    iput v3, p0, Lcom/google/googlenav/ui/wizard/br;->e:I

    goto :goto_11

    :sswitch_36
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/br;->o()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/googlenav/ui/wizard/br;->e:I

    goto :goto_11

    :sswitch_3d
    iput p2, p0, Lcom/google/googlenav/ui/wizard/br;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/br;->e()V

    new-instance v1, Lcom/google/googlenav/ui/view/android/i;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/br;->i:Lbb/i;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/view/android/i;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/br;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/br;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    iput v3, p0, Lcom/google/googlenav/ui/wizard/br;->e:I

    goto :goto_11

    nop

    :sswitch_data_54
    .sparse-switch
        0xe3 -> :sswitch_3d
        0x1f4 -> :sswitch_36
        0x1f7 -> :sswitch_12
    .end sparse-switch
.end method

.method protected b()V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/br;->e:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/br;->e()V

    new-instance v0, Lcom/google/googlenav/ui/view/android/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/br;->i:Lbb/i;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/i;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/br;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/br;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method protected e()V
    .registers 7

    const/4 v1, 0x1

    const/16 v5, 0xe3

    new-instance v3, Ljava/util/Vector;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0xd9

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/ui/bg;->at:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x3a

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/ui/bg;->at:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x1eb

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/googlenav/ui/bg;->at:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbb/i;

    const/16 v2, 0x4c3

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/br;->a:Ljava/util/Date;

    iget v5, p0, Lcom/google/googlenav/ui/wizard/br;->g:I

    invoke-direct/range {v0 .. v5}, Lbb/i;-><init>(ILjava/lang/String;Ljava/util/Vector;Ljava/util/Date;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/br;->i:Lbb/i;

    return-void
.end method

.method public f()Lau/l;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/br;->a:Ljava/util/Date;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/br;->g:I

    invoke-static {v0, v1}, Lau/l;->a(Ljava/util/Date;I)Lau/l;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/br;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    return-void
.end method
