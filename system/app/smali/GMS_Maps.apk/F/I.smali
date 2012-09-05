.class public LF/I;
.super Ljava/lang/Object;

# interfaces
.implements LF/A;


# instance fields
.field private final a:Lbc/d;

.field private final b:Ljava/util/ArrayList;

.field private c:Lbc/a;

.field private d:F

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;

.field private g:Z


# direct methods
.method public constructor <init>(Lbc/d;LF/L;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/I;->a:Lbc/d;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LF/I;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LF/I;->e:Landroid/os/Handler;

    new-instance v0, LF/J;

    invoke-direct {v0, p0, p2}, LF/J;-><init>(LF/I;LF/L;)V

    iput-object v0, p0, LF/I;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(LF/I;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, LF/I;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(LF/C;)V
    .registers 4

    iget-object v0, p0, LF/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/B;

    invoke-interface {v0, p1}, LF/B;->a(LF/C;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic a(LF/I;LF/C;)V
    .registers 2

    invoke-direct {p0, p1}, LF/I;->a(LF/C;)V

    return-void
.end method

.method static synthetic b(LF/I;)Z
    .registers 2

    iget-boolean v0, p0, LF/I;->g:Z

    return v0
.end method

.method private c()LF/C;
    .registers 5

    const-wide/high16 v2, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12

    invoke-direct {p0}, LF/I;->h()V

    invoke-direct {p0}, LF/I;->d()LF/C;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1f

    invoke-direct {p0}, LF/I;->e()LF/C;

    move-result-object v0

    goto :goto_11

    :cond_1f
    invoke-direct {p0}, LF/I;->f()LF/C;

    move-result-object v0

    goto :goto_11
.end method

.method static synthetic c(LF/I;)LF/C;
    .registers 2

    invoke-direct {p0}, LF/I;->c()LF/C;

    move-result-object v0

    return-object v0
.end method

.method private d()LF/C;
    .registers 6

    invoke-direct {p0}, LF/I;->g()LF/R;

    move-result-object v0

    iget-object v1, p0, LF/I;->c:Lbc/a;

    new-instance v2, Lbc/c;

    iget-object v3, p0, LF/I;->c:Lbc/a;

    iget-object v4, p0, LF/I;->c:Lbc/a;

    invoke-direct {v2, v3, v4}, Lbc/c;-><init>(Lbc/a;Lbc/a;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, LF/C;->a(LF/R;Lbc/a;Lbc/c;Z)LF/C;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(LF/I;)V
    .registers 1

    invoke-direct {p0}, LF/I;->h()V

    return-void
.end method

.method private e()LF/C;
    .registers 2

    invoke-direct {p0}, LF/I;->g()LF/R;

    move-result-object v0

    invoke-static {v0}, LF/C;->a(LF/R;)LF/C;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(LF/I;)LF/C;
    .registers 2

    invoke-direct {p0}, LF/I;->d()LF/C;

    move-result-object v0

    return-object v0
.end method

.method private f()LF/C;
    .registers 3

    invoke-direct {p0}, LF/I;->g()LF/R;

    move-result-object v0

    sget-object v1, LF/E;->c:LF/E;

    invoke-static {v0, v1}, LF/C;->a(LF/R;LF/E;)LF/C;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(LF/I;)V
    .registers 1

    invoke-direct {p0}, LF/I;->i()V

    return-void
.end method

.method private g()LF/R;
    .registers 4

    new-instance v0, LF/R;

    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LF/R;-><init>(Landroid/location/Location;)V

    sget-object v1, LF/S;->a:LF/S;

    invoke-virtual {v0, v1}, LF/R;->a(LF/S;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LF/R;->setTime(J)V

    return-object v0
.end method

.method static synthetic g(LF/I;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, LF/I;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .registers 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, LF/I;->c:Lbc/a;

    if-nez v0, :cond_e

    new-instance v0, Lbc/a;

    invoke-direct {v0, v1, v1, v4}, Lbc/a;-><init>(IIF)V

    iput-object v0, p0, LF/I;->c:Lbc/a;

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, LF/I;->c:Lbc/a;

    iget-object v0, v0, Lbc/a;->a:Lbc/t;

    new-instance v1, Lbc/v;

    iget-object v2, p0, LF/I;->a:Lbc/d;

    invoke-direct {v1, v2}, Lbc/v;-><init>(Lbc/d;)V

    invoke-virtual {v1, v0}, Lbc/v;->a(Lbc/t;)Lbc/v;

    move-result-object v1

    iget-object v2, p0, LF/I;->a:Lbc/d;

    invoke-virtual {v2, v0}, Lbc/d;->e(Lbc/t;)Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, p0, LF/I;->d:F

    const v3, 0x3e4ccccd

    add-float/2addr v2, v3

    iput v2, p0, LF/I;->d:F

    iget v2, p0, LF/I;->d:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3b

    invoke-virtual {v1}, Lbc/v;->a()Lbc/t;

    move-result-object v0

    iput v4, p0, LF/I;->d:F

    :cond_3b
    new-instance v1, Lbc/a;

    iget v2, p0, LF/I;->d:F

    invoke-direct {v1, v0, v2}, Lbc/a;-><init>(Lbc/t;F)V

    iput-object v1, p0, LF/I;->c:Lbc/a;

    goto :goto_d
.end method

.method private i()V
    .registers 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, LF/I;->c:Lbc/a;

    if-nez v0, :cond_e

    new-instance v0, Lbc/a;

    invoke-direct {v0, v1, v1, v4}, Lbc/a;-><init>(IIF)V

    iput-object v0, p0, LF/I;->c:Lbc/a;

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, LF/I;->c:Lbc/a;

    iget-object v1, v0, Lbc/a;->a:Lbc/t;

    iget-object v0, p0, LF/I;->a:Lbc/d;

    invoke-virtual {v0, v1}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->c()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, LF/I;->a:Lbc/d;

    iget-object v2, p0, LF/I;->c:Lbc/a;

    const/high16 v3, 0x41a0

    invoke-static {v0, v2, v3}, LI/g;->a(Lbc/d;Lbc/a;F)Lbc/a;

    move-result-object v0

    :goto_28
    iget-object v2, v0, Lbc/a;->a:Lbc/t;

    invoke-virtual {v2, v1}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v0, Lbc/v;

    iget-object v2, p0, LF/I;->a:Lbc/d;

    invoke-direct {v0, v2}, Lbc/v;-><init>(Lbc/d;)V

    invoke-virtual {v0, v1}, Lbc/v;->a(Lbc/t;)Lbc/v;

    move-result-object v0

    iget-object v2, p0, LF/I;->a:Lbc/d;

    invoke-virtual {v2, v1}, Lbc/d;->e(Lbc/t;)Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-virtual {v0}, Lbc/v;->a()Lbc/t;

    move-result-object v0

    :goto_47
    new-instance v1, Lbc/a;

    invoke-direct {v1, v0, v4}, Lbc/a;-><init>(Lbc/t;F)V

    move-object v0, v1

    :cond_4d
    iput-object v0, p0, LF/I;->c:Lbc/a;

    goto :goto_d

    :cond_50
    iget-object v0, p0, LF/I;->a:Lbc/d;

    iget-object v2, p0, LF/I;->c:Lbc/a;

    const/high16 v3, 0x4316

    invoke-static {v0, v2, v3}, LI/g;->a(Lbc/d;Lbc/a;F)Lbc/a;

    move-result-object v0

    goto :goto_28

    :cond_5b
    move-object v0, v1

    goto :goto_47
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, LF/I;->e:Landroid/os/Handler;

    iget-object v1, p0, LF/I;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, LF/I;->f:Ljava/lang/Runnable;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, LF/I;->g:Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(LF/B;)V
    .registers 3

    iget-object v0, p0, LF/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, LF/I;->e:Landroid/os/Handler;

    iget-object v1, p0, LF/I;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(LF/B;)V
    .registers 3

    iget-object v0, p0, LF/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
