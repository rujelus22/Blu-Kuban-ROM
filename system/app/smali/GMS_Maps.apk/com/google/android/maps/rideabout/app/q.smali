.class public Lcom/google/android/maps/rideabout/app/q;
.super Lay/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Lcom/google/android/maps/rideabout/app/NavigationService;

.field private c:Z

.field private d:LaP/d;

.field private e:Z

.field private final f:Lcom/google/android/maps/MapsActivity;

.field private g:Lad/w;

.field private h:Lcom/google/googlenav/ui/g;

.field private final i:Lcom/google/googlenav/ui/wizard/ju;

.field private j:Lcom/google/android/maps/rideabout/app/o;

.field private k:Landroid/media/AudioManager;

.field private final l:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "Navigation service not ready"

    sput-object v0, Lcom/google/android/maps/rideabout/app/q;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lay/a;-><init>()V

    .line 200
    new-instance v0, Lcom/google/android/maps/rideabout/app/r;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/r;-><init>(Lcom/google/android/maps/rideabout/app/q;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->l:Landroid/content/ServiceConnection;

    .line 94
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    .line 95
    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/q;->i:Lcom/google/googlenav/ui/wizard/ju;

    .line 96
    return-void
.end method

.method private A()V
    .registers 9

    .prologue
    .line 277
    const-string v0, "s"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/q;->a(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->i:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x4ab

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x487

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x49e

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x49d

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-instance v7, Lcom/google/android/maps/rideabout/app/t;

    invoke-direct {v7, p0}, Lcom/google/android/maps/rideabout/app/t;-><init>(Lcom/google/android/maps/rideabout/app/q;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    .line 315
    return-void
.end method

.method private B()V
    .registers 2

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    :cond_6
    :goto_6
    return-void

    .line 334
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->q()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 336
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->n()V

    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/q;->a(Z)V

    goto :goto_6

    .line 340
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->H()V

    .line 341
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->c()V

    .line 342
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->e()V

    goto :goto_6
.end method

.method private C()V
    .registers 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->i:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->N()Lcom/google/googlenav/ui/wizard/ij;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ij;->a(Z)V

    .line 399
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/o;->d()V

    .line 400
    return-void
.end method

.method private D()Z
    .registers 2

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->E()Z

    move-result v0

    if-nez v0, :cond_b

    .line 411
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->F()V

    .line 412
    const/4 v0, 0x1

    .line 414
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private E()Z
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private F()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 424
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->i:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->L()Lcom/google/googlenav/ui/wizard/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ia;->o()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 425
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->i:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->L()Lcom/google/googlenav/ui/wizard/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ia;->a()V

    .line 428
    :cond_1e
    const-string v0, "s"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/q;->c(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->i:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x4a6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e1

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x362

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-instance v7, Lcom/google/android/maps/rideabout/app/v;

    invoke-direct {v7, p0}, Lcom/google/android/maps/rideabout/app/v;-><init>(Lcom/google/android/maps/rideabout/app/q;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/bn;)V

    .line 459
    return-void
.end method

.method private G()V
    .registers 4

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method private H()V
    .registers 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LF/j;->a(Landroid/content/Context;Lac/h;LF/e;)V

    .line 480
    return-void
.end method

.method private I()Z
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->h:Lcom/google/googlenav/ui/g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/q;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/q;->k:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/NavigationService;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/q;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/q;Lcom/google/android/maps/rideabout/app/o;)Lcom/google/android/maps/rideabout/app/o;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 124
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc3b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/q;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 318
    const/16 v0, 0x61

    const-string v1, "d"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/q;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/android/maps/rideabout/app/q;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/maps/rideabout/app/q;)Lad/w;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->g:Lad/w;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/rideabout/app/q;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/q;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 403
    const/16 v0, 0x61

    const-string v1, "td"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 184
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 187
    const v1, 0x7fffffff

    :try_start_b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 190
    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_2e} :catch_33

    move-result v0

    if-eqz v0, :cond_13

    .line 191
    const/4 v0, 0x1

    .line 197
    :goto_32
    return v0

    .line 194
    :catch_33
    move-exception v0

    .line 195
    const-string v1, "PERM"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    :cond_39
    const/4 v0, 0x0

    goto :goto_32
.end method

.method static synthetic c(Lcom/google/android/maps/rideabout/app/q;)LaP/d;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->d:LaP/d;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/rideabout/app/q;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 462
    const/16 v0, 0x61

    const-string v1, "gd"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/MapsActivity;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->i:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/o;
    .registers 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/maps/rideabout/app/q;)V
    .registers 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->B()V

    return-void
.end method

.method static synthetic h(Lcom/google/android/maps/rideabout/app/q;)V
    .registers 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->C()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/maps/rideabout/app/q;)V
    .registers 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->G()V

    return-void
.end method


# virtual methods
.method public a(Lad/w;Lcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/q;->g:Lad/w;

    .line 131
    new-instance v0, LaP/e;

    invoke-direct {v0, p1}, LaP/e;-><init>(Lad/w;)V

    invoke-virtual {v0}, LaP/e;->a()LaP/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->d:LaP/d;

    .line 132
    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/q;->h:Lcom/google/googlenav/ui/g;

    .line 133
    return-void
.end method

.method public a(Lay/b;)V
    .registers 4
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-interface {v0, v1, p1}, Lcom/google/android/maps/rideabout/app/o;->a(Landroid/content/Context;Lay/b;)V

    .line 485
    return-void
.end method

.method public a(Ljava/util/EnumSet;)V
    .registers 4
    .parameter

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Context;Ljava/util/EnumSet;)V

    .line 586
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    const-string v1, "ServiceTerminatedSafely"

    invoke-static {v0, v1, p1}, LF/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 500
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/q;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(I)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v0, 0x1

    .line 590
    const/4 v1, 0x0

    .line 591
    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/q;->k:Landroid/media/AudioManager;

    if-nez v2, :cond_9

    .line 612
    :goto_8
    return v1

    .line 597
    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->I()Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Context;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 599
    packed-switch p1, :pswitch_data_32

    :cond_22
    move v0, v1

    :goto_23
    move v1, v0

    .line 612
    goto :goto_8

    .line 601
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->k:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_23

    .line 606
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->k:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v5, v2, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_23

    .line 599
    :pswitch_data_32
    .packed-switch 0x18
        :pswitch_25
        :pswitch_2b
    .end packed-switch
