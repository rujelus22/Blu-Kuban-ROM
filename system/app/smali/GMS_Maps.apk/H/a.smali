.class public LH/a;
.super LH/k;


# static fields
.field public static final a:LH/a;


# instance fields
.field private h:Z

.field private final i:Ljava/util/HashSet;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LH/a;

    invoke-direct {v0}, LH/a;-><init>()V

    sput-object v0, LH/a;->a:LH/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, LH/k;-><init>()V

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, LH/a;->i:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, LH/a;->j:Z

    return-void
.end method

.method private a(J)V
    .registers 5

    iget-boolean v0, p0, LH/a;->j:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LH/a;->f:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->n()Lcom/google/googlenav/ui/p;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LH/a;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/View;

    new-instance v1, LH/d;

    invoke-direct {v1, p0}, LH/d;-><init>(LH/a;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private a(LF/C;Z)V
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, LH/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v2

    iget-object v3, p0, LH/a;->c:LH/j;

    invoke-virtual {v3, p1}, LH/j;->c(LF/C;)V

    iget-object v3, p1, LF/C;->c:Lbc/a;

    invoke-interface {v2, v3}, Lcom/google/android/maps/rideabout/view/j;->d(Lbc/a;)V

    iget-object v3, p1, LF/C;->c:Lbc/a;

    iget-object v4, p0, LH/a;->d:LH/g;

    invoke-virtual {v4}, LH/g;->a()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/rideabout/view/j;->a(Lbc/a;Z)V

    iget-object v2, p0, LH/a;->c:LH/j;

    invoke-virtual {v2}, LH/j;->b()Lcom/google/android/maps/rideabout/app/a;

    move-result-object v3

    iget-object v2, p0, LH/a;->c:LH/j;

    invoke-virtual {v2}, LH/j;->c()Lbc/a;

    move-result-object v2

    invoke-direct {p0, v3, v2}, LH/a;->a(Lcom/google/android/maps/rideabout/app/a;Lbc/a;)V

    if-nez p2, :cond_34

    iget-boolean v2, p0, LH/a;->h:Z

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v4

    if-eq v2, v4, :cond_6a

    :cond_34
    move v2, v1

    :goto_35
    if-eqz v2, :cond_48

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v4

    iput-boolean v4, p0, LH/a;->h:Z

    iget-boolean v4, p0, LH/a;->h:Z

    if-eqz v4, :cond_6c

    invoke-virtual {p0}, LH/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/maps/rideabout/view/j;->f()V

    :cond_48
    :goto_48
    if-nez v2, :cond_50

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->a()Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_50
    move v0, v1

    :cond_51
    invoke-virtual {p0, v0}, LH/a;->a(Z)V

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->j()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_74

    invoke-static {}, LH/a;->r()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LH/a;->a(J)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    move v2, v0

    goto :goto_35

    :cond_6c
    invoke-virtual {p0}, LH/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/maps/rideabout/view/j;->e()V

    goto :goto_48

    :cond_74
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, LH/a;->a(J)V

    goto :goto_69
.end method

.method static synthetic a(LH/a;)V
    .registers 1

    invoke-direct {p0}, LH/a;->q()V

    return-void
.end method

.method private a(Lcom/google/android/maps/rideabout/app/a;Lbc/a;)V
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    if-ne v0, v1, :cond_1b

    iget-object v0, p2, Lbc/a;->a:Lbc/t;

    iget v0, v0, Lbc/t;->a:I

    invoke-direct {p0, v0}, LH/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LH/a;->n()V

    goto :goto_4

    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->j()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lbc/a;->a:Lbc/t;

    iget v0, v0, Lbc/t;->a:I

    invoke-direct {p0, v0}, LH/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LH/a;->o()V

    iget-object v0, p0, LH/a;->f:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->o()V

    goto :goto_4
.end method

.method private a(I)Z
    .registers 4

    iget-object v0, p0, LH/a;->i:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, LH/a;->i:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_d
.end method

.method private q()V
    .registers 5

    iget-object v0, p0, LH/a;->c:LH/j;

    invoke-virtual {v0}, LH/j;->c()Lbc/a;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, LH/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(Lbc/a;)V

    iget-object v2, p0, LH/a;->d:LH/g;

    invoke-virtual {v2}, LH/g;->a()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->c(Lbc/a;)I

    move-result v2

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/j;->b()I

    move-result v3

    if-ne v2, v3, :cond_2f

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/j;->a(I)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v0, p0, LH/a;->d:LH/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LH/g;->a(Z)V

    goto :goto_8

    :cond_2f
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->b(Lbc/a;)V

    goto :goto_8
.end method

.method private static r()J
    .registers 2

    invoke-static {}, LI/j;->a()LI/q;

    move-result-object v0

    iget v0, v0, LI/q;->u:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, LH/a;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LH/a;->j:Z

    return-void
.end method

.method public a(LF/C;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LH/a;->a(LF/C;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-object v0, p0, LH/a;->c:LH/j;

    invoke-virtual {v0}, LH/j;->b()Lcom/google/android/maps/rideabout/app/a;

    move-result-object v0

    if-eqz p1, :cond_15

    invoke-virtual {p0}, LH/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    iget-object v2, p0, LH/a;->d:LH/g;

    invoke-virtual {v2}, LH/g;->c()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/app/a;Z)V

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->h()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, LH/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/i;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, LH/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, LH/a;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/h;->a(Lcom/google/android/maps/rideabout/app/a;)V

    :goto_38
    return-void

    :cond_39
    invoke-virtual {p0}, LH/a;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/h;->a()V

    invoke-virtual {p0}, LH/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->a()V

    goto :goto_38
.end method

.method public b()V
    .registers 3

    invoke-super {p0}, LH/k;->b()V

    invoke-virtual {p0}, LH/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    new-instance v1, LH/b;

    invoke-direct {v1, p0}, LH/b;-><init>(LH/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(LF/C;)V
    .registers 4

    iget-object v0, p0, LH/a;->b:LH/h;

    sget-object v1, LH/n;->c:LH/n;

    invoke-virtual {v0, v1}, LH/h;->a(LH/n;)LH/k;

    return-void
.end method

.method public c()V
    .registers 3

    invoke-super {p0}, LH/k;->c()V

    iget-object v0, p0, LH/a;->c:LH/j;

    invoke-virtual {v0}, LH/j;->a()LF/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LH/a;->a(LF/C;Z)V

    invoke-virtual {p0}, LH/a;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    new-instance v1, LH/c;

    invoke-direct {v1, p0}, LH/c;-><init>(LH/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(LF/C;)V
    .registers 4

    iget-object v0, p0, LH/a;->b:LH/h;

    sget-object v1, LH/n;->b:LH/n;

    invoke-virtual {v0, v1}, LH/h;->a(LH/n;)LH/k;

    return-void
.end method

.method public d()V
    .registers 3

    invoke-super {p0}, LH/k;->d()V

    iget-object v0, p0, LH/a;->c:LH/j;

    invoke-virtual {v0}, LH/j;->a()LF/C;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LH/a;->a(LF/C;Z)V

    return-void
.end method

.method protected e()V
    .registers 2

    iget-object v0, p0, LH/a;->c:LH/j;

    invoke-virtual {v0}, LH/j;->b()Lcom/google/android/maps/rideabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v0

    iput-boolean v0, p0, LH/a;->h:Z

    iget-boolean v0, p0, LH/a;->h:Z

    invoke-virtual {p0, v0}, LH/a;->b(Z)V

    return-void
.end method

.method public f()V
    .registers 5

    const/4 v3, 0x1

    iput-boolean v3, p0, LH/a;->j:Z

    const/16 v0, 0x61

    const-string v1, "a"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LH/a;->d:LH/g;

    invoke-virtual {v0, v3}, LH/g;->b(Z)V

    invoke-virtual {p0}, LH/a;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->b()V

    return-void
.end method
