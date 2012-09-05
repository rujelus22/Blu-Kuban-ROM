.class public LaY/G;
.super LaY/A;


# static fields
.field private static H:Z

.field private static J:Ljava/util/Vector;

.field public static final y:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/google/googlenav/ui/view/android/H;

.field private final C:LaE/h;

.field private D:Lr/l;

.field private E:Lcom/google/googlenav/ui/view/android/bj;

.field private F:Z

.field private G:Z

.field private I:Lab/b;

.field private K:Lbb/d;

.field private final L:LaY/D;

.field x:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, LaY/G;->y:I

    const/4 v0, 0x0

    sput-boolean v0, LaY/G;->H:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, LaY/G;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lcom/google/googlenav/E;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lcom/google/googlenav/E;)V
    .registers 14

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, LaY/A;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    iput-object v6, p0, LaY/G;->A:Ljava/lang/String;

    iput-object v6, p0, LaY/G;->B:Lcom/google/googlenav/ui/view/android/H;

    iput-object v6, p0, LaY/G;->D:Lr/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/G;->x:Z

    iput-object p5, p0, LaY/G;->C:LaE/h;

    new-instance v0, LaY/D;

    invoke-direct {v0, p0}, LaY/D;-><init>(LaY/G;)V

    iput-object v0, p0, LaY/G;->L:LaY/D;

    invoke-direct {p0}, LaY/G;->bu()V

    return-void
.end method

.method private a(Lau/s;)I
    .registers 5

    const v0, -0x57f0f0f1

    invoke-direct {p0}, LaY/G;->by()Lr/l;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Lau/s;->h()Lt/y;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v2}, Lr/l;->c(Lt/y;)Z

    move-result v1

    if-nez v1, :cond_18

    const v0, 0x300f0f0f

    :cond_18
    return v0
.end method

.method public static a(Lau/b;)Lau/b;
    .registers 6

    const/4 v2, 0x0

    sget-object v0, LaY/G;->J:Ljava/util/Vector;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lau/b;->aQ()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    move-object v0, v2

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    sget-object v0, LaY/G;->J:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    sget-object v0, LaY/G;->J:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/b;

    invoke-virtual {v0}, Lau/b;->k()I

    move-result v3

    invoke-virtual {p0}, Lau/b;->k()I

    move-result v4

    if-ne v3, v4, :cond_45

    invoke-virtual {p0}, Lau/b;->as()Lau/x;

    move-result-object v3

    invoke-virtual {v0}, Lau/b;->as()Lau/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lau/x;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {p0}, Lau/b;->au()Lau/x;

    move-result-object v3

    invoke-virtual {v0}, Lau/b;->au()Lau/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lau/x;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_49
    move-object v0, v2

    goto :goto_c
.end method

.method private a(Lau/x;)Lau/x;
    .registers 8

    invoke-virtual {p1}, Lau/x;->q()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lau/x;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    invoke-virtual {p1}, Lau/x;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lau/x;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lau/x;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lau/x;->l()Lt/y;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lau/x;->a(Ljava/lang/String;LaJ/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lt/y;)Lau/x;

    move-result-object p1

    :cond_22
    return-object p1
.end method

.method private a(Laq/c;I)V
    .registers 5

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, p2}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {p0, p1}, LaY/G;->b(Laq/c;)LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/m;->a(LaJ/B;)V

    invoke-virtual {p0}, LaY/G;->R()V

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ai()Lcom/google/googlenav/ui/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/A;->h()V

    invoke-virtual {p0}, LaY/G;->am()V

    invoke-virtual {p0, p2}, LaY/G;->b(I)V

    invoke-virtual {p0}, LaY/G;->ao()Z

    return-void
.end method

