.class public abstract LaY/i;
.super Ljava/lang/Object;

# interfaces
.implements Laf/j;
.implements Lar/m;
.implements Lbb/c;
.implements Lcom/google/googlenav/ui/ag;
.implements Lcom/google/googlenav/ui/p;
.implements Lt/x;


# instance fields
.field private A:Z

.field private B:LaY/k;

.field private C:LaY/j;

.field private D:I

.field private E:I

.field private F:B

.field protected final a:Lcom/google/googlenav/ui/bw;

.field protected final b:Lcom/google/googlenav/ui/D;

.field protected final c:LaJ/p;

.field protected final d:LaJ/u;

.field protected final e:Landroid/graphics/Point;

.field protected f:Lcom/google/googlenav/E;

.field protected g:Lbb/d;

.field protected h:Lcom/google/googlenav/D;

.field protected final i:Lcom/google/googlenav/ui/af;

.field protected j:Lbb/d;

.field protected k:Lbb/d;

.field protected l:Lbb/d;

.field protected m:Lbb/d;

.field protected n:Lah/f;

.field protected o:Z

.field protected p:Z

.field protected q:[Ljava/lang/Boolean;

.field protected r:Lcom/google/googlenav/ui/view/android/bs;

.field protected final s:Ljava/util/Set;

.field protected t:LaY/i;

.field protected u:LaY/r;

.field protected v:Lba/a;

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V
    .registers 10

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, LaY/i;->e:Landroid/graphics/Point;

    iput v3, p0, LaY/i;->w:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    iput-boolean v2, p0, LaY/i;->x:Z

    iput-boolean v2, p0, LaY/i;->y:Z

    iput-boolean v1, p0, LaY/i;->z:Z

    iput-boolean v2, p0, LaY/i;->A:Z

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, LaY/i;->s:Ljava/util/Set;

    iput v1, p0, LaY/i;->D:I

    iput v3, p0, LaY/i;->E:I

    iput-byte v1, p0, LaY/i;->F:B

    iput-object p1, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    iput-object p2, p0, LaY/i;->c:LaJ/p;

    iput-object p3, p0, LaY/i;->d:LaJ/u;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    iput-object p4, p0, LaY/i;->i:Lcom/google/googlenav/ui/af;

    invoke-static {}, LaY/X;->a()LaY/X;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/X;->a(LaY/i;)LaY/r;

    move-result-object v0

    iput-object v0, p0, LaY/i;->u:LaY/r;

    invoke-virtual {p0}, LaY/i;->f()Lba/a;

    move-result-object v0

    iput-object v0, p0, LaY/i;->v:Lba/a;

    iput-object p5, p0, LaY/i;->f:Lcom/google/googlenav/E;

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, LaY/i;->k:Lbb/d;

    if-eqz v0, :cond_d

    iget-object v0, p0, LaY/i;->k:Lbb/d;

    invoke-virtual {p0}, LaY/i;->M()Z

    move-result v1

    invoke-interface {v0, v1}, Lbb/d;->a(Z)V

    :cond_d
    iget-object v0, p0, LaY/i;->j:Lbb/d;

    if-eqz v0, :cond_1a

    iget-object v0, p0, LaY/i;->j:Lbb/d;

    invoke-virtual {p0}, LaY/i;->N()Z

    move-result v1

    invoke-interface {v0, v1}, Lbb/d;->a(Z)V

    :cond_1a
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/C;III)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0, p4}, LaY/i;->c(I)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/e;Lcom/google/googlenav/ui/C;II)V

    goto :goto_2
.end method

.method private static b(Laq/a;)I
    .registers 2

    invoke-virtual {p0}, Laq/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Laq/a;->d()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Laq/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, v2}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, LaY/i;->k:Lbb/d;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, LaY/i;->j:Lbb/d;

    return-void
.end method

.method private b(LaY/i;)V
    .registers 3

    iget-object v0, p0, LaY/i;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(LaJ/B;I)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, LaY/i;->h(I)I

    move-result v2

    iget-object v3, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->ag()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v0}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v3

    invoke-virtual {v3}, LaE/h;->m()Z

    move-result v3

    if-nez v3, :cond_25

    :cond_23
    move v0, v1

    goto :goto_12

    :cond_25
    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v3

    invoke-virtual {v3}, LaE/h;->r()LaJ/B;

    move-result-object v3

    if-eqz v3, :cond_3b

    iget-object v4, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/D;->ag()Lcom/google/googlenav/j;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_3b
    move v0, v1

    goto :goto_12
.end method

