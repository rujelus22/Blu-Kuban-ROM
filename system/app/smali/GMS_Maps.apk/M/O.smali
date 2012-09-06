.class public Lm/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lm/w;

.field private c:Lm/k;

.field private d:Lm/s;

.field private e:Lm/g;

.field private f:Lm/a;

.field private g:Lm/d;

.field private h:Lm/d;

.field private i:Lm/d;

.field private j:Lm/F;

.field private k:Lm/C;

.field private final l:Lm/v;

.field private final m:Ljava/util/List;

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lm/v;

    invoke-direct {v0, p0, v3}, Lm/v;-><init>(Lm/o;Lm/p;)V

    iput-object v0, p0, Lm/o;->l:Lm/v;

    .line 144
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lm/o;->m:Ljava/util/List;

    .line 147
    iput v2, p0, Lm/o;->n:I

    .line 153
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-nez v0, :cond_4c

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lm/o;->o:Z

    .line 159
    iput-boolean v1, p0, Lm/o;->p:Z

    .line 174
    iput-object p1, p0, Lm/o;->a:Landroid/content/Context;

    .line 175
    new-instance v0, Lm/y;

    invoke-direct {v0, p1, v3}, Lm/y;-><init>(Landroid/content/Context;Lm/p;)V

    iput-object v0, p0, Lm/o;->b:Lm/w;

    .line 180
    new-instance v0, Lm/k;

    invoke-direct {v0}, Lm/k;-><init>()V

    iput-object v0, p0, Lm/o;->c:Lm/k;

    .line 181
    new-instance v0, Lm/h;

    iget-object v1, p0, Lm/o;->c:Lm/k;

    invoke-direct {v0, v1}, Lm/h;-><init>(Lm/c;)V

    iput-object v0, p0, Lm/o;->g:Lm/d;

    .line 182
    new-instance v0, Lm/E;

    iget-object v1, p0, Lm/o;->c:Lm/k;

    invoke-direct {v0, v1}, Lm/E;-><init>(Lm/c;)V

    iput-object v0, p0, Lm/o;->h:Lm/d;

    .line 183
    invoke-direct {p0, v2}, Lm/o;->b(I)V

    .line 184
    invoke-direct {p0, p1}, Lm/o;->a(Landroid/content/Context;)V

    .line 185
    invoke-direct {p0, p1}, Lm/o;->b(Landroid/content/Context;)V

    .line 186
    return-void

    :cond_4c
    move v0, v2

    .line 153
    goto :goto_1c
.end method

