.class public Lcom/google/googlenav/ui/wizard/fu;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements LaM/l;
.implements Lcom/google/googlenav/ui/wizard/fN;


# instance fields
.field protected a:I

.field private g:Lcom/google/googlenav/ah;

.field private h:Lcom/google/googlenav/L;

.field private i:LaY/Y;

.field private j:Z

.field private k:Lcom/google/googlenav/ui/bF;

.field private l:Ljava/lang/String;

.field private m:LaY/aG;

.field private n:Lcom/google/googlenav/ui/view/dialog/aK;

.field private o:Lcom/google/googlenav/ah;

.field private p:Z

.field private q:LaM/i;

.field private r:Lcom/google/googlenav/login/i;


# direct methods
.method private D()V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bw()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->E()V

    :goto_b
    return-void

    :cond_c
    new-instance v2, Lcom/google/googlenav/ui/wizard/fE;

    new-instance v0, Lcom/google/googlenav/ui/wizard/fv;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fv;-><init>(Lcom/google/googlenav/ui/wizard/fu;)V

    invoke-direct {v2, v0}, Lcom/google/googlenav/ui/wizard/fE;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/fD;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    new-instance v3, Lcom/google/googlenav/ui/wizard/fw;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/fw;-><init>(Lcom/google/googlenav/ui/wizard/fu;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/fD;-><init>(Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/fE;Lcom/google/googlenav/ui/wizard/fM;)V

    new-instance v1, Lcom/google/googlenav/f;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    goto :goto_b
.end method

.method private E()V
    .registers 10

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v0, :cond_3f

    const-string v0, "rr"

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    invoke-interface {v1}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v1

    invoke-virtual {v1}, Lay/p;->b()Lay/r;

    move-result-object v1

    new-instance v2, LaS/e;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    new-instance v4, Lcom/google/googlenav/ui/bF;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bw;->t()Lah/f;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/googlenav/ui/bF;-><init>(Lay/r;Lah/f;)V

    invoke-direct {v2, p0, v3, v4, v0}, LaS/e;-><init>(Lcom/google/googlenav/ui/wizard/fu;Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;Z)V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_3f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->H()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v0

    invoke-virtual {v0}, Lay/p;->b()Lay/r;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, LaS/e;

    new-instance v2, Lcom/google/googlenav/ui/bF;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->t()Lah/f;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/googlenav/ui/bF;-><init>(Lay/r;Lah/f;)V

    invoke-virtual {v0, v2}, LaS/e;->a(Lcom/google/googlenav/ui/bF;)V

    :cond_67
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->H()Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bB()Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->d()Z

    move-result v0

    if-nez v0, :cond_c4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/av;->a(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->F()LaS/e;

    move-result-object v0

    invoke-virtual {v0, v6}, LaS/e;->a(Z)V

    new-instance v0, Lcom/google/googlenav/cb;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v2

    new-instance v4, Lcom/google/googlenav/ui/wizard/fL;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/fu;->k:Lcom/google/googlenav/ui/bF;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->F()LaS/e;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/googlenav/ui/wizard/fL;-><init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;LaS/e;Lcom/google/googlenav/L;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/cb;-><init>(IJLcom/google/googlenav/cc;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    :cond_c4
    return-void
.end method

.method private F()LaS/e;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, LaS/e;

    return-object v0
.end method

.method private G()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_27

    iget v1, p0, Lcom/google/googlenav/ui/wizard/fu;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->C()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/ui/wizard/fu;->a:I

    invoke-interface {v1, v2}, Lcom/google/googlenav/E;->a(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaY/i;->a(B)V

    :cond_20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/i;->f(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->I()V

    :cond_27
    return-void
.end method

.method private H()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->I()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    if-nez v0, :cond_25

    const/16 v0, 0x34c

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/fu;->a(Lcom/google/googlenav/ah;Z)V

    goto :goto_24
.end method

.method private I()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    instance-of v1, v0, LaY/m;

    if-eqz v1, :cond_10

    check-cast v0, LaY/m;

    invoke-virtual {v0}, LaY/m;->br()V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {v0}, LaY/i;->J()V

    goto :goto_f
.end method

.method private J()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bA()[I

    move-result-object v0

    aget v1, v0, v8

    aget v2, v0, v9

    add-int/2addr v1, v2

    const/16 v2, 0x55

    const-string v3, "d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v6}, Lcom/google/googlenav/ah;->bt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v6}, Lcom/google/googlenav/ah;->by()[Lcom/google/googlenav/aj;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "f="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "l="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v0, v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v5}, Lcom/google/googlenav/ah;->bv()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fu;Lcom/google/googlenav/ah;)Lcom/google/googlenav/ah;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    return-object p1
.end method

.method private a(Lcom/google/googlenav/ah;Z)V
    .registers 8

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/google/googlenav/ui/wizard/fI;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/fI;-><init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/L;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/fH;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->g()Lcom/google/googlenav/ui/wizard/fM;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/fH;-><init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/L;LaY/Y;Lcom/google/googlenav/ui/wizard/fM;)V

    new-instance v2, Lcom/google/googlenav/bA;

    const-string v3, "hotpot-mobile-Android-GMM"

    if-eqz p2, :cond_2d

    :goto_1d
    invoke-direct {v2, p1, v3, p2, v0}, Lcom/google/googlenav/bA;-><init>(Lcom/google/googlenav/ah;Ljava/lang/String;ZLcom/google/googlenav/bB;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->f()V

    goto :goto_2

    :cond_2d
    move-object v0, v1

    goto :goto_1d
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fu;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->E()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fu;Lcom/google/googlenav/ah;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/fu;->a(Lcom/google/googlenav/ah;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fu;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/fu;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/fu;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/fu;Lcom/google/googlenav/ah;)Lcom/google/googlenav/ah;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fu;->o:Lcom/google/googlenav/ah;

    return-object p1
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/fu;)LaS/e;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->F()LaS/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/fu;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/fu;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->G()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/fu;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->I()V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/fu;)Lcom/google/googlenav/ui/view/dialog/aK;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/wizard/fu;)LaY/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/wizard/fu;)LaY/aG;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    return-object v0
.end method


# virtual methods
.method public B()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "r"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fu;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->E()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->dismiss()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    :goto_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0, v1}, LaY/Y;->f(LaY/i;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    return-void

    :cond_1e
    invoke-static {}, Lar/r;->a()V

    goto :goto_14
.end method

.method public C()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->o:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->o:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public W_()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/fu;->j:Z

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fu;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/fu;->a(Lcom/google/googlenav/ah;LaY/Y;ZLjava/lang/String;)V

    return-void
.end method

.method public a(LaJ/B;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/fu;->e:I

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v0, :cond_14

    const/4 v0, 0x4

    goto :goto_d

    :cond_14
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fu;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v0, :cond_6

    const/4 v0, 0x4

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fu;->e:I

    goto :goto_5
.end method

.method a(Ljava/util/List;)LaY/aG;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    check-cast v0, Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    check-cast v0, Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0, v1}, LaY/Y;->f(LaY/i;)V

    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    invoke-interface {v0, p1}, Lcom/google/googlenav/L;->a(Ljava/util/List;)LaY/aG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0, p0}, LaY/aG;->a(Lcom/google/googlenav/ui/wizard/fN;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0, v1}, LaY/Y;->d(LaY/i;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ah;LaY/Y;ZLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/fu;->j:Z

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/fu;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fu;->p:Z

    invoke-static {}, Lcom/google/googlenav/bl;->a()Lcom/google/googlenav/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->r:Lcom/google/googlenav/login/i;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bl;->a(Lcom/google/googlenav/login/i;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->l()V

    return-void
.end method

.method public a(Lcom/google/googlenav/aw;)V
    .registers 10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x343

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x342

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x516

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x291

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/google/googlenav/ui/wizard/fy;

    invoke-direct {v7, p0, p1}, Lcom/google/googlenav/ui/wizard/fy;-><init>(Lcom/google/googlenav/ui/wizard/fu;Lcom/google/googlenav/aw;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/cd;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/bl;->a()Lcom/google/googlenav/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bl;->q()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/bl;->a()Lcom/google/googlenav/bl;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bl;->a(Lcom/google/googlenav/bo;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ah;->a(Lcom/google/googlenav/cd;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ah;->p(Ljava/lang/String;)V

    :cond_22
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->H()V

    goto :goto_13
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->i()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/t;

    invoke-virtual {v0}, Lbb/t;->j()Ljava/util/List;

    move-result-object v0

    :cond_11
    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/ui/wizard/fu;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/util/List;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_14

    new-array v0, v5, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    const/16 v1, 0x55

    const-string v2, "t"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v0

    const/16 v4, 0x90

    invoke-virtual {v0, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fu;->q:LaM/i;

    invoke-interface {v4, v0}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, LaM/m;->h()Z

    move-result v0

    if-eqz v0, :cond_7b

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_40
    move v1, v0

    goto :goto_19

    :cond_42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_7b
    move v0, v1

    goto :goto_40
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 14

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_78

    const/4 v0, 0x0

    :goto_5
    return v0

    :sswitch_6
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->J()V

    new-instance v2, Lcom/google/googlenav/ui/wizard/fE;

    new-instance v0, Lcom/google/googlenav/ui/wizard/fz;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fz;-><init>(Lcom/google/googlenav/ui/wizard/fu;)V

    invoke-direct {v2, v0}, Lcom/google/googlenav/ui/wizard/fE;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    const/16 v1, 0x1a7

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    new-instance v3, Lcom/google/googlenav/ui/wizard/fF;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fu;->h:Lcom/google/googlenav/L;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    new-instance v8, Lcom/google/googlenav/ui/wizard/fA;

    invoke-direct {v8, p0}, Lcom/google/googlenav/ui/wizard/fA;-><init>(Lcom/google/googlenav/ui/wizard/fu;)V

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/googlenav/ui/wizard/fF;-><init>(Lcom/google/googlenav/L;LaY/Y;Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/wizard/fE;Lcom/google/googlenav/ui/wizard/fM;)V

    new-instance v0, LaS/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v1

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v4}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4, v3}, LaS/a;-><init>(JLam/b;LaS/b;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    move v0, v9

    goto :goto_5

    :sswitch_4d
    if-ne p2, v9, :cond_5e

    const-string v0, "b"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fu;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0, v1}, LaY/Y;->f(LaY/i;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->G()V

    :cond_5e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->a()V

    move v0, v9

    goto :goto_5

    :sswitch_63
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->B()V

    move v0, v9

    goto :goto_5

    :sswitch_68
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/googlenav/E;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0, p1, p2, p3}, LaY/aG;->a(IILjava/lang/Object;)Z

    move v0, v9

    goto :goto_5

    :sswitch_data_78
    .sparse-switch
        0xe -> :sswitch_4d
        0x6a4 -> :sswitch_68
        0x6a8 -> :sswitch_6
        0x6b0 -> :sswitch_63
    .end sparse-switch
.end method

.method public aa_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->aa_()V

    :cond_9
    return-void
.end method

.method protected b()V
    .registers 1

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->b()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->D()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->i()Lbb/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    if-eqz v1, :cond_2d

    instance-of v1, v0, Lbb/t;

    if-eqz v1, :cond_2d

    check-cast v0, Lbb/t;

    invoke-virtual {v0}, Lbb/t;->g()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lbb/t;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2d

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fu;->p:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->k()V

    :cond_2d
    return-void
.end method

.method protected c()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fu;->a:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0, v1}, LaY/Y;->f(LaY/i;)V

    :cond_14
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->dismiss()V

    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fu;->p:Z

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/fu;->o:Lcom/google/googlenav/ah;

    invoke-static {}, Lcom/google/googlenav/bl;->a()Lcom/google/googlenav/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->r:Lcom/google/googlenav/login/i;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bl;->b(Lcom/google/googlenav/login/i;)V

    return-void
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/googlenav/ui/wizard/fx;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/fx;-><init>(Lcom/google/googlenav/ui/wizard/fu;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILcom/google/googlenav/ui/wizard/bw;)V

    return-void
.end method

.method f()V
    .registers 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x36b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v3, v6}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->dismiss()V

    :cond_1d
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aK;

    new-instance v1, Lbb/t;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-direct {v1, v3, v2}, Lbb/t;-><init>(Lcom/google/googlenav/ah;Ljava/util/List;)V

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/dialog/aK;-><init>(Lcom/google/googlenav/ui/p;Lbb/t;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    return-void
.end method

.method g()Lcom/google/googlenav/ui/wizard/fM;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/fB;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/fB;-><init>(Lcom/google/googlenav/ui/wizard/fu;)V

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fu;->p:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->dismiss()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fu;->p:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->o:Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->n()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->n:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->show()V

    return-void
.end method

.method public o()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bD()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->l(I)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fu;->j:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILaq/b;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/wizard/fu;->e:I

    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->C()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->af()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fu;->p:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->o:Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->g:Lcom/google/googlenav/ah;

    goto :goto_1d

    :cond_36
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->h()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fu;->p:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0}, LaY/aG;->o()V

    goto :goto_1d

    :cond_4a
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fu;->i:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fu;->m:LaY/aG;

    invoke-virtual {v0, v1}, LaY/Y;->f(LaY/i;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->G()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->a()V

    goto :goto_1d

    :cond_62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->B()V

    goto :goto_1d

    :cond_66
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fu;->G()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fu;->a()V

    goto :goto_1d
.end method