.method private a(Lcom/google/googlenav/E;Z)V
    .registers 11

    const/4 v7, -0x1

    const-wide v4, 0x3ff3333333333333L

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    check-cast p1, Lau/b;

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->F()V

    sget-boolean v0, LaY/G;->H:Z

    if-eqz v0, :cond_63

    sput-boolean v1, LaY/G;->H:Z

    invoke-virtual {p0, v1, v6}, LaY/G;->b(ILjava/lang/Object;)V

    :goto_19
    invoke-virtual {p1}, Lau/b;->aU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lau/b;->b(Ljava/lang/String;)V

    :cond_2d
    invoke-static {p1}, LaY/G;->e(Lau/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaY/G;->A:Ljava/lang/String;

    invoke-static {}, LaY/G;->bt()Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LaY/G;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->aS()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaY/G;->A:Ljava/lang/String;

    :cond_52
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-direct {p0}, LaY/G;->bR()V

    :cond_5f
    invoke-direct {p0}, LaY/G;->bQ()V

    return-void

    :cond_63
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_c8

    invoke-virtual {p1}, Lau/b;->k()I

    move-result v0

    if-eq v0, v3, :cond_c8

    invoke-virtual {p0, v1, v6}, LaY/G;->b(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lau/b;->aj()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {p1}, Lau/b;->ai()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-object v2, p0, LaY/G;->d:LaJ/u;

    invoke-virtual {p0, v3}, LaY/G;->c(Z)I

    move-result v4

    invoke-virtual {p0}, LaY/G;->q()I

    move-result v5

    invoke-virtual {v2, v0, v1, v4, v5}, LaJ/u;->a(IIII)LaJ/Y;

    move-result-object v1

    invoke-virtual {p1}, Lau/b;->ak()LaJ/B;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ao()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-virtual {p0, v3}, LaY/G;->c(Z)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, LaY/G;->q()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    neg-int v2, v2

    neg-int v4, v4

    invoke-virtual {v0, v2, v4, v1}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    :cond_b2
    iget-object v2, p0, LaY/G;->d:LaJ/u;

    invoke-virtual {v2, v0, v1}, LaJ/u;->d(LaJ/B;LaJ/Y;)V

    invoke-virtual {p0, v7}, LaY/G;->b(I)V

    iput-boolean v3, p0, LaY/G;->w:Z

    :cond_bc
    :goto_bc
    invoke-static {p1}, LaY/G;->b(Lau/b;)V

    invoke-virtual {p1}, Lau/b;->k()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bu;->b(I)V

    goto/16 :goto_19

    :cond_c8
    if-eqz p2, :cond_106

    move v0, v1

    :goto_cb
    iget-object v2, p0, LaY/G;->c:LaJ/p;

    invoke-virtual {p1, v2}, Lau/b;->a(LaJ/p;)LaJ/Y;

    move-result-object v4

    iget-object v2, p0, LaY/G;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->d()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v2

    const/16 v5, 0xe

    if-ge v2, v5, :cond_111

    move v2, v3

    :goto_e0
    if-eqz v4, :cond_f9

    iget-object v5, p0, LaY/G;->d:LaJ/u;

    invoke-virtual {v5}, LaJ/u;->d()LaJ/Y;

    move-result-object v5

    invoke-virtual {v4, v5}, LaJ/Y;->b(LaJ/Y;)Z

    move-result v5

    if-nez v5, :cond_f0

    if-eqz v2, :cond_f9

    :cond_f0
    iget-object v2, p0, LaY/G;->d:LaJ/u;

    invoke-virtual {p1}, Lau/b;->ay()LaJ/B;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    :cond_f9
    invoke-virtual {p1}, Lau/b;->aA()I

    move-result v2

    if-eq v2, v7, :cond_113

    invoke-virtual {p0, v1, v6}, LaY/G;->b(ILjava/lang/Object;)V

    invoke-virtual {p0, v2, p2, v1}, LaY/G;->a(IZZ)V

    goto :goto_bc

    :cond_106
    iget-object v0, p0, LaY/G;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/G;->b(LaJ/B;)I

    move-result v0

    goto :goto_cb

    :cond_111
    move v2, v1

    goto :goto_e0

    :cond_113
    if-ltz v0, :cond_bc

    invoke-virtual {p0, v0, p2, v3}, LaY/G;->a(IZZ)V

    goto :goto_bc
.end method

.method static synthetic a(Lcom/google/googlenav/ui/D;Lau/b;)V
    .registers 2

    invoke-static {p0, p1}, LaY/G;->b(Lcom/google/googlenav/ui/D;Lau/b;)V

    return-void
.end method

.method public static a(ILcom/google/googlenav/ui/view/android/o;Lcom/google/googlenav/L;Lau/b;Lcom/google/googlenav/ui/wizard/bu;Lcom/google/googlenav/ui/wizard/x;Z)Z
    .registers 12

    const/16 v3, 0x1d

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p3}, Lau/b;->ar()Lau/j;

    move-result-object v0

    packed-switch p0, :pswitch_data_136

    move v0, v1

    :goto_c
    return v0

    :pswitch_d
    const-string v0, "ti"

    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/o;->J_()V

    move v0, v2

    goto :goto_c

    :pswitch_17
    const-string v1, "sd"

    invoke-static {v1}, LaY/G;->b(Ljava/lang/String;)V

    new-instance v1, Lau/r;

    invoke-direct {v1, v0}, Lau/r;-><init>(Lau/k;)V

    invoke-virtual {p3}, Lau/b;->aS()I

    move-result v0

    invoke-virtual {v1, v0}, Lau/b;->v(I)V

    invoke-virtual {p5}, Lcom/google/googlenav/ui/wizard/x;->a()V

    invoke-interface {p2, v1}, Lcom/google/googlenav/L;->a(Lau/k;)V

    move v0, v2

    goto :goto_c

    :pswitch_30
    const-string v1, "sw"

    invoke-static {v1}, LaY/G;->b(Ljava/lang/String;)V

    new-instance v1, Lau/w;

    invoke-direct {v1, v0}, Lau/w;-><init>(Lau/k;)V

    invoke-virtual {p3}, Lau/b;->aS()I

    move-result v0

    invoke-virtual {v1, v0}, Lau/b;->v(I)V

    invoke-virtual {p5}, Lcom/google/googlenav/ui/wizard/x;->a()V

    invoke-interface {p2, v1}, Lcom/google/googlenav/L;->a(Lau/k;)V

    move v0, v2

    goto :goto_c

    :pswitch_49
    const-string v1, "st"

    invoke-static {v1}, LaY/G;->b(Ljava/lang/String;)V

    new-instance v1, Lau/v;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lau/v;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    invoke-virtual {p3}, Lau/b;->aS()I

    move-result v0

    invoke-virtual {v1, v0}, Lau/b;->v(I)V

    invoke-virtual {p5}, Lcom/google/googlenav/ui/wizard/x;->a()V

    invoke-interface {p2, v1}, Lcom/google/googlenav/L;->a(Lau/k;)V

    move v0, v2

    goto :goto_c

    :pswitch_6a
    const-string v1, "sk"

    invoke-static {v1}, LaY/G;->b(Ljava/lang/String;)V

    new-instance v1, Lau/i;

    invoke-direct {v1, v0}, Lau/i;-><init>(Lau/k;)V

    invoke-virtual {p3}, Lau/b;->aS()I

    move-result v0

    invoke-virtual {v1, v0}, Lau/b;->v(I)V

    invoke-virtual {p5}, Lcom/google/googlenav/ui/wizard/x;->a()V

    invoke-interface {p2, v1}, Lcom/google/googlenav/L;->a(Lau/k;)V

    move v0, v2

    goto :goto_c

    :pswitch_83
    const/4 v0, 0x0

    invoke-virtual {p3}, Lau/b;->au()Lau/x;

    move-result-object v3

    if-eqz v3, :cond_92

    invoke-virtual {p3}, Lau/b;->au()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->k()Ljava/lang/String;

    move-result-object v0

    :cond_92
    instance-of v3, p3, Lau/r;

    if-eqz v3, :cond_ab

    const-string v3, "dn"

    invoke-static {v3, v0}, LaY/G;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lau/b;->au()Lau/x;

    move-result-object v0

    invoke-virtual {p3}, Lau/b;->o()[Lam/b;

    move-result-object v3

    const-string v4, "d"

    invoke-interface {p2, v0, v1, v3, v4}, Lcom/google/googlenav/L;->a(Lau/x;I[Lam/b;Ljava/lang/String;)V

    :cond_a8
    :goto_a8
    move v0, v2

    goto/16 :goto_c

    :cond_ab
    instance-of v1, p3, Lau/w;

    if-eqz v1, :cond_c3

    const-string v1, "wn"

    invoke-static {v1, v0}, LaY/G;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lau/b;->au()Lau/x;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p3}, Lau/b;->o()[Lam/b;

    move-result-object v3

    const-string v4, "d"

    invoke-interface {p2, v0, v1, v3, v4}, Lcom/google/googlenav/L;->a(Lau/x;I[Lam/b;Ljava/lang/String;)V

    goto :goto_a8

    :cond_c3
    instance-of v1, p3, Lau/i;

    if-eqz v1, :cond_db

    const-string v1, "bn"

    invoke-static {v1, v0}, LaY/G;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lau/b;->au()Lau/x;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p3}, Lau/b;->o()[Lam/b;

    move-result-object v3

    const-string v4, "d"

    invoke-interface {p2, v0, v1, v3, v4}, Lcom/google/googlenav/L;->a(Lau/x;I[Lam/b;Ljava/lang/String;)V

    goto :goto_a8

    :cond_db
    instance-of v1, p3, Lau/v;

    if-eqz v1, :cond_a8

    const-string v1, "tn"

    invoke-static {v1, v0}, LaY/G;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x61

    const-string v1, "n"

    const-string v3, "h"

    invoke-static {v0, v1, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0, v2}, LaN/b;->a(Z)V

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/ui/D;

    move-object v1, p3

    check-cast v1, Lau/v;

    invoke-static {v0, v1}, LaY/G;->a(Lcom/google/googlenav/ui/D;Lau/v;)Z

    move-result v0

    if-nez v0, :cond_a8

    check-cast p3, Lau/v;

    invoke-interface {p2, p3}, Lcom/google/googlenav/L;->a(Lau/v;)V

    goto :goto_a8

    :pswitch_106
    const-string v0, "es"

    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    if-eqz p6, :cond_118

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/o;->dismiss()V

    new-instance v0, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v0, v3, p1}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p5, v0}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    :cond_118
    invoke-virtual {p4, p3, v2}, Lcom/google/googlenav/ui/wizard/bu;->a(Lau/b;Z)V

    move v0, v2

    goto/16 :goto_c

    :pswitch_11e
    const-string v0, "ee"

    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    if-eqz p6, :cond_130

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/o;->dismiss()V

    new-instance v0, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v0, v3, p1}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p5, v0}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    :cond_130
    invoke-virtual {p4, p3, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lau/b;Z)V

    move v0, v2

    goto/16 :goto_c

    :pswitch_data_136
    .packed-switch 0xe8
        :pswitch_17
        :pswitch_49
        :pswitch_30
        :pswitch_6a
        :pswitch_83
        :pswitch_d
        :pswitch_106
        :pswitch_11e
    .end packed-switch
.end method

.method private a(Lcom/google/googlenav/D;Lcom/google/googlenav/D;)Z
    .registers 6

    iget-object v0, p0, LaY/G;->c:LaJ/p;

    invoke-interface {p1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/w;->a(LaJ/B;LaJ/B;)I

    move-result v1

    invoke-virtual {v0, v1}, LaJ/p;->c(I)I

    move-result v0

    sget v1, LaY/G;->y:I

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static a(Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/y;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    instance-of v2, p0, Lcom/google/googlenav/ui/D;

    if-eqz v2, :cond_11

    check-cast p0, Lcom/google/googlenav/ui/D;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v2

    sparse-switch v2, :sswitch_data_34

    move v0, v1

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/Object;)V

    goto :goto_10

    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/Object;)V

    goto :goto_10

    :sswitch_23
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/D;->c(Ljava/lang/Object;)V

    goto :goto_10

    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/y;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/D;->d(Ljava/lang/Object;)V

    goto :goto_10

    nop

    :sswitch_data_34
    .sparse-switch
        0x7 -> :sswitch_13
        0x18 -> :sswitch_1b
        0x19 -> :sswitch_23
        0x1a -> :sswitch_2b
    .end sparse-switch
.end method

.method private static a(Lcom/google/googlenav/ui/D;Lau/v;)Z
    .registers 6

    invoke-virtual {p1}, Lau/v;->aZ()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lau/v;->aX()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/googlenav/ui/bq;->a(Lau/b;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/bq;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0, p1}, LaY/G;->b(Lcom/google/googlenav/ui/D;Lau/v;)V

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static b(Lau/b;)V
    .registers 4

    sget-object v0, LaY/G;->J:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, LaY/G;->J:Ljava/util/Vector;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    sget-object v0, LaY/G;->J:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    sget-object v0, LaY/G;->J:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau/b;

    invoke-virtual {v0}, Lau/b;->k()I

    move-result v0

    invoke-virtual {p0}, Lau/b;->k()I

    move-result v2

    if-ne v0, v2, :cond_2d

    sget-object v0, LaY/G;->J:Ljava/util/Vector;

    invoke-virtual {v0, p0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_2c
    return-void

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_31
    sget-object v0, LaY/G;->J:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2c
.end method

.method private static b(Lcom/google/googlenav/ui/D;Lau/b;)V
    .registers 6

    new-instance v0, Lau/j;

    invoke-virtual {p1}, Lau/b;->as()Lau/x;

    move-result-object v1

    invoke-virtual {p1}, Lau/b;->au()Lau/x;

    move-result-object v2

    invoke-virtual {p1}, Lau/b;->aw()Lam/b;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lau/j;-><init>(Lau/x;Lau/x;Lam/b;)V

    new-instance v1, Lau/v;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lau/v;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    invoke-static {}, Lau/l;->a()Lau/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lau/b;->a(Lau/l;)V

    invoke-virtual {v1}, Lau/b;->aR()V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/D;->a(Lau/k;)V

    return-void
.end method

.method private static b(Lcom/google/googlenav/ui/D;Lau/v;)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    const/16 v1, 0x3de

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3dd

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3dc

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3db

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, LaY/H;

    invoke-direct {v7, p0, p1}, LaY/H;-><init>(Lcom/google/googlenav/ui/D;Lau/v;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    const-string v1, "da"

    invoke-static {v0, v1, p0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x4

    const-string v2, "da"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/4 v4, 0x1

    if-eqz p1, :cond_12

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_12
    const/4 v0, 0x0

    :goto_13
    aput-object v0, v3, v4

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private bA()[Lcom/google/googlenav/ui/aQ;
    .registers 5

    invoke-direct {p0}, LaY/G;->bF()Lau/i;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aQ;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/aO;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/aO;-><init>(Lau/b;)V

    aput-object v3, v1, v2

    return-object v1
.end method

.method private bB()[Lcom/google/googlenav/ui/aQ;
    .registers 5

    invoke-direct {p0}, LaY/G;->bD()Lau/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aQ;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/aO;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/aO;-><init>(Lau/b;)V

    aput-object v3, v1, v2

    return-object v1
.end method

.method private bC()I
    .registers 2

    iget v0, p0, LaY/G;->z:I

    return v0
.end method

.method private bD()Lau/r;
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    check-cast v0, Lau/r;

    return-object v0
.end method

.method private bE()Lau/w;
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    check-cast v0, Lau/w;

    return-object v0
.end method

.method private bF()Lau/i;
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    check-cast v0, Lau/i;

    return-object v0
.end method

.method private bG()V
    .registers 1

    invoke-virtual {p0}, LaY/G;->bh()V

    invoke-virtual {p0}, LaY/G;->aR()V

    return-void
.end method

.method private bH()Lcom/google/googlenav/ui/view/android/bx;
    .registers 2

    iget-object v0, p0, LaY/G;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bx;

    return-object v0
.end method

.method private bI()V
    .registers 3

    const-string v0, "va"

    invoke-static {v0}, LaY/G;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->h(Lau/b;)V

    return-void
.end method

.method private bJ()V
    .registers 5

    const-string v0, "r"

    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    new-instance v1, Lau/j;

    invoke-virtual {v0}, Lau/b;->au()Lau/x;

    move-result-object v2

    invoke-direct {p0, v2}, LaY/G;->a(Lau/x;)Lau/x;

    move-result-object v2

    invoke-virtual {v0}, Lau/b;->as()Lau/x;

    move-result-object v3

    invoke-direct {p0, v3}, LaY/G;->a(Lau/x;)Lau/x;

    move-result-object v3

    invoke-virtual {v0}, Lau/b;->aw()Lam/b;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lau/j;-><init>(Lau/x;Lau/x;Lam/b;)V

    invoke-virtual {p0, v1}, LaY/G;->b(Lau/j;)V

    return-void
.end method

.method private bK()V
    .registers 5

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    new-instance v1, Lau/j;

    iget-object v2, p0, LaY/G;->C:LaE/h;

    invoke-virtual {v2}, LaE/h;->q()LaJ/B;

    move-result-object v2

    iget-object v3, p0, LaY/G;->C:LaE/h;

    invoke-virtual {v3}, LaE/h;->A()Lt/y;

    move-result-object v3

    invoke-static {v2, v3}, Lau/x;->b(LaJ/B;Lt/y;)Lau/x;

    move-result-object v2

    invoke-virtual {v0}, Lau/b;->au()Lau/x;

    move-result-object v3

    invoke-virtual {v0}, Lau/b;->aw()Lam/b;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lau/j;-><init>(Lau/x;Lau/x;Lam/b;)V

    invoke-virtual {p0, v1}, LaY/G;->b(Lau/j;)V

    return-void
.end method

.method private bL()V
    .registers 3

    const-string v0, "av"

    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->g(Lau/b;)V

    return-void
.end method

.method private bM()Z
    .registers 2

    iget-object v0, p0, LaY/G;->B:Lcom/google/googlenav/ui/view/android/H;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private bN()V
    .registers 3

    invoke-direct {p0}, LaY/G;->bM()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, LaY/G;->bO()V

    :cond_9
    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-static {v0, v1, p0}, Lcom/google/googlenav/ui/s;->a(Lau/b;ILcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/H;

    move-result-object v0

    iput-object v0, p0, LaY/G;->B:Lcom/google/googlenav/ui/view/android/H;

    iget-object v0, p0, LaY/G;->B:Lcom/google/googlenav/ui/view/android/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/H;->show()V

    return-void
.end method

.method private bO()V
    .registers 2

    iget-object v0, p0, LaY/G;->B:Lcom/google/googlenav/ui/view/android/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/H;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/G;->B:Lcom/google/googlenav/ui/view/android/H;

    return-void
.end method

.method private bP()V
    .registers 3

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aN()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->aR()V

    iget-object v0, p0, LaY/G;->B:Lcom/google/googlenav/ui/view/android/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/H;->i()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/l;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/s;->a(Lau/b;Lbb/l;)V

    invoke-direct {p0}, LaY/G;->bO()V

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lau/k;)V

    return-void
.end method

.method private bQ()V
    .registers 6

    const/4 v4, -0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    const/16 v3, 0xf4

    invoke-static {v1, v2, p0, v3}, Lcom/google/googlenav/ui/view/android/C;->a(Landroid/view/View;Lau/b;Lcom/google/googlenav/ui/p;I)V

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->c:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    if-nez v0, :cond_46

    iget-object v0, p0, LaY/G;->K:Lbb/d;

    if-nez v0, :cond_7f

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v1

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {p0}, LaY/G;->bj()Z

    move-result v0

    if-nez v0, :cond_7d

    invoke-virtual {p0}, LaY/G;->bn()Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    :goto_76
    invoke-virtual {v1, v2, p0, v0}, Lbb/e;->a(Lau/b;Lcom/google/googlenav/ui/p;Z)Lbb/d;

    move-result-object v0

    iput-object v0, p0, LaY/G;->K:Lbb/d;

    goto :goto_46

    :cond_7d
    const/4 v0, 0x0

    goto :goto_76

    :cond_7f
    iget-object v0, p0, LaY/G;->K:Lbb/d;

    invoke-interface {v0}, Lbb/d;->b()V

    goto :goto_46
.end method

.method private bR()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->g()V

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, LaY/G;->K:Lbb/d;

    if-eqz v0, :cond_1a

    iget-object v0, p0, LaY/G;->K:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/G;->K:Lbb/d;

    goto :goto_1a
.end method

.method public static bt()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private bu()V
    .registers 4

    invoke-static {}, Lab/d;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lav/b;->a:Lav/b;

    invoke-virtual {v0}, Lav/b;->d()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    new-instance v0, Lam/b;

    sget-object v1, LbD/c;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {v2}, Lau/b;->aw()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    new-instance v1, Lab/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lab/b;-><init>(ILam/b;)V

    iput-object v1, p0, LaY/G;->I:Lab/b;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, LaY/G;->I:Lab/b;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    goto :goto_e
.end method

.method private bv()Z
    .registers 14

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, LaY/G;->bw()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    invoke-static {}, LaU/c;->b()V

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->af()[LaJ/B;

    move-result-object v10

    iget-object v1, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v11

    new-array v12, v11, [LaU/f;

    move v9, v0

    :goto_1e
    if-ge v9, v11, :cond_65

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, v9}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lau/m;

    invoke-virtual {v2}, Lau/m;->l()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    array-length v3, v10

    if-ge v1, v3, :cond_74

    invoke-virtual {v2}, Lau/m;->l()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v6, v10, v1

    :goto_3a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_72

    invoke-virtual {v2}, Lau/m;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v5, v10, v0

    :goto_46
    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-static {v0, v2, v8}, LaY/B;->a(Lau/b;Lau/m;Z)LaY/C;

    move-result-object v0

    iget-object v3, v0, LaY/C;->a:Ljava/lang/String;

    new-instance v0, LaU/f;

    invoke-virtual {v2}, Lau/m;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v2}, Lau/m;->t()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-direct/range {v0 .. v6}, LaU/f;-><init>(LaJ/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LaJ/B;LaJ/B;)V

    aput-object v0, v12, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1e

    :cond_65
    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    iget-object v1, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    invoke-virtual {v0, v1, v12}, Lcom/google/googlenav/ui/D;->a(I[LaU/f;)V

    move v0, v8

    goto :goto_9

    :cond_72
    move-object v5, v7

    goto :goto_46

    :cond_74
    move-object v6, v7

    goto :goto_3a
.end method

.method private bw()Z
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->u()Z

    move-result v0

    goto :goto_d
.end method

.method private bx()[Lcom/google/googlenav/ui/aQ;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, LaY/G;->j()Lau/v;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v3}, Lau/v;->ag()I

    move-result v4

    const/4 v1, 0x1

    if-lt v4, v1, :cond_7

    add-int/lit8 v0, v4, -0x1

    new-array v1, v0, [Lcom/google/googlenav/ui/aQ;

    const/4 v0, 0x0

    move v2, v0

    :goto_15
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3d

    new-instance v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {v3, v2}, Lau/v;->q(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/ui/aS;->b(Z)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v0, v3, v5, v2, v6}, Lcom/google/googlenav/ui/aS;-><init>(Lau/v;III)V

    aput-object v0, v1, v2

    aget-object v0, v1, v2

    check-cast v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {v3, v2}, Lau/v;->q(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/ui/aS;->a(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aS;->a(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_3d
    move-object v0, v1

    goto :goto_7
.end method

.method private by()Lr/l;
    .registers 2

    iget-object v0, p0, LaY/G;->D:Lr/l;

    if-eqz v0, :cond_7

    iget-object v0, p0, LaY/G;->D:Lr/l;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    goto :goto_6
.end method

.method private bz()[Lcom/google/googlenav/ui/aQ;
    .registers 8

    invoke-direct {p0}, LaY/G;->bE()Lau/w;

    move-result-object v2

    invoke-virtual {v2}, Lau/w;->ah()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/googlenav/ui/aO;

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4e

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_34
    new-instance v6, Lcom/google/googlenav/ui/aO;

    invoke-direct {v6, v2, v5, v0}, Lcom/google/googlenav/ui/aO;-><init>(Lau/b;II)V

    invoke-virtual {v2, v5}, Lau/w;->n(I)Lau/s;

    move-result-object v0

    invoke-direct {p0, v0}, LaY/G;->a(Lau/s;)I

    move-result v0

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Lcom/google/googlenav/ui/aO;->a(I)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/aO;->b(I)V

    aput-object v6, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_4e
    invoke-virtual {v2}, Lau/w;->ag()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_55
    return-object v4
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    const-string v1, "al"

    invoke-static {v0, v1, p0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lau/b;->au()Lau/x;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lau/x;->k()Ljava/lang/String;

    move-result-object v1

    :goto_11
    if-eqz v1, :cond_2c

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2c
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    move-object v1, v0

    goto :goto_11
.end method

.method private static e(Lau/b;)Ljava/lang/String;
    .registers 5

    instance-of v0, p0, Lau/v;

    if-eqz v0, :cond_2e

    check-cast p0, Lau/v;

    const/16 v0, 0x4d2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x4d6

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lau/v;->aB()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    instance-of v0, p0, Lau/w;

    if-eqz v0, :cond_39

    const/16 v0, 0x4fa

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_39
    instance-of v0, p0, Lau/i;

    if-eqz v0, :cond_44

    const/16 v0, 0x57

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_44
    const/16 v0, 0xf3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {v2}, Lau/b;->k()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/ui/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private g(Laq/b;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, LaY/G;->ag()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    :cond_17
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private h(I)V
    .registers 6

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->au()Lau/x;

    move-result-object v1

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {v2}, Lau/b;->o()[Lam/b;

    move-result-object v2

    const-string v3, "d"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/googlenav/ui/D;->a(Lau/x;I[Lam/b;Ljava/lang/String;)V

    return-void
.end method

.method private static i(Z)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 v0, 0x3

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x4

    goto :goto_3
.end method

.method private i(I)V
    .registers 4

    const-string v0, "m"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaY/G;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_28

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge p1, v0, :cond_28

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LaY/G;->a(IZZ)V

    :goto_18
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaY/G;->b(ILjava/lang/Object;)V

    :cond_27
    return-void

    :cond_28
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaY/G;->b(I)V

    goto :goto_18
.end method

.method private j(I)V
    .registers 3

    iget-object v0, p0, LaY/G;->L:LaY/D;

    invoke-virtual {v0, p1}, LaY/D;->a(I)Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v0

    iput-object v0, p0, LaY/G;->E:Lcom/google/googlenav/ui/view/android/bj;

    iget-object v0, p0, LaY/G;->E:Lcom/google/googlenav/ui/view/android/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->show()V

    return-void
.end method


# virtual methods
.method protected A()V
    .registers 3

    iget-object v0, p0, LaY/G;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_14

    iget-object v0, p0, LaY/G;->r:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    invoke-direct {p0}, LaY/G;->bH()Lcom/google/googlenav/ui/view/android/bx;

    move-result-object v0

    invoke-virtual {p0}, LaY/G;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bx;->a(I)V

    :cond_14
    return-void
.end method

.method public H()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, LaY/G;->A:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, LaY/G;->A:Ljava/lang/String;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-static {v2}, LaY/G;->e(Lau/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    iget-object v1, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v1, v1, Lau/r;

    if-eqz v1, :cond_32

    invoke-direct {p0}, LaY/G;->bD()Lau/r;

    move-result-object v1

    invoke-virtual {v1}, Lau/r;->ad()Lau/h;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-direct {p0}, LaY/G;->bD()Lau/r;

    move-result-object v1

    invoke-virtual {v1}, Lau/r;->aW()I

    move-result v1

    iget v2, p0, LaY/G;->z:I

    if-ne v1, v2, :cond_15

    :cond_32
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xe1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected U()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public a(Lau/j;)Lau/b;
    .registers 4

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    instance-of v1, v0, Lau/v;

    if-eqz v1, :cond_1e

    new-instance v0, Lau/v;

    iget-object v1, p0, LaY/G;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lau/v;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    invoke-static {}, Lau/l;->a()Lau/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->a(Lau/l;)V

    :goto_1a
    invoke-virtual {v0}, Lau/b;->aR()V

    return-object v0

    :cond_1e
    instance-of v1, v0, Lau/w;

    if-eqz v1, :cond_28

    new-instance v0, Lau/w;

    invoke-direct {v0, p1}, Lau/w;-><init>(Lau/k;)V

    goto :goto_1a

    :cond_28
    instance-of v0, v0, Lau/i;

    if-eqz v0, :cond_32

    new-instance v0, Lau/i;

    invoke-direct {v0, p1}, Lau/i;-><init>(Lau/k;)V

    goto :goto_1a

    :cond_32
    new-instance v0, Lau/r;

    invoke-direct {v0, p1}, Lau/r;-><init>(Lau/k;)V

    goto :goto_1a
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-virtual {p0, v2}, LaY/G;->h(Z)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->k()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    invoke-virtual {p0, v2}, LaY/G;->b(B)V

    :cond_1e
    :goto_1e
    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aH()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2e

    const-string v0, "a"

    invoke-direct {p0, v0}, LaY/G;->e(Ljava/lang/String;)V

    :cond_2e
    return-void

    :cond_2f
    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aA()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-lez v0, :cond_4d

    invoke-virtual {p0, v2}, LaY/G;->b(I)V

    :cond_4d
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaY/G;->b(B)V

    goto :goto_1e
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, LaY/G;->J:Ljava/util/Vector;

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 15

    const/4 v10, -0x1

    const/16 v9, 0x45

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v1, p0, LaY/G;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v1, Lcom/google/googlenav/ui/view/android/n;

    iget-object v2, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v3

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v4

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v5

    move v0, p1

    invoke-static/range {v0 .. v6}, LaY/G;->a(ILcom/google/googlenav/ui/view/android/o;Lcom/google/googlenav/L;Lau/b;Lcom/google/googlenav/ui/wizard/bu;Lcom/google/googlenav/ui/wizard/x;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v6, v7

    :cond_2c
    :goto_2c
    return v6

    :cond_2d
    sparse-switch p1, :sswitch_data_23e

    goto :goto_2c

    :sswitch_31
    const-string v0, "sb"

    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2}, LaY/G;->i(I)V

    move v6, v7

    goto :goto_2c

    :sswitch_3b
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaY/G;->c(ILjava/lang/Object;)V

    move v6, v7

    goto :goto_2c

    :sswitch_42
    invoke-direct {p0, p2}, LaY/G;->i(I)V

    move v6, v7

    goto :goto_2c

    :sswitch_47
    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lau/b;)V

    move v6, v7

    goto :goto_2c

    :sswitch_5e
    invoke-direct {p0}, LaY/G;->bL()V

    move v6, v7

    goto :goto_2c

    :sswitch_63
    invoke-direct {p0}, LaY/G;->bI()V

    move v6, v7

    goto :goto_2c

    :sswitch_68
    invoke-direct {p0}, LaY/G;->bJ()V

    move v6, v7

    goto :goto_2c

    :sswitch_6d
    invoke-direct {p0}, LaY/G;->bK()V

    move v6, v7

    goto :goto_2c

    :sswitch_72
    invoke-virtual {p0}, LaY/G;->j()Lau/v;

    move-result-object v0

    invoke-virtual {v0}, Lau/v;->Y()V

    invoke-direct {p0}, LaY/G;->bG()V

    move v6, v7

    goto :goto_2c

    :sswitch_7e
    invoke-virtual {p0}, LaY/G;->j()Lau/v;

    move-result-object v0

    invoke-virtual {v0}, Lau/v;->W()V

    invoke-direct {p0}, LaY/G;->bG()V

    move v6, v7

    goto :goto_2c

    :sswitch_8a
    invoke-direct {p0, p2}, LaY/G;->j(I)V

    move v6, v7

    goto :goto_2c

    :sswitch_8f
    invoke-virtual {p0, p2}, LaY/G;->b(I)V

    invoke-virtual {p0}, LaY/G;->bg()Z

    invoke-direct {p0}, LaY/G;->bw()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, LaY/G;->bv()Z

    move v6, v7

    goto :goto_2c

    :sswitch_a0
    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v0, v0, Lau/v;

    if-eqz v0, :cond_2c

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {v2}, Lau/b;->aB()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaY/G;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    if-ne v0, v10, :cond_e7

    :goto_cc
    invoke-virtual {v1, v6}, Lau/b;->r(I)V

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lau/b;->s(I)V

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->f(Lau/b;)V

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    move v6, v7

    goto/16 :goto_2c

    :cond_e7
    move v6, v0

    goto :goto_cc

    :sswitch_e9
    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v0

    if-eqz v0, :cond_f4

    const-string v0, "Navigation"

    invoke-static {v0}, Lac/a;->b(Ljava/lang/String;)V

    :cond_f4
    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_2ac

    goto/16 :goto_2c

    :pswitch_101
    const/16 v0, 0x25c

    invoke-virtual {p0, v0, p2, p3}, LaY/G;->a(IILjava/lang/Object;)Z

    move-result v6

    goto/16 :goto_2c

    :pswitch_109
    const/16 v0, 0x25e

    invoke-virtual {p0, v0, p2, p3}, LaY/G;->a(IILjava/lang/Object;)Z

    move-result v6

    goto/16 :goto_2c

    :pswitch_111
    const/16 v0, 0x25d

    invoke-virtual {p0, v0, p2, p3}, LaY/G;->a(IILjava/lang/Object;)Z

    move-result v6

    goto/16 :goto_2c

    :pswitch_119
    const/16 v0, 0x262

    invoke-virtual {p0, v0, p2, p3}, LaY/G;->a(IILjava/lang/Object;)Z

    move-result v6

    goto/16 :goto_2c

    :sswitch_121
    const-string v0, "n"

    const-string v1, "d"

    invoke-direct {p0, v1}, LaY/G;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v6}, LaY/G;->h(I)V

    move v6, v7

    goto/16 :goto_2c

    :sswitch_132
    const-string v0, "n"

    const-string v1, "d"

    invoke-direct {p0, v1}, LaY/G;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v8}, LaY/G;->h(I)V

    move v6, v7

    goto/16 :goto_2c

    :sswitch_143
    const-string v0, "n"

    const-string v1, "d"

    invoke-direct {p0, v1}, LaY/G;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, LaY/G;->h(I)V

    move v6, v7

    goto/16 :goto_2c

    :sswitch_155
    const/16 v0, 0x61

    const-string v1, "n"

    const-string v2, "d"

    invoke-direct {p0, v2}, LaY/G;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0, v7}, LaN/b;->a(Z)V

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    check-cast v0, Lau/v;

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-static {v1, v0}, LaY/G;->a(Lcom/google/googlenav/ui/D;Lau/v;)Z

    move-result v1

    if-nez v1, :cond_17a

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lau/v;)V

    :cond_17a
    move v6, v7

    goto/16 :goto_2c

    :sswitch_17d
    invoke-virtual {p0, p2}, LaY/G;->b(I)V

    invoke-virtual {p0}, LaY/G;->bg()Z

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    iget-object v2, p0, LaY/G;->L:LaY/D;

    invoke-virtual {v2, v7}, LaY/D;->a(Z)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/D;->a(Lau/b;Ljava/util/Vector;)V

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "a=s"

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0}, LaY/G;->ax()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move v6, v7

    goto/16 :goto_2c

    :sswitch_1c1
    const-string v0, "od"

    invoke-direct {p0, v0}, LaY/G;->e(Ljava/lang/String;)V

    invoke-direct {p0}, LaY/G;->bN()V

    move v6, v7

    goto/16 :goto_2c

    :sswitch_1cc
    invoke-direct {p0}, LaY/G;->bM()Z

    move-result v0

    if-eqz v0, :cond_1d5

    invoke-direct {p0}, LaY/G;->bP()V

    :cond_1d5
    move v6, v7

    goto/16 :goto_2c

    :sswitch_1d8
    invoke-direct {p0}, LaY/G;->bM()Z

    move-result v0

    if-eqz v0, :cond_1e6

    const-string v0, "nc"

    invoke-direct {p0, v0}, LaY/G;->e(Ljava/lang/String;)V

    invoke-direct {p0}, LaY/G;->bO()V

    :cond_1e6
    move v6, v7

    goto/16 :goto_2c

    :sswitch_1e9
    iget-object v0, p0, LaY/G;->I:Lab/b;

    invoke-virtual {v0}, Lab/b;->i()[Lcom/google/googlenav/ah;

    move-result-object v0

    if-eqz v0, :cond_1f4

    array-length v1, v0

    if-nez v1, :cond_1f7

    :cond_1f4
    move v6, v7

    goto/16 :goto_2c

    :cond_1f7
    invoke-virtual {p0}, LaY/G;->ae()Z

    move-result v1

    invoke-static {v1}, LaY/G;->i(Z)I

    move-result v1

    iget-object v2, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v3, v1}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0, v8, v7}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ah;BZ)V

    move v6, v7

    goto/16 :goto_2c

    :sswitch_217
    invoke-super {p0, p1, p2, p3}, LaY/A;->a(IILjava/lang/Object;)Z

    move-result v6

    goto/16 :goto_2c

    :sswitch_21d
    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaY/G;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    invoke-virtual {p0}, LaY/G;->W()V

    move v6, v7

    goto/16 :goto_2c

    :sswitch_232
    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-static {v0, v1}, LaY/G;->b(Lcom/google/googlenav/ui/D;Lau/b;)V

    move v6, v7

    goto/16 :goto_2c

    :sswitch_data_23e
    .sparse-switch
        0x1 -> :sswitch_31
        0x5 -> :sswitch_217
        0xc8 -> :sswitch_42
        0xc9 -> :sswitch_5e
        0xca -> :sswitch_63
        0xcb -> :sswitch_68
        0xcc -> :sswitch_6d
        0xd0 -> :sswitch_72
        0xd1 -> :sswitch_7e
        0xdc -> :sswitch_1c1
        0xdd -> :sswitch_1cc
        0xe5 -> :sswitch_8f
        0xe6 -> :sswitch_1c1
        0xe7 -> :sswitch_8a
        0xf0 -> :sswitch_232
        0xf1 -> :sswitch_3b
        0xf2 -> :sswitch_a0
        0xf4 -> :sswitch_47
        0x1f4 -> :sswitch_1d8
        0x25c -> :sswitch_121
        0x25d -> :sswitch_132
        0x25e -> :sswitch_155
        0x261 -> :sswitch_e9
        0x262 -> :sswitch_143
        0x2bc -> :sswitch_1e9
        0x3f9 -> :sswitch_21d
        0x5e6 -> :sswitch_17d
    .end sparse-switch

    :pswitch_data_2ac
    .packed-switch 0x0
        :pswitch_101
        :pswitch_109
        :pswitch_111
        :pswitch_119
    .end packed-switch
.end method

.method protected a(Laq/c;Z)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Laq/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, LaY/G;->F:Z

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, LaY/G;->G:Z

    if-eqz v2, :cond_14

    :goto_10
    invoke-direct {p0, p1, v0}, LaY/G;->a(Laq/c;I)V

    :cond_13
    :goto_13
    return v1

    :cond_14
    invoke-virtual {p0}, LaY/G;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_1f
    invoke-virtual {p1}, Laq/c;->e()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-boolean v2, p0, LaY/G;->F:Z

    if-eqz v2, :cond_57

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {p0, p1}, LaY/G;->b(Laq/c;)LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/G;->a(LaJ/B;)Lt/y;

    move-result-object v3

    invoke-static {v0, v3}, Lau/x;->a(LaJ/B;Lt/y;)Lau/x;

    move-result-object v3

    iget-boolean v0, p0, LaY/G;->G:Z

    if-eqz v0, :cond_4d

    new-instance v0, Lau/j;

    invoke-virtual {v2}, Lau/b;->au()Lau/x;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lau/j;-><init>(Lau/x;Lau/x;)V

    :goto_46
    invoke-virtual {p0, v0}, LaY/G;->b(Lau/j;)V

    invoke-virtual {p0}, LaY/G;->c()V

    goto :goto_13

    :cond_4d
    new-instance v0, Lau/j;

    invoke-virtual {v2}, Lau/b;->as()Lau/x;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lau/j;-><init>(Lau/x;Lau/x;)V

    goto :goto_46

    :cond_57
    invoke-virtual {p1}, Laq/c;->h()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {p1}, Laq/c;->f()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {p1}, Laq/c;->j()Z

    move-result v2

    if-eqz v2, :cond_e1

    :cond_69
    iget-object v2, p0, LaY/G;->c:LaJ/p;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v3

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v4

    invoke-virtual {v2, v3, v4}, LaJ/p;->b(II)LaJ/B;

    move-result-object v2

    invoke-virtual {p0, v2}, LaY/G;->b(LaJ/B;)I

    move-result v2

    if-ltz v2, :cond_c8

    invoke-virtual {p1}, Laq/c;->j()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v3, v2}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v4

    iget-object v3, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v5, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v5, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v5

    invoke-direct {p0, v4, v5}, LaY/G;->a(Lcom/google/googlenav/D;Lcom/google/googlenav/D;)Z

    move-result v5

    if-eqz v5, :cond_b7

    move v2, v0

    :cond_9e
    :goto_9e
    if-eqz v2, :cond_a2

    if-ne v2, v3, :cond_13

    :cond_a2
    iput-boolean v1, p0, LaY/G;->F:Z

    if-nez v2, :cond_a7

    move v0, v1

    :cond_a7
    iput-boolean v0, p0, LaY/G;->G:Z

    iget-boolean v0, p0, LaY/G;->G:Z

    if-eqz v0, :cond_c5

    const-string v0, "ds"

    :goto_af
    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, LaY/G;->a(Laq/c;I)V

    goto/16 :goto_13

    :cond_b7
    iget-object v5, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v5, v3}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v5

    invoke-direct {p0, v4, v5}, LaY/G;->a(Lcom/google/googlenav/D;Lcom/google/googlenav/D;)Z

    move-result v4

    if-eqz v4, :cond_9e

    move v2, v3

    goto :goto_9e

    :cond_c5
    const-string v0, "de"

    goto :goto_af

    :cond_c8
    move v2, v1

    :goto_c9
    if-eqz v2, :cond_de

    const/4 v2, -0x1

    const-string v3, "c"

    const-string v4, "c"

    invoke-virtual {p0, v2, v3, v4}, LaY/G;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LaY/G;->Z()V

    if-eqz p2, :cond_de

    invoke-virtual {p1}, Laq/c;->j()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_de
    move v1, v0

    goto/16 :goto_13

    :cond_e1
    move v2, v0

    goto :goto_c9
.end method

.method public a(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x4

    invoke-super {p0, p1, v0}, LaY/A;->a(Lbb/E;I)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 4

    iget-object v0, p0, LaY/G;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v0

    invoke-static {p1, v0}, Lau/b;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/x;)Lau/b;

    move-result-object v0

    instance-of v1, v0, Lau/r;

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lau/b;->H()V

    :cond_11
    iput-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    const/4 v0, 0x1

    return v0
.end method

.method public aD()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aH()I
    .registers 2

    const v0, 0x7f0e0007

    return v0
.end method

.method public aJ()Ljava/lang/CharSequence;
    .registers 2

    const/16 v0, 0xe7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aK()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public aL()Ljava/lang/CharSequence;
    .registers 2

    const/16 v0, 0xe3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->l()Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x212

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v1}, Lau/b;->au()Lau/x;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bJ;->a(Lau/x;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    invoke-virtual {v1}, Lau/b;->m()Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x218

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_30
    invoke-virtual {v1}, Lau/b;->n()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v0, 0x20d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_3d
    const/16 v0, 0x219

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public aN()Lah/f;
    .registers 3

    iget-object v0, p0, LaY/G;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->ah:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected aR()V
    .registers 6

    invoke-super {p0}, LaY/A;->aR()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-static {p0}, LaY/Y;->k(LaY/i;)Ljava/lang/String;

    move-result-object v1

    :try_start_f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lau/b;->b(Ljava/io/DataOutput;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_27} :catch_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    const-string v1, "UI-DL save"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :catch_2f
    move-exception v0

    goto :goto_27
.end method

.method public aV()Z
    .registers 3

    invoke-static {p0}, Laf/l;->a(Laf/j;)V

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->w()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lau/b;->h_()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_13
    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lau/b;)V

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {v0}, Lau/b;->G()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lau/b;)V

    :cond_25
    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lau/b;->n()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->b_(Z)V

    const/4 v0, 0x1

    goto :goto_19
.end method

.method public aW()V
    .registers 3

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->aB()I

    move-result v0

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->aN()Lau/b;

    move-result-object v1

    iput-object v1, p0, LaY/G;->f:Lcom/google/googlenav/E;

    iget-object v1, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v1, v1, Lau/v;

    if-eqz v1, :cond_22

    invoke-virtual {p0}, LaY/G;->j()Lau/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lau/v;->w(I)V

    :cond_22
    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->n()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b_(Z)V

    :cond_32
    return-void
.end method

.method public aY()V
    .registers 3

    invoke-virtual {p0}, LaY/G;->ah()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/G;->b(B)V

    :cond_13
    invoke-super {p0}, LaY/A;->aY()V

    invoke-direct {p0}, LaY/G;->bQ()V

    return-void
.end method

.method public aZ()V
    .registers 1

    invoke-virtual {p0}, LaY/G;->bg()Z

    invoke-super {p0}, LaY/A;->aZ()V

    invoke-direct {p0}, LaY/G;->bR()V

    return-void
.end method

.method public aa()Z
    .registers 2

    invoke-super {p0}, LaY/A;->aa()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, LaY/G;->F:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public ab()Z
    .registers 2

    iget-boolean v0, p0, LaY/G;->F:Z

    return v0
.end method

.method public ad()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public al()[Laq/a;
    .registers 7

    const/4 v5, 0x1

    invoke-virtual {p0}, LaY/G;->ae()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/google/googlenav/ui/n;->q:Laq/a;

    invoke-static {v0, v5}, Laq/a;->a(Laq/a;Z)Laq/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {v2}, Lau/b;->ab()Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/google/googlenav/ui/n;->ai:Laq/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    invoke-virtual {p0}, LaY/G;->bo()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->as()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->q()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/google/googlenav/ui/n;->ak:Laq/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    sget-object v0, Lcom/google/googlenav/ui/n;->aj:Laq/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/google/googlenav/ui/s;->a(Lau/b;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, LaY/G;->bj()Z

    move-result v0

    if-eqz v0, :cond_9c

    sget-object v0, Lcom/google/googlenav/ui/n;->av:Laq/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    :goto_5e
    invoke-virtual {p0, v2}, LaY/G;->d(Lau/b;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/google/googlenav/ui/n;->al:Laq/a;

    invoke-virtual {v2}, Lau/b;->k()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a2

    sget-object v0, Lcom/google/googlenav/ui/n;->am:Laq/a;

    :cond_6f
    :goto_6f
    invoke-static {v0, v5}, Laq/a;->a(Laq/a;Z)Laq/a;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_76
    invoke-virtual {v2}, Lau/b;->e()Lcom/google/googlenav/D;

    move-result-object v0

    if-nez v0, :cond_b5

    invoke-virtual {v2}, Lau/b;->ay()LaJ/B;

    move-result-object v0

    :goto_80
    invoke-virtual {v2}, Lau/b;->m()Z

    move-result v2

    if-nez v2, :cond_91

    invoke-virtual {p0, v0}, LaY/G;->c(LaJ/B;)Z

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lcom/google/googlenav/ui/n;->aw:Laq/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Laq/a;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_8

    :cond_9c
    sget-object v0, Lcom/google/googlenav/ui/n;->au:Laq/a;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_a2
    invoke-virtual {v2}, Lau/b;->k()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_ac

    sget-object v0, Lcom/google/googlenav/ui/n;->an:Laq/a;

    goto :goto_6f

    :cond_ac
    invoke-virtual {v2}, Lau/b;->k()I

    move-result v3

    if-ne v3, v5, :cond_6f

    sget-object v0, Lcom/google/googlenav/ui/n;->ao:Laq/a;

    goto :goto_6f

    :cond_b5
    invoke-virtual {v2}, Lau/b;->e()Lcom/google/googlenav/D;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v0

    goto :goto_80
.end method

.method public aq()V
    .registers 1

    return-void
.end method

.method public ar()V
    .registers 2

    iget-object v0, p0, LaY/G;->L:LaY/D;

    invoke-virtual {v0}, LaY/D;->a()Lcom/google/googlenav/ui/view/android/n;

    move-result-object v0

    iput-object v0, p0, LaY/G;->r:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method public as()Lcom/google/googlenav/E;
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    return-object v0
.end method

.method public ax()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Laq/c;)LaJ/B;
    .registers 6

    iget-object v0, p0, LaY/G;->c:LaJ/p;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v1

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v2

    sget v3, LaY/G;->y:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, LaJ/p;->b(II)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public b(Lau/j;)V
    .registers 4

    invoke-virtual {p0, p1}, LaY/G;->a(Lau/j;)Lau/b;

    move-result-object v0

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lau/k;)V

    return-void
.end method

.method public b(Lbb/E;)Z
    .registers 3

    invoke-virtual {p0}, LaY/G;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-direct {p0, v0}, LaY/G;->j(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public bf()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x26

    const/16 v3, 0x3d

    invoke-static {}, Lcom/google/googlenav/M;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Directions"

    invoke-static {v0}, Lac/a;->c(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->as()Lau/x;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v2, "saddr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lau/x;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->au()Lau/x;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v2, "daddr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lau/x;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4e
    const-string v1, "dirflg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->k()I

    move-result v1

    packed-switch v1, :pswitch_data_7e

    :goto_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_66
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    :pswitch_6c
    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    :pswitch_72
    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    :pswitch_78
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_66
        :pswitch_6c
        :pswitch_72
        :pswitch_78
    .end packed-switch
.end method

.method public bg()Z
    .registers 2

    iget-object v0, p0, LaY/G;->E:Lcom/google/googlenav/ui/view/android/bj;

    if-eqz v0, :cond_e

    iget-object v0, p0, LaY/G;->E:Lcom/google/googlenav/ui/view/android/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/G;->E:Lcom/google/googlenav/ui/view/android/bj;

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bh()V
    .registers 3

    iget-object v0, p0, LaY/G;->L:LaY/D;

    invoke-direct {p0}, LaY/G;->bH()Lcom/google/googlenav/ui/view/android/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, LaY/D;->a(Lcom/google/googlenav/ui/view/android/bx;)V

    return-void
.end method

.method protected bi()Z
    .registers 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, LaY/G;->bM()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v1, "nc"

    invoke-direct {p0, v1}, LaY/G;->e(Ljava/lang/String;)V

    invoke-direct {p0}, LaY/G;->bO()V

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, LaY/G;->bg()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, LaY/G;->ae()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v4}, LaY/G;->b(I)V

    goto :goto_12

    :cond_23
    iget-object v2, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/x;->b()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_8c

    :cond_40
    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    goto :goto_12

    :sswitch_46
    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-static {v1, v2}, LaY/G;->a(Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/y;)Z

    goto :goto_12

    :sswitch_51
    invoke-virtual {p0, v1, v5}, LaY/G;->c(ILjava/lang/Object;)V

    goto :goto_12

    :sswitch_55
    invoke-virtual {p0, v1, v5}, LaY/G;->b(ILjava/lang/Object;)V

    goto :goto_12

    :sswitch_59
    move v0, v1

    goto :goto_12

    :sswitch_5b
    iget-object v1, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v1, v1, Lau/v;

    if-eqz v1, :cond_68

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lau/b;->s(I)V

    :cond_68
    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->f(Lau/b;)V

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    goto :goto_12

    :sswitch_77
    const-string v1, "b"

    invoke-static {v1}, LaY/G;->b(Ljava/lang/String;)V

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/D;->b(Lau/k;)V

    iget-object v1, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    goto :goto_12

    nop

    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_77
        0x2 -> :sswitch_5b
        0x3 -> :sswitch_51
        0x4 -> :sswitch_55
        0x7 -> :sswitch_46
        0x12 -> :sswitch_59
        0x18 -> :sswitch_46
        0x19 -> :sswitch_46
        0x1a -> :sswitch_46
    .end sparse-switch
.end method

.method public bj()Z
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v0, v0, Lau/v;

    return v0
.end method

.method public bk()Z
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v0, v0, Lau/r;

    return v0
.end method

.method public bl()Z
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v0, v0, Lau/w;

    return v0
.end method

.method public bm()Z
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v0, v0, Lau/i;

    return v0
.end method

.method public bn()Z
    .registers 2

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/G;->d(Lau/b;)Z

    move-result v0

    return v0
.end method

.method bo()Z
    .registers 2

    iget-object v0, p0, LaY/G;->C:LaE/h;

    if-eqz v0, :cond_16

    iget-object v0, p0, LaY/G;->C:LaE/h;

    invoke-virtual {v0}, LaE/h;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, LaY/G;->C:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method bp()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v2

    invoke-virtual {v2}, Lau/b;->Q()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {v2}, Lau/b;->P()I

    move-result v0

    invoke-virtual {v2}, Lau/b;->ax()I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {v2}, Lau/b;->O()Z

    move-result v3

    if-eqz v3, :cond_51

    const/16 v3, 0xf5

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v2}, Lau/b;->N()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_35
    if-eqz v0, :cond_4b

    if-eqz v2, :cond_4a

    const/16 v1, 0xe9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v2, v3, v6

    invoke-static {v1, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4a
    :goto_4a
    return-object v0

    :cond_4b
    if-eqz v2, :cond_4f

    move-object v0, v2

    goto :goto_4a

    :cond_4f
    move-object v0, v1

    goto :goto_4a

    :cond_51
    move-object v2, v1

    goto :goto_35

    :cond_53
    move-object v0, v1

    goto :goto_19
.end method

.method bq()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, LaY/G;->bk()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, LaY/G;->bD()Lau/r;

    move-result-object v1

    invoke-virtual {v1}, Lau/r;->O()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    invoke-direct {p0}, LaY/G;->bC()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v1

    invoke-virtual {v1}, Lau/b;->G()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x234

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_2a
    const/16 v2, 0x3c

    if-lt v1, v2, :cond_11

    invoke-direct {p0}, LaY/G;->bD()Lau/r;

    move-result-object v0

    invoke-virtual {v0}, Lau/r;->N()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x4c9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method br()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, LaY/G;->bj()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, LaY/G;->j()Lau/v;

    move-result-object v1

    invoke-virtual {v1}, Lau/v;->R()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/google/googlenav/ui/bq;->a(Lam/b;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/google/googlenav/ui/bq;->c(Lam/b;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public bs()Z
    .registers 2

    iget-boolean v0, p0, LaY/G;->F:Z

    return v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, LaY/G;->H:Z

    return-void
.end method

.method public c(Lau/b;)V
    .registers 3

    iget-object v0, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/D;->a(Lau/k;)V

    return-void
.end method

.method public c(Lcom/google/googlenav/E;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    if-ne p1, v0, :cond_29

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->F()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->l()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, LaY/G;->az()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, LaY/G;->ai()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, LaY/G;->x()V

    :cond_28
    :goto_28
    return-void

    :cond_29
    move-object v0, p1

    check-cast v0, Lau/b;

    iget-object v2, p0, LaY/G;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->a()V

    invoke-interface {p1}, Lcom/google/googlenav/E;->f()I

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, LaY/G;->f:Lcom/google/googlenav/E;

    instance-of v2, v2, Lau/r;

    if-eqz v2, :cond_47

    invoke-direct {p0}, LaY/G;->bD()Lau/r;

    move-result-object v2

    invoke-virtual {v2}, Lau/r;->F()Z

    move-result v2

    if-nez v2, :cond_4f

    :cond_47
    :goto_47
    invoke-direct {p0, p1, v1}, LaY/G;->a(Lcom/google/googlenav/E;Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lau/b;->r(I)V

    goto :goto_28

    :cond_4f
    const/4 v1, 0x0

    goto :goto_47
.end method

.method d(Lau/b;)Z
    .registers 5

    invoke-virtual {p1}, Lau/b;->v()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lau/b;->w()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lau/b;->A()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lau/b;->U()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Lau/b;->aD()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->aE()LaJ/B;

    move-result-object v1

    invoke-virtual {p1}, Lau/b;->k()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LaY/G;->a(LaJ/B;LaJ/B;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 2

    invoke-virtual {p0}, LaY/G;->bj()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, LaY/G;->bx()[Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, LaY/G;->bl()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, LaY/G;->bz()[Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    goto :goto_a

    :cond_16
    invoke-virtual {p0}, LaY/G;->bm()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, LaY/G;->bA()[Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    goto :goto_a

    :cond_21
    invoke-direct {p0}, LaY/G;->bB()[Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    goto :goto_a
.end method

.method e()Z
    .registers 2

    invoke-virtual {p0}, LaY/G;->a()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->z()Z

    move-result v0

    return v0
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/d;

    invoke-direct {v0, p0}, Lba/d;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2d

    invoke-virtual {p0}, LaY/G;->ae()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "m"

    const-string v2, "#"

    invoke-virtual {p0, v1, v2}, LaY/G;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, LaY/G;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    invoke-direct {p0, v1}, LaY/G;->i(I)V

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const-string v1, "l"

    const-string v2, "#"

    invoke-virtual {p0, v1, v2}, LaY/G;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaY/G;->c(ILjava/lang/Object;)V

    goto :goto_1f

    :cond_2d
    invoke-virtual {p0}, LaY/G;->ai()Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-direct {p0, p1}, LaY/G;->g(Laq/b;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-direct {p0}, LaY/G;->bv()Z

    move-result v0

    goto :goto_1f

    :cond_3e
    iget-object v1, p0, LaY/G;->d:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->c()LaJ/B;

    move-result-object v1

    invoke-virtual {p0, v1}, LaY/G;->b(LaJ/B;)I

    move-result v1

    if-ltz v1, :cond_51

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1f

    :cond_51
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5e

    invoke-virtual {p0}, LaY/G;->bi()Z

    move-result v0

    goto :goto_1f

    :cond_5e
    invoke-virtual {p0, p1}, LaY/G;->e(Laq/b;)Z

    move-result v0

    goto :goto_1f
.end method

.method public i()Lab/b;
    .registers 2

    iget-object v0, p0, LaY/G;->I:Lab/b;

    return-object v0
.end method

.method public j()Lau/v;
    .registers 2

    iget-object v0, p0, LaY/G;->f:Lcom/google/googlenav/E;

    check-cast v0, Lau/v;

    return-object v0
.end method

.method protected l()V
    .registers 1

    return-void
.end method

.method protected m()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/G;->h(Z)V

    invoke-super {p0}, LaY/A;->m()V

    return-void
.end method

.method public o()V
    .registers 1

    invoke-virtual {p0}, LaY/G;->bi()Z

    return-void
.end method

.method protected w()I
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/G;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_9
    invoke-virtual {p0}, LaY/G;->av()Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v1

    :goto_10
    add-int/2addr v0, v3

    invoke-virtual {p0}, LaY/G;->bn()Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_17
    add-int/2addr v0, v1

    return v0

    :cond_19
    move v0, v2

    goto :goto_9

    :cond_1b
    move v3, v2

    goto :goto_10

    :cond_1d
    move v1, v2

    goto :goto_17
.end method

.method protected z()V
    .registers 3

    iget-object v0, p0, LaY/G;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_14

    iget-object v0, p0, LaY/G;->r:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    invoke-direct {p0}, LaY/G;->bH()Lcom/google/googlenav/ui/view/android/bx;

    move-result-object v0

    invoke-virtual {p0}, LaY/G;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bx;->a(I)V

    :cond_14
    return-void
.end method