.method private b(LaJ/B;LaJ/B;I)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-direct {p0, p3}, LaY/i;->h(I)I

    move-result v2

    iget-object v3, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->ag()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v1}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->ag()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-virtual {v3, v2, p2, v1}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method private b(Lcom/google/googlenav/D;LaJ/B;)Z
    .registers 8

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/google/googlenav/D;->d()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, LaY/i;->i:Lcom/google/googlenav/ui/af;

    invoke-interface {v0}, Lcom/google/googlenav/ui/af;->d()Lcom/google/googlenav/ui/bc;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_11
    move v0, v1

    :goto_12
    return v0

    :cond_13
    check-cast p1, Lcom/google/googlenav/ah;

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v0

    if-nez v0, :cond_23

    move v0, v1

    goto :goto_12

    :cond_23
    invoke-interface {v0}, LaJ/g;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    iget-object v1, p0, LaY/i;->i:Lcom/google/googlenav/ui/af;

    invoke-interface {v1}, Lcom/google/googlenav/ui/af;->d()Lcom/google/googlenav/ui/bc;

    move-result-object v1

    check-cast v0, LaJ/M;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/aR;LaJ/Y;)[J

    move-result-object v0

    invoke-static {v0, p2, v2}, LaJ/M;->a([JLaJ/B;LaJ/Y;)Z

    move-result v0

    goto :goto_12

    :cond_3b
    invoke-interface {v0}, LaJ/g;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_53

    iget-object v1, p0, LaY/i;->i:Lcom/google/googlenav/ui/af;

    invoke-interface {v1}, Lcom/google/googlenav/ui/af;->d()Lcom/google/googlenav/ui/bc;

    move-result-object v1

    check-cast v0, LaJ/N;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/aR;LaJ/Y;)[J

    move-result-object v0

    invoke-static {v0, p2, v2}, LaJ/N;->a([JLaJ/B;LaJ/Y;)Z

    move-result v0

    goto :goto_12

    :cond_53
    move v0, v1

    goto :goto_12
.end method

.method private c()V
    .registers 4

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, LaY/i;->m:Lbb/d;

    :cond_12
    return-void
.end method

.method private e()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, LaY/i;->k:Lbb/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaY/i;->k:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    iput-object v1, p0, LaY/i;->k:Lbb/d;

    :cond_c
    iget-object v0, p0, LaY/i;->j:Lbb/d;

    if-eqz v0, :cond_17

    iget-object v0, p0, LaY/i;->j:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    iput-object v1, p0, LaY/i;->j:Lbb/d;

    :cond_17
    return-void
.end method

.method private f(Lcom/google/googlenav/ui/C;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, LaY/i;->O()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, LaY/i;->i(Lcom/google/googlenav/ui/C;)V

    :cond_c
    invoke-virtual {p0}, LaY/i;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, LaY/i;->g(Lcom/google/googlenav/ui/C;)V

    :cond_15
    invoke-virtual {p0}, LaY/i;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, LaY/i;->h(Lcom/google/googlenav/ui/C;)V

    goto :goto_2
.end method

.method private g(Lcom/google/googlenav/ui/C;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, LaY/i;->l:Lbb/d;

    if-eqz v0, :cond_17

    iget-object v0, p0, LaY/i;->l:Lbb/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbb/d;->a(Z)V

    iget-object v0, p0, LaY/i;->l:Lbb/d;

    iget-object v1, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    :cond_17
    return-void
.end method

.method private g(Lcom/google/googlenav/D;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/google/googlenav/D;->d()I

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    check-cast p1, Lcom/google/googlenav/ah;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bh()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->af()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private h(I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x3

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private h(Lcom/google/googlenav/ui/C;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, LaY/i;->m:Lbb/d;

    if-eqz v0, :cond_17

    iget-object v0, p0, LaY/i;->m:Lbb/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbb/d;->a(Z)V

    iget-object v0, p0, LaY/i;->m:Lbb/d;

    iget-object v1, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    :cond_17
    return-void
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, LaY/i;->m:Lbb/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaY/i;->m:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/i;->m:Lbb/d;

    :cond_c
    return-void
.end method

.method private i(Lcom/google/googlenav/ui/C;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, LaY/i;->k:Lbb/d;

    if-eqz v0, :cond_1a

    iget-object v0, p0, LaY/i;->k:Lbb/d;

    invoke-virtual {p0}, LaY/i;->M()Z

    move-result v1

    invoke-interface {v0, v1}, Lbb/d;->a(Z)V

    iget-object v0, p0, LaY/i;->k:Lbb/d;

    iget-object v1, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    :cond_1a
    iget-object v0, p0, LaY/i;->j:Lbb/d;

    if-eqz v0, :cond_2e

    iget-object v0, p0, LaY/i;->j:Lbb/d;

    invoke-virtual {p0}, LaY/i;->N()Z

    move-result v1

    invoke-interface {v0, v1}, Lbb/d;->a(Z)V

    iget-object v0, p0, LaY/i;->j:Lbb/d;

    iget-object v1, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    :cond_2e
    return-void
.end method

.method private j()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, LaY/i;->ai()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, LaY/i;->ba()Z

    goto :goto_a

    :cond_15
    invoke-virtual {p0}, LaY/i;->af()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, LaY/i;->W()V

    invoke-virtual {p0}, LaY/i;->ba()Z

    goto :goto_a

    :cond_22
    invoke-virtual {p0}, LaY/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, LaY/i;->W()V

    goto :goto_a
.end method


# virtual methods
.method protected A()V
    .registers 2

    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :cond_9
    return-void
.end method

.method protected B()V
    .registers 4

    iget-boolean v0, p0, LaY/i;->o:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, LaY/i;->P()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, LaY/i;->S()V

    :goto_e
    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    packed-switch v0, :pswitch_data_6e

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v2}, Lcom/google/googlenav/E;->d()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-virtual {p0}, LaY/i;->V()V

    goto :goto_e

    :pswitch_3a
    invoke-virtual {p0}, LaY/i;->r()V

    invoke-virtual {p0}, LaY/i;->am()V

    goto :goto_4

    :pswitch_41
    invoke-virtual {p0}, LaY/i;->r()V

    invoke-virtual {p0}, LaY/i;->ao()Z

    goto :goto_4

    :pswitch_48
    invoke-virtual {p0}, LaY/i;->ao()Z

    invoke-virtual {p0}, LaY/i;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LaY/i;->r()V

    invoke-virtual {p0}, LaY/i;->aq()V

    invoke-virtual {p0}, LaY/i;->z()V

    goto :goto_4

    :pswitch_5b
    invoke-virtual {p0}, LaY/i;->ao()Z

    invoke-virtual {p0}, LaY/i;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LaY/i;->r()V

    invoke-virtual {p0}, LaY/i;->ar()V

    invoke-virtual {p0}, LaY/i;->A()V

    goto :goto_4

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_41
        :pswitch_48
        :pswitch_5b
    .end packed-switch
.end method

.method protected C()V
    .registers 1

    return-void
.end method

.method protected D()V
    .registers 1

    return-void
.end method

.method public E()I
    .registers 3

    invoke-virtual {p0}, LaY/i;->aB()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    invoke-virtual {p0}, LaY/i;->w()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_10
.end method

.method protected F()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public G()Z
    .registers 2

    iget-boolean v0, p0, LaY/i;->x:Z

    return v0
.end method

.method public H()Z
    .registers 2

    iget-boolean v0, p0, LaY/i;->y:Z

    return v0
.end method

.method public I()Z
    .registers 2

    iget-boolean v0, p0, LaY/i;->z:Z

    return v0
.end method

.method public J()V
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, LaY/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v1}, LaY/i;->d(Z)V

    invoke-virtual {p0}, LaY/i;->k()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, LaY/i;->af()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v1}, LaY/i;->e(Z)V

    invoke-virtual {p0}, LaY/i;->l()V

    goto :goto_d

    :cond_1b
    invoke-virtual {p0}, LaY/i;->ag()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, LaY/i;->m()V

    goto :goto_d
.end method

.method protected K()V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->w()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/googlenav/D;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, LaY/i;->d:LaJ/u;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    invoke-virtual {v1, v0}, LaJ/u;->a(Lt/y;)V

    goto :goto_a
.end method

.method public L()Z
    .registers 2

    invoke-virtual {p0}, LaY/i;->O()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, LaY/i;->P()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, LaY/i;->Q()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public M()Z
    .registers 2

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    if-gtz v0, :cond_10

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public N()Z
    .registers 3

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected O()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected P()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, LaY/i;->ai()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12

    :cond_15
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ao()Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method protected Q()Z
    .registers 2

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aH()Z

    move-result v0

    return v0
.end method

.method protected R()V
    .registers 2

    iget-object v0, p0, LaY/i;->B:LaY/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/i;->B:LaY/k;

    invoke-interface {v0, p0}, LaY/k;->b(LaY/i;)V

    :cond_9
    return-void
.end method

.method protected S()V
    .registers 4

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {p0}, LaY/i;->U()I

    move-result v1

    invoke-virtual {p0}, LaY/i;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, LaY/i;->l:Lbb/d;

    return-void
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected U()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method protected V()V
    .registers 2

    iget-object v0, p0, LaY/i;->l:Lbb/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaY/i;->l:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/i;->l:Lbb/d;

    :cond_c
    return-void
.end method

.method protected W()V
    .registers 3

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/i;->b(B)V

    :goto_d
    invoke-virtual {p0}, LaY/i;->r()V

    invoke-virtual {p0}, LaY/i;->P()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, LaY/i;->S()V

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/i;->b(B)V

    goto :goto_d

    :cond_1f
    invoke-virtual {p0}, LaY/i;->V()V

    goto :goto_19
.end method

.method protected X()Z
    .registers 2

    iget-object v0, p0, LaY/i;->v:Lba/a;

    invoke-virtual {v0}, Lba/a;->a()Z

    move-result v0

    return v0
.end method

.method public Y()V
    .registers 1

    return-void
.end method

.method public Z()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/i;->b(B)V

    invoke-virtual {p0}, LaY/i;->am()V

    invoke-virtual {p0}, LaY/i;->r()V

    return-void
.end method

.method protected a(Lcom/google/googlenav/D;LaJ/B;)J
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {p0, p1}, LaY/i;->d(Lcom/google/googlenav/D;)I

    move-result v1

    invoke-virtual {p0, p1}, LaY/i;->e(Lcom/google/googlenav/D;)I

    move-result v4

    invoke-virtual {p0, p1}, LaY/i;->f(Lcom/google/googlenav/D;)I

    move-result v5

    packed-switch v1, :pswitch_data_56

    :pswitch_1c
    move v1, v2

    :goto_1d
    if-nez v2, :cond_21

    if-eqz v1, :cond_25

    :cond_21
    invoke-virtual {v0, v2, v1, v3}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    :cond_25
    invoke-virtual {p2, v0, v3}, LaJ/B;->a(LaJ/B;LaJ/Y;)J

    move-result-wide v0

    :goto_29
    return-wide v0

    :pswitch_2a
    iget-object v1, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bw;->b(B)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v2, v1, 0x2

    iget-object v1, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bw;->a(B)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_1d

    :pswitch_45
    neg-int v1, v5

    div-int/lit8 v1, v1, 0x2

    goto :goto_1d

    :pswitch_49
    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v5

    div-int/lit8 v1, v1, 0x2

    goto :goto_1d

    :cond_50
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_29

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_45
        :pswitch_1c
        :pswitch_49
        :pswitch_2a
    .end packed-switch
.end method

.method public a(LaJ/B;LaJ/Y;)LaJ/B;
    .registers 14

    const/4 v9, 0x0

    invoke-virtual {p0}, LaY/i;->aj()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, LaY/i;->s()Lcom/google/googlenav/D;

    move-result-object v1

    iget-object v0, p0, LaY/i;->g:Lbb/d;

    invoke-interface {v0}, Lbb/d;->d()[I

    move-result-object v2

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    iget-object v3, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {v0, v3}, LaJ/u;->a(LaJ/Y;)V

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {p0, v1}, LaY/i;->e(Lcom/google/googlenav/D;)I

    move-result v3

    invoke-virtual {p0, v1}, LaY/i;->f(Lcom/google/googlenav/D;)I

    move-result v4

    aget v5, v2, v9

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {p0, v1}, LaY/i;->b(Lcom/google/googlenav/D;)I

    move-result v7

    invoke-virtual {p0}, LaY/i;->q()I

    move-result v8

    invoke-virtual {p0, v9}, LaY/i;->c(Z)I

    move-result v9

    move-object v2, p1

    move-object v10, p2

    invoke-virtual/range {v0 .. v10}, LaJ/u;->a(Lcom/google/googlenav/D;LaJ/B;IIIIIIILaJ/Y;)LaJ/B;

    move-result-object p1

    :cond_3d
    return-object p1
.end method

.method protected a(Lcom/google/googlenav/D;)LaJ/B;
    .registers 5

    invoke-interface {p1}, Lcom/google/googlenav/D;->d()I

    move-result v0

    if-nez v0, :cond_26

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {v0}, LaJ/g;->a()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    invoke-interface {v0}, LaJ/g;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    :cond_1f
    iget-object v0, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    goto :goto_10

    :cond_26
    invoke-interface {p1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v0

    goto :goto_10
.end method

.method protected a(Lcom/google/googlenav/D;LaJ/Y;)LaJ/B;
    .registers 12

    invoke-interface {p1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0, p1}, LaY/i;->b(Lcom/google/googlenav/D;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, LaY/i;->c(Z)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, LaY/i;->p()I

    move-result v2

    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    int-to-double v5, v2

    int-to-double v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    iget-object v5, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v5}, LaJ/u;->e()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v5, v7

    const-wide v7, 0x4066800000000000L

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v5, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-nez v5, :cond_4a

    if-eqz v1, :cond_4e

    :cond_4a
    invoke-virtual {v0, v5, v1, p2}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    :cond_4e
    return-object v0
.end method

.method public a(LaJ/B;)Lt/y;
    .registers 3

    iget-object v0, p0, LaY/i;->c:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->a(LaJ/B;)Lt/y;

    move-result-object v0

    return-object v0
.end method

.method public final a(B)V
    .registers 2

    packed-switch p1, :pswitch_data_14

    :goto_3
    return-void

    :pswitch_4
    invoke-virtual {p0}, LaY/i;->k()V

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0}, LaY/i;->l()V

    goto :goto_3

    :pswitch_c
    invoke-virtual {p0}, LaY/i;->m()V

    goto :goto_3

    :pswitch_10
    invoke-virtual {p0}, LaY/i;->Z()V

    goto :goto_3

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method protected final a(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, LaY/i;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    invoke-virtual {p0}, LaY/i;->l()V

    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, LaY/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p0}, LaY/i;->ax()I

    move-result v0

    sparse-switch v0, :sswitch_data_7a

    :goto_7
    return-void

    :sswitch_8
    const-string v0, "0"

    :goto_a
    const/16 v2, 0x12

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    if-nez p4, :cond_65

    const/4 v1, 0x0

    :goto_55
    aput-object v1, v3, v4

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :sswitch_5f
    const-string v0, "dd"

    goto :goto_a

    :sswitch_62
    const-string v0, "ct"

    goto :goto_a

    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    nop

    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_5f
        0x6 -> :sswitch_62
        0x7 -> :sswitch_62
        0xb -> :sswitch_62
        0x10 -> :sswitch_62
    .end sparse-switch
.end method

.method public a(LaY/j;)V
    .registers 2

    iput-object p1, p0, LaY/i;->C:LaY/j;

    return-void
.end method

.method public a(LaY/k;)V
    .registers 2

    iput-object p1, p0, LaY/i;->B:LaY/k;

    return-void
.end method

.method public final a(Lah/f;)V
    .registers 2

    iput-object p1, p0, LaY/i;->n:Lah/f;

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/google/googlenav/D;I)V
    .registers 4

    invoke-virtual {p0, p2}, LaY/i;->g(I)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/google/googlenav/O;

    invoke-direct {v0}, Lcom/google/googlenav/O;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, LaY/i;->a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V

    invoke-virtual {v0}, Lcom/google/googlenav/O;->a()V

    :cond_11
    return-void
.end method

.method protected abstract a(Lcom/google/googlenav/E;)V
.end method

.method public a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V
    .registers 5

    invoke-virtual {p0}, LaY/i;->ax()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->a(I)Lcom/google/googlenav/O;

    invoke-virtual {p1, p3}, Lcom/google/googlenav/O;->b(I)Lcom/google/googlenav/O;

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 3

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->C()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, LaY/i;->ac()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, LaY/i;->c(Lcom/google/googlenav/ui/C;)V

    :cond_11
    invoke-virtual {p0}, LaY/i;->aa()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, LaY/i;->f(Lcom/google/googlenav/ui/C;)V

    :cond_1a
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/D;)V
    .registers 8

    invoke-interface {p2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, LaY/i;->c:LaJ/p;

    iget-object v2, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v2}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/googlenav/D;->c()B

    move-result v2

    iget-object v3, p0, LaY/i;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, LaY/i;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/bw;->a(Lah/e;BII)V

    :cond_22
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/E;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/google/googlenav/E;->f()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Lcom/google/googlenav/E;->c(I)I

    move-result v2

    invoke-interface {p2, v2}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-direct {p0, v2}, LaY/i;->g(Lcom/google/googlenav/D;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p0, p1, v2}, LaY/i;->a(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/D;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, LaY/i;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/google/googlenav/O;

    invoke-direct {v0}, Lcom/google/googlenav/O;-><init>()V

    invoke-virtual {p0}, LaY/i;->s()Lcom/google/googlenav/D;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, LaY/i;->a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/O;->c(Ljava/lang/String;)Lcom/google/googlenav/O;

    invoke-virtual {v0}, Lcom/google/googlenav/O;->a()V

    :cond_1a
    return-void
.end method

.method public a(Ljava/util/Vector;LaJ/B;I)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    if-ge v0, v1, :cond_29

    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/D;->e()Z

    move-result v2

    if-nez v2, :cond_18

    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    invoke-virtual {p0, v1, p2}, LaY/i;->a(Lcom/google/googlenav/D;LaJ/B;)J

    move-result-wide v2

    int-to-long v4, p3

    cmp-long v4, v2, v4

    if-gez v4, :cond_15

    invoke-static {p0, v1, v0, v2, v3}, LaY/U;->a(LaY/i;Lcom/google/googlenav/D;IJ)LaY/U;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_15

    :cond_29
    return-void
.end method

.method protected a(ZLaJ/Y;)V
    .registers 5

    invoke-virtual {p0}, LaY/i;->s()Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/googlenav/D;->e()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, v0, p2}, LaY/i;->a(Lcom/google/googlenav/D;LaJ/Y;)LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_1a

    iget-object v1, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v1, v0, p2}, LaJ/u;->d(LaJ/B;LaJ/Y;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->T()V

    iget-object v1, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->c(LaJ/B;)V

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v0, p2}, LaJ/u;->a(LaJ/Y;)V

    goto :goto_19
.end method

.method protected final a(CI)Z
    .registers 5

    new-instance v0, Laq/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p1, p2, v1}, Laq/b;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, LaY/i;->a(Laq/b;)Z

    move-result v0

    return v0
.end method

.method protected a(I)Z
    .registers 5

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, LaY/Y;->a(LaY/i;I)V

    const-string v0, "o"

    const-string v1, "c"

    invoke-virtual {p0}, LaY/i;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, LaY/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6

    packed-switch p1, :pswitch_data_20

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "LaunchUrl"

    const-string v1, "missing url"

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_14
    const/4 v0, 0x1

    goto :goto_4

    :cond_16
    invoke-virtual {p0, p3}, LaY/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lcom/google/googlenav/ah;)V

    goto :goto_14

    :pswitch_data_20
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method

.method public a(LaJ/B;I)Z
    .registers 6

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ah()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    if-nez v0, :cond_2d

    iget-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, LaY/i;->b(LaJ/B;I)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, p2

    :cond_2d
    iget-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_19
.end method

.method public a(LaJ/B;LaJ/B;I)Z
    .registers 7

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ah()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    iget-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, p3

    if-nez v0, :cond_2f

    iget-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, p3}, LaY/i;->b(LaJ/B;LaJ/B;I)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, p3

    :cond_2f
    iget-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1b
.end method

.method public a(LaJ/g;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/google/googlenav/M;->A()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(LaY/i;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, LaY/i;->ax()I

    move-result v1

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v2

    if-eq v1, v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, LaY/i;->aD()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, LaY/i;->aD()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_38
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b
.end method

.method public a(Laq/a;)Z
    .registers 5

    const/4 v2, -0x1

    sget-object v0, Lcom/google/googlenav/ui/n;->q:Laq/a;

    invoke-virtual {v0, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/googlenav/ui/n;->r:Laq/a;

    invoke-virtual {v0, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_11
    invoke-virtual {p0}, LaY/i;->ba()Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    invoke-static {p1}, LaY/i;->b(Laq/a;)I

    move-result v0

    if-eq v0, v2, :cond_22

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, LaY/i;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_15

    :cond_22
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final a(Laq/b;)Z
    .registers 3

    invoke-virtual {p0, p1}, LaY/i;->f(Laq/b;)Z

    move-result v0

    return v0
.end method

.method public a(Laq/c;)Z
    .registers 3

    invoke-virtual {p0}, LaY/i;->aj()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, LaY/i;->a(Laq/c;Z)Z

    move-result v0

    return v0
.end method

.method protected a(Laq/c;Z)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Laq/c;->h()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1}, Laq/c;->f()Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_e
    iget-object v2, p0, LaY/i;->c:LaJ/p;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v3

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v4

    invoke-virtual {v2, v3, v4}, LaJ/p;->b(II)LaJ/B;

    move-result-object v2

    invoke-virtual {p0, v2}, LaY/i;->b(LaJ/B;)I

    move-result v2

    if-ltz v2, :cond_27

    invoke-virtual {p0, v2}, LaY/i;->a(I)Z

    move-result v0

    :cond_26
    :goto_26
    return v0

    :cond_27
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, LaY/i;->am()V

    goto :goto_26

    :cond_35
    move v2, v1

    :goto_36
    if-eqz v2, :cond_26

    const/4 v2, -0x1

    const-string v3, "c"

    const-string v4, "c"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, LaY/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LaY/i;->Z()V

    if-eqz p2, :cond_26

    invoke-virtual {p1}, Laq/c;->j()Z

    move-result v2

    if-nez v2, :cond_26

    move v0, v1

    goto :goto_26

    :cond_4e
    invoke-virtual {p1}, Laq/c;->j()Z

    move-result v2

    if-eqz v2, :cond_56

    move v2, v1

    goto :goto_36

    :cond_56
    move v2, v0

    goto :goto_36
.end method

.method public a(Lbb/E;)Z
    .registers 7

    const/16 v4, 0x36

    const/16 v3, 0x34

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LaY/i;->k:Lbb/d;

    if-eqz v2, :cond_18

    iget-object v2, p0, LaY/i;->k:Lbb/d;

    if-ne p1, v2, :cond_18

    new-instance v0, Laq/b;

    invoke-direct {v0, v3, v3, v1, v1}, Laq/b;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, LaY/i;->e(Laq/b;)Z

    move-result v0

    :goto_17
    return v0

    :cond_18
    iget-object v2, p0, LaY/i;->j:Lbb/d;

    if-eqz v2, :cond_2a

    iget-object v2, p0, LaY/i;->j:Lbb/d;

    if-ne p1, v2, :cond_2a

    new-instance v0, Laq/b;

    invoke-direct {v0, v4, v4, v1, v1}, Laq/b;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, LaY/i;->e(Laq/b;)Z

    move-result v0

    goto :goto_17

    :cond_2a
    iget-object v2, p0, LaY/i;->l:Lbb/d;

    if-eqz v2, :cond_45

    iget-object v2, p0, LaY/i;->l:Lbb/d;

    if-ne p1, v2, :cond_45

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-direct {p0}, LaY/i;->j()V

    goto :goto_17

    :cond_40
    invoke-virtual {p0}, LaY/i;->ba()Z

    :cond_43
    move v0, v1

    goto :goto_17

    :cond_45
    iget-object v2, p0, LaY/i;->m:Lbb/d;

    if-eqz v2, :cond_53

    iget-object v2, p0, LaY/i;->m:Lbb/d;

    if-ne p1, v2, :cond_53

    iget-object v1, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->n(Z)V

    goto :goto_17

    :cond_53
    iget-object v2, p0, LaY/i;->g:Lbb/d;

    if-eqz v2, :cond_43

    iget-object v2, p0, LaY/i;->g:Lbb/d;

    if-ne p1, v2, :cond_43

    invoke-virtual {p0}, LaY/i;->l()V

    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    const-string v2, "s"

    const-string v3, "c"

    invoke-virtual {p0}, LaY/i;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, LaY/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected a(Lcom/google/googlenav/D;LaJ/B;Lah/e;)Z
    .registers 13

    const/4 v7, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v7

    :cond_4
    invoke-interface {p1}, Lcom/google/googlenav/D;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v2

    invoke-virtual {p0, p1}, LaY/i;->d(Lcom/google/googlenav/D;)I

    move-result v3

    invoke-virtual {p0, p1}, LaY/i;->e(Lcom/google/googlenav/D;)I

    move-result v4

    invoke-virtual {p0, p1}, LaY/i;->f(Lcom/google/googlenav/D;)I

    move-result v5

    const/4 v0, 0x3

    if-ne v3, v0, :cond_3e

    iget-object v0, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->b(B)I

    move-result v6

    iget-object v0, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(B)I

    move-result v7

    :goto_31
    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    move-object v1, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, LaY/Y;->a(LaJ/B;LaJ/B;IIIIILah/e;)Z

    move-result v7

    goto :goto_3

    :cond_3e
    move v6, v7

    goto :goto_31
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public aA()Z
    .registers 2

    iget-boolean v0, p0, LaY/i;->p:Z

    return v0
.end method

.method protected aB()Z
    .registers 2

    iget-boolean v0, p0, LaY/i;->A:Z

    return v0
.end method

.method public aC()I
    .registers 5

    const/4 v0, 0x0

    move v2, v0

    move v1, v0

    :goto_3
    const/4 v0, 0x4

    if-ge v2, v0, :cond_22

    iget-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, v2

    if-eqz v0, :cond_23

    iget-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x3

    :goto_17
    mul-int/lit8 v3, v2, 0x2

    shl-int/2addr v0, v3

    or-int/2addr v0, v1

    :goto_1b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_20
    const/4 v0, 0x2

    goto :goto_17

    :cond_22
    return v1

    :cond_23
    move v0, v1

    goto :goto_1b
.end method

.method public aD()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aE()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aF()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aG()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aH()I
    .registers 2

    const v0, 0x7f0e0006

    return v0
.end method

.method public aI()I
    .registers 2

    const v0, 0x7f0201d5

    return v0
.end method

.method public aJ()Ljava/lang/CharSequence;
    .registers 2

    const/16 v0, 0x255

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

    const/16 v0, 0xd4

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public aN()Lah/f;
    .registers 2

    iget-object v0, p0, LaY/i;->n:Lah/f;

    return-object v0
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected aP()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final aQ()I
    .registers 2

    iget v0, p0, LaY/i;->w:I

    return v0
.end method

.method protected aR()V
    .registers 1

    return-void
.end method

.method public aS()V
    .registers 2

    invoke-virtual {p0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    iput v0, p0, LaY/i;->E:I

    invoke-virtual {p0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    iput-byte v0, p0, LaY/i;->F:B

    return-void
.end method

.method public aT()V
    .registers 4

    const/4 v2, -0x1

    invoke-virtual {p0}, LaY/i;->ah()Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, LaY/i;->E:I

    if-eq v0, v2, :cond_10

    iget v0, p0, LaY/i;->E:I

    invoke-virtual {p0, v0}, LaY/i;->b(I)V

    :cond_10
    iget-byte v0, p0, LaY/i;->F:B

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    iget-byte v1, p0, LaY/i;->F:B

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(B)V

    :cond_1d
    invoke-virtual {p0}, LaY/i;->x()V

    :cond_20
    iput v2, p0, LaY/i;->E:I

    const/4 v0, 0x0

    iput-byte v0, p0, LaY/i;->F:B

    return-void
.end method

.method public final aU()Z
    .registers 2

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-virtual {p0, v0}, LaY/i;->b(Lcom/google/googlenav/E;)V

    :cond_9
    invoke-virtual {p0}, LaY/i;->aV()Z

    move-result v0

    return v0
.end method

.method protected aV()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aW()V
    .registers 2

    iget-object v0, p0, LaY/i;->t:LaY/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/i;->t:LaY/i;

    invoke-direct {v0, p0}, LaY/i;->b(LaY/i;)V

    :cond_9
    return-void
.end method

.method public aX()V
    .registers 1

    invoke-virtual {p0}, LaY/i;->h()V

    return-void
.end method

.method public aY()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/i;->o:Z

    invoke-virtual {p0}, LaY/i;->x()V

    invoke-virtual {p0}, LaY/i;->h()V

    return-void
.end method

.method public aZ()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/i;->o:Z

    invoke-virtual {p0, v0}, LaY/i;->b(B)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaY/i;->b(I)V

    invoke-virtual {p0}, LaY/i;->r()V

    invoke-virtual {p0}, LaY/i;->am()V

    invoke-direct {p0}, LaY/i;->e()V

    invoke-virtual {p0}, LaY/i;->V()V

    invoke-direct {p0}, LaY/i;->i()V

    return-void
.end method

.method public aa()Z
    .registers 2

    invoke-virtual {p0}, LaY/i;->ai()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public ab()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected ac()Z
    .registers 2

    invoke-virtual {p0}, LaY/i;->ag()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, LaY/i;->af()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ad()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final ae()Z
    .registers 3

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final af()Z
    .registers 3

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final ag()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->d()B

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final ah()Z
    .registers 2

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public ai()Z
    .registers 2

    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, LaY/i;->af()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, LaY/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final aj()Z
    .registers 3

    iget-object v0, p0, LaY/i;->g:Lbb/d;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, LaY/i;->ag()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, LaY/i;->ah()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    :cond_23
    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public ak()Lbb/d;
    .registers 2

    iget-object v0, p0, LaY/i;->g:Lbb/d;

    return-object v0
.end method

.method public al()[Laq/a;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public am()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, LaY/i;->g:Lbb/d;

    if-eqz v0, :cond_17

    iget-object v0, p0, LaY/i;->g:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    iput-object v1, p0, LaY/i;->g:Lbb/d;

    iput-object v1, p0, LaY/i;->h:Lcom/google/googlenav/D;

    iget-object v0, p0, LaY/i;->C:LaY/j;

    if-eqz v0, :cond_17

    iget-object v0, p0, LaY/i;->C:LaY/j;

    invoke-interface {v0, p0}, LaY/j;->a(LaY/i;)V

    :cond_17
    iget-object v0, p0, LaY/i;->s:Ljava/util/Set;

    iget-object v1, p0, LaY/i;->s:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [LaY/i;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaY/i;

    const/4 v1, 0x0

    :goto_28
    array-length v2, v0

    if-ge v1, v2, :cond_39

    iget-object v2, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, LaY/Y;->f(LaY/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_39
    return-void
.end method

.method protected an()V
    .registers 1

    return-void
.end method

.method public ao()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, LaY/i;->s()Lcom/google/googlenav/D;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, LaY/i;->am()V

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, LaY/i;->h:Lcom/google/googlenav/D;

    if-eq v1, v2, :cond_2f

    invoke-virtual {p0}, LaY/i;->an()V

    iget-object v2, p0, LaY/i;->u:LaY/r;

    if-eqz v2, :cond_a

    iget-object v2, p0, LaY/i;->u:LaY/r;

    invoke-interface {v2}, LaY/r;->a()Lbb/d;

    move-result-object v2

    if-nez v2, :cond_22

    invoke-virtual {p0}, LaY/i;->am()V

    goto :goto_a

    :cond_22
    iput-object v2, p0, LaY/i;->g:Lbb/d;

    iput-object v1, p0, LaY/i;->h:Lcom/google/googlenav/D;

    iget-object v0, p0, LaY/i;->C:LaY/j;

    if-eqz v0, :cond_2f

    iget-object v0, p0, LaY/i;->C:LaY/j;

    invoke-interface {v0, p0, v2}, LaY/j;->a(LaY/i;Lbb/d;)V

    :cond_2f
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LaY/i;->f(I)V

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public ap()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract aq()V
.end method

.method protected abstract ar()V
.end method

.method public as()Lcom/google/googlenav/E;
    .registers 2

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    return-object v0
.end method

.method public at()Z
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    if-eqz v0, :cond_2e

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v5

    move v4, v3

    move v1, v3

    :goto_e
    if-ge v4, v5, :cond_2f

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, v4}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/D;->d()I

    move-result v6

    if-eqz v6, :cond_23

    add-int/lit8 v0, v1, 0x1

    :goto_1e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_e

    :cond_23
    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-nez v0, :cond_35

    add-int/lit8 v0, v1, 0x1

    goto :goto_1e

    :cond_2e
    move v1, v3

    :cond_2f
    if-ne v1, v2, :cond_33

    move v0, v2

    :goto_32
    return v0

    :cond_33
    move v0, v3

    goto :goto_32

    :cond_35
    move v0, v1

    goto :goto_1e
.end method

.method public au()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    if-eqz v1, :cond_1d

    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v2

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_1d

    iget-object v3, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v3, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-interface {v3}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v3

    if-eqz v3, :cond_1e

    const/4 v0, 0x1

    :cond_1d
    return v0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public av()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract ax()I
.end method

.method public ay()LaJ/Y;
    .registers 2

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    return-object v0
.end method

.method public az()Z
    .registers 2

    iget-boolean v0, p0, LaY/i;->o:Z

    return v0
.end method

.method public b(LaJ/B;)I
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    if-ltz v0, :cond_17

    iget-object v2, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v2, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v3}, LaY/i;->a(Lcom/google/googlenav/D;LaJ/B;Lah/e;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    :goto_18
    iget-object v2, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v2}, Lcom/google/googlenav/E;->f()I

    move-result v2

    if-ge v0, v2, :cond_31

    iget-object v2, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v2, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v3}, LaY/i;->a(Lcom/google/googlenav/D;LaJ/B;Lah/e;)Z

    move-result v2

    if-nez v2, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    :cond_31
    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-ge v1, v0, :cond_47

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LaY/i;->b(Lcom/google/googlenav/D;LaJ/B;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    goto :goto_16

    :cond_47
    const/4 v0, -0x1

    goto :goto_16
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final b(B)V
    .registers 4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_46

    :goto_4
    return-void

    :pswitch_5
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, LaY/i;->ae()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0, v1}, LaY/i;->d(Z)V

    :cond_18
    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(B)V

    goto :goto_4

    :pswitch_1f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, LaY/i;->af()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0, v1}, LaY/i;->e(Z)V

    :cond_32
    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(B)V

    goto :goto_4

    :pswitch_39
    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(B)V

    goto :goto_4

    :pswitch_3f
    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(B)V

    goto :goto_4

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_39
        :pswitch_1f
        :pswitch_5
    .end packed-switch
.end method

.method public b(I)V
    .registers 7

    const/4 v4, -0x1

    invoke-virtual {p0}, LaY/i;->N()Z

    move-result v0

    invoke-virtual {p0}, LaY/i;->M()Z

    move-result v1

    iget-object v2, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v2, p1}, Lcom/google/googlenav/E;->a(I)V

    invoke-direct {p0}, LaY/i;->a()V

    invoke-virtual {p0}, LaY/i;->ax()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/M;->ap()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0}, LaY/i;->ag()Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    :cond_2b
    invoke-virtual {p0}, LaY/i;->N()Z

    move-result v2

    if-ne v0, v2, :cond_37

    invoke-virtual {p0}, LaY/i;->M()Z

    move-result v0

    if-eq v1, v0, :cond_42

    :cond_37
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_42
    if-ne p1, v4, :cond_47

    invoke-virtual {p0}, LaY/i;->am()V

    :cond_47
    if-eq p1, v4, :cond_53

    invoke-virtual {p0}, LaY/i;->af()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LaY/i;->f(I)V

    :cond_53
    invoke-virtual {p0}, LaY/i;->K()V

    return-void
.end method

.method protected b(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, LaY/i;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    invoke-virtual {p0}, LaY/i;->m()V

    return-void
.end method

.method public b(Lcom/google/googlenav/E;)V
    .registers 2

    invoke-virtual {p0, p1}, LaY/i;->a(Lcom/google/googlenav/E;)V

    invoke-virtual {p0}, LaY/i;->R()V

    return-void
.end method

.method protected b(Lcom/google/googlenav/ui/C;)V
    .registers 2

    return-void
.end method

.method protected b(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/D;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, LaY/i;->g:Lbb/d;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0, p2}, LaY/i;->a(Lcom/google/googlenav/D;)LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, LaY/i;->g:Lbb/d;

    invoke-interface {v2}, Lbb/d;->a()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, LaY/i;->c:LaJ/p;

    iget-object v3, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v3}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    :goto_1b
    if-nez p1, :cond_53

    move v1, v0

    :goto_1e
    if-nez p1, :cond_58

    :goto_20
    iget-object v2, p0, LaY/i;->e:Landroid/graphics/Point;

    iget-object v3, p0, LaY/i;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    invoke-virtual {p0, p2}, LaY/i;->b(Lcom/google/googlenav/D;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, LaY/i;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    invoke-virtual {p0, p2}, LaY/i;->c(Lcom/google/googlenav/D;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Point;->set(II)V

    if-nez p1, :cond_43

    iget-object v0, p0, LaY/i;->g:Lbb/d;

    invoke-interface {v0}, Lbb/d;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_43
    iget-object v0, p0, LaY/i;->g:Lbb/d;

    iget-object v1, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    goto :goto_5

    :cond_4b
    iget-object v2, p0, LaY/i;->c:LaJ/p;

    iget-object v3, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v3}, LaJ/p;->b(LaJ/B;Landroid/graphics/Point;)V

    goto :goto_1b

    :cond_53
    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->c()I

    move-result v1

    goto :goto_1e

    :cond_58
    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->d()I

    move-result v0

    goto :goto_20
.end method

.method protected b(Z)V
    .registers 3

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LaY/i;->a(ZLaJ/Y;)V

    return-void
.end method

.method public b(LaJ/g;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, LaY/i;->a(LaJ/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, LaJ/g;->b()LaJ/B;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LaY/i;->a(LaJ/B;I)Z

    move-result v0

    goto :goto_3
.end method

.method public final b(Laq/b;)Z
    .registers 3

    invoke-virtual {p0, p1}, LaY/i;->c(Laq/b;)Z

    move-result v0

    return v0
.end method

.method public b(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final ba()Z
    .registers 3

    const/16 v0, 0x23

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, LaY/i;->a(CI)Z

    move-result v0

    return v0
.end method

.method public bb()Z
    .registers 2

    invoke-virtual {p0}, LaY/i;->ai()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/ap;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->L_()Z

    move-result v0

    goto :goto_7
.end method

.method public bc()Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method public bd()Z
    .registers 2

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ac()Z

    move-result v0

    return v0
.end method

.method public be()Lba/a;
    .registers 2

    iget-object v0, p0, LaY/i;->v:Lba/a;

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->Q()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget v1, Lcom/google/googlenav/ui/bw;->c:I

    :goto_13
    add-int/2addr v1, v2

    if-nez p1, :cond_1c

    invoke-virtual {p0}, LaY/i;->ai()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    move v0, v1

    :cond_1d
    return v0

    :cond_1e
    move v1, v0

    goto :goto_13
.end method

.method public final c(I)Lcom/google/googlenav/e;
    .registers 3

    iget-object v0, p0, LaY/i;->v:Lba/a;

    invoke-virtual {v0, p1}, Lba/a;->b(I)Lcom/google/googlenav/e;

    move-result-object v0

    return-object v0
.end method

.method protected c(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, LaY/i;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    invoke-virtual {p0}, LaY/i;->k()V

    return-void
.end method

.method protected c(Lcom/google/googlenav/ui/C;)V
    .registers 6

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {p0}, LaY/i;->aj()Z

    move-result v2

    if-eqz v2, :cond_3b

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Lcom/google/googlenav/D;->c()B

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, LaY/i;->c:LaJ/p;

    iget-object v3, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v3}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v1, p0, LaY/i;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, LaY/i;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v3}, Lcom/google/googlenav/E;->c()I

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, LaY/i;->a(Lcom/google/googlenav/ui/C;III)V

    :cond_38
    invoke-virtual {p0, p1, v0}, LaY/i;->b(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/D;)V

    :cond_3b
    return-void
.end method

.method protected c(LaJ/B;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object v1, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ag()Lcom/google/googlenav/j;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public c(LaJ/g;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, LaY/i;->a(LaJ/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, LaJ/g;->b()LaJ/B;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, LaY/i;->a(LaJ/B;I)Z

    move-result v0

    goto :goto_3
.end method

.method protected c(Laq/b;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected d(Lcom/google/googlenav/D;)I
    .registers 3

    iget-object v0, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/D;)I

    move-result v0

    return v0
.end method

.method protected d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/y;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public d(I)V
    .registers 9

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [Ljava/lang/Boolean;

    iput-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    move v3, v2

    :goto_8
    if-ge v3, v6, :cond_26

    mul-int/lit8 v0, v3, 0x2

    const/4 v4, 0x2

    shl-int/2addr v4, v0

    and-int/2addr v4, p1

    if-eqz v4, :cond_20

    iget-object v4, p0, LaY/i;->q:[Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/Boolean;

    shl-int v0, v1, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_24

    move v0, v1

    :goto_1b
    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v3

    :cond_20
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_24
    move v0, v2

    goto :goto_1b

    :cond_26
    return-void
.end method

.method public d(Lcom/google/googlenav/ui/C;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->c(I)I

    move-result v1

    iget-object v2, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v2, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-interface {v2}, Lcom/google/googlenav/D;->c()B

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v3, p0, LaY/i;->c:LaJ/p;

    iget-object v4, p0, LaY/i;->e:Landroid/graphics/Point;

    invoke-virtual {v3, v2, v4}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v2, p0, LaY/i;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, LaY/i;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v2, v3, v1}, LaY/i;->a(Lcom/google/googlenav/ui/C;III)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/i;->x:Z

    return-void
.end method

.method public d(Laq/b;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected e(Lcom/google/googlenav/D;)I
    .registers 3

    iget-object v0, p0, LaY/i;->v:Lba/a;

    invoke-virtual {v0, p1}, Lba/a;->a(Lcom/google/googlenav/D;)I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .registers 2

    iput p1, p0, LaY/i;->w:I

    return-void
.end method

.method protected e(Lcom/google/googlenav/ui/C;)V
    .registers 3

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-virtual {p0, p1, v0}, LaY/i;->a(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/E;)V

    return-void
.end method

.method public e(Z)V
    .registers 3

    iput-boolean p1, p0, LaY/i;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, LaY/i;->h:Lcom/google/googlenav/D;

    return-void
.end method

.method public e(Laq/b;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected f(Lcom/google/googlenav/D;)I
    .registers 3

    iget-object v0, p0, LaY/i;->v:Lba/a;

    invoke-virtual {v0, p1}, Lba/a;->b(Lcom/google/googlenav/D;)I

    move-result v0

    return v0
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/a;

    invoke-direct {v0, p0}, Lba/a;-><init>(LaY/i;)V

    return-object v0
.end method

.method public final f(I)V
    .registers 3

    invoke-virtual {p0}, LaY/i;->s()Lcom/google/googlenav/D;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LaY/i;->a(Lcom/google/googlenav/D;I)V

    return-void
.end method

.method public f(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/i;->z:Z

    return-void
.end method

.method protected abstract f(Laq/b;)Z
.end method

.method public g()Lar/k;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/i;->aD()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v0

    :goto_b
    new-instance v2, Lar/k;

    invoke-direct {v2, v0, v1}, Lar/k;-><init>(Ljava/lang/String;I)V

    move v0, v1

    move-object v1, v2

    :goto_12
    iget-object v2, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v2}, Lcom/google/googlenav/E;->f()I

    move-result v2

    if-ge v0, v2, :cond_34

    iget-object v2, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v2, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/D;->g()Lar/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lar/k;->a(Lar/k;)Lar/k;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_34
    return-object v1
.end method

.method public g(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/i;->p:Z

    return-void
.end method

.method public g(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected h()V
    .registers 2

    invoke-virtual {p0}, LaY/i;->O()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, LaY/i;->b()V

    :goto_9
    invoke-virtual {p0}, LaY/i;->P()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, LaY/i;->S()V

    :goto_12
    invoke-virtual {p0}, LaY/i;->Q()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, LaY/i;->c()V

    :goto_1b
    return-void

    :cond_1c
    invoke-direct {p0}, LaY/i;->e()V

    goto :goto_9

    :cond_20
    invoke-virtual {p0}, LaY/i;->V()V

    goto :goto_12

    :cond_24
    invoke-direct {p0}, LaY/i;->i()V

    goto :goto_1b
.end method

.method protected h(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/i;->A:Z

    return-void
.end method

.method protected k()V
    .registers 4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaY/i;->b(B)V

    invoke-virtual {p0}, LaY/i;->x()V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, LaY/i;->f(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->k()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    iget-object v1, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->c()LaJ/B;

    move-result-object v1

    iget-object v2, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->d()LaJ/Y;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaY/i;->a(LaJ/B;LaJ/Y;)LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/u;->b(LaJ/B;)V

    :cond_33
    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->Z()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->D()Lcom/google/googlenav/ui/wizard/eA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eA;->a()V

    :cond_54
    return-void
.end method

.method protected l()V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LaY/i;->b(B)V

    invoke-virtual {p0}, LaY/i;->x()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, LaY/i;->d:LaJ/u;

    iget-object v1, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->c()LaJ/B;

    move-result-object v1

    iget-object v2, p0, LaY/i;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->d()LaJ/Y;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaY/i;->a(LaJ/B;LaJ/Y;)LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/u;->b(LaJ/B;)V

    :cond_26
    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->Z()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, LaY/i;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->D()Lcom/google/googlenav/ui/wizard/eA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eA;->a()V

    :cond_47
    return-void
.end method

.method protected m()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/i;->b(B)V

    invoke-virtual {p0}, LaY/i;->x()V

    return-void
.end method

.method public final n()B
    .registers 2

    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v0

    return v0
.end method

.method public o()V
    .registers 1

    invoke-virtual {p0}, LaY/i;->m()V

    return-void
.end method

.method protected p()I
    .registers 2

    invoke-virtual {p0}, LaY/i;->q()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public q()I
    .registers 3

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v0

    iget-object v1, p0, LaY/i;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->ag()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected r()V
    .registers 2

    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    :cond_c
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, LaY/i;->q:[Ljava/lang/Boolean;

    return-void
.end method

.method public s()Lcom/google/googlenav/D;
    .registers 2

    invoke-virtual {p0}, LaY/i;->ah()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    goto :goto_7
.end method

.method protected t()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected u()V
    .registers 1

    return-void
.end method

.method protected v()V
    .registers 1

    return-void
.end method

.method protected w()I
    .registers 2

    invoke-virtual {p0}, LaY/i;->av()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final x()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, LaY/i;->B()V

    :goto_d
    invoke-virtual {p0}, LaY/i;->C()V

    invoke-virtual {p0}, LaY/i;->D()V

    return-void

    :cond_14
    invoke-virtual {p0}, LaY/i;->y()V

    goto :goto_d
.end method

.method protected y()V
    .registers 4

    iget-boolean v0, p0, LaY/i;->o:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, LaY/i;->u()V

    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->d()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    invoke-virtual {p0}, LaY/i;->ar()V

    iget-object v1, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v1, :cond_31

    invoke-virtual {p0}, LaY/i;->A()V

    :goto_27
    if-eqz v0, :cond_e

    iget-object v1, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eq v0, v1, :cond_e

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    goto :goto_e

    :cond_31
    invoke-virtual {p0}, LaY/i;->m()V

    goto :goto_27

    :cond_35
    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->d()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    invoke-virtual {p0}, LaY/i;->aq()V

    iget-object v1, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v1, :cond_49

    invoke-virtual {p0}, LaY/i;->z()V

    goto :goto_27

    :cond_49
    invoke-virtual {p0}, LaY/i;->m()V

    goto :goto_27

    :cond_4d
    iget-object v1, p0, LaY/i;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->d()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5d

    invoke-virtual {p0}, LaY/i;->ao()Z

    invoke-virtual {p0}, LaY/i;->r()V

    goto :goto_27

    :cond_5d
    invoke-virtual {p0}, LaY/i;->am()V

    invoke-virtual {p0}, LaY/i;->r()V

    goto :goto_27
.end method

.method protected z()V
    .registers 2

    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/i;->r:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :cond_9
    return-void
.end method
