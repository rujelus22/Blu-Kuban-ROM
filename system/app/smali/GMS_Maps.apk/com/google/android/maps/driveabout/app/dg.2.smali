.class public Lcom/google/android/maps/driveabout/app/dg;
.super Lz/u;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/app/dg;


# instance fields
.field private c:Lat/h;

.field private d:Lu/r;

.field private e:Lcom/google/android/maps/driveabout/app/dD;

.field private f:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/dg;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dg;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/dg;->a:Lcom/google/android/maps/driveabout/app/dg;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lz/u;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dg;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lx/Z;Lcom/google/android/maps/driveabout/app/dB;Lu/r;)Lcom/google/android/maps/driveabout/app/dD;
    .registers 5

    new-instance v0, Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/dD;-><init>(Lx/Z;Lcom/google/android/maps/driveabout/app/dB;)V

    invoke-virtual {p3, v0}, Lu/r;->a(Lu/o;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/dg;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/app/dg;->a:Lcom/google/android/maps/driveabout/app/dg;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/dg;->c(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/maps/driveabout/app/dg;->a:Lcom/google/android/maps/driveabout/app/dg;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/app/dD;Lcom/google/android/maps/driveabout/app/dB;)V
    .registers 5

    new-instance v0, Lcom/google/android/maps/driveabout/app/dh;

    const-string v1, "OfflineReroutingHelper"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/google/android/maps/driveabout/app/dh;-><init>(Lcom/google/android/maps/driveabout/app/dg;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/dB;Lcom/google/android/maps/driveabout/app/dD;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dh;->start()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->e:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->f:Lcom/google/android/maps/driveabout/app/dD;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->f:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->d()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->d:Lu/r;

    invoke-virtual {v0}, Lu/r;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->c:Lat/h;

    invoke-virtual {v0}, Lat/h;->s()V

    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->c:Lat/h;

    invoke-static {p1}, Lu/r;->a(Landroid/content/Context;)Lu/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->d:Lu/r;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    check-cast v0, Lx/aF;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dB;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/app/dB;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dg;->d:Lu/r;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dg;->a(Lx/Z;Lcom/google/android/maps/driveabout/app/dB;Lu/r;)Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->e:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->e:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->b()V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->f:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    check-cast v0, Lx/am;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dB;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/app/dB;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dg;->d:Lu/r;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dg;->a(Lx/Z;Lcom/google/android/maps/driveabout/app/dB;Lu/r;)Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->f:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dg;->f:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dg;->a(Lcom/google/android/maps/driveabout/app/dD;Lcom/google/android/maps/driveabout/app/dB;)V

    return-void
.end method
