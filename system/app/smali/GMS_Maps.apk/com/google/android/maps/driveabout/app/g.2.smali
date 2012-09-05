.class Lcom/google/android/maps/driveabout/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Q;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/a;

.field private final b:Lo/R;

.field private c:Lo/a;

.field private final d:Lcom/google/android/maps/driveabout/app/d;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/a;Lo/R;Lcom/google/android/maps/driveabout/app/d;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/g;->d:Lcom/google/android/maps/driveabout/app/d;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/g;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->d()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/g;)Lo/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    return-object v0
.end method

.method private d()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/g;->a(Z)Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->f()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/g;)Lcom/google/android/maps/driveabout/app/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->d:Lcom/google/android/maps/driveabout/app/d;

    return-object v0
.end method

.method private declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/app/h;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/h;-><init>(Lcom/google/android/maps/driveabout/app/g;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->j(Lcom/google/android/maps/driveabout/app/a;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    invoke-virtual {v0}, Lo/a;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->e()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->a()V

    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    new-instance v1, Lcom/google/android/maps/driveabout/app/i;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/i;-><init>(Lcom/google/android/maps/driveabout/app/g;)V

    invoke-virtual {v0, v1}, Lo/a;->a(Lo/b;)V

    goto :goto_9
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/g;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->f()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_11

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->e()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_b

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lo/R;Lo/a;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/g;->d()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/g;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    invoke-virtual {v1}, Lo/R;->d()Lu/j;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    invoke-virtual {v2}, Lo/R;->d()Lu/j;

    move-result-object v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lu/j;->a()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-virtual {v1}, Lu/j;->a()I

    move-result v3

    invoke-virtual {v2}, Lu/j;->a()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lu/j;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lu/j;->h()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lu/j;->e()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->a()Lt/L;

    move-result-object v1

    invoke-virtual {v2}, Lu/j;->e()Lu/I;

    move-result-object v2

    invoke-virtual {v2}, Lu/I;->a()Lt/L;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3
.end method

.method a(Z)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    if-eqz v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-nez p1, :cond_e

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->e:Ljava/lang/Runnable;

    if-nez v2, :cond_7

    :cond_e
    new-instance v3, Lo/H;

    invoke-direct {v3}, Lo/H;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->d()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->c(Lcom/google/android/maps/driveabout/app/a;)Lo/c;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    invoke-interface {v2, v4}, Lo/c;->a(Lo/R;)Lo/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lo/H;->a(Lo/a;)V

    :cond_2a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->e()Z

    move-result v2

    if-eqz v2, :cond_9f

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/a;->d(Lcom/google/android/maps/driveabout/app/a;)Lo/P;

    move-result-object v4

    if-eqz v4, :cond_aa

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/a;->e(Lcom/google/android/maps/driveabout/app/a;)Z

    move-result v4

    if-eqz v4, :cond_aa

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->d(Lcom/google/android/maps/driveabout/app/a;)Lo/P;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    invoke-interface {v2, v4}, Lo/P;->a(Lo/R;)Lo/a;

    move-result-object v2

    if-nez v2, :cond_5f

    if-nez p1, :cond_5f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/a;->d(Lcom/google/android/maps/driveabout/app/a;)Lo/P;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    invoke-interface {v1, v2, p0}, Lo/P;->a(Lo/R;Lo/Q;)V

    goto :goto_7

    :cond_5f
    if-nez v2, :cond_a8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->f(Lcom/google/android/maps/driveabout/app/a;)Lo/P;

    move-result-object v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->f(Lcom/google/android/maps/driveabout/app/a;)Lo/P;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    invoke-interface {v0, v2}, Lo/P;->a(Lo/R;)Lo/a;

    move-result-object v0

    :goto_75
    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->g(Lcom/google/android/maps/driveabout/app/a;)Lo/P;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    invoke-interface {v0, v2}, Lo/P;->a(Lo/R;)Lo/a;

    move-result-object v0

    :cond_83
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->h(Lcom/google/android/maps/driveabout/app/a;)Z

    move-result v2

    if-nez v2, :cond_8d

    if-nez v0, :cond_9c

    :cond_8d
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/a;->i(Lcom/google/android/maps/driveabout/app/a;)Lo/c;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/g;->b:Lo/R;

    invoke-interface {v2, v4}, Lo/c;->a(Lo/R;)Lo/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lo/H;->a(Lo/a;)V

    :cond_9c
    invoke-virtual {v3, v0}, Lo/H;->a(Lo/a;)V

    :cond_9f
    invoke-virtual {v3}, Lo/H;->a()Lo/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    move v0, v1

    goto/16 :goto_7

    :cond_a8
    move-object v0, v2

    goto :goto_75

    :cond_aa
    move-object v0, v2

    goto :goto_75
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    invoke-virtual {v0}, Lo/a;->a()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->b()V

    :cond_1e
    return-void
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    invoke-virtual {v0}, Lo/a;->c()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->e()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->b(Lcom/google/android/maps/driveabout/app/a;)Lcom/google/android/maps/driveabout/app/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/j;->a()V

    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/g;->c:Lo/a;

    invoke-virtual {v0}, Lo/a;->b()V

    :cond_26
    return-void
.end method
