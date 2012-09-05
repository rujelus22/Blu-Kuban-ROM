.class public Lcom/google/android/maps/rideabout/app/s;
.super LaN/b;


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Lcom/google/android/maps/rideabout/app/NavigationService;

.field private c:Z

.field private d:Lbc/d;

.field private e:Z

.field private final f:Lcom/google/android/maps/MapsActivity;

.field private g:Lau/v;

.field private h:Lcom/google/googlenav/ui/p;

.field private final i:Lcom/google/googlenav/ui/wizard/hM;

.field private j:Lcom/google/android/maps/rideabout/app/q;

.field private k:Landroid/media/AudioManager;

.field private final l:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Navigation service not ready"

    sput-object v0, Lcom/google/android/maps/rideabout/app/s;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 4

    invoke-direct {p0}, LaN/b;-><init>()V

    new-instance v0, Lcom/google/android/maps/rideabout/app/t;

    invoke-direct {v0, p0}, Lcom/google/android/maps/rideabout/app/t;-><init>(Lcom/google/android/maps/rideabout/app/s;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->l:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/s;->i:Lcom/google/googlenav/ui/wizard/hM;

    return-void
.end method

.method private A()V
    .registers 9

    const-string v0, "s"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/s;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->i:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x3cc

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3be

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3af

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3c0

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3bf

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-instance v7, Lcom/google/android/maps/rideabout/app/v;

    invoke-direct {v7, p0}, Lcom/google/android/maps/rideabout/app/v;-><init>(Lcom/google/android/maps/rideabout/app/s;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method private B()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->q()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->n()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/app/s;->a(Z)V

    goto :goto_6

    :cond_1d
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->H()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->c()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->e()V

    goto :goto_6
.end method

.method private C()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->i:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->H()Lcom/google/googlenav/ui/wizard/gx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gx;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/q;->d()V

    return-void
.end method

.method private D()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->E()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->F()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private E()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private F()V
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->i:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->F()Lcom/google/googlenav/ui/wizard/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/go;->r()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->i:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->F()Lcom/google/googlenav/ui/wizard/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/go;->a()V

    :cond_1e
    const-string v0, "s"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->i:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x3c8

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f4

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b5

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-instance v7, Lcom/google/android/maps/rideabout/app/x;

    invoke-direct {v7, p0}, Lcom/google/android/maps/rideabout/app/x;-><init>(Lcom/google/android/maps/rideabout/app/s;)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method private G()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private H()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LI/j;->a(Landroid/content/Context;Lat/h;LI/e;)V

    return-void
.end method

.method private I()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->h:Lcom/google/googlenav/ui/p;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/s;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/s;->k:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/rideabout/app/NavigationService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/s;Lcom/google/android/maps/rideabout/app/NavigationService;)Lcom/google/android/maps/rideabout/app/NavigationService;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/s;Lcom/google/android/maps/rideabout/app/q;)Lcom/google/android/maps/rideabout/app/q;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc3b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/s;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x61

    const-string v1, "d"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/app/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/rideabout/app/s;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/maps/rideabout/app/s;)Lau/v;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->g:Lau/v;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/rideabout/app/s;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x61

    const-string v1, "td"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    :try_start_b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

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

    const/4 v0, 0x1

    :goto_32
    return v0

    :catch_33
    move-exception v0

    const-string v1, "PERM"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    const/4 v0, 0x0

    goto :goto_32
.end method

.method static synthetic c(Lcom/google/android/maps/rideabout/app/s;)Lbc/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->d:Lbc/d;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/rideabout/app/s;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/app/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x61

    const-string v1, "gd"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/MapsActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->i:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/rideabout/app/s;)Lcom/google/android/maps/rideabout/app/q;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/maps/rideabout/app/s;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->B()V

    return-void
.end method

