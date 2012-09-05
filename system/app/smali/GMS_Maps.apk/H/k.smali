.class public abstract LH/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:[LH/k;


# instance fields
.field protected b:LH/h;

.field protected c:LH/j;

.field protected d:LH/g;

.field protected e:LF/A;

.field protected f:Lcom/google/googlenav/ui/view/android/ce;

.field protected g:Lbc/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, LH/n;->values()[LH/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [LH/k;

    sput-object v0, LH/k;->a:[LH/k;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LH/h;Lbc/d;LF/A;LH/j;)V
    .registers 8

    const/4 v0, 0x0

    sget-object v1, LH/k;->a:[LH/k;

    sget-object v2, LH/a;->a:LH/a;

    aput-object v2, v1, v0

    sget-object v1, LH/k;->a:[LH/k;

    const/4 v2, 0x1

    sget-object v3, LH/e;->a:LH/e;

    aput-object v3, v1, v2

    sget-object v1, LH/k;->a:[LH/k;

    const/4 v2, 0x2

    sget-object v3, LH/f;->a:LH/f;

    aput-object v3, v1, v2

    :goto_15
    sget-object v1, LH/k;->a:[LH/k;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    sget-object v1, LH/k;->a:[LH/k;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, p3, p1, p2}, LH/k;->a(LH/h;LH/j;Lbc/d;LF/A;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_24
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public a(II)V
    .registers 7

    iget-object v0, p0, LH/k;->c:LH/j;

    invoke-virtual {v0}, LH/j;->c()Lbc/a;

    move-result-object v0

    invoke-virtual {p0}, LH/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    if-eqz v0, :cond_36

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/j;->g()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, LH/k;->d:LH/g;

    invoke-virtual {v2}, LH/g;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/j;->c()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->b(Lbc/a;)V

    :cond_23
    :goto_23
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->c(Lbc/a;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/rideabout/view/j;->a(I)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(Lbc/a;)V

    iget-object v0, p0, LH/k;->d:LH/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LH/g;->a(Z)V

    :cond_36
    :goto_36
    iget-object v0, p0, LH/k;->d:LH/g;

    invoke-virtual {v0, p1}, LH/g;->a(I)V

    return-void

    :cond_3c
    if-eq p1, p2, :cond_23

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(Lbc/a;)V

    goto :goto_23

    :cond_42
    if-eq p1, p2, :cond_46

    if-eq p1, v2, :cond_4e

    :cond_46
    if-le p1, v2, :cond_4a

    if-lt p2, v2, :cond_4e

    :cond_4a
    if-ge p1, v2, :cond_36

    if-le p2, v2, :cond_36

    :cond_4e
    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(Lbc/a;)V

    iget-object v0, p0, LH/k;->d:LH/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LH/g;->a(Z)V

    goto :goto_36
.end method

.method public a(LF/C;)V
    .registers 2

    return-void
.end method

.method public final a(LH/h;LH/j;Lbc/d;LF/A;)V
    .registers 6

    iput-object p1, p0, LH/k;->b:LH/h;

    iput-object p2, p0, LH/k;->c:LH/j;

    iput-object p3, p0, LH/k;->g:Lbc/d;

    iput-object p4, p0, LH/k;->e:LF/A;

    new-instance v0, LH/g;

    invoke-direct {v0}, LH/g;-><init>()V

    iput-object v0, p0, LH/k;->d:LH/g;

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    iput-object v0, p0, LH/k;->f:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {p0}, LH/k;->a()V

    return-void
.end method

.method public abstract a(Z)V
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, LH/k;->e()V

    return-void
.end method

.method public b(LF/C;)V
    .registers 2

    return-void
.end method

.method protected b(Z)V
    .registers 5

    invoke-virtual {p0}, LH/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    iget-object v1, p0, LH/k;->c:LH/j;

    invoke-virtual {v1}, LH/j;->c()Lbc/a;

    move-result-object v1

    if-nez v1, :cond_10

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->a()V

    :goto_f
    return-void

    :cond_10
    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->d(Lbc/a;)V

    if-eqz p1, :cond_21

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->f()V

    :goto_18
    new-instance v2, LH/m;

    invoke-direct {v2, p0, v1}, LH/m;-><init>(LH/k;Lbc/a;)V

    invoke-interface {v0, v2}, Lcom/google/android/maps/rideabout/view/j;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    :cond_21
    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->e()V

    goto :goto_18
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, LH/k;->e()V

    invoke-virtual {p0}, LH/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    new-instance v1, LH/l;

    invoke-direct {v1, p0, v0}, LH/l;-><init>(LH/k;Lcom/google/android/maps/rideabout/view/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(LF/C;)V
    .registers 2

    return-void
.end method

.method public d()V
    .registers 1

    invoke-virtual {p0}, LH/k;->e()V

    return-void
.end method

.method protected abstract e()V
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, LH/k;->d:LH/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LH/g;->a(Z)V

    invoke-virtual {p0}, LH/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->d()V

    return-void
.end method

.method public i()V
    .registers 4

    iget-object v0, p0, LH/k;->c:LH/j;

    invoke-virtual {v0}, LH/j;->c()Lbc/a;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, LH/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->c(Lbc/a;)I

    move-result v0

    invoke-interface {v1}, Lcom/google/android/maps/rideabout/view/j;->b()I

    move-result v2

    if-ne v0, v2, :cond_8

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, LH/k;->d:LH/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LH/g;->a(Z)V

    goto :goto_8
.end method

.method public j()V
    .registers 4

    iget-object v0, p0, LH/k;->c:LH/j;

    invoke-virtual {v0}, LH/j;->c()Lbc/a;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, LH/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    iget-object v2, p0, LH/k;->d:LH/g;

    invoke-virtual {v2}, LH/g;->a()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/rideabout/view/j;->a(Lbc/a;Z)V

    :cond_15
    return-void
.end method

.method protected k()Lcom/google/android/maps/rideabout/view/j;
    .registers 2

    iget-object v0, p0, LH/k;->f:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->h()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lcom/google/android/maps/rideabout/view/i;
    .registers 2

    iget-object v0, p0, LH/k;->f:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->i()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lcom/google/android/maps/rideabout/view/h;
    .registers 2

    iget-object v0, p0, LH/k;->f:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->j()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    return-object v0
.end method

.method protected n()V
    .registers 5

    iget-object v0, p0, LH/k;->f:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->n()Lcom/google/googlenav/ui/p;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_8
.end method

.method protected o()V
    .registers 5

    iget-object v0, p0, LH/k;->f:Lcom/google/googlenav/ui/view/android/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->n()Lcom/google/googlenav/ui/p;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/16 v1, 0xf1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_8
.end method

.method public p()V
    .registers 3

    iget-object v0, p0, LH/k;->d:LH/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LH/g;->b(Z)V

    invoke-virtual {p0}, LH/k;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->c()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LH/k;->a(Z)V

    return-void
.end method
