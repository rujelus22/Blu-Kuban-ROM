.class public Lcom/google/googlenav/ui/wizard/eA;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements LaE/m;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lax/bn;
.implements Lbb/c;
.implements Lcom/google/googlenav/login/i;
.implements Lcom/google/googlenav/ui/wizard/B;
.implements Lcom/google/googlenav/ui/wizard/cR;
.implements Lcom/google/googlenav/ui/wizard/ez;


# static fields
.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/google/googlenav/ui/wizard/eP;

.field private C:Z

.field private D:J

.field private E:Lcom/google/googlenav/bb;

.field private F:Z

.field private G:Lcom/google/googlenav/ui/view/android/ap;

.field private H:Lcom/google/googlenav/ui/view/android/ap;

.field private I:LaQ/g;

.field private J:LaQ/m;

.field private K:Lcom/google/googlenav/ui/wizard/cR;

.field protected a:Lcom/google/googlenav/a;

.field protected g:LaY/f;

.field private j:I

.field private final k:Lcom/google/googlenav/L;

.field private final l:LaE/h;

.field private final m:Lcom/google/googlenav/ui/at;

.field private final n:LaJ/u;

.field private o:LaY/Y;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/google/googlenav/ah;

.field private t:Lam/b;

.field private u:Ljava/util/List;

.field private v:Ljava/util/List;

.field private w:Ljava/util/List;

.field private x:Z

.field private y:LaJ/B;

.field private z:LaJ/H;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;LaE/h;Lcom/google/googlenav/ui/at;LaJ/u;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput v2, p0, Lcom/google/googlenav/ui/wizard/eA;->j:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/eA;->D:J

    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/eA;->F:Z

    new-instance v0, Lcom/google/googlenav/ui/wizard/eK;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eK;-><init>(Lcom/google/googlenav/ui/wizard/eA;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->K:Lcom/google/googlenav/ui/wizard/cR;

    new-instance v0, Lcom/google/googlenav/ui/wizard/eD;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eD;-><init>(Lcom/google/googlenav/ui/wizard/eA;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->g:LaY/f;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eA;->k:Lcom/google/googlenav/L;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/eA;->m:Lcom/google/googlenav/ui/at;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    return-void
.end method

.method public static F()V
    .registers 0

    invoke-static {}, Lcom/google/googlenav/ui/wizard/A;->h()V

    return-void
.end method

.method public static G()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/wizard/eA;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static H()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/wizard/eA;->h:Ljava/lang/String;

    return-object v0
.end method

.method private I()Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/eA;->C:Z

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->T()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->B:Lcom/google/googlenav/ui/wizard/eP;

    sget-object v3, Lcom/google/googlenav/ui/wizard/eP;->b:Lcom/google/googlenav/ui/wizard/eP;

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_6

    :cond_15
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->T()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/googlenav/ui/wizard/eA;->D:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_39

    iget-wide v4, p0, Lcom/google/googlenav/ui/wizard/eA;->D:J

    const-wide/32 v6, 0xdbba0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    :cond_39
    move v0, v1

    goto :goto_6

    :cond_3b
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->z:LaJ/H;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    if-nez v2, :cond_45

    :cond_43
    move v0, v1

    goto :goto_6

    :cond_45
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->c()LaJ/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->z:LaJ/H;

    invoke-virtual {v3}, LaJ/H;->b()LaJ/Y;

    move-result-object v3

    invoke-virtual {v3}, LaJ/Y;->a()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v4}, LaJ/u;->f()LaJ/H;

    move-result-object v4

    invoke-virtual {v4}, LaJ/H;->b()LaJ/Y;

    move-result-object v4

    invoke-virtual {v4}, LaJ/Y;->a()I

    move-result v4

    if-ne v3, v4, :cond_71

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    invoke-virtual {v2, v3}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v2

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    :cond_71
    move v0, v1

    goto :goto_6
.end method

.method private J()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->t:Lam/b;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->u:Ljava/util/List;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->v:Ljava/util/List;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->w:Ljava/util/List;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/eA;->D:J

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->A:Ljava/lang/String;

    return-void
.end method

.method private K()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->Z_()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->r()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->O()V

    :goto_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->x:Z

    goto :goto_c

    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->B()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->M()V

    goto :goto_14
.end method

.method private L()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v2, v0}, LaQ/g;->a(Ljava/lang/String;Z)V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private M()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->L()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->aa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->v:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, LaQ/g;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4
.end method

