.class public Lcom/google/googlenav/prefetch/android/PrefetcherService;
.super Lcom/google/googlenav/prefetch/android/BasePrefetcherService;
.source "SourceFile"


# static fields
.field private static final d:Lcom/google/googlenav/prefetch/android/r;


# instance fields
.field private e:Lcom/google/googlenav/ui/android/ak;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/googlenav/prefetch/android/r;

    const-class v1, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {v0, v1}, Lcom/google/googlenav/prefetch/android/r;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:Lcom/google/googlenav/prefetch/android/r;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:Lcom/google/googlenav/prefetch/android/r;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/prefetch/android/r;->a(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public static a(Landroid/content/Context;JJ)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    sget-object v0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:Lcom/google/googlenav/prefetch/android/r;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/prefetch/android/r;->a(Landroid/content/Context;JJ)V

    .line 98
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    sget-object v0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d:Lcom/google/googlenav/prefetch/android/r;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/prefetch/android/r;->b(Landroid/content/Context;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 89
    invoke-static {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->b(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 40
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    .line 43
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 52
    :cond_15
    :goto_15
    return-void

    .line 47
    :cond_16
    invoke-static {}, Lak/g;->a()Lak/g;

    move-result-object v0

    if-nez v0, :cond_15

    .line 48
    sget-object v0, Lal/b;->a:Lal/b;

    invoke-virtual {v0}, Lal/b;->d()I

    move-result v0

    invoke-static {v0}, Lak/g;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dD;->a(Z)V

    goto :goto_15
.end method

.method protected d()V
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 77
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:Lcom/google/googlenav/ui/android/ak;

    invoke-virtual {v0, v1}, Laz/a;->b(Laz/m;)V

    .line 79
    :cond_15
    invoke-static {}, Lcom/google/googlenav/android/c;->f()V

    .line 80
    return-void
.end method

.method protected e()V
    .registers 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->e()V

    .line 57
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 60
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 61
    new-instance v0, Lcom/google/googlenav/prefetch/android/s;

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/prefetch/android/s;-><init>(Landroid/content/Context;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V

    invoke-static {v0}, Laz/a;->a(LaD/i;)V

    .line 64
    :cond_1b
    new-instance v0, Lcom/google/googlenav/ui/android/ak;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:Lcom/google/googlenav/ui/android/ak;

    .line 68
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e:Lcom/google/googlenav/ui/android/ak;

    invoke-virtual {v0, v1}, Laz/a;->a(Laz/m;)V

    .line 70
    :cond_2b
    return-void
.end method
