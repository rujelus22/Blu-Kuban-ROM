.class public Ls/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ls/v;

.field private c:Ls/k;

.field private d:Ls/r;

.field private e:Ls/g;

.field private f:Ls/a;

.field private g:Ls/d;

.field private h:Ls/d;

.field private i:Ls/d;

.field private j:Ls/E;

.field private k:Ls/B;

.field private final l:Ls/u;

.field private final m:Ljava/util/List;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls/u;

    invoke-direct {v0, p0, v1}, Ls/u;-><init>(Ls/o;Ls/p;)V

    iput-object v0, p0, Ls/o;->l:Ls/u;

    invoke-static {}, LK/bR;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Ls/o;->m:Ljava/util/List;

    iput v2, p0, Ls/o;->n:I

    iput-object p1, p0, Ls/o;->a:Landroid/content/Context;

    new-instance v0, Ls/x;

    invoke-direct {v0, p1, v1}, Ls/x;-><init>(Landroid/content/Context;Ls/p;)V

    iput-object v0, p0, Ls/o;->b:Ls/v;

    new-instance v0, Ls/k;

    invoke-direct {v0}, Ls/k;-><init>()V

    iput-object v0, p0, Ls/o;->c:Ls/k;

    new-instance v0, Ls/h;

    iget-object v1, p0, Ls/o;->c:Ls/k;

    invoke-direct {v0, v1}, Ls/h;-><init>(Ls/c;)V

    iput-object v0, p0, Ls/o;->g:Ls/d;

    new-instance v0, Ls/D;

    iget-object v1, p0, Ls/o;->c:Ls/k;

    invoke-direct {v0, v1}, Ls/D;-><init>(Ls/c;)V

    iput-object v0, p0, Ls/o;->h:Ls/d;

    invoke-direct {p0, v2}, Ls/o;->b(I)V

    return-void
.end method

.method public static final a()F
    .registers 2

    invoke-static {}, Ls/o;->b()F

    move-result v0

    const v1, 0x3f2aacda

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Ls/o;)Ls/v;
    .registers 2

    iget-object v0, p0, Ls/o;->b:Ls/v;

    return-object v0
.end method

.method private a(Ls/v;)V
    .registers 4

    invoke-virtual {p0}, Ls/o;->f()V

    iput-object p1, p0, Ls/o;->b:Ls/v;

    iget-object v0, p0, Ls/o;->e:Ls/g;

    iget-object v1, p0, Ls/o;->b:Ls/v;

    invoke-virtual {v0, v1}, Ls/g;->a(Ls/v;)V

    invoke-virtual {p0}, Ls/o;->d()V

    return-void
.end method

.method public static final b()F
    .registers 1

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    invoke-virtual {v0}, Lz/l;->n()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static synthetic b(Ls/o;)Ls/d;
    .registers 2

    iget-object v0, p0, Ls/o;->i:Ls/d;

    return-object v0
.end method

.method private b(I)V
    .registers 6

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    new-instance v1, Ls/g;

    iget-object v2, p0, Ls/o;->c:Ls/k;

    iget-object v3, p0, Ls/o;->b:Ls/v;

    invoke-direct {v1, v2, v3, v0}, Ls/g;-><init>(Ls/c;Ls/v;Laf/a;)V

    iput-object v1, p0, Ls/o;->e:Ls/g;

    new-instance v1, Ls/r;

    iget-object v2, p0, Ls/o;->c:Ls/k;

    invoke-direct {v1, p0, v2}, Ls/r;-><init>(Ls/o;Ls/c;)V

    iput-object v1, p0, Ls/o;->d:Ls/r;

    new-instance v1, Ls/E;

    iget-object v2, p0, Ls/o;->c:Ls/k;

    iget-object v3, p0, Ls/o;->c:Ls/k;

    invoke-virtual {v3}, Ls/k;->d()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ls/E;-><init>(Ls/c;Landroid/os/Handler;Laf/a;)V

    iput-object v1, p0, Ls/o;->j:Ls/E;

    new-instance v0, Ls/a;

    iget-object v1, p0, Ls/o;->c:Ls/k;

    invoke-direct {v0, v1}, Ls/a;-><init>(Ls/c;)V

    iput-object v0, p0, Ls/o;->f:Ls/a;

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "gps"

    iget-object v2, p0, Ls/o;->e:Ls/g;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_gps_fixup"

    iget-object v2, p0, Ls/o;->d:Ls/r;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "network"

    iget-object v2, p0, Ls/o;->d:Ls/r;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_base_location"

    iget-object v2, p0, Ls/o;->f:Ls/a;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    if-nez p1, :cond_8a

    iget-object v0, p0, Ls/o;->g:Ls/d;

    iput-object v0, p0, Ls/o;->i:Ls/d;

    invoke-direct {p0}, Ls/o;->m()V

    :goto_61
    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Ls/o;->i:Ls/d;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    new-instance v0, Ls/B;

    iget-object v1, p0, Ls/o;->c:Ls/k;

    invoke-direct {v0, v1}, Ls/B;-><init>(Ls/c;)V

    iput-object v0, p0, Ls/o;->k:Ls/B;

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "android_orientation"

    iget-object v2, p0, Ls/o;->k:Ls/B;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    iget-object v1, p0, Ls/o;->i:Ls/d;

    invoke-interface {v1}, Ls/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ls/o;->k:Ls/B;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    return-void

    :cond_8a
    iget-object v0, p0, Ls/o;->h:Ls/d;

    iput-object v0, p0, Ls/o;->i:Ls/d;

    goto :goto_61