.method private N()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->J:LaQ/m;

    invoke-virtual {v0, v1}, LaQ/g;->a(LaQ/m;)V

    :cond_b
    return-void
.end method

.method private O()V
    .registers 12

    new-instance v0, LaQ/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hS;->b()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->f()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->aa()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/eA;->v:Ljava/util/List;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/eA;->w:Ljava/util/List;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    if-eqz v6, :cond_32

    const/4 v6, 0x1

    :goto_1f
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->T()Z

    move-result v7

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/eA;->J:LaQ/m;

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, LaQ/g;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZLaQ/m;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/wizard/ez;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    invoke-virtual {v0}, LaQ/g;->show()V

    return-void

    :cond_32
    const/4 v6, 0x0

    goto :goto_1f
.end method

.method private P()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->a()V

    if-eqz v0, :cond_19

    new-instance v0, LaQ/x;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->bN()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, LaQ/x;-><init>(Lcom/google/googlenav/ui/wizard/ez;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private Q()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->r:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    new-instance v0, Lcom/google/googlenav/ui/wizard/eJ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eJ;-><init>(Lcom/google/googlenav/ui/wizard/eA;)V

    new-instance v1, Lcom/google/googlenav/f;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->r:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    goto :goto_4
.end method

.method private R()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->H:Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->H:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->H:Lcom/google/googlenav/ui/view/android/ap;

    :cond_c
    return-void
.end method

.method private S()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private T()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/ui/wizard/eA;->j:I

    if-eq v1, v0, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->m:Lcom/google/googlenav/ui/at;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->m:Lcom/google/googlenav/ui/at;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->o()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private U()V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->T()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v0}, LaE/h;->u()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->V()V

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->W()V

    goto :goto_e
.end method

.method private V()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/google/googlenav/ui/wizard/eP;->b:Lcom/google/googlenav/ui/wizard/eP;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->B:Lcom/google/googlenav/ui/wizard/eP;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->X()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->L()V

    invoke-direct {p0, v0, v1, v1}, Lcom/google/googlenav/ui/wizard/eA;->a(LaJ/B;LaJ/H;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private W()V
    .registers 4

    sget-object v0, Lcom/google/googlenav/ui/wizard/eP;->a:Lcom/google/googlenav/ui/wizard/eP;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->B:Lcom/google/googlenav/ui/wizard/eP;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_23

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->f()LaJ/H;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->z:LaJ/H;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->L()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->f()LaJ/H;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/eA;->a(LaJ/B;LaJ/H;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private X()LaJ/B;
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v1}, LaE/h;->z()LaE/l;

    move-result-object v1

    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, LaE/l;->k()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    if-eqz v3, :cond_37

    iget-wide v3, p0, Lcom/google/googlenav/ui/wizard/eA;->D:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    invoke-virtual {v0, v3}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v3

    const-wide/16 v5, 0x9c4

    cmp-long v3, v3, v5

    if-lez v3, :cond_3c

    iget-wide v3, p0, Lcom/google/googlenav/ui/wizard/eA;->D:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3c

    :cond_37
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    iput-wide v1, p0, Lcom/google/googlenav/ui/wizard/eA;->D:J

    :goto_3b
    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private Y()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->k:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->m()LaY/a;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->g:LaY/f;

    invoke-virtual {v0, v1, v2, v3}, LaY/a;->a(ILcom/google/googlenav/android/ac;LaY/f;)V

    :cond_f
    return-void
.end method

.method private Z()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/be;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eA;LaQ/m;)LaQ/m;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eA;->J:LaQ/m;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eA;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->k:Lcom/google/googlenav/L;

    return-object v0
.end method

.method static a(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;LaE/h;Lcom/google/googlenav/ui/at;LaJ/u;)Lcom/google/googlenav/ui/wizard/eA;
    .registers 11

    new-instance v0, Lcom/google/googlenav/ui/wizard/eA;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/eA;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;LaE/h;Lcom/google/googlenav/ui/at;LaJ/u;)V

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/eA;->ab()V

    return-object v0
.end method

