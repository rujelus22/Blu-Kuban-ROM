.class public final LC/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/u;


# static fields
.field private static final d:Lcom/google/common/collect/bG;


# instance fields
.field private final a:Lcom/google/googlenav/common/a;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-static {}, Lcom/google/common/collect/bG;->f()Lcom/google/common/collect/bH;

    move-result-object v0

    const-string v1, "gps_fixup_provider"

    const-string v2, "gps"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bH;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bH;

    move-result-object v0

    const-string v1, "network_fixup_provider"

    const-string v2, "network"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bH;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bH;

    move-result-object v0

    const-string v1, "base_location_provider"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gps_fixup_provider"

    aput-object v3, v2, v4

    const-string v3, "network_fixup_provider"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bH;->a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/bH;

    move-result-object v0

    const-string v1, "speed_provider"

    const-string v2, "gps_fixup_provider"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bH;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bH;

    move-result-object v0

    const-string v1, "integrated_location_provider"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "base_location_provider"

    aput-object v3, v2, v4

    const-string v3, "speed_provider"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/bH;->a(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bH;->a()Lcom/google/common/collect/bG;

    move-result-object v0

    sput-object v0, LC/v;->d:Lcom/google/common/collect/bG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/common/a;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/a;

    iput-object v0, p0, LC/v;->a:Lcom/google/googlenav/common/a;

    .line 58
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, LC/v;->b:Landroid/content/Context;

    .line 60
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->g()Lcom/google/common/collect/bD;

    move-result-object v0

    .line 61
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gps"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "gps_fixup_provider"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "base_location_provider"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "speed_provider"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "integrated_location_provider"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bD;->b([Ljava/lang/Object;)Lcom/google/common/collect/bD;

    .line 68
    invoke-virtual {v0}, Lcom/google/common/collect/bD;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, LC/v;->c:Lcom/google/common/collect/ImmutableSet;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LC/l;)LC/b;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 78
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 79
    new-instance v0, LC/c;

    iget-object v1, p0, LC/v;->b:Landroid/content/Context;

    iget-object v2, p0, LC/v;->a:Lcom/google/googlenav/common/a;

    invoke-direct {v0, p2, v1, v2}, LC/c;-><init>(LC/T;Landroid/content/Context;Lcom/google/googlenav/common/a;)V

    .line 91
    :goto_11
    return-object v0

    .line 80
    :cond_12
    const-string v0, "gps_fixup_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 81
    new-instance v0, LC/d;

    invoke-direct {v0, p2}, LC/d;-><init>(LC/l;)V

    goto :goto_11

    .line 82
    :cond_20
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 83
    new-instance v0, LC/M;

    iget-object v1, p0, LC/v;->b:Landroid/content/Context;

    iget-object v2, p0, LC/v;->a:Lcom/google/googlenav/common/a;

    invoke-direct {v0, p2, v1, v2}, LC/M;-><init>(LC/T;Landroid/content/Context;Lcom/google/googlenav/common/a;)V

    goto :goto_11

    .line 84
    :cond_32
    const-string v0, "network_fixup_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 85
    new-instance v0, LC/N;

    invoke-direct {v0, p2}, LC/N;-><init>(LC/l;)V

    goto :goto_11

    .line 86
    :cond_40
    const-string v0, "base_location_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 87
    new-instance v0, LC/a;

    iget-object v1, p0, LC/v;->b:Landroid/content/Context;

    iget-object v2, p0, LC/v;->a:Lcom/google/googlenav/common/a;

    invoke-direct {v0, p2, v1, v2}, LC/a;-><init>(LC/T;Landroid/content/Context;Lcom/google/googlenav/common/a;)V

    goto :goto_11

    .line 88
    :cond_52
    const-string v0, "integrated_location_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 89
    new-instance v0, LC/k;

    invoke-direct {v0, p2}, LC/k;-><init>(LC/T;)V

    goto :goto_11

    .line 90
    :cond_60
    const-string v0, "speed_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 91
    new-instance v0, LC/U;

    iget-object v1, p0, LC/v;->a:Lcom/google/googlenav/common/a;

    invoke-direct {v0, p2, v1}, LC/U;-><init>(LC/l;Lcom/google/googlenav/common/a;)V

    goto :goto_11

    .line 93
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/os/Handler$Callback;)LF/i;
    .registers 4
    .parameter

    .prologue
    .line 103
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RideAboutLocationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 106
    new-instance v1, LF/h;

    invoke-direct {v1, v0, p1}, LF/h;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v1
.end method

.method public a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, LC/v;->c:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 98
    sget-object v0, LC/v;->d:Lcom/google/common/collect/bG;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bG;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
