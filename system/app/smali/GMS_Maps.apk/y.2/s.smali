.class public abstract Ly/s;
.super Ljava/lang/Object;


# static fields
.field private static final i:[Ly/s;


# instance fields
.field private a:Ljava/lang/Thread;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/google/android/maps/driveabout/app/cW;

.field protected d:Lcom/google/android/maps/driveabout/app/cU;

.field protected e:Lcom/google/android/maps/driveabout/app/aL;

.field protected f:Ly/p;

.field protected g:Lu/r;

.field private h:I

.field private j:Z

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [Ly/s;

    sput-object v0, Ly/s;->i:[Ly/s;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly/s;->j:Z

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cW;Lcom/google/android/maps/driveabout/app/cU;Lcom/google/android/maps/driveabout/app/aL;Lu/r;)V
    .registers 12

    const/4 v0, 0x0

    sget-object v1, Ly/s;->i:[Ly/s;

    sget-object v2, Ly/o;->a:Ly/o;

    aput-object v2, v1, v0

    sget-object v1, Ly/s;->i:[Ly/s;

    const/4 v2, 0x1

    sget-object v3, Ly/B;->a:Ly/B;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/4 v2, 0x2

    sget-object v3, Ly/C;->a:Ly/C;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/4 v2, 0x3

    sget-object v3, Ly/z;->a:Ly/z;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/4 v2, 0x4

    sget-object v3, Ly/y;->a:Ly/y;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/4 v2, 0x5

    sget-object v3, Ly/m;->a:Ly/m;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/4 v2, 0x6

    sget-object v3, Ly/j;->a:Ly/j;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/4 v2, 0x7

    sget-object v3, Ly/a;->a:Ly/a;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/16 v2, 0x8

    sget-object v3, Ly/c;->a:Ly/c;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/16 v2, 0x9

    sget-object v3, Ly/e;->a:Ly/e;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/16 v2, 0xa

    sget-object v3, Ly/g;->a:Ly/g;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/16 v2, 0xb

    sget-object v3, Ly/d;->a:Ly/d;

    aput-object v3, v1, v2

    sget-object v1, Ly/s;->i:[Ly/s;

    const/16 v2, 0xc

    sget-object v3, Ly/k;->a:Ly/k;

    aput-object v3, v1, v2

    move v6, v0

    :goto_61
    const/16 v0, 0xd

    if-ge v6, v0, :cond_75

    sget-object v0, Ly/s;->i:[Ly/s;

    aget-object v0, v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ly/s;->b(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cW;Lcom/google/android/maps/driveabout/app/cU;Lcom/google/android/maps/driveabout/app/aL;Lu/r;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_61

    :cond_75
    return-void
.end method

.method public static final a(Lcom/google/android/maps/driveabout/app/cU;)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xd

    if-ge v0, v1, :cond_f

    sget-object v1, Ly/s;->i:[Ly/s;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ly/s;->b(Lcom/google/android/maps/driveabout/app/cU;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method private final a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/de;)V
    .registers 5

    new-instance v0, Lcom/google/android/maps/driveabout/app/eH;

    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/eH;-><init>(Lcom/google/android/maps/driveabout/app/cU;)V

    new-instance v1, Ly/w;

    invoke-direct {v1, p0, p2}, Ly/w;-><init>(Ly/s;Lcom/google/android/maps/driveabout/app/de;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/app/eH;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/eQ;)V

    return-void
.end method

.method private a(Lu/P;I[Lu/b;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bh;->a(Lu/P;I[Lu/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "UserRequestedReroute"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Ly/s;Lcom/google/android/maps/driveabout/app/cU;)V
    .registers 2

    invoke-direct {p0, p1}, Ly/s;->c(Lcom/google/android/maps/driveabout/app/cU;)V

    return-void
.end method

.method static synthetic a(Ly/s;Ljava/io/File;Lcom/google/android/maps/driveabout/app/de;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ly/s;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/de;)V

    return-void
.end method

.method private ag()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->invalidateOptionsMenu()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const-string v0, "UIState"

    const-string v1, "NavigationApplicationDelegate.getInstance() should never be null."

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method private ah()V
    .registers 4

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v1

    iget-object v2, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(ZZ)V

    return-void
.end method

.method private ai()V
    .registers 3

    iget v0, p0, Ly/s;->h:I

    if-lez v0, :cond_e

    const-string v0, "z"

    iget v1, p0, Ly/s;->h:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Ly/s;->h:I

    :cond_e
    return-void
.end method

.method private aj()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->h()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v0, v2, :cond_13

    iput-boolean v3, p0, Ly/s;->j:Z

    :cond_13
    invoke-static {v1}, Ls/E;->a(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/s;->j:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ly/s;->k:J

    :cond_2d
    :goto_2d
    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->h()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    return-void

    :cond_39
    invoke-static {v1}, Ls/E;->a(Landroid/location/Location;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget-boolean v2, p0, Ly/s;->j:Z

    if-eqz v2, :cond_6e

    invoke-virtual {v1}, Ls/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v1}, Ls/b;->g()Z

    move-result v0

    if-nez v0, :cond_2d

    iput-boolean v3, p0, Ly/s;->j:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ly/s;->k:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const-string v1, "T"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->E()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    goto :goto_2d

    :cond_6e
    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->E()Z

    move-result v1

    if-eqz v1, :cond_82

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v0, v1, :cond_82

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    goto :goto_2d

    :cond_82
    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->E()Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    goto :goto_2d
.end method

.method private ak()V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Ly/s;->X()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->b()F

    move-result v1

    new-instance v2, Ls/b;

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v3

    invoke-direct {v2, v3}, Ls/b;-><init>(Landroid/location/Location;)V

    invoke-virtual {v2, v1}, Ls/b;->setBearing(F)V

    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/cU;->a(Landroid/location/Location;Z)V

    :goto_20
    invoke-virtual {p0}, Ly/s;->Y()V

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Landroid/location/Location;)V

    return-void

    :cond_2f
    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    iget-object v2, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v1}, Ls/b;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_49

    :goto_45
    invoke-interface {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/cU;->a(Landroid/location/Location;Z)V

    goto :goto_20

    :cond_49
    const/4 v0, 0x0

    goto :goto_45
.end method

.method private al()I
    .registers 2

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->e()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ly/s;->g()I

    move-result v0

    goto :goto_9
.end method

.method private am()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->C()V

    :goto_e
    invoke-virtual {p0}, Ly/s;->y()V

    return-void

    :cond_12
    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->s()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v2, p0, Ly/s;->b:Landroid/content/Context;

    const v3, 0x7f0b007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_29
    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {v1}, Lu/x;->m()Lu/P;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Lu/P;->c()Lt/o;

    move-result-object v1

    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Ls/b;->b(Lt/o;)F

    move-result v1

    const/high16 v2, 0x4270

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5a

    const/4 v0, 0x1

    :cond_5a
    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cU;->i(Z)V

    goto :goto_e

    :cond_60
    invoke-virtual {p0}, Ly/s;->v()V

    goto :goto_e
.end method

.method private an()V
    .registers 1

    invoke-virtual {p0}, Ly/s;->aa()V

    return-void
.end method

.method private ao()V
    .registers 3

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->d()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cU;->a(I)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->h()V

    goto :goto_e
.end method

.method private ap()V
    .registers 5

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->o()I

    move-result v1

    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v2

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cU;->a(IIZ)V

    return-void
.end method

.method private aq()V
    .registers 3

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(I)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(I)V

    goto :goto_e

    :cond_1e
    invoke-virtual {p0}, Ly/s;->w()V

    goto :goto_e
.end method

.method private ar()V
    .registers 4

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    const v2, 0x7f0b0057

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Ljava/lang/CharSequence;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->q()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_2e
    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const-string v1, "__route_status"

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ly/s;->x()V

    goto :goto_16
.end method

.method private as()Z
    .registers 3

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->g()I

    move-result v0

    const/16 v1, 0x1324

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private at()V
    .registers 2

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->D()V

    return-void
.end method

.method private final au()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ly/s;->a:Ljava/lang/Thread;

    if-eq v0, v1, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method

.method private final c(Lcom/google/android/maps/driveabout/app/cU;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Ly/s;->b:Landroid/content/Context;

    const-string v1, "ShowDNHWarning"

    invoke-static {v0, v1, v2}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v0

    invoke-virtual {v0}, Lu/P;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    invoke-virtual {v1}, Ls/b;->m()Lt/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dt;->a(Ljava/lang/String;Lt/o;)V

    :cond_25
    iget-object v0, p0, Ly/s;->b:Landroid/content/Context;

    const v1, 0x7f0b004b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1, v2}, Lcom/google/android/maps/driveabout/app/cU;->g(Z)V

    return-void
.end method

.method private i(Z)V
    .registers 6

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-direct {p0}, Ly/s;->al()I

    move-result v1

    iget-object v2, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cW;->h()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v2

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cu;->a(ILcom/google/android/maps/driveabout/vector/I;I)V

    invoke-virtual {p0, p1}, Ly/s;->a(Z)V

    return-void
.end method


# virtual methods
.method public A()V
    .registers 1

    return-void
.end method

.method public B()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final D()V
    .registers 2

    invoke-direct {p0}, Ly/s;->au()V

    invoke-direct {p0}, Ly/s;->ah()V

    invoke-direct {p0}, Ly/s;->aj()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly/s;->i(Z)V

    invoke-direct {p0}, Ly/s;->am()V

    invoke-direct {p0}, Ly/s;->ag()V

    invoke-direct {p0}, Ly/s;->ar()V

    invoke-direct {p0}, Ly/s;->an()V

    invoke-direct {p0}, Ly/s;->ao()V

    invoke-direct {p0}, Ly/s;->ap()V

    invoke-direct {p0}, Ly/s;->aq()V

    invoke-virtual {p0}, Ly/s;->n()V

    return-void
.end method

.method public final E()V
    .registers 2

    invoke-direct {p0}, Ly/s;->ak()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ly/s;->i(Z)V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Ly/s;->am()V

    :cond_12
    return-void
.end method

.method public final F()V
    .registers 4

    invoke-virtual {p0}, Ly/s;->X()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->b()F

    move-result v0

    new-instance v1, Ls/b;

    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v2

    invoke-direct {v1, v2}, Ls/b;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v0}, Ls/b;->setBearing(F)V

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Landroid/location/Location;Z)V

    :cond_20
    return-void
.end method

.method protected G()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final H()V
    .registers 4

    invoke-direct {p0}, Ly/s;->au()V

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->e()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_c
    new-instance v1, Lq/C;

    const-string v2, "compassButton"

    invoke-direct {v1, v2, v0}, Lq/C;-><init>(Ljava/lang/String;Z)V

    invoke-static {v1}, LC/f;->b(LC/j;)V

    if-eqz v0, :cond_26

    const-string v0, "3"

    :goto_1a
    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/s;->h()V

    invoke-direct {p0}, Ly/s;->at()V

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_c

    :cond_26
    const-string v0, "2"

    goto :goto_1a
.end method

.method public final I()V
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/B;

    const-string v1, "zoomOut"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget v0, p0, Ly/s;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ly/s;->h:I

    invoke-virtual {p0}, Ly/s;->j()V

    return-void
.end method

.method public final J()V
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/B;

    const-string v1, "zoomIn"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget v0, p0, Ly/s;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ly/s;->h:I

    invoke-virtual {p0}, Ly/s;->i()V

    return-void
.end method

.method public final K()Z
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/B;

    const-string v1, "back"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    invoke-virtual {p0}, Ly/s;->k()Z

    move-result v0

    return v0
.end method

.method public final L()V
    .registers 4

    invoke-direct {p0}, Ly/s;->au()V

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/k;->a:Ly/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method public final M()V
    .registers 3

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    sget-object v1, Ly/k;->a:Ly/k;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->c()Z

    :cond_f
    return-void
.end method

.method public final N()V
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/B;

    const-string v1, "backToLocation"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "n"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/s;->l()V

    return-void
.end method

.method public final O()V
    .registers 4

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    const-class v2, Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "TravelMode"

    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ForceNewDestination"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final P()V
    .registers 2

    invoke-direct {p0}, Ly/s;->au()V

    const-string v0, "+"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/s;->s()V

    invoke-direct {p0}, Ly/s;->at()V

    return-void
.end method

.method public final Q()V
    .registers 2

    invoke-direct {p0}, Ly/s;->au()V

    const-string v0, "-"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/s;->W()V

    invoke-direct {p0}, Ly/s;->at()V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->g()V

    :cond_1f
    return-void
.end method

.method public final R()V
    .registers 2

    invoke-direct {p0}, Ly/s;->au()V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->i()V

    :cond_14
    return-void
.end method

.method S()Z
    .registers 2

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final T()V
    .registers 1

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p0}, Ly/s;->m()V

    invoke-direct {p0}, Ly/s;->at()V

    return-void
.end method

.method public final U()V
    .registers 1

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p0}, Ly/s;->u()V

    invoke-direct {p0}, Ly/s;->at()V

    return-void
.end method

.method public final V()V
    .registers 5

    const/4 v3, 0x1

    invoke-direct {p0}, Ly/s;->au()V

    const-string v0, "."

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    const v0, 0x7f0b0012

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->c()I

    move-result v1

    if-ne v1, v3, :cond_45

    const v0, 0x7f0b0010

    :cond_23
    :goto_23
    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v2, p0, Ly/s;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->j(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly/s;->a(Lu/I;)V

    invoke-direct {p0}, Ly/s;->am()V

    invoke-direct {p0}, Ly/s;->ar()V

    invoke-virtual {p0}, Ly/s;->o()V

    invoke-static {v3}, Lcom/google/android/maps/driveabout/app/ds;->b(Z)V

    return-void

    :cond_45
    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    const v0, 0x7f0b0011

    goto :goto_23
.end method

.method protected W()V
    .registers 3

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->l(Z)V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->t()V

    :cond_13
    return-void
.end method

.method protected X()Z
    .registers 3

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected Y()V
    .registers 1

    return-void
.end method

.method protected final Z()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lu/I;->k()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v1

    :goto_11
    invoke-virtual {v3}, Lu/I;->j()Lu/I;

    move-result-object v3

    if-eqz v3, :cond_32

    move v3, v1

    :goto_18
    iget-object v4, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v4}, Ly/p;->a()Ly/s;

    move-result-object v4

    sget-object v5, Ly/d;->a:Ly/d;

    if-eq v4, v5, :cond_34

    sget-object v5, Ly/m;->a:Ly/m;

    if-eq v4, v5, :cond_34

    sget-object v5, Ly/j;->a:Ly/j;

    if-eq v4, v5, :cond_34

    :goto_2a
    iget-object v2, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v2, v0, v3, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(ZZZ)V

    return-void

    :cond_30
    move v0, v2

    goto :goto_11

    :cond_32
    move v3, v2

    goto :goto_18

    :cond_34
    move v1, v2

    goto :goto_2a

    :cond_36
    move v3, v2

    move v0, v2

    goto :goto_18
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method protected a(FF)V
    .registers 6

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/c;->a:Ly/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected a(FFF)V
    .registers 7

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/c;->a:Ly/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method public final a(I)V
    .registers 5

    invoke-direct {p0}, Ly/s;->au()V

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v1

    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(IIZ)V

    invoke-virtual {p0, p1}, Ly/s;->b(I)V

    return-void
.end method

.method public final a(IIFIIII)V
    .registers 9

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/cu;->a(IIF)V

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/google/android/maps/driveabout/app/cu;->a(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ly/s;->i(Z)V

    return-void
.end method

.method public final a(LC/f;)V
    .registers 6

    invoke-direct {p0}, Ly/s;->au()V

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->c(Z)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "da_voice-rmi.3gp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/de;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/app/de;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v3, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/app/de;->a(Lcom/google/android/maps/driveabout/app/aL;Lcom/google/android/maps/driveabout/app/cW;)V

    if-eqz p1, :cond_32

    iget-object v2, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/de;->a(LC/f;Lcom/google/android/maps/driveabout/app/cU;)V

    :cond_32
    iget-object v2, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/a;->c()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-direct {p0, v0, v1}, Ly/s;->a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/de;)V

    goto :goto_b

    :cond_42
    iget-object v2, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v2

    new-instance v3, Ly/u;

    invoke-direct {v3, p0, v0, v1}, Ly/u;-><init>(Ly/s;Ljava/io/File;Lcom/google/android/maps/driveabout/app/de;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/d;)V

    goto :goto_b
.end method

.method protected a(Landroid/os/Bundle;Lt/W;)V
    .registers 5

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/app/SearchActivity;->a(Landroid/os/Bundle;Lcom/google/android/maps/driveabout/app/aL;Lt/W;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Lt/W;Lcom/google/android/maps/driveabout/app/eA;)V
    .registers 6

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/B;

    const-string v1, "search"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "?"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ly/s;->a(Landroid/os/Bundle;Lt/W;)V

    invoke-interface {p3, p1}, Lcom/google/android/maps/driveabout/app/eA;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .registers 5

    const v0, 0x7f0f00f2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;

    iget-object v1, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a(I)V

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    const v2, 0x7f0b0067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a(Ljava/lang/String;)V

    :goto_27
    return-void

    :cond_28
    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a(I)V

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    const v2, 0x7f0b0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/NavigationMenuItem;->a(Ljava/lang/String;)V

    goto :goto_27
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bS;)V
    .registers 4

    const v1, 0x7f0f00f1

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    goto :goto_e
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 5

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/c;->a:Ly/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    invoke-direct {p0}, Ly/s;->at()V

    :cond_1c
    return-void
.end method

.method protected a(Lt/L;)V
    .registers 3

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->D()V

    invoke-virtual {p0}, Ly/s;->Z()V

    return-void
.end method

.method public final a(Lt/au;Lcom/google/android/maps/driveabout/app/bo;Z)V
    .registers 13

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/B;

    const-string v1, "layers"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v1, "s"

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-nez v0, :cond_57

    move v0, v4

    :goto_1a
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    if-eqz p3, :cond_24

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->c()Z

    :cond_24
    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->j()Lcom/google/android/maps/driveabout/app/bv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/app/bv;->a(Lt/au;)V

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    sget-object v1, Ly/g;->a:Ly/g;

    if-ne v0, v1, :cond_59

    move v5, v4

    :goto_38
    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bv;->b()Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bv;->c()Lcom/google/android/maps/driveabout/app/bB;

    move-result-object v2

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v3

    iget-object v7, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/app/cW;->h()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v7

    sget-object v8, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v7, v8, :cond_5b

    :goto_52
    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;IZZLcom/google/android/maps/driveabout/app/bo;)V

    return-void

    :cond_57
    move v0, v6

    goto :goto_1a

    :cond_59
    move v5, v6

    goto :goto_38

    :cond_5b
    move v4, v6

    goto :goto_52
.end method

.method protected final a(Lu/I;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ly/s;->au()V

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lu/I;)V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz p1, :cond_1b

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lu/I;->b()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_21

    :cond_1b
    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v3, v3, v3}, Lcom/google/android/maps/driveabout/app/cU;->a(Lu/x;Lu/I;Lcom/google/android/maps/driveabout/vector/aF;)V

    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    new-instance v2, Ly/t;

    invoke-direct {v2, p0, p1}, Ly/t;-><init>(Ly/s;Lu/I;)V

    invoke-interface {v1, v0, p1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Lu/x;Lu/I;Lcom/google/android/maps/driveabout/vector/aF;)V

    goto :goto_20
.end method

.method protected a(Lu/I;Lu/I;)V
    .registers 3

    invoke-virtual {p0, p2}, Ly/s;->a(Lu/I;)V

    return-void
.end method

.method protected a(Lu/I;Z)V
    .registers 6

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/e;->a:Ly/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ly/s;->a(Lu/I;Z)V

    :cond_14
    return-void
.end method

.method public final a(Lu/P;Z)V
    .registers 6

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/C;

    const-string v1, "newDestination"

    invoke-virtual {p1}, Lu/P;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lq/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    if-eqz p2, :cond_18

    const-string v0, "d"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v0

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->C()[Lu/b;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ly/s;->a(Lu/P;I[Lu/b;)V

    return-void
.end method

.method protected a(Lu/g;)V
    .registers 5

    invoke-virtual {p0, p1}, Ly/s;->c(Lu/g;)I

    move-result v0

    if-lez v0, :cond_12

    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v2, p0, Ly/s;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;I)V

    :cond_12
    return-void
.end method

.method public final a(Lu/j;I)V
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    invoke-direct {p0}, Ly/s;->ai()V

    invoke-virtual {p0, p1, p2}, Ly/s;->c(Lu/j;I)V

    invoke-direct {p0}, Ly/s;->at()V

    return-void
.end method

.method public a(Lu/x;)V
    .registers 2

    return-void
.end method

.method protected a(Lu/x;[Lu/x;)V
    .registers 6

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x1

    new-array v1, v1, [Lu/x;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p1, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Lu/x;[Lu/x;)V

    return-void
.end method

.method protected a(Z)V
    .registers 4

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/aL;)V

    return-void
.end method

.method public final a(ZZ)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v3, Lq/C;

    const-string v4, "mute"

    if-nez p1, :cond_37

    move v0, v1

    :goto_c
    invoke-direct {v3, v4, v0}, Lq/C;-><init>(Ljava/lang/String;Z)V

    invoke-static {v3}, LC/f;->b(LC/j;)V

    const-string v0, "u"

    if-nez p1, :cond_39

    :goto_16
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    if-eqz p2, :cond_20

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->c()Z

    :cond_20
    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/a;->c(Z)V

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->m()V

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cU;->c(Z)V

    invoke-direct {p0}, Ly/s;->ah()V

    return-void

    :cond_37
    move v0, v2

    goto :goto_c

    :cond_39
    move v1, v2

    goto :goto_16
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Ly/s;->G()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ly/r;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected aa()V
    .registers 8

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/maps/driveabout/app/dA;->a()Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v2

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->z()[Lu/P;

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v3, v1

    if-eqz v3, :cond_a

    const/4 v4, 0x0

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->L()Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v0, p0, Ly/s;->b:Landroid/content/Context;

    const v2, 0x7f0b0044

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    :goto_2d
    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->k()Lcom/google/android/maps/driveabout/app/cX;

    move-result-object v0

    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v2

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->C()[Lu/b;

    move-result-object v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/cX;->a([Lu/P;I[Lu/b;Ljava/lang/CharSequence;ZZ)V

    goto :goto_a

    :cond_43
    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v3

    if-nez v3, :cond_57

    iget-object v2, p0, Ly/s;->b:Landroid/content/Context;

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    move v6, v0

    goto :goto_2d

    :cond_57
    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->q()Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v2, p0, Ly/s;->b:Landroid/content/Context;

    const v3, 0x7f0b0058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v6

    move v6, v0

    goto :goto_2d

    :cond_6b
    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v3

    if-eqz v3, :cond_90

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->g()I

    move-result v3

    iget-object v4, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v4

    iget-object v5, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v5

    invoke-virtual {v5}, Lu/x;->q()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/dA;->a(ILu/I;I)Landroid/text/Spannable;

    move-result-object v4

    move v6, v0

    move v5, v0

    goto :goto_2d

    :cond_90
    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->s()Z

    move-result v2

    if-eqz v2, :cond_a4

    iget-object v2, p0, Ly/s;->b:Landroid/content/Context;

    const v3, 0x7f0b007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v6, v0

    move v5, v0

    goto :goto_2d

    :cond_a4
    move v6, v0

    move v5, v0

    goto :goto_2d
.end method

.method public final ab()V
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/B;

    const-string v1, "showStreetView"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    invoke-virtual {p0}, Ly/s;->p()V

    return-void
.end method

.method protected ac()V
    .registers 2

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->c()V

    invoke-direct {p0}, Ly/s;->ao()V

    return-void
.end method

.method public final ad()V
    .registers 3

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->b(Z)V

    invoke-virtual {p0}, Ly/s;->ae()V

    return-void
.end method

.method protected ae()V
    .registers 2

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->j()V

    return-void
.end method

.method public af()V
    .registers 4

    iget-object v0, p0, Ly/s;->b:Landroid/content/Context;

    const-string v1, "ShowDNHWarning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    new-instance v1, Ly/v;

    invoke-direct {v1, p0}, Ly/v;-><init>(Ly/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Landroid/content/DialogInterface$OnClickListener;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-direct {p0, v0}, Ly/s;->c(Lcom/google/android/maps/driveabout/app/cU;)V

    goto :goto_15
.end method

.method public b()V
    .registers 2

    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/s;->c()V

    return-void
.end method

.method public final b(FF)V
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p0, p1, p2}, Ly/s;->a(FF)V

    return-void
.end method

.method public final b(FFF)V
    .registers 4

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p0, p1, p2, p3}, Ly/s;->a(FFF)V

    return-void
.end method

.method protected b(I)V
    .registers 2

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cW;Lcom/google/android/maps/driveabout/app/cU;Lcom/google/android/maps/driveabout/app/aL;Lu/r;)V
    .registers 7

    iput-object p1, p0, Ly/s;->b:Landroid/content/Context;

    iput-object p2, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    iput-object p3, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iput-object p4, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    sget-object v0, Ly/p;->a:Ly/p;

    iput-object v0, p0, Ly/s;->f:Ly/p;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ly/s;->a:Ljava/lang/Thread;

    iput-object p5, p0, Ly/s;->g:Lu/r;

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/app/bS;)V
    .registers 9

    const v6, 0x7f0f00cc

    const v5, 0x7f0f00c8

    const v4, 0x7f0f0419

    const v3, 0x7f0f0418

    const v2, 0x7f0f0417

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a4

    const v0, 0x7f0f0413

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    const v0, 0x7f0f0414

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    :goto_27
    invoke-virtual {p1, v6}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const v0, 0x7f0f0416

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    invoke-virtual {p1, v6}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    :goto_3f
    const v0, 0x7f0f0412

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    const v0, 0x7f0f0415

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-virtual {p1, v5}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    const v0, 0x7f0f00f4

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    const v0, 0x7f0f00f0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    :goto_62
    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->G()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    :cond_76
    :goto_76
    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    :goto_7f
    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_85

    :cond_85
    const v0, 0x7f0f041a

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    invoke-virtual {p0, p1}, Ly/s;->a(Lcom/google/android/maps/driveabout/app/bS;)V

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    const v0, 0x7f0f041a

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    :cond_a3
    return-void

    :cond_a4
    const v0, 0x7f0f0413

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    const v0, 0x7f0f0414

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    goto/16 :goto_27

    :cond_b2
    const v0, 0x7f0f0416

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    goto :goto_3f

    :cond_b9
    invoke-virtual {p1, v5}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    const v0, 0x7f0f00f4

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    const v0, 0x7f0f00f0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    goto :goto_62

    :cond_c9
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/app/bS;->a(I)V

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    goto :goto_76

    :cond_d0
    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/app/bS;->b(I)V

    goto :goto_7f
.end method

.method public final b(Lcom/google/android/maps/driveabout/app/cU;)V
    .registers 2

    iput-object p1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/A;

    const-string v1, "marker"

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lq/A;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "t"

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ly/s;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    return-void
.end method

.method public final b(Lt/L;)V
    .registers 2

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p0, p1}, Ly/s;->a(Lt/L;)V

    return-void
.end method

.method public final b(Lu/I;Lu/I;)V
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p0, p1, p2}, Ly/s;->a(Lu/I;Lu/I;)V

    invoke-direct {p0}, Ly/s;->at()V

    return-void
.end method

.method public final b(Lu/I;Z)V
    .registers 6

    invoke-direct {p0}, Ly/s;->au()V

    if-eqz p1, :cond_1e

    new-instance v0, Lq/C;

    const-string v1, "step"

    invoke-virtual {p1}, Lu/I;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lq/C;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "p"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p2}, Ly/s;->a(Lu/I;Z)V

    invoke-direct {p0}, Ly/s;->at()V

    :cond_1e
    return-void
.end method

.method public final b(Lu/g;)V
    .registers 2

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p0, p1}, Ly/s;->a(Lu/g;)V

    return-void
.end method

.method public final b(Lu/j;I)V
    .registers 5

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p0}, Ly/s;->S()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {v1}, Lu/x;->q()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/a;->b(Lu/j;II)V

    :cond_1c
    return-void
.end method

.method public final b(Lu/x;[Lu/x;)V
    .registers 6

    const/4 v2, 0x1

    invoke-direct {p0}, Ly/s;->au()V

    invoke-virtual {p1}, Lu/x;->i()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->i()I

    move-result v0

    invoke-virtual {p1}, Lu/x;->k()I

    move-result v1

    if-le v1, v0, :cond_2d

    invoke-virtual {p1, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly/s;->a(Lu/I;)V

    :goto_29
    invoke-virtual {p0, p1, p2}, Ly/s;->a(Lu/x;[Lu/x;)V

    return-void

    :cond_2d
    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    goto :goto_29

    :cond_35
    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lu/I;)V

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->f()V

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->g(Z)V

    goto :goto_29
.end method

.method protected b(Z)V
    .registers 5

    if-eqz p1, :cond_a

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/g;->a:Ly/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_a
    return-void
.end method

.method protected final c(Lu/g;)I
    .registers 4

    invoke-virtual {p1}, Lu/g;->l()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lu/g;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_c
    const v0, 0x7f0b00b0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p1}, Lu/g;->o()Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f0b00af

    goto :goto_f

    :cond_1a
    invoke-virtual {p1}, Lu/g;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    invoke-virtual {p1}, Lu/g;->k()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lu/g;->d()[Lu/x;

    move-result-object v0

    if-eqz v0, :cond_31

    const v0, 0x7f0b00b5

    goto :goto_f

    :cond_31
    const v0, 0x7f0b00ae

    goto :goto_f
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method protected c(I)V
    .registers 3

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cW;->a(I)V

    invoke-direct {p0}, Ly/s;->ao()V

    return-void
.end method

.method public final c(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 6

    const/4 v3, 0x1

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/A;

    const-string v1, "marker"

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lq/A;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "t"

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ly/s;->d(Lcom/google/android/maps/driveabout/vector/m;)V

    return-void
.end method

.method protected c(Lu/j;I)V
    .registers 5

    invoke-virtual {p0}, Ly/s;->S()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {v1}, Lu/x;->q()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/app/a;->a(Lu/j;II)V

    :cond_19
    return-void
.end method

.method public final c(Z)V
    .registers 4

    invoke-direct {p0}, Ly/s;->au()V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    new-instance v0, Lq/B;

    const-string v1, "routeOverview"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "r"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/m;->a:Ly/m;

    invoke-virtual {v0, v1, p1}, Ly/p;->a(Ly/s;Z)Z

    goto :goto_b
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 4

    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/cy;

    if-eqz v0, :cond_28

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->E()V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->k()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly/s;->a(Lu/I;)V

    invoke-virtual {p0}, Ly/s;->ab()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/bC;

    if-eqz v0, :cond_27

    iget-object v0, p0, Ly/s;->b:Landroid/content/Context;

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bC;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/bj;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/bC;)V

    goto :goto_27
.end method

.method public final d(Z)V
    .registers 4

    invoke-direct {p0}, Ly/s;->au()V

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    new-instance v0, Lq/B;

    const-string v1, "viewList"

    invoke-direct {v0, v1}, Lq/B;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "l"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/j;->a:Ly/j;

    invoke-virtual {v0, v1, p1}, Ly/p;->a(Ly/s;Z)Z

    goto :goto_b
.end method

.method public e()V
    .registers 1

    invoke-virtual {p0}, Ly/s;->f()V

    return-void
.end method

.method public final e(Z)V
    .registers 4

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/C;

    const-string v1, "viewTraffic"

    invoke-direct {v0, v1, p1}, Lq/C;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "f"

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ly/s;->b(Z)V

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public final f(Z)V
    .registers 4

    invoke-direct {p0}, Ly/s;->au()V

    new-instance v0, Lq/C;

    const-string v1, "viewSatellite"

    invoke-direct {v0, v1, p1}, Lq/C;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    const-string v0, "S"

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ly/s;->h(Z)V

    return-void
.end method

.method protected g()I
    .registers 2

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Ls/b;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x2

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public final g(Z)V
    .registers 3

    invoke-direct {p0}, Ly/s;->au()V

    const-string v0, ","

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly/s;->t()V

    invoke-direct {p0}, Ly/s;->at()V

    if-eqz p1, :cond_19

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->i()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->h()V

    :cond_19
    return-void
.end method

.method protected h()V
    .registers 2

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->f()V

    return-void
.end method

.method protected h(Z)V
    .registers 5

    if-eqz p1, :cond_26

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    :goto_9
    iget-object v0, p0, Ly/s;->b:Landroid/content/Context;

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v1

    invoke-static {v1}, Lu/O;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;)Lz/t;

    move-result-object v0

    const-string v1, "SatelliteImagery"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lz/t;->a(Ljava/lang/String;Ljava/lang/Object;)Lz/t;

    invoke-direct {p0}, Ly/s;->at()V

    return-void

    :cond_26
    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->E()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    goto :goto_9

    :cond_36
    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cW;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    goto :goto_9
.end method

.method protected i()V
    .registers 4

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/c;->a:Ly/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(F)F

    invoke-virtual {p0}, Ly/s;->Z()V

    :cond_19
    return-void
.end method

.method protected j()V
    .registers 4

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/c;->a:Ly/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(F)F

    invoke-virtual {p0}, Ly/s;->Z()V

    :cond_19
    return-void
.end method

.method protected k()Z
    .registers 2

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->c()Z

    move-result v0

    return v0
.end method

.method protected l()V
    .registers 4

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method protected m()V
    .registers 1

    return-void
.end method

.method protected n()V
    .registers 1

    return-void
.end method

.method protected o()V
    .registers 1

    return-void
.end method

.method protected p()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Ly/d;->a:Ly/d;

    invoke-virtual {v0, v2}, Ly/d;->a_(Z)V

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method public q()V
    .registers 1

    return-void
.end method

.method public r()V
    .registers 1

    return-void
.end method

.method protected s()V
    .registers 2

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->u()V

    return-void
.end method

.method protected t()V
    .registers 1

    return-void
.end method

.method protected u()V
    .registers 1

    return-void
.end method

.method protected v()V
    .registers 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->t()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->b:Landroid/content/Context;

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;Z)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;Z)V

    goto :goto_18

    :cond_29
    iget-object v0, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-nez v0, :cond_39

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/lang/String;Z)V

    goto :goto_18

    :cond_39
    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v2, p0, Ly/s;->c:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v2

    invoke-direct {p0}, Ly/s;->as()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/app/aL;Lu/I;ZZ)V

    goto :goto_18
.end method

.method protected w()V
    .registers 3

    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(I)V

    return-void
.end method

.method protected x()V
    .registers 6

    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, -0x1

    :goto_b
    iget-object v2, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v2

    iget-object v3, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cU;->a(IZIZ)V

    return-void

    :cond_1c
    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->f()I

    move-result v0

    goto :goto_b
.end method

.method protected y()V
    .registers 4

    iget-object v0, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, Ly/s;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu/Q;->a()I

    move-result v1

    if-lez v1, :cond_2f

    iget-object v1, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/Q;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/app/cU;->c(Ljava/lang/CharSequence;)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->c(Ljava/lang/CharSequence;)V

    goto :goto_2e
.end method

.method public z()V
    .registers 4

    iget-object v0, p0, Ly/s;->f:Ly/p;

    sget-object v1, Ly/m;->a:Ly/m;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ly/s;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->z()V

    :cond_14
    return-void
.end method