.end method

.method public b()Lcom/google/android/maps/rideabout/app/NavigationService;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object v0
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/app/o;->a(Z)V

    .line 632
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    return-void
.end method

.method public d()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    if-eqz v0, :cond_26

    .line 152
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->c()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapsActivity;->stopService(Landroid/content/Intent;)Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/q;->e:Z

    .line 156
    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/q;->g:Lad/w;

    .line 157
    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/q;->d:LaP/d;

    .line 158
    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/q;->h:Lcom/google/googlenav/ui/g;

    .line 159
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/o;->a()V

    .line 161
    :cond_26
    return-void
.end method

.method public e()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/q;->c:Z

    if-nez v0, :cond_17

    .line 166
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/q;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/MapsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 168
    iput-boolean v3, p0, Lcom/google/android/maps/rideabout/app/q;->c:Z

    .line 170
    :cond_17
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/q;->c:Z

    if-eqz v0, :cond_e

    .line 175
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/q;->c:Z

    .line 178
    :cond_e
    return-void
.end method

.method g()V
    .registers 4

    .prologue
    .line 223
    sget-object v0, Lcom/google/googlenav/ui/wizard/iv;->b:Lcom/google/googlenav/ui/wizard/iv;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->u()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/iv;->a(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 224
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    new-instance v2, Lcom/google/android/maps/rideabout/app/s;

    invoke-direct {v2, p0}, Lcom/google/android/maps/rideabout/app/s;-><init>(Lcom/google/android/maps/rideabout/app/q;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/o;->a(Landroid/content/Context;Lay/b;)V

    .line 236
    :cond_18
    return-void
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/q;->e:Z

    return v0
.end method

.method public i()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->a(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/q;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public k()V
    .registers 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->l()V

    .line 259
    return-void
.end method

.method public l()V
    .registers 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->w()Lay/c;

    move-result-object v0

    sget-object v1, Lay/c;->a:Lay/c;

    if-ne v0, v1, :cond_17

    .line 266
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    const-string v1, "ShowTransitNavDisclaimer"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LF/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 268
    if-eqz v0, :cond_17

    .line 269
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->A()V

    .line 274
    :goto_16
    return-void

    .line 273
    :cond_17
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/q;->B()V

    goto :goto_16
.end method

.method public m()V
    .registers 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->w()Lay/c;

    move-result-object v0

    sget-object v1, Lay/c;->b:Lay/c;

    if-eq v0, v1, :cond_9

    .line 390
    :goto_8
    return-void

    .line 364
    :cond_9
    const-string v0, "s"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/q;->b(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->i:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v1, Lcom/google/android/maps/rideabout/app/u;

    invoke-direct {v1, p0}, Lcom/google/android/maps/rideabout/app/u;-><init>(Lcom/google/android/maps/rideabout/app/q;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/bn;)V

    goto :goto_8
.end method

.method public n()V
    .registers 5

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->h:Lcom/google/googlenav/ui/g;

    const/16 v1, 0xb54

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 469
    return-void
.end method

.method public o()Lad/w;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->g:Lad/w;

    return-object v0
.end method

.method public p()LaP/d;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->d:LaP/d;

    return-object v0
.end method

.method public q()Z
    .registers 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    const-string v1, "ServiceTerminatedSafely"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LF/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public r()V
    .registers 4

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->a()Z

    move-result v0

    if-nez v0, :cond_13

    .line 551
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    sget-object v1, Lcom/google/android/maps/rideabout/app/q;->a:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 555
    :goto_12
    return-void

    .line 554
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/q;->b()Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->d:LaP/d;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(LaP/d;)V

    goto :goto_12
.end method

.method public s()V
    .registers 2

    .prologue
    .line 568
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 569
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bZ;->invalidateOptionsMenu()V

    .line 571
    :cond_1b
    return-void
.end method

.method public t()Ljava/util/EnumSet;
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->e()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/EnumSet;
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Context;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .registers 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->f:Lcom/google/android/maps/MapsActivity;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/app/o;->a(Landroid/app/Activity;)V

    .line 622
    return-void
.end method

.method public w()Lay/c;
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    if-nez v0, :cond_7

    sget-object v0, Lay/c;->a:Lay/c;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/o;->b()Lay/c;

    move-result-object v0

    goto :goto_6
.end method

.method public x()V
    .registers 9

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    if-nez v0, :cond_5

    .line 651
    :goto_4
    return-void

    .line 644
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a()Lcom/google/android/maps/rideabout/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->i()LC/z;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->d:LaP/d;

    invoke-static {v1, v0}, LF/r;->a(LaP/d;LC/z;)Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/q;->d:LaP/d;

    invoke-virtual {v1}, LaP/d;->c()F

    move-result v1

    invoke-static {v1}, LF/r;->a(F)Ljava/lang/String;

    move-result-object v1

    .line 647
    const/16 v2, 0x61

    const-string v3, "el"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public y()V
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    if-eqz v0, :cond_9

    .line 656
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/q;->j:Lcom/google/android/maps/rideabout/app/o;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/o;->f()V

    .line 658
    :cond_9
    return-void
.end method