.method private a(Lam/b;)Ljava/util/ArrayList;
    .registers 10

    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Lam/b;->l(I)I

    move-result v1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_28

    invoke-virtual {p1, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    new-instance v5, LaQ/J;

    const-string v6, "pl"

    invoke-direct {v5, v0, v6, v2}, LaQ/J;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, LaQ/I;->a(Lam/b;LaQ/J;)LaQ/I;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->b()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    new-instance v4, LaQ/I;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    new-instance v5, LaQ/J;

    const/4 v6, -0x1

    const-string v7, "pl"

    invoke-direct {v5, v6, v7, v2}, LaQ/J;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v0, v5}, LaQ/I;-><init>(Ljava/lang/String;LaQ/J;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_5f
    return-object v3
.end method

.method private a(LaJ/B;LaJ/H;)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(LaJ/B;LaJ/H;Ljava/lang/String;)V
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->F:Z

    if-eqz v0, :cond_a5

    const-string v0, "n"

    :goto_8
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/eA;->A:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/googlenav/ui/wizard/eA;->F:Z

    const/16 v1, 0x57

    const-string v2, "stp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/google/googlenav/ui/wizard/eA;->j:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    new-instance v1, Lax/bo;

    invoke-direct {v1}, Lax/bo;-><init>()V

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->a(I)Lax/bo;

    move-result-object v1

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->b(I)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lax/bo;->a(Lax/bn;)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v7}, Lax/bo;->g(I)Lax/bo;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/login/g;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->c(Z)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v6}, Lax/bo;->d(Z)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lax/bo;->a(Lam/b;)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v6}, Lax/bo;->e(Z)Lax/bo;

    move-result-object v1

    if-eqz p2, :cond_90

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v2, p2}, LaJ/u;->a(LaJ/H;)I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->c(I)Lax/bo;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v2, p2}, LaJ/u;->b(LaJ/H;)I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->d(I)Lax/bo;

    :cond_90
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/eA;->a(LaJ/H;)V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/eA;->a(LaJ/B;LaJ/H;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    invoke-virtual {v1}, Lax/bo;->a()Lax/bm;

    move-result-object v1

    invoke-virtual {v2, v1}, Lat/h;->c(Lat/g;)V

    invoke-static {v0}, Laf/o;->a(Lam/b;)V

    return-void

    :cond_a5
    const-string v0, "a"

    goto/16 :goto_8
.end method

.method private a(LaJ/H;)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->m:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->v()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {p1}, LaJ/H;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {p1}, LaJ/H;->b()LaJ/Y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->m:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0, v1, v1, v1}, Lcom/google/googlenav/ui/at;->a(ZZZ)V

    goto :goto_15
.end method