.end method

.method static synthetic c(Ls/o;)Ls/g;
    .registers 2

    iget-object v0, p0, Ls/o;->e:Ls/g;

    return-object v0
.end method

.method private c(I)V
    .registers 6

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Ls/o;->i:Ls/d;

    invoke-virtual {v0, v1, v2}, Ls/k;->b(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    iget-object v1, p0, Ls/o;->i:Ls/d;

    invoke-interface {v1}, Ls/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ls/o;->k:Ls/B;

    invoke-virtual {v0, v1, v2}, Ls/k;->b(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v2, p0, Ls/o;->c:Ls/k;

    iget-object v3, p0, Ls/o;->i:Ls/d;

    invoke-interface {v3}, Ls/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ls/k;->b(Ljava/lang/String;Ls/c;)V

    goto :goto_1c

    :cond_34
    if-nez p1, :cond_71

    iget-object v0, p0, Ls/o;->g:Ls/d;

    iput-object v0, p0, Ls/o;->i:Ls/d;

    invoke-direct {p0}, Ls/o;->m()V

    :goto_3d
    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Ls/o;->i:Ls/d;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    iget-object v1, p0, Ls/o;->i:Ls/d;

    invoke-interface {v1}, Ls/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ls/o;->k:Ls/B;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/c;

    iget-object v2, p0, Ls/o;->c:Ls/k;

    iget-object v3, p0, Ls/o;->i:Ls/d;

    invoke-interface {v3}, Ls/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    goto :goto_59

    :cond_71
    invoke-direct {p0}, Ls/o;->n()V

    iget-object v0, p0, Ls/o;->h:Ls/d;

    iput-object v0, p0, Ls/o;->i:Ls/d;

    goto :goto_3d

    :cond_79
    return-void
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Ls/o;->j:Ls/E;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Ls/o;->i:Ls/d;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Ls/o;->e:Ls/g;

    invoke-virtual {v0, v1, v2}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    return-void
.end method

.method private n()V
    .registers 4

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Ls/o;->j:Ls/E;

    invoke-virtual {v0, v1, v2}, Ls/k;->b(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Ls/o;->i:Ls/d;

    invoke-virtual {v0, v1, v2}, Ls/k;->b(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Ls/o;->e:Ls/g;

    invoke-virtual {v0, v1, v2}, Ls/k;->b(Ljava/lang/String;Ls/c;)V

    return-void
.end method

.method private o()V
    .registers 11

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0}, Ls/v;->a()Ljava/util/List;

    move-result-object v0

    const-string v4, "gps"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Ls/o;->b:Ls/v;

    const-string v4, "gps"

    invoke-interface {v0, v4}, Ls/v;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_1c
    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v4

    invoke-virtual {v4}, Lz/l;->k()I

    move-result v4

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v5, v2, v5

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gez v4, :cond_60

    iget-object v4, p0, Ls/o;->c:Ls/k;

    invoke-virtual {v4, v0}, Ls/k;->onLocationChanged(Landroid/location/Location;)V

    :goto_36
    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0}, Ls/v;->a()Ljava/util/List;

    move-result-object v0

    const-string v4, "network"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Ls/o;->b:Ls/v;

    const-string v4, "network"

    invoke-interface {v0, v4}, Ls/v;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_4c
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_66

    iget-object v1, p0, Ls/o;->c:Ls/k;

    invoke-virtual {v1, v0}, Ls/k;->onLocationChanged(Landroid/location/Location;)V

    :goto_5f
    return-void

    :cond_60
    iget-object v0, p0, Ls/o;->c:Ls/k;

    invoke-virtual {v0, v9, v1}, Ls/k;->a(ILandroid/os/Bundle;)V

    goto :goto_36

    :cond_66
    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v2, "network"

    invoke-virtual {v0, v2, v9, v1}, Ls/k;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_5f

    :cond_6e
    move-object v0, v1

    goto :goto_4c

    :cond_70
    move-object v0, v1

    goto :goto_1c
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget v0, p0, Ls/o;->n:I

    if-eq v0, p1, :cond_9

    invoke-direct {p0, p1}, Ls/o;->c(I)V

    iput p1, p0, Ls/o;->n:I

    :cond_9
    iget-object v0, p0, Ls/o;->c:Ls/k;

    new-instance v1, Ls/q;

    invoke-direct {v1, p0, p1}, Ls/q;-><init>(Ls/o;I)V

    invoke-virtual {v0, v1}, Ls/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(J)V
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0}, Ls/v;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Ls/o;->b:Ls/v;

    const-string v1, "gps"

    iget-object v5, p0, Ls/o;->c:Ls/k;

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Ls/v;->a(Ljava/lang/String;JFLs/c;)V

    :cond_19
    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0}, Ls/v;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Ls/o;->b:Ls/v;

    const-string v1, "network"

    iget-object v5, p0, Ls/o;->c:Ls/k;

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Ls/v;->a(Ljava/lang/String;JFLs/c;)V

    :cond_31
    return-void
