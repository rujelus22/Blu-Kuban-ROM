.class public Lcom/google/googlenav/ui/wizard/dc;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field protected a:Lcom/google/googlenav/ui/wizard/df;

.field private g:Lbb/o;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method private static a(Lam/b;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "HOME"

    :cond_9
    return-object v0
.end method

.method private a(Lax/j;)Ljava/util/Hashtable;
    .registers 12

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Lax/j;->e()Lam/b;

    move-result-object v4

    invoke-virtual {v4, v8}, Lam/b;->l(I)I

    move-result v1

    move v0, v2

    :goto_12
    if-ge v0, v1, :cond_25

    invoke-virtual {v4, v8, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-static {v5, v7, v7}, Lcom/google/googlenav/ui/wizard/dc;->a(Lam/b;ZZ)V

    invoke-static {v5}, Lcom/google/googlenav/ui/wizard/dc;->a(Lam/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_25
    invoke-virtual {v4, v9}, Lam/b;->l(I)I

    move-result v5

    move v1, v2

    :goto_2a
    if-ge v1, v5, :cond_4e

    invoke-virtual {v4, v9, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/dc;->a(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    if-eqz v0, :cond_43

    invoke-static {v0, v7, v2}, Lcom/google/googlenav/ui/wizard/dc;->a(Lam/b;ZZ)V

    :goto_3f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_43
    invoke-static {v6, v2, v2}, Lcom/google/googlenav/ui/wizard/dc;->a(Lam/b;ZZ)V

    invoke-static {v6}, Lcom/google/googlenav/ui/wizard/dc;->a(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_4e
    return-object v3
.end method

.method private static a(Lam/b;ZZ)V
    .registers 4

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lam/b;->b(IZ)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2}, Lam/b;->b(IZ)V

    return-void
.end method

.method private static a(Ljava/util/Vector;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->E:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dc;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dc;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dc;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/dc;->h:Z

    return p1
.end method

.method private g()Ljava/util/Vector;
    .registers 8

    const/16 v6, 0x203

    const/4 v5, 0x2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dc;->h:Z

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->J()Lax/k;

    move-result-object v0

    invoke-virtual {v0}, Lax/k;->k()Lax/j;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dc;->a(Lax/j;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_69

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    const/16 v3, 0x204

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->R:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_5f
    const/16 v0, 0x840

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v1, v0, v3, v4}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;Ljava/util/Vector;ILjava/lang/String;I)V

    :cond_69
    :goto_69
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_9b

    const/4 v0, 0x1

    :goto_70
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dc;->i:Z

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_96

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->R:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_96
    return-object v1

    :cond_97
    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dc;->a(Ljava/util/Vector;)V

    goto :goto_69

    :cond_9b
    const/4 v0, 0x0

    goto :goto_70
.end method


# virtual methods
.method public W_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lcom/google/googlenav/ui/wizard/df;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lcom/google/googlenav/ui/wizard/df;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dc;->a()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/ui/wizard/df;)V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dc;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/dc;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dc;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/dc;->e:I

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/df;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lcom/google/googlenav/ui/wizard/df;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dc;->l()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_42

    :goto_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dc;->e:I

    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    add-int/lit8 v0, p2, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    invoke-virtual {v2, v0}, Lbb/o;->a(I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    goto :goto_8

    :cond_15
    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    check-cast v0, Lam/b;

    if-nez v0, :cond_1d

    move v0, v1

    goto :goto_8

    :cond_1d
    new-instance v1, Lcom/google/googlenav/ui/wizard/du;

    invoke-direct {v1}, Lcom/google/googlenav/ui/wizard/du;-><init>()V

    new-instance v2, Lcom/google/googlenav/h;

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Lam/b;)V

    iput-object v2, v1, Lcom/google/googlenav/ui/wizard/du;->a:Lcom/google/googlenav/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/L;->m()LaY/a;

    move-result-object v0

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/du;->d:LaY/a;

    new-instance v0, Lcom/google/googlenav/ui/wizard/de;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/de;-><init>(Lcom/google/googlenav/ui/wizard/dc;)V

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/du;->b:Lcom/google/googlenav/ui/wizard/dt;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/du;)V

    goto :goto_4

    :pswitch_data_42
    .packed-switch 0x840
        :pswitch_9
    .end packed-switch
.end method

.method protected b()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dc;->e:I

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dc;->h:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dc;->i:Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->J()Lax/k;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/dd;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/dd;-><init>(Lcom/google/googlenav/ui/wizard/dc;)V

    invoke-virtual {v0, v1}, Lax/k;->a(Lax/l;)V

    :cond_20
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dc;->e()V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lcom/google/googlenav/ui/wizard/df;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lcom/google/googlenav/ui/wizard/df;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/df;->a()V

    :cond_a
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dc;->a:Lcom/google/googlenav/ui/wizard/df;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method e()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dc;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dc;->f()Lbb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    :goto_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v0, :cond_4d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    :goto_33
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_6

    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dc;->g()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbb/o;->a(Ljava/util/Vector;)V

    goto :goto_1e

    :cond_45
    new-instance v0, Lcom/google/googlenav/ui/view/android/bh;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    goto :goto_33

    :cond_4d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bx;->v()V

    goto :goto_6
.end method

.method protected f()Lbb/o;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Lbb/o;

    const/4 v1, 0x0

    const/16 v2, 0x201

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dc;->g()Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dc;->g:Lbb/o;

    return-object v0
.end method

.method public o()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dc;->e:I

    return-void
.end method
