.class public Ly/C;
.super Ly/E;


# static fields
.field public static final a:Ly/C;


# instance fields
.field public h:Z

.field private final i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/C;

    invoke-direct {v0}, Ly/C;-><init>()V

    sput-object v0, Ly/C;->a:Ly/C;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ly/E;-><init>()V

    new-instance v0, Ly/D;

    invoke-direct {v0, p0}, Ly/D;-><init>(Ly/C;)V

    iput-object v0, p0, Ly/C;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/app/aL;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v1

    invoke-virtual {v1}, Lu/P;->d()Lu/Q;

    move-result-object v1

    if-eqz v1, :cond_8e

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "maps.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "myl"

    const-string v3, "saddr"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v2

    if-nez v2, :cond_70

    const-string v2, "dirflg"

    const-string v3, "d"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_57
    :goto_57
    const-string v2, "daddr"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v3

    invoke-virtual {v3}, Lu/P;->d()Lu/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu/Q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_6f
    return-object v0

    :cond_70
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7f

    const-string v2, "dirflg"

    const-string v3, "w"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_57

    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_57

    const-string v2, "dirflg"

    const-string v3, "b"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_57

    :cond_8e
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6f
.end method

.method static synthetic a(Ly/C;)Z
    .registers 2

    invoke-direct {p0}, Ly/C;->aj()Z

    move-result v0

    return v0
.end method

.method private ag()V
    .registers 6

    invoke-direct {p0}, Ly/C;->ai()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Ly/C;->c:Lcom/google/android/maps/driveabout/app/cW;

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(I)V

    iget-object v0, p0, Ly/C;->d:Lcom/google/android/maps/driveabout/app/cU;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ly/C;->d:Lcom/google/android/maps/driveabout/app/cU;

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Ly/C;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Ly/C;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->c()V

    iget-object v0, p0, Ly/C;->d:Lcom/google/android/maps/driveabout/app/cU;

    const v1, 0x7f0b004d

    const v2, 0x7f0b00b1

    const v3, 0x7f0b00b2

    iget-object v4, p0, Ly/C;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-static {v4}, Ly/C;->a(Lcom/google/android/maps/driveabout/app/aL;)Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cU;->a(IIILandroid/content/Intent;)V

    goto :goto_1f
.end method

.method private ah()I
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Ly/C;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    const/4 v0, 0x3

    :cond_b
    return v0
.end method

.method private ai()Z
    .registers 3

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->g()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-direct {p0}, Ly/C;->ah()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/j;->a(I)Z

    move-result v0

    return v0
.end method

.method private aj()Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/ci;->g()Lcom/google/googlenav/j;

    move-result-object v1

    iget-object v2, p0, Ly/C;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v2

    invoke-static {v2}, Lz/f;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v2

    invoke-direct {p0}, Ly/C;->ah()I

    move-result v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v1

    if-nez v1, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method static synthetic b(Ly/C;)V
    .registers 1

    invoke-direct {p0}, Ly/C;->ag()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "WAIT_FOR_NAV_AVAILABILITY"

    return-object v0
.end method

.method protected aa()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Ly/C;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    invoke-static {}, Lu/O;->a()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Ly/C;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->c()V

    iget-object v0, p0, Ly/C;->d:Lcom/google/android/maps/driveabout/app/cU;

    const v1, 0x7f0b004d

    const v2, 0x7f0b00b1

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(II)V

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0}, Ly/C;->aj()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/C;->h:Z

    goto :goto_1f

    :cond_2a
    invoke-direct {p0}, Ly/C;->ag()V

    goto :goto_1f
.end method

.method public d()V
    .registers 4

    iget-boolean v0, p0, Ly/C;->h:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Ly/C;->f:Ly/p;

    sget-object v1, Ly/z;->a:Ly/z;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_c
    return-void
.end method