.method static synthetic h(Lcom/google/android/maps/rideabout/app/s;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->C()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/maps/rideabout/app/s;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->G()V

    return-void
.end method


# virtual methods
.method public a(LaN/c;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-interface {v0, v1, p1}, Lcom/google/android/maps/rideabout/app/q;->a(Landroid/content/Context;LaN/c;)V

    return-void
.end method

.method public a(Lau/v;Lcom/google/googlenav/ui/p;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/rideabout/app/s;->g:Lau/v;

    new-instance v0, Lbc/e;

    invoke-direct {v0, p1}, Lbc/e;-><init>(Lau/v;)V

    invoke-virtual {v0}, Lbc/e;->a()Lbc/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->d:Lbc/d;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/s;->h:Lcom/google/googlenav/ui/p;

    return-void
.end method

.method public a(Ljava/util/EnumSet;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Context;Ljava/util/EnumSet;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    const-string v1, "ServiceTerminatedSafely"

    invoke-static {v0, v1, p1}, LI/m;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/s;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

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

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/s;->k:Landroid/media/AudioManager;

    if-nez v2, :cond_9

    :goto_8
    return v1

    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->I()Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Context;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v2

    if-eqz v2, :cond_22

    packed-switch p1, :pswitch_data_32

    :cond_22
    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_8

    :pswitch_25
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->k:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_23

    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->k:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v5, v2, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_23

    :pswitch_data_32
    .packed-switch 0x18
        :pswitch_25
        :pswitch_2b
    .end packed-switch
.end method

.method public b()Lcom/google/android/maps/rideabout/app/NavigationService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    return-object v0
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/app/q;->a(Z)V

    return-void
.end method

.method public c()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public d()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->c()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapsActivity;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/s;->e:Z

    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/s;->g:Lau/v;

    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/s;->d:Lbc/d;

    iput-object v3, p0, Lcom/google/android/maps/rideabout/app/s;->h:Lcom/google/googlenav/ui/p;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/q;->a()V

    :cond_26
    return-void
.end method

.method public e()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/s;->c:Z

    if-nez v0, :cond_17

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    const-class v2, Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/s;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/MapsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Lcom/google/android/maps/rideabout/app/s;->c:Z

    :cond_17
    return-void
.end method

.method public f()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/s;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/app/s;->c:Z

    :cond_e
    return-void
.end method

.method g()V
    .registers 4

    sget-object v0, Lcom/google/googlenav/ui/wizard/gJ;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->u()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    new-instance v2, Lcom/google/android/maps/rideabout/app/u;

    invoke-direct {v2, p0}, Lcom/google/android/maps/rideabout/app/u;-><init>(Lcom/google/android/maps/rideabout/app/s;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/q;->a(Landroid/content/Context;LaN/c;)V

    :cond_18
    return-void
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/app/s;->e:Z

    return v0
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->a(Landroid/content/Context;)V

    return-void
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/app/s;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public k()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->l()V

    return-void
.end method

.method public l()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->w()LaN/d;

    move-result-object v0

    sget-object v1, LaN/d;->a:LaN/d;

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    const-string v1, "ShowTransitNavDisclaimer"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LI/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->A()V

    :goto_16
    return-void

    :cond_17
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/app/s;->B()V

    goto :goto_16
.end method

.method public m()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->w()LaN/d;

    move-result-object v0

    sget-object v1, LaN/d;->b:LaN/d;

    if-eq v0, v1, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "s"

    invoke-direct {p0, v0}, Lcom/google/android/maps/rideabout/app/s;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->i:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v1, Lcom/google/android/maps/rideabout/app/w;

    invoke-direct {v1, p0}, Lcom/google/android/maps/rideabout/app/w;-><init>(Lcom/google/android/maps/rideabout/app/s;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_8
.end method

.method public n()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->h:Lcom/google/googlenav/ui/p;

    const/16 v1, 0xb54

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method public o()Lau/v;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->g:Lau/v;

    return-object v0
.end method

.method public p()Lbc/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->d:Lbc/d;

    return-object v0
.end method

.method public q()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    const-string v1, "ServiceTerminatedSafely"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, LI/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public r()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->a()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    sget-object v1, Lcom/google/android/maps/rideabout/app/s;->a:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/app/s;->b()Lcom/google/android/maps/rideabout/app/NavigationService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->d:Lbc/d;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Lbc/d;)V

    goto :goto_12
.end method

.method public s()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->r()Lcom/google/googlenav/ui/view/android/cb;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->r()Lcom/google/googlenav/ui/view/android/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cb;->invalidateOptionsMenu()V

    :cond_1b
    return-void
.end method

.method public t()Ljava/util/EnumSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->e()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/EnumSet;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/app/NavigationService;->a(Landroid/content/Context;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->f:Lcom/google/android/maps/MapsActivity;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/app/q;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public w()LaN/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    if-nez v0, :cond_7

    sget-object v0, LaN/d;->a:LaN/d;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/q;->b()LaN/d;

    move-result-object v0

    goto :goto_6
.end method

.method public x()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/NavigationService;->a()Lcom/google/android/maps/rideabout/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/c;->i()LF/C;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->d:Lbc/d;

    invoke-static {v1, v0}, LI/r;->a(Lbc/d;LF/C;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/app/s;->d:Lbc/d;

    invoke-virtual {v1}, Lbc/d;->c()F

    move-result v1

    invoke-static {v1}, LI/r;->a(F)Ljava/lang/String;

    move-result-object v1

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

    invoke-static {v4}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_4
.end method

.method public y()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->b:Lcom/google/android/maps/rideabout/app/NavigationService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/s;->j:Lcom/google/android/maps/rideabout/app/q;

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/app/q;->f()V

    :cond_9
    return-void
.end method
