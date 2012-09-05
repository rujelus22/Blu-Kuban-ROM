.class public LF/y;
.super Ljava/lang/Object;

# interfaces
.implements LF/x;


# instance fields
.field private final a:Laf/a;

.field private final b:Landroid/content/Context;

.field private final c:LK/bu;

.field private final d:LK/bz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laf/a;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bz;->f()LK/bA;

    move-result-object v0

    const-string v1, "gps_fixup_provider"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "gps"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, LK/bA;->a(Ljava/lang/Object;[Ljava/lang/Object;)LK/bA;

    move-result-object v0

    const-string v1, "network_fixup_provider"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "network"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, LK/bA;->a(Ljava/lang/Object;[Ljava/lang/Object;)LK/bA;

    move-result-object v0

    const-string v1, "base_location_provider"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gps_fixup_provider"

    aput-object v3, v2, v4

    const-string v3, "network_fixup_provider"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, LK/bA;->a(Ljava/lang/Object;[Ljava/lang/Object;)LK/bA;

    move-result-object v0

    const-string v1, "speed_provider"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "gps_fixup_provider"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, LK/bA;->a(Ljava/lang/Object;[Ljava/lang/Object;)LK/bA;

    move-result-object v0

    const-string v1, "integrated_location_provider"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "base_location_provider"

    aput-object v3, v2, v4

    const-string v3, "speed_provider"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, LK/bA;->a(Ljava/lang/Object;[Ljava/lang/Object;)LK/bA;

    move-result-object v0

    invoke-virtual {v0}, LK/bA;->a()LK/bz;

    move-result-object v0

    iput-object v0, p0, LF/y;->d:LK/bz;

    iput-object p2, p0, LF/y;->a:Laf/a;

    iput-object p1, p0, LF/y;->b:Landroid/content/Context;

    invoke-static {}, LK/bu;->g()LK/bw;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "gps"

    aput-object v2, v1, v4

    const-string v2, "gps_fixup_provider"

    aput-object v2, v1, v5

    const-string v2, "base_location_provider"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "speed_provider"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "integrated_location_provider"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, LK/bw;->b([Ljava/lang/Object;)LK/bw;

    invoke-virtual {v0}, LK/bw;->a()LK/bu;

    move-result-object v0

    iput-object v0, p0, LF/y;->c:LK/bu;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LF/o;)LF/b;
    .registers 6

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, LF/c;

    iget-object v1, p0, LF/y;->b:Landroid/content/Context;

    iget-object v2, p0, LF/y;->a:Laf/a;

    invoke-direct {v0, p2, v1, v2}, LF/c;-><init>(LF/T;Landroid/content/Context;Laf/a;)V

    :goto_11
    return-object v0

    :cond_12
    const-string v0, "gps_fixup_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, LF/d;

    invoke-direct {v0, p2}, LF/d;-><init>(LF/o;)V

    goto :goto_11

    :cond_20
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, LF/M;

    iget-object v1, p0, LF/y;->b:Landroid/content/Context;

    iget-object v2, p0, LF/y;->a:Laf/a;

    invoke-direct {v0, p2, v1, v2}, LF/M;-><init>(LF/T;Landroid/content/Context;Laf/a;)V

    goto :goto_11

    :cond_32
    const-string v0, "network_fixup_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, LF/N;

    invoke-direct {v0, p2}, LF/N;-><init>(LF/o;)V

    goto :goto_11

    :cond_40
    const-string v0, "base_location_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, LF/a;

    iget-object v1, p0, LF/y;->b:Landroid/content/Context;

    iget-object v2, p0, LF/y;->a:Laf/a;

    invoke-direct {v0, p2, v1, v2}, LF/a;-><init>(LF/T;Landroid/content/Context;Laf/a;)V

    goto :goto_11

    :cond_52
    const-string v0, "integrated_location_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    new-instance v0, LF/n;

    invoke-direct {v0, p2}, LF/n;-><init>(LF/T;)V

    goto :goto_11

    :cond_60
    const-string v0, "speed_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance v0, LF/U;

    iget-object v1, p0, LF/y;->a:Laf/a;

    invoke-direct {v0, p2, v1}, LF/U;-><init>(LF/o;Laf/a;)V

    goto :goto_11

    :cond_70
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(Landroid/os/Handler$Callback;)LI/i;
    .registers 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RideAboutLocationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, LI/h;

    invoke-direct {v1, v0, p1}, LI/h;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v1
.end method

.method public a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LF/y;->c:LK/bu;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    iget-object v0, p0, LF/y;->d:LK/bz;

    invoke-virtual {v0, p1}, LK/bz;->c(Ljava/lang/Object;)LK/bu;

    move-result-object v0

    return-object v0
.end method