.method private a(Lcom/google/googlenav/aV;)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->A:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    :cond_8
    const-string v0, "Not available yet"

    sput-object v0, Lcom/google/googlenav/ui/wizard/eA;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    sput-object v0, Lcom/google/googlenav/ui/wizard/eA;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->v:Ljava/util/List;

    const/4 v0, 0x0

    :goto_1d
    array-length v2, v1

    if-ge v0, v2, :cond_38

    aget-object v2, v1, v0

    new-instance v3, LaQ/J;

    const-string v4, "pl"

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, LaQ/J;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, LaQ/I;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v2, v5, v3}, LaQ/I;-><init>(Ljava/lang/String;Ljava/lang/String;ILaQ/J;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->v:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_38
    return-void
.end method

.method private a(Lcom/google/googlenav/ah;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->c(LaJ/B;)V

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ah;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v2, v0}, LaJ/u;->a(LaJ/H;)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v3, v0}, LaJ/u;->b(LaJ/H;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/google/googlenav/aV;->a([Lcom/google/googlenav/ah;LaJ/H;II)Lcom/google/googlenav/aV;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->o:LaY/Y;

    invoke-virtual {v1, v0}, LaY/Y;->a(Lcom/google/googlenav/aV;)LaY/s;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->o:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaY/i;->a(B)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->P()V

    return-void
.end method

.method private a(Lcom/google/googlenav/bc;)V
    .registers 14

    const-wide/16 v4, 0x0

    const/16 v11, 0x10

    const/4 v6, 0x0

    const/16 v10, 0x57

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v0}, LaE/h;->s()LaE/l;

    move-result-object v7

    if-eqz v7, :cond_91

    invoke-virtual {v7}, LaE/l;->k()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_91

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    invoke-virtual {v7}, LaE/l;->k()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_91

    const/4 v0, 0x1

    :goto_30
    if-eqz v7, :cond_93

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-virtual {v7}, LaE/l;->k()J

    move-result-wide v8

    sub-long/2addr v1, v8

    const-string v3, "lkl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_5b
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->T()Z

    move-result v1

    if-eqz v1, :cond_63

    if-eqz v0, :cond_9b

    :cond_63
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->T()Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "f"

    const-string v2, "v"

    invoke-static {v10, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_70
    if-eqz v0, :cond_79

    const-string v0, "f"

    const-string v1, "h"

    invoke-static {v10, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_79
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v1, v11}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->k:Lcom/google/googlenav/L;

    invoke-virtual {p1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    :goto_90
    return-void

    :cond_91
    move v0, v6

    goto :goto_30

    :cond_93
    const-string v1, "nlkl"

    const-string v2, ""

    invoke-static {v1, v2}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5b

    :cond_9b
    const-string v0, "f"

    const-string v1, "w"

    invoke-static {v10, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->E:Lcom/google/googlenav/bb;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x242

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v3, v11}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    new-instance v0, Lap/d;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/eM;

    invoke-direct {v2, p0, v7}, Lcom/google/googlenav/ui/wizard/eM;-><init>(Lcom/google/googlenav/ui/wizard/eA;LaE/l;)V

    invoke-direct {v0, v1, v2}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    invoke-virtual {v0}, Lap/d;->g()V

    goto :goto_90
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eA;LaJ/B;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eA;->b(LaJ/B;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eA;Lcom/google/googlenav/ah;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ah;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eA;Ljava/lang/String;LaJ/H;Lcom/google/googlenav/aV;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/eA;->a(Ljava/lang/String;LaJ/H;Lcom/google/googlenav/aV;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/eQ;)V
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    invoke-interface {p1, v0}, Lcom/google/googlenav/ui/wizard/eQ;->a(Lcom/google/googlenav/ah;)V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/google/googlenav/ui/wizard/eB;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/eB;-><init>(Lcom/google/googlenav/ui/wizard/eA;Lcom/google/googlenav/ui/wizard/eQ;)V

    new-instance v2, Lcom/google/googlenav/f;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->r:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V

    goto :goto_9
.end method

.method private a(Ljava/lang/String;LaJ/H;Lcom/google/googlenav/aV;)V
    .registers 6

    sget-object v0, Lcom/google/googlenav/ui/wizard/eP;->c:Lcom/google/googlenav/ui/wizard/eP;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->B:Lcom/google/googlenav/ui/wizard/eP;

    invoke-virtual {p2}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_2b

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->y:LaJ/B;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eA;->z:LaJ/H;

    if-eqz p3, :cond_2c

    invoke-virtual {p3}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p3}, Lcom/google/googlenav/aV;->aD()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2c

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eA;->A:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/eA;->a(LaJ/H;)V

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/aV;)V

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/ui/wizard/eA;->a(LaJ/B;LaJ/H;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->M()V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    invoke-direct {p0, v0, p2, p1}, Lcom/google/googlenav/ui/wizard/eA;->a(LaJ/B;LaJ/H;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private a(Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eA;->w:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, LaQ/g;->b(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method private aa()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->B:Lcom/google/googlenav/ui/wizard/eP;

    sget-object v1, Lcom/google/googlenav/ui/wizard/eP;->b:Lcom/google/googlenav/ui/wizard/eP;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->q:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    const/16 v0, 0x2fd

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->q:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private ab()V
    .registers 3

    new-instance v0, LaQ/o;

    invoke-direct {v0}, LaQ/o;-><init>()V

    invoke-static {}, Lcom/google/googlenav/bn;->b()Lcom/google/googlenav/bn;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, LaQ/o;->a(Lcom/google/googlenav/bn;)LaQ/o;

    :cond_e
    invoke-virtual {v0}, LaQ/o;->a()LaQ/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->J:LaQ/m;

    return-void
.end method

.method private ac()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->af()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->S()Lcom/google/googlenav/ui/wizard/hG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hG;->o()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->E:Lcom/google/googlenav/bb;

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eA;)LaY/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->o:LaY/Y;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eA;Lcom/google/googlenav/ah;)Lcom/google/googlenav/ah;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 10

    const/4 v6, 0x4

    const/4 v5, 0x0

    const-string v0, "*"

    const-string v1, "*"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/eA;->b(Ljava/lang/String;Ljava/lang/String;LaQ/I;)Lcom/google/googlenav/bc;

    move-result-object v0

    if-eqz p2, :cond_37

    new-instance v1, Lcom/google/googlenav/aZ;

    const-string v2, ""

    invoke-direct {v1, v5, v2, p2}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aY;

    const/16 v3, 0x113

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v1}, Lcom/google/googlenav/aY;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2}, LK/bp;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->a(Ljava/util/Map;)Lcom/google/googlenav/bc;

    :cond_37
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;LaQ/I;)Lcom/google/googlenav/bc;
    .registers 8

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->d(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->f(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->g(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->e(I)Lcom/google/googlenav/bc;

    move-result-object v0

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->f(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bc;->a(LaQ/I;)Lcom/google/googlenav/bc;

    move-result-object v1

    new-instance v0, Lcom/google/googlenav/ui/wizard/eL;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eL;-><init>(Lcom/google/googlenav/ui/wizard/eA;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->B:Lcom/google/googlenav/ui/wizard/eP;

    sget-object v2, Lcom/google/googlenav/ui/wizard/eP;->b:Lcom/google/googlenav/ui/wizard/eP;

    if-ne v0, v2, :cond_73

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    if-eqz v0, :cond_71

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->Z()Ljava/lang/String;

    move-result-object v0

    :goto_52
    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->d(Ljava/lang/String;)Lcom/google/googlenav/bc;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->f()LaJ/H;

    move-result-object v2

    invoke-virtual {v2, v0}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    :cond_70
    :goto_70
    return-object v1

    :cond_71
    const/4 v0, 0x0

    goto :goto_52

    :cond_73
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->B:Lcom/google/googlenav/ui/wizard/eP;

    sget-object v2, Lcom/google/googlenav/ui/wizard/eP;->c:Lcom/google/googlenav/ui/wizard/eP;

    if-ne v0, v2, :cond_70

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->z:LaJ/H;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    goto :goto_70
.end method

.method private b(LaJ/B;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->E:Lcom/google/googlenav/bb;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    invoke-virtual {v0, p1}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    new-instance v1, Lcom/google/googlenav/bc;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->E:Lcom/google/googlenav/bb;

    invoke-direct {v1, v2}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/bc;->d(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->E:Lcom/google/googlenav/bb;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->k:Lcom/google/googlenav/L;

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    goto :goto_5
.end method

.method private b(Lam/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->A:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    :goto_8
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/eA;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    sput-object v0, Lcom/google/googlenav/ui/wizard/eA;->i:Ljava/lang/String;

    return-void

    :cond_15
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    goto :goto_8
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/eA;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/eA;)LaQ/g;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->J()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/eA;)LaE/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->V()V

    return-void
.end method

.method static synthetic h(Lcom/google/googlenav/ui/wizard/eA;)LaJ/u;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->n:LaJ/u;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/wizard/eA;)Lcom/google/googlenav/bb;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->E:Lcom/google/googlenav/bb;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/wizard/eA;)LaQ/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->J:LaQ/m;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/ui/wizard/eA;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->N()V

    return-void
.end method


# virtual methods
.method public B()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->b()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, LaQ/g;->a(Ljava/util/List;)V

    :cond_17
    return-void
.end method

.method public B_()V
    .registers 1

    return-void
.end method

.method public C()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->E:Lcom/google/googlenav/bb;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->ac()V

    :cond_7
    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public D()V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/bl;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {}, Lcom/google/googlenav/bl;->a()Lcom/google/googlenav/bl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bl;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/eO;-><init>(Lcom/google/googlenav/ui/wizard/eA;Ljava/util/List;Lax/aC;Z)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/eC;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/googlenav/ui/wizard/eC;-><init>(Lcom/google/googlenav/ui/wizard/eA;Lap/c;Lax/aq;)V

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/eC;->g()V

    goto :goto_6
.end method

.method public E()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/eA;->j:I

    return v0
.end method

.method public E_()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/bl;->h()Lcom/google/googlenav/bn;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v1, LaQ/o;

    invoke-direct {v1}, LaQ/o;-><init>()V

    invoke-virtual {v1, v0}, LaQ/o;->a(Lcom/google/googlenav/bn;)LaQ/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(LaQ/o;)V

    :cond_12
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->U()V

    return-void
.end method

.method public F_()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->J:LaQ/m;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(LaQ/o;)V

    return-void
.end method

.method public P_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Q_()V
    .registers 1

    return-void
.end method

.method public S_()V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->S()Z

    new-instance v0, Lcom/google/googlenav/ui/wizard/eH;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eH;-><init>(Lcom/google/googlenav/ui/wizard/eA;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eQ;)V

    return-void
.end method

.method public T_()V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/du;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/du;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->k:Lcom/google/googlenav/L;

    invoke-interface {v1}, Lcom/google/googlenav/L;->m()LaY/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/du;->d:LaY/a;

    new-instance v1, Lcom/google/googlenav/h;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    invoke-direct {v1, v2}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ah;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/du;->a:Lcom/google/googlenav/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/googlenav/ui/wizard/du;->c:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/du;)V

    return-void
.end method

.method public U_()V
    .registers 3

    const/16 v0, 0x57

    const-string v1, "p"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->S()Z

    new-instance v0, Lcom/google/googlenav/ui/wizard/eI;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eI;-><init>(Lcom/google/googlenav/ui/wizard/eA;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eQ;)V

    return-void
.end method

.method public V_()V
    .registers 7

    const/16 v5, 0xbf

    const/4 v4, 0x1

    const/16 v0, 0x57

    const-string v1, "d"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v2, Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/wizard/cZ;-><init>()V

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->a(I)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/cZ;->b(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->a(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lcom/google/googlenav/ui/wizard/cR;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    const/16 v3, 0x423

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    const/16 v3, 0x517

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->a(B)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->t:Lam/b;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->b(Lam/b;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->u:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cZ;->a(Ljava/util/List;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/wizard/cZ;->e(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lam/b;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/cZ;)V

    invoke-static {v0}, Laf/o;->a(Lam/b;)V

    return-void
.end method

.method public a(LaJ/B;)I
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/z;->a(LaJ/B;)I

    move-result v0

    goto :goto_b
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/eA;->e:I

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-nez v0, :cond_14

    const/4 v0, 0x4

    goto :goto_d

    :cond_14
    iget v0, p0, Lcom/google/googlenav/ui/wizard/eA;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-nez v0, :cond_6

    const/4 v0, 0x4

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/google/googlenav/ui/wizard/eA;->e:I

    goto :goto_5
.end method

.method public a(ILaE/h;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->ac()V

    return-void
.end method

.method public a(J)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->v:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->x:Z

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->B:Lcom/google/googlenav/ui/wizard/eP;

    sget-object v1, Lcom/google/googlenav/ui/wizard/eP;->b:Lcom/google/googlenav/ui/wizard/eP;

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/eE;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/eE;-><init>(Lcom/google/googlenav/ui/wizard/eA;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_15
    return-void
.end method

.method a(LaQ/o;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/eF;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/eF;-><init>(Lcom/google/googlenav/ui/wizard/eA;LaQ/o;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(LaY/Y;I)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eA;->o:LaY/Y;

    const/16 v0, 0x57

    const-string v1, "ac"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x4

    if-eq p2, v0, :cond_19

    iput p2, p0, Lcom/google/googlenav/ui/wizard/eA;->j:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->C:Z

    :goto_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->l()V

    return-void

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->C:Z

    goto :goto_15
.end method

.method public a(Lam/b;Ljava/util/List;Lam/b;J)V
    .registers 12

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_70

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eA;->t:Lam/b;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eA;->u:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->a:Lcom/google/googlenav/a;

    invoke-static {v3}, Lax/aP;->a(Lcom/google/googlenav/a;)Z

    move-result v3

    if-eqz v3, :cond_78

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->a:Lcom/google/googlenav/a;

    invoke-virtual {v1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_21
    if-eqz v4, :cond_41

    move v1, v2

    move-object v3, v0

    :goto_25
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object v3, v0

    :cond_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_41
    move-object v3, v0

    :cond_42
    const/4 v0, 0x3

    invoke-static {v3, v0, v2}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->q:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v3, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->r:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/wizard/eA;->b(Lam/b;)V

    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/wizard/eA;->a(Lam/b;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    if-nez v0, :cond_69

    const/4 v0, 0x4

    invoke-static {p1, v0, v2}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    sput-object v0, Lcom/google/googlenav/ui/wizard/eA;->i:Ljava/lang/String;

    :cond_69
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->Q()V

    :goto_6c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->M()V

    return-void

    :cond_70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->v:Ljava/util/List;

    goto :goto_6c

    :cond_78
    move-object v4, v1

    goto :goto_21
.end method

.method public a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->x:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->b()V

    const/4 v0, 0x4

    invoke-static {p3, v0, v1}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->p:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p3, v0, v1}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->q:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->hide()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->n()V

    :cond_2b
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->Q()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/C;)V
    .registers 5

    const/16 v2, 0x57

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget v0, p1, Lcom/google/googlenav/ui/wizard/C;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    const-string v0, "u"

    iget-object v1, p1, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_12
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/C;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Ljava/lang/String;)V

    :cond_17
    return-void

    :cond_18
    const-string v0, "c"

    iget v1, p1, Lcom/google/googlenav/ui/wizard/C;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_12
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Ljava/lang/String;Ljava/lang/String;LaQ/I;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/eA;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/bc;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;LaQ/I;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/eA;->b(Ljava/lang/String;Ljava/lang/String;LaQ/I;)Lcom/google/googlenav/bc;

    move-result-object v0

    if-eqz p3, :cond_11

    const/16 v1, 0x57

    const-string v2, "t"

    invoke-virtual {p3}, LaQ/I;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_11
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/bc;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->x:Z

    sparse-switch p1, :sswitch_data_38

    const/4 v0, 0x0

    :goto_7
    return v0

    :sswitch_8
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/ay;->h()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    goto :goto_7

    :sswitch_25
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    goto :goto_7

    :sswitch_33
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->g()V

    goto :goto_7

    nop

    :sswitch_data_38
    .sparse-switch
        0x70e -> :sswitch_33
        0x9cd -> :sswitch_25
        0x9d4 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Lbb/E;)Z
    .registers 5

    check-cast p1, Lbb/a;

    invoke-virtual {p1}, Lbb/a;->a()I

    move-result v0

    invoke-virtual {p1}, Lbb/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lbb/a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/eA;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->x:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->K()V

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/z;->a(Z)Z

    move-result v0

    goto :goto_8
.end method

.method protected b()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->I()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->J()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->T()Z

    move-result v1

    invoke-virtual {v0, v3, v1, v2}, LaQ/g;->a(Ljava/lang/String;ZZ)V

    :cond_18
    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/eA;->x:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v0, p0}, LaE/h;->a(LaE/m;)V

    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->E:Lcom/google/googlenav/bb;

    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/eA;->F:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    :cond_3e
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->Y()V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->C:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->A:Ljava/lang/String;

    if-nez v0, :cond_4c

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->U()V

    :cond_4c
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->h()V

    :cond_5d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->D()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->K()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->show()V

    :cond_6c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->M()V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/wizard/C;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/C;Lcom/google/googlenav/ui/wizard/B;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->o:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->y()LaY/aT;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LaY/aT;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->l:LaE/h;

    invoke-virtual {v0, p0}, LaE/h;->c(LaE/m;)V

    :cond_c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->S()Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    invoke-virtual {v0}, LaQ/g;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->I:LaQ/g;

    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->U()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->d()Lcom/google/googlenav/ui/wizard/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aT;->a()V

    :cond_34
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->invalidateOptionsMenu()V

    :cond_49
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eA;->x:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->B()V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/B;)V

    return-void
.end method

.method public h()V
    .registers 3

    const/16 v0, 0x57

    const-string v1, "r"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->S()Z

    new-instance v0, Lcom/google/googlenav/ui/wizard/eG;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eG;-><init>(Lcom/google/googlenav/ui/wizard/eA;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eA;->a(Lcom/google/googlenav/ui/wizard/eQ;)V

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public m()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->k()V

    const/16 v0, 0xa

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public n()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_18

    new-instance v0, LaQ/x;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eA;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->s:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->bN()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, LaQ/x;-><init>(Lcom/google/googlenav/ui/wizard/ez;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->G:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->show()V

    :cond_18
    return-void
.end method

.method public o()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->S()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->H:Lcom/google/googlenav/ui/view/android/ap;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eA;->R()V

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->a()V

    :cond_33
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eA;->a()V

    goto :goto_6
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public p()V
    .registers 7

    const/4 v5, 0x0

    const/16 v0, 0xc

    const/16 v1, 0x57

    const-string v2, "sloc"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v3, Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/wizard/cZ;-><init>()V

    const/16 v4, 0xbf

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/wizard/cZ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/cZ;->a(I)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/cZ;->a(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/wizard/cZ;->b(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/cZ;->e(Z)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eA;->K:Lcom/google/googlenav/ui/wizard/cR;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lcom/google/googlenav/ui/wizard/cR;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cZ;->a(Lam/b;)Lcom/google/googlenav/ui/wizard/cZ;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/cZ;)V

    return-void
.end method

.method public s()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