.end method

.method public a(Lq/F;)V
    .registers 3

    invoke-virtual {p1}, Lq/F;->b()Ls/z;

    move-result-object v0

    invoke-direct {p0, v0}, Ls/o;->a(Ls/v;)V

    return-void
.end method

.method public a(Ls/c;)V
    .registers 4

    iget-object v0, p0, Ls/o;->c:Ls/k;

    iget-object v1, p0, Ls/o;->i:Ls/d;

    invoke-interface {v1}, Ls/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    const-string v1, "driveabout_orientation_filter"

    invoke-virtual {v0, v1, p1}, Ls/k;->a(Ljava/lang/String;Ls/c;)V

    iget-object v0, p0, Ls/o;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ls/s;)V
    .registers 3

    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0, p1}, Ls/v;->a(Ls/s;)V

    return-void
.end method

.method public a(Lu/x;)V
    .registers 4

    iget-object v0, p0, Ls/o;->c:Ls/k;

    new-instance v1, Ls/p;

    invoke-direct {v1, p0, p1}, Ls/p;-><init>(Ls/o;Lu/x;)V

    invoke-virtual {v0, v1}, Ls/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Ls/o;->i:Ls/d;

    invoke-interface {v0}, Ls/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Ls/o;->d:Ls/r;

    invoke-virtual {v0}, Ls/r;->b()Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Ls/o;->d:Ls/r;

    invoke-virtual {v0}, Ls/r;->a()V

    iget-object v0, p0, Ls/o;->j:Ls/E;

    invoke-virtual {v0}, Ls/E;->b()V

    invoke-direct {p0}, Ls/o;->o()V

    invoke-virtual {p0}, Ls/o;->e()V

    iget-object v0, p0, Ls/o;->b:Ls/v;

    iget-object v1, p0, Ls/o;->l:Ls/u;

    invoke-interface {v0, v1}, Ls/v;->a(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Ls/o;->b:Ls/v;

    iget-object v1, p0, Ls/o;->c:Ls/k;

    invoke-interface {v0, v1}, Ls/v;->b(Ls/c;)V

    return-void
.end method

.method public e()V
    .registers 3

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    invoke-virtual {v0}, Lz/l;->l()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ls/o;->a(J)V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Ls/o;->c:Ls/k;

    invoke-virtual {v0}, Ls/k;->e()V

    iget-object v0, p0, Ls/o;->j:Ls/E;

    invoke-virtual {v0}, Ls/E;->a()V

    iget-object v0, p0, Ls/o;->e:Ls/g;

    invoke-virtual {v0}, Ls/g;->a()V

    invoke-virtual {p0}, Ls/o;->g()V

    iget-object v0, p0, Ls/o;->b:Ls/v;

    iget-object v1, p0, Ls/o;->l:Ls/u;

    invoke-interface {v0, v1}, Ls/v;->b(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0}, Ls/v;->b()V

    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Ls/o;->b:Ls/v;

    iget-object v1, p0, Ls/o;->c:Ls/k;

    invoke-interface {v0, v1}, Ls/v;->a(Ls/c;)V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0}, Ls/v;->f()V

    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0}, Ls/v;->e()V

    return-void
.end method

.method public j()V
    .registers 3

    iget-object v0, p0, Ls/o;->b:Ls/v;

    iget-object v1, p0, Ls/o;->c:Ls/k;

    invoke-interface {v0, v1}, Ls/v;->a(Ls/c;)V

    iget-object v0, p0, Ls/o;->b:Ls/v;

    invoke-interface {v0}, Ls/v;->b()V

    iget-object v0, p0, Ls/o;->c:Ls/k;

    invoke-virtual {v0}, Ls/k;->c()V

    return-void
.end method

.method public k()V
    .registers 4

    new-instance v0, Ls/x;

    iget-object v1, p0, Ls/o;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls/x;-><init>(Landroid/content/Context;Ls/p;)V

    invoke-direct {p0, v0}, Ls/o;->a(Ls/v;)V

    return-void
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Ls/o;->b:Ls/v;

    instance-of v0, v0, Ls/x;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
