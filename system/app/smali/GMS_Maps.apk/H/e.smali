.class public LH/e;
.super LH/k;


# static fields
.field public static final a:LH/e;


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LH/e;

    invoke-direct {v0}, LH/e;-><init>()V

    sput-object v0, LH/e;->a:LH/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, LH/k;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LH/e;->h:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LH/e;->h:Z

    return-void
.end method

.method public a(LF/C;)V
    .registers 4

    iget-object v0, p0, LH/e;->b:LH/h;

    sget-object v1, LH/n;->a:LH/n;

    invoke-virtual {v0, v1}, LH/h;->a(LH/n;)LH/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LH/k;->a(LF/C;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-virtual {p0}, LH/e;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, LH/e;->d:LH/g;

    invoke-virtual {v1}, LH/g;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Z)V

    invoke-virtual {p0}, LH/e;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/h;->b()V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, LH/k;->b()V

    iget-boolean v0, p0, LH/e;->h:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, LH/e;->h:Z

    iget-object v0, p0, LH/e;->g:Lbc/d;

    invoke-virtual {v0}, Lbc/d;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, LH/e;->n()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0}, LH/e;->o()V

    goto :goto_15
.end method

.method public b(LF/C;)V
    .registers 4

    iget-object v0, p0, LH/e;->b:LH/h;

    sget-object v1, LH/n;->c:LH/n;

    invoke-virtual {v0, v1}, LH/h;->a(LH/n;)LH/k;

    return-void
.end method

.method protected e()V
    .registers 3

    invoke-virtual {p0}, LH/e;->k()Lcom/google/android/maps/rideabout/view/j;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LH/e;->a(Z)V

    iget-object v0, p0, LH/e;->c:LH/j;

    invoke-virtual {v0}, LH/j;->a()LF/C;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, LH/e;->c:LH/j;

    invoke-virtual {v1, v0}, LH/j;->c(LF/C;)V

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LH/e;->b(Z)V

    return-void
.end method
