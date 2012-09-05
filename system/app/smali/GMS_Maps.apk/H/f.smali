.class public LH/f;
.super LH/k;


# static fields
.field public static final a:LH/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LH/f;

    invoke-direct {v0}, LH/f;-><init>()V

    sput-object v0, LH/f;->a:LH/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, LH/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LF/C;)V
    .registers 4

    iget-object v0, p0, LH/f;->b:LH/h;

    sget-object v1, LH/n;->a:LH/n;

    invoke-virtual {v0, v1}, LH/h;->a(LH/n;)LH/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LH/k;->a(LF/C;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-virtual {p0}, LH/f;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/h;->a()V

    sget-object v0, LF/E;->c:LF/E;

    iget-object v0, p0, LH/f;->c:LH/j;

    invoke-virtual {v0}, LH/j;->a()LF/C;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v0, LF/C;->f:LF/E;

    :cond_13
    invoke-virtual {p0}, LH/f;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, LH/f;->d:LH/g;

    invoke-virtual {v1}, LH/g;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->b(Z)V

    return-void
.end method

.method public b(LF/C;)V
    .registers 4

    invoke-virtual {p0}, LH/f;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, LH/f;->d:LH/g;

    invoke-virtual {v1}, LH/g;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->b(Z)V

    return-void
.end method

.method public c(LF/C;)V
    .registers 4

    iget-object v0, p0, LH/f;->b:LH/h;

    sget-object v1, LH/n;->b:LH/n;

    invoke-virtual {v0, v1}, LH/h;->a(LH/n;)LH/k;

    return-void
.end method

.method protected e()V
    .registers 3

    invoke-virtual {p0}, LH/f;->k()Lcom/google/android/maps/rideabout/view/j;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LH/f;->a(Z)V

    iget-object v0, p0, LH/f;->c:LH/j;

    invoke-virtual {v0}, LH/j;->a()LF/C;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, LH/f;->c:LH/j;

    invoke-virtual {v1, v0}, LH/j;->c(LF/C;)V

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LH/f;->b(Z)V

    return-void
.end method
