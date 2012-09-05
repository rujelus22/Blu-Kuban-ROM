.class public Lcom/google/googlenav/ui/view/android/ce;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/googlenav/ui/view/android/ce;


# instance fields
.field private b:Lcom/google/googlenav/ui/view/android/cg;

.field private c:Z

.field private d:Lcom/google/android/maps/rideabout/view/j;

.field private e:Lcom/google/android/maps/rideabout/view/i;

.field private f:Lcom/google/android/maps/rideabout/view/h;

.field private g:Lcom/google/android/maps/rideabout/view/c;

.field private h:Lcom/google/googlenav/ui/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/googlenav/ui/view/android/ce;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/ce;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/ce;->a:Lcom/google/googlenav/ui/view/android/ce;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlenav/ui/view/android/cg;->a:Lcom/google/googlenav/ui/view/android/cg;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/cg;

    sget-object v0, Lcom/google/android/maps/rideabout/view/g;->a:Lcom/google/android/maps/rideabout/view/j;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    sget-object v0, Lcom/google/android/maps/rideabout/view/f;->a:Lcom/google/android/maps/rideabout/view/i;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    sget-object v0, Lcom/google/android/maps/rideabout/view/e;->a:Lcom/google/android/maps/rideabout/view/h;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->f:Lcom/google/android/maps/rideabout/view/h;

    return-void
.end method

.method public static a()Lcom/google/googlenav/ui/view/android/ce;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/ce;->a:Lcom/google/googlenav/ui/view/android/ce;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 3

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/view/j;->a(Lcom/google/android/maps/rideabout/view/c;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/view/c;->f()V

    :cond_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lcom/google/android/maps/rideabout/view/h;)V
    .registers 3

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ce;->f:Lcom/google/android/maps/rideabout/view/h;

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lcom/google/android/maps/rideabout/view/i;)V
    .registers 4

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    :cond_13
    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lcom/google/android/maps/rideabout/view/j;)V
    .registers 3

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {p1, v0}, Lcom/google/android/maps/rideabout/view/j;->a(Lcom/google/android/maps/rideabout/view/c;)V

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Lcom/google/googlenav/ui/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ce;->h:Lcom/google/googlenav/ui/p;

    return-void
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->f()V

    :cond_d
    return-void
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->a(Lcom/google/android/maps/rideabout/view/c;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->e()V

    goto :goto_4
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->b(Lcom/google/android/maps/rideabout/view/c;)V

    goto :goto_4
.end method

.method public e()V
    .registers 2

    sget-object v0, Lcom/google/googlenav/ui/view/android/cg;->b:Lcom/google/googlenav/ui/view/android/cg;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/cg;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->g()V

    :cond_d
    return-void
.end method

.method public f()V
    .registers 2

    sget-object v0, Lcom/google/googlenav/ui/view/android/cg;->a:Lcom/google/googlenav/ui/view/android/cg;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/cg;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->f()V

    :cond_d
    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->b(Lcom/google/android/maps/rideabout/view/c;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->d()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    goto :goto_4
.end method

.method public h()Lcom/google/android/maps/rideabout/view/j;
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/cg;

    sget-object v1, Lcom/google/googlenav/ui/view/android/cg;->b:Lcom/google/googlenav/ui/view/android/cg;

    if-ne v0, v1, :cond_d

    :cond_a
    sget-object v0, Lcom/google/android/maps/rideabout/view/g;->a:Lcom/google/android/maps/rideabout/view/j;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    goto :goto_c
.end method

.method public i()Lcom/google/android/maps/rideabout/view/i;
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/android/maps/rideabout/view/f;->a:Lcom/google/android/maps/rideabout/view/i;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/googlenav/ui/view/android/cf;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/cg;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/cg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    goto :goto_6

    :pswitch_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    goto :goto_6

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

.method public j()Lcom/google/android/maps/rideabout/view/h;
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ce;->c:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/android/maps/rideabout/view/e;->a:Lcom/google/android/maps/rideabout/view/h;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/googlenav/ui/view/android/cf;->a:[I

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->b:Lcom/google/googlenav/ui/view/android/cg;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/cg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/j;->i()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    goto :goto_6

    :pswitch_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->f:Lcom/google/android/maps/rideabout/view/h;

    goto :goto_6

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

.method public k()Lcom/google/android/maps/rideabout/view/j;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    return-object v0
.end method

.method public l()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ce;->g()V

    sget-object v0, Lcom/google/android/maps/rideabout/view/g;->a:Lcom/google/android/maps/rideabout/view/j;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    sget-object v0, Lcom/google/android/maps/rideabout/view/f;->a:Lcom/google/android/maps/rideabout/view/i;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->e:Lcom/google/android/maps/rideabout/view/i;

    sget-object v0, Lcom/google/android/maps/rideabout/view/e;->a:Lcom/google/android/maps/rideabout/view/h;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->f:Lcom/google/android/maps/rideabout/view/h;

    return-void
.end method

.method public m()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->h:Lcom/google/googlenav/ui/p;

    return-void
.end method

.method public n()Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->h:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method public o()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ce;->g:Lcom/google/android/maps/rideabout/view/c;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->h()LH/h;

    move-result-object v0

    invoke-virtual {v0}, LH/h;->c()LH/j;

    move-result-object v0

    invoke-virtual {v0}, LH/j;->c()Lbc/a;

    move-result-object v0

    :cond_13
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ce;->d:Lcom/google/android/maps/rideabout/view/j;

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/j;->e(Lbc/a;)V

    return-void
.end method