.method public static final a()F
    .registers 2

    .prologue
    .line 88
    invoke-static {}, Lm/o;->b()F

    move-result v0

    const v1, 0x3f2aacda

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lm/o;)Lm/w;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lm/o;->b:Lm/w;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 189
    new-instance v0, Lm/p;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lm/p;-><init>(Lm/o;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lan/p;->a(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 201
    return-void
.end method

.method static synthetic a(Lm/o;Landroid/content/Context;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lm/o;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lm/w;)V
    .registers 4
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Lm/o;->f()V

    .line 434
    iput-object p1, p0, Lm/o;->b:Lm/w;

    .line 435
    iget-object v0, p0, Lm/o;->e:Lm/g;

    iget-object v1, p0, Lm/o;->b:Lm/w;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/w;)V

    .line 436
    invoke-virtual {p0}, Lm/o;->d()V

    .line 437
    return-void
.end method

.method public static final b()F
    .registers 1

    .prologue
    .line 96
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lt/k;->n()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static synthetic b(Lm/o;)Lm/d;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lm/o;->i:Lm/d;

    return-object v0
.end method

.method private b(I)V
    .registers 6
    .parameter

    .prologue
    .line 451
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    .line 452
    new-instance v1, Lm/g;

    iget-object v2, p0, Lm/o;->c:Lm/k;

    iget-object v3, p0, Lm/o;->b:Lm/w;

    invoke-direct {v1, v2, v3, v0}, Lm/g;-><init>(Lm/c;Lm/w;Lcom/google/googlenav/common/a;)V

    iput-object v1, p0, Lm/o;->e:Lm/g;

    .line 453
    new-instance v1, Lm/s;

    iget-object v2, p0, Lm/o;->c:Lm/k;

    invoke-direct {v1, p0, v2}, Lm/s;-><init>(Lm/o;Lm/c;)V

    iput-object v1, p0, Lm/o;->d:Lm/s;

    .line 454
    new-instance v1, Lm/F;

    iget-object v2, p0, Lm/o;->c:Lm/k;

    iget-object v3, p0, Lm/o;->c:Lm/k;

    invoke-virtual {v3}, Lm/k;->d()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lm/F;-><init>(Lm/c;Landroid/os/Handler;Lcom/google/googlenav/common/a;)V

    iput-object v1, p0, Lm/o;->j:Lm/F;

    .line 456
    new-instance v0, Lm/a;

    iget-object v1, p0, Lm/o;->c:Lm/k;

    invoke-direct {v0, v1}, Lm/a;-><init>(Lm/c;)V

    iput-object v0, p0, Lm/o;->f:Lm/a;

    .line 478
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "gps"

    iget-object v2, p0, Lm/o;->e:Lm/g;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 479
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_gps_fixup"

    iget-object v2, p0, Lm/o;->d:Lm/s;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 480
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "network"

    iget-object v2, p0, Lm/o;->d:Lm/s;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 481
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_base_location"

    iget-object v2, p0, Lm/o;->f:Lm/a;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 483
    if-nez p1, :cond_8a

    .line 484
    iget-object v0, p0, Lm/o;->g:Lm/d;

    iput-object v0, p0, Lm/o;->i:Lm/d;

    .line 485
    invoke-direct {p0}, Lm/o;->l()V

    .line 490
    :goto_61
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lm/o;->i:Lm/d;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 497
    new-instance v0, Lm/C;

    iget-object v1, p0, Lm/o;->c:Lm/k;

    invoke-direct {v0, v1}, Lm/C;-><init>(Lm/c;)V

    iput-object v0, p0, Lm/o;->k:Lm/C;

    .line 498
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "android_orientation"

    iget-object v2, p0, Lm/o;->k:Lm/C;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 499
    iget-object v0, p0, Lm/o;->c:Lm/k;

    iget-object v1, p0, Lm/o;->i:Lm/d;

    invoke-interface {v1}, Lm/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lm/o;->k:Lm/C;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 500
    return-void

    .line 487
    :cond_8a
    iget-object v0, p0, Lm/o;->h:Lm/d;

    iput-object v0, p0, Lm/o;->i:Lm/d;

    goto :goto_61
.end method

.method private b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 204
    invoke-static {p1}, Lan/p;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Lan/p;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lm/o;->o:Z

    .line 208
    iget-boolean v0, p0, Lm/o;->o:Z

    if-eqz v0, :cond_16

    .line 209
    invoke-static {p1}, Lan/p;->c(Landroid/content/Context;)V

    .line 212
    :cond_16
    iget-boolean v0, p0, Lm/o;->o:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lm/o;->p:Z

    if-nez v0, :cond_24

    .line 213
    invoke-virtual {p0}, Lm/o;->f()V

    .line 217
    :cond_21
    :goto_21
    return-void

    .line 204
    :cond_22
    const/4 v0, 0x0

    goto :goto_d

    .line 214
    :cond_24
    iget-boolean v0, p0, Lm/o;->o:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lm/o;->p:Z

    if-eqz v0, :cond_21

    .line 215
    invoke-virtual {p0}, Lm/o;->d()V

    goto :goto_21
.end method

.method static synthetic c(Lm/o;)Lm/g;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lm/o;->e:Lm/g;

    return-object v0
.end method

.method private c(I)V
    .registers 6
    .parameter

    .prologue
    .line 693
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lm/o;->i:Lm/d;

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/String;Lm/c;)V

    .line 695
    iget-object v0, p0, Lm/o;->c:Lm/k;

    iget-object v1, p0, Lm/o;->i:Lm/d;

    invoke-interface {v1}, Lm/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lm/o;->k:Lm/C;

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/String;Lm/c;)V

    .line 700
    iget-object v0, p0, Lm/o;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/c;

    .line 701
    iget-object v2, p0, Lm/o;->c:Lm/k;

    iget-object v3, p0, Lm/o;->i:Lm/d;

    invoke-interface {v3}, Lm/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lm/k;->b(Ljava/lang/String;Lm/c;)V

    goto :goto_1c

    .line 706
    :cond_34
    if-nez p1, :cond_71

    .line 707
    iget-object v0, p0, Lm/o;->g:Lm/d;

    iput-object v0, p0, Lm/o;->i:Lm/d;

    .line 708
    invoke-direct {p0}, Lm/o;->l()V

    .line 715
    :goto_3d
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lm/o;->i:Lm/d;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 717
    iget-object v0, p0, Lm/o;->c:Lm/k;

    iget-object v1, p0, Lm/o;->i:Lm/d;

    invoke-interface {v1}, Lm/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lm/o;->k:Lm/C;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 722
    iget-object v0, p0, Lm/o;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/c;

    .line 723
    iget-object v2, p0, Lm/o;->c:Lm/k;

    iget-object v3, p0, Lm/o;->i:Lm/d;

    invoke-interface {v3}, Lm/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    goto :goto_59

    .line 710
    :cond_71
    invoke-direct {p0}, Lm/o;->m()V

    .line 711
    iget-object v0, p0, Lm/o;->h:Lm/d;

    iput-object v0, p0, Lm/o;->i:Lm/d;

    goto :goto_3d

    .line 725
    :cond_79
    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    .line 504
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lm/o;->j:Lm/F;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 505
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Lm/o;->i:Lm/d;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 506
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lm/o;->e:Lm/g;

    invoke-virtual {v0, v1, v2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 507
    return-void
.end method

.method private m()V
    .registers 4

    .prologue
    .line 511
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lm/o;->j:Lm/F;

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/String;Lm/c;)V

    .line 512
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Lm/o;->i:Lm/d;

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/String;Lm/c;)V

    .line 513
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lm/o;->e:Lm/g;

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/String;Lm/c;)V

    .line 514
    return-void
