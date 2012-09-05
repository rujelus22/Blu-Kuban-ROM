.class public Lcom/google/android/maps/rideabout/view/c;
.super Ljava/lang/Object;

# interfaces
.implements LF/B;
.implements Lcom/google/googlenav/ui/view/android/rideabout/h;


# instance fields
.field private final a:LH/h;

.field private final b:LF/A;


# direct methods
.method private constructor <init>(Lbc/d;LF/A;Lcom/google/android/maps/rideabout/app/l;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LH/h;

    invoke-direct {v0, p1, p2, p3}, LH/h;-><init>(Lbc/d;LF/A;Lcom/google/android/maps/rideabout/app/l;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/c;->b:LF/A;

    return-void
.end method

.method public static a(Lbc/d;LF/A;Lcom/google/android/maps/rideabout/app/l;)Lcom/google/android/maps/rideabout/view/c;
    .registers 5

    new-instance v0, Lcom/google/android/maps/rideabout/view/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/rideabout/view/c;-><init>(Lbc/d;LF/A;Lcom/google/android/maps/rideabout/app/l;)V

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/ce;->a(Lcom/google/android/maps/rideabout/view/c;)V

    invoke-interface {p1, v0}, LF/A;->a(LF/B;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ce;->g()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->b:LF/A;

    invoke-interface {v0, p0}, LF/A;->b(LF/B;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x61

    const-string v1, "a"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0}, LH/k;->h()V

    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LH/k;->a(II)V

    return-void
.end method

.method public a(LF/C;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0, p1}, LH/h;->a(LF/C;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/google/android/maps/rideabout/view/d;->a:[I

    iget-object v1, p1, LF/C;->b:LF/D;

    invoke-virtual {v1}, LF/D;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    goto :goto_8

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LH/k;->a(LF/C;)V

    goto :goto_8

    :pswitch_21
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LH/k;->b(LF/C;)V

    goto :goto_8

    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LH/k;->c(LF/C;)V

    goto :goto_8

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_17
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method

.method public a(ZIIII)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0}, LH/k;->j()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0}, LH/k;->i()V

    return-void
.end method

.method public c()V
    .registers 2

    const-string v0, "c"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/view/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0}, LH/k;->p()V

    return-void
.end method

.method public d()V
    .registers 2

    const-string v0, "o"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/view/c;->a(Ljava/lang/String;)V

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->x()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0}, LH/k;->p()V

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->n()V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0}, LH/k;->d()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    invoke-virtual {v0}, LH/k;->c()V

    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->b()LH/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LH/k;->a(Z)V

    return-void
.end method

.method public h()LH/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    return-object v0
.end method

.method public i()LF/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/c;->a:LH/h;

    invoke-virtual {v0}, LH/h;->c()LH/j;

    move-result-object v0

    invoke-virtual {v0}, LH/j;->a()LF/C;

    move-result-object v0

    return-object v0
.end method
