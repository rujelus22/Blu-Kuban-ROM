.class public Lcom/google/googlenav/ui/wizard/gP;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Lcom/google/googlenav/android/V;
.implements Lcom/google/googlenav/login/i;


# instance fields
.field private final a:Lay/a;

.field private final g:Landroid/content/Context;

.field private h:Lbb/o;

.field private i:Lcom/google/googlenav/ui/wizard/gT;

.field private j:I

.field private k:LaX/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lay/a;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gP;->a:Lay/a;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/gP;->g:Landroid/content/Context;

    return-void
.end method

.method private a(Lax/by;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->k:LaX/a;

    invoke-virtual {v0}, LaX/a;->a()Lax/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v2, Lcom/google/googlenav/ui/wizard/gQ;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/googlenav/ui/wizard/gQ;-><init>(Lcom/google/googlenav/ui/wizard/gP;Lax/by;Lax/bz;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Lax/by;Lcom/google/googlenav/ui/wizard/hz;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/Vector;)V
    .registers 6

    sget-object v0, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lax/by;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->k:LaX/a;

    invoke-virtual {v0}, LaX/a;->a()Lax/bz;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lax/o;

    invoke-direct {v2, p1}, Lax/o;-><init>(Lax/by;)V

    invoke-virtual {v1, v2}, Lat/h;->c(Lat/g;)V

    invoke-virtual {p1}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/bz;->a(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gP;->f()V

    return-void
.end method

.method private g()Lbb/o;
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gP;->h()Ljava/util/Vector;

    move-result-object v4

    const/16 v2, 0x4a

    new-instance v0, Lbb/o;

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    return-object v0
.end method

.method private h()Ljava/util/Vector;
    .registers 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x47

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/gP;->a(Ljava/lang/String;ILjava/util/Vector;)V

    const/16 v1, 0x48

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/gP;->a(Ljava/lang/String;ILjava/util/Vector;)V

    new-instance v1, LaX/i;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gP;->a:Lay/a;

    const/4 v3, 0x0

    sget v4, Lcom/google/googlenav/ui/bw;->bt:I

    invoke-direct {v1, v2, v3, v4}, LaX/i;-><init>(Lay/a;Lax/aS;I)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gP;->k:LaX/a;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/gP;->j:I

    new-instance v4, Lcom/google/googlenav/ui/a;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/a;-><init>(Lcom/google/googlenav/ui/p;)V

    invoke-static {v0, v2, v1, v3, v4}, Lax/S;->a(Ljava/util/Vector;LaX/a;LaX/i;ILcom/google/googlenav/ui/a;)I

    return-object v0
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 1

    return-void
.end method

.method public F_()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gP;->a()V

    return-void
.end method

.method public W_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->i:Lcom/google/googlenav/ui/wizard/gT;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->i:Lcom/google/googlenav/ui/wizard/gT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->k:LaX/a;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gP;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->i:Lcom/google/googlenav/ui/wizard/gT;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->k:LaX/a;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gP;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gP;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/gP;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gP;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/gP;->e:I

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 16

    const/4 v2, 0x0

    if-eqz p2, :cond_33

    const-string v0, "INVITE_EMAILS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_f
    array-length v4, v1

    if-ge v0, v4, :cond_1a

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1a
    iget-object v10, p0, Lcom/google/googlenav/ui/wizard/gP;->i:Lcom/google/googlenav/ui/wizard/gT;

    new-instance v0, Lcom/google/googlenav/ui/wizard/gS;

    move-object v1, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/ui/wizard/gS;-><init>(Lcom/google/googlenav/ui/wizard/gP;Laf/h;Ljava/util/Vector;Ljava/util/Vector;Laf/h;Laf/h;Laf/h;Laf/h;Laf/h;Lcom/google/googlenav/ui/wizard/gT;Ljava/util/Vector;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gP;->a()V

    :cond_33
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/gT;LaX/a;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gP;->i:Lcom/google/googlenav/ui/wizard/gT;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gP;->k:LaX/a;

    iput p3, p0, Lcom/google/googlenav/ui/wizard/gP;->j:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gP;->l()V

    return-void
.end method

.method public final a(IILjava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->g:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "inviteType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V

    :goto_1c
    return v3

    :pswitch_1d
    check-cast p3, Lax/by;

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/wizard/gP;->a(Lax/by;)V

    goto :goto_1c

    :pswitch_23
    check-cast p3, Lax/by;

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/wizard/gP;->b(Lax/by;)V

    goto :goto_1c

    nop

    :pswitch_data_2a
    .packed-switch 0x14c
        :pswitch_1d
        :pswitch_23
    .end packed-switch
.end method

.method public ab_()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gP;->e:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gP;->f()V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->h:Lbb/o;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->i:Lcom/google/googlenav/ui/wizard/gT;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->i:Lcom/google/googlenav/ui/wizard/gT;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gT;->a()V

    :cond_c
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->i:Lcom/google/googlenav/ui/wizard/gT;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->k:LaX/a;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->h:Lbb/o;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->h:Lbb/o;

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gP;->g()Lbb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->h:Lbb/o;

    :goto_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v0, :cond_48

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/google/googlenav/ui/view/android/bj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->h:Lbb/o;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->f:Lcom/google/googlenav/ui/view/android/bs;

    :goto_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :goto_33
    return-void

    :cond_34
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gP;->h()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->h:Lbb/o;

    invoke-virtual {v1, v0}, Lbb/o;->a(Ljava/util/Vector;)V

    goto :goto_17

    :cond_3e
    new-instance v0, Lcom/google/googlenav/ui/view/android/bh;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gP;->h:Lbb/o;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->f:Lcom/google/googlenav/ui/view/android/bs;

    goto :goto_2e

    :cond_48
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gP;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ay;->v()V

    goto :goto_33
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public o()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gP;->e:I

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->o()V

    return-void
.end method