.end method

.method private n()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 529
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0}, Lm/w;->a()Ljava/util/List;

    move-result-object v0

    const-string v4, "gps"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 530
    iget-object v0, p0, Lm/o;->b:Lm/w;

    const-string v4, "gps"

    invoke-interface {v0, v4}, Lm/w;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 532
    :goto_1c
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v4

    invoke-virtual {v4}, Lt/k;->k()I

    move-result v4

    .line 533
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v5, v2, v5

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gez v4, :cond_60

    .line 534
    iget-object v4, p0, Lm/o;->c:Lm/k;

    invoke-virtual {v4, v0}, Lm/k;->onLocationChanged(Landroid/location/Location;)V

    .line 541
    :goto_36
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0}, Lm/w;->a()Ljava/util/List;

    move-result-object v0

    const-string v4, "network"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 542
    iget-object v0, p0, Lm/o;->b:Lm/w;

    const-string v4, "network"

    invoke-interface {v0, v4}, Lm/w;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 544
    :goto_4c
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_66

    .line 546
    iget-object v1, p0, Lm/o;->c:Lm/k;

    invoke-virtual {v1, v0}, Lm/k;->onLocationChanged(Landroid/location/Location;)V

    .line 551
    :goto_5f
    return-void

    .line 536
    :cond_60
    iget-object v0, p0, Lm/o;->c:Lm/k;

    invoke-virtual {v0, v9, v1}, Lm/k;->a(ILandroid/os/Bundle;)V

    goto :goto_36

    .line 548
    :cond_66
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v2, "network"

    invoke-virtual {v0, v2, v9, v1}, Lm/k;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

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
    .parameter

    .prologue
    .line 673
    iget v0, p0, Lm/o;->n:I

    if-eq v0, p1, :cond_9

    .line 674
    invoke-direct {p0, p1}, Lm/o;->c(I)V

    .line 675
    iput p1, p0, Lm/o;->n:I

    .line 678
    :cond_9
    iget-object v0, p0, Lm/o;->c:Lm/k;

    new-instance v1, Lm/r;

    invoke-direct {v1, p0, p1}, Lm/r;-><init>(Lm/o;I)V

    invoke-virtual {v0, v1}, Lm/k;->a(Ljava/lang/Runnable;)V

    .line 684
    return-void
.end method

.method public a(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 350
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0}, Lm/w;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 351
    iget-object v0, p0, Lm/o;->b:Lm/w;

    const-string v1, "gps"

    iget-object v5, p0, Lm/o;->c:Lm/k;

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lm/w;->a(Ljava/lang/String;JFLm/c;)V

    .line 356
    :cond_19
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0}, Lm/w;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 357
    iget-object v0, p0, Lm/o;->b:Lm/w;

    const-string v1, "network"

    iget-object v5, p0, Lm/o;->c:Lm/k;

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lm/w;->a(Ljava/lang/String;JFLm/c;)V

    .line 362
    :cond_31
    return-void
.end method

.method public a(Ljava/lang/String;Lm/c;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lm/o;->c:Lm/k;

    invoke-virtual {v0, p1, p2}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 302
    return-void
.end method

.method public a(Lk/G;)V
    .registers 3
    .parameter

    .prologue
    .line 420
    invoke-virtual {p1}, Lk/G;->b()Lm/A;

    move-result-object v0

    invoke-direct {p0, v0}, Lm/o;->a(Lm/w;)V

    .line 421
    return-void
.end method

.method public a(Lm/c;)V
    .registers 4
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lm/o;->c:Lm/k;

    iget-object v1, p0, Lm/o;->i:Lm/d;

    invoke-interface {v1}, Lm/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 280
    iget-object v0, p0, Lm/o;->c:Lm/k;

    const-string v1, "driveabout_orientation_filter"

    invoke-virtual {v0, v1, p1}, Lm/k;->a(Ljava/lang/String;Lm/c;)V

    .line 281
    iget-object v0, p0, Lm/o;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method public a(Lm/t;)V
    .registers 3
    .parameter

    .prologue
    .line 729
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0, p1}, Lm/w;->a(Lm/t;)V

    .line 730
    return-void
.end method

.method public a(Lo/x;)V
    .registers 4
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lm/o;->c:Lm/k;

    new-instance v1, Lm/q;

    invoke-direct {v1, p0, p1}, Lm/q;-><init>(Lm/o;Lo/x;)V

    invoke-virtual {v0, v1}, Lm/k;->a(Ljava/lang/Runnable;)V

    .line 669
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 1009
    iget-object v0, p0, Lm/o;->i:Lm/d;

    invoke-interface {v0}, Lm/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lm/o;->d:Lm/s;

    invoke-virtual {v0}, Lm/s;->b()Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 317
    iget-boolean v0, p0, Lm/o;->o:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lm/o;->p:Z

    if-nez v0, :cond_9

    .line 334
    :cond_8
    :goto_8
    return-void

    .line 321
    :cond_9
    iget-object v0, p0, Lm/o;->d:Lm/s;

    invoke-virtual {v0}, Lm/s;->a()V

    .line 322
    iget-object v0, p0, Lm/o;->j:Lm/F;

    invoke-virtual {v0}, Lm/F;->b()V

    .line 326
    invoke-direct {p0}, Lm/o;->n()V

    .line 327
    invoke-virtual {p0}, Lm/o;->e()V

    .line 329
    iget-object v0, p0, Lm/o;->b:Lm/w;

    iget-object v1, p0, Lm/o;->l:Lm/v;

    invoke-interface {v0, v1}, Lm/w;->a(Landroid/location/GpsStatus$Listener;)Z

    .line 331
    iget-object v0, p0, Lm/o;->b:Lm/w;

    iget-object v1, p0, Lm/o;->c:Lm/k;

    invoke-interface {v0, v1}, Lm/w;->b(Lm/c;)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/o;->p:Z

    goto :goto_8
.end method

.method public e()V
    .registers 3

    .prologue
    .line 340
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    invoke-virtual {v0}, Lt/k;->l()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lm/o;->a(J)V

    .line 341
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 370
    iget-boolean v0, p0, Lm/o;->p:Z

    if-eqz v0, :cond_5

    .line 380
    :goto_4
    return-void

    .line 373
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/o;->p:Z

    .line 374
    iget-object v0, p0, Lm/o;->c:Lm/k;

    invoke-virtual {v0}, Lm/k;->e()V

    .line 375
    iget-object v0, p0, Lm/o;->j:Lm/F;

    invoke-virtual {v0}, Lm/F;->a()V

    .line 376
    iget-object v0, p0, Lm/o;->e:Lm/g;

    invoke-virtual {v0}, Lm/g;->a()V

    .line 377
    invoke-virtual {p0}, Lm/o;->g()V

    .line 378
    iget-object v0, p0, Lm/o;->b:Lm/w;

    iget-object v1, p0, Lm/o;->l:Lm/v;

    invoke-interface {v0, v1}, Lm/w;->b(Landroid/location/GpsStatus$Listener;)V

    .line 379
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0}, Lm/w;->b()V

    goto :goto_4
.end method

.method public g()V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lm/o;->b:Lm/w;

    iget-object v1, p0, Lm/o;->c:Lm/k;

    invoke-interface {v0, v1}, Lm/w;->a(Lm/c;)V

    .line 387
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0}, Lm/w;->f()V

    .line 395
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0}, Lm/w;->e()V

    .line 403
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lm/o;->b:Lm/w;

    iget-object v1, p0, Lm/o;->c:Lm/k;

    invoke-interface {v0, v1}, Lm/w;->a(Lm/c;)V

    .line 410
    iget-object v0, p0, Lm/o;->b:Lm/w;

    invoke-interface {v0}, Lm/w;->b()V

    .line 411
    iget-object v0, p0, Lm/o;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 412
    iget-object v0, p0, Lm/o;->c:Lm/k;

    invoke-virtual {v0}, Lm/k;->c()V

    .line 413
    return-void
.end method

.method public k()V
    .registers 4

    .prologue
    .line 428
    new-instance v0, Lm/y;

    iget-object v1, p0, Lm/o;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm/y;-><init>(Landroid/content/Context;Lm/p;)V

    invoke-direct {p0, v0}, Lm/o;->a(Lm/w;)V

    .line 429
    return-void
.end method
