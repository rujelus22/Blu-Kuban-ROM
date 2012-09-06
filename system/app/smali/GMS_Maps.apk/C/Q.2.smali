.class public final LC/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/u;


# instance fields
.field private final a:LC/v;

.field private final b:Lcom/google/common/collect/ImmutableSet;

.field private final c:Landroid/content/Context;

.field private final d:LD/l;

.field private final e:LF/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LD/l;LF/a;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, LC/v;

    invoke-direct {v0, p1, p3}, LC/v;-><init>(Landroid/content/Context;Lcom/google/googlenav/common/a;)V

    iput-object v0, p0, LC/Q;->a:LC/v;

    .line 40
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, LC/Q;->c:Landroid/content/Context;

    .line 41
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/l;

    iput-object v0, p0, LC/Q;->d:LD/l;

    .line 42
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/a;

    iput-object v0, p0, LC/Q;->e:LF/a;

    .line 44
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->g()Lcom/google/common/collect/bD;

    move-result-object v1

    .line 45
    iget-object v0, p0, LC/Q;->a:LC/v;

    invoke-virtual {v0}, LC/v;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    sget-object v3, LC/w;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 47
    invoke-virtual {v1, v0}, Lcom/google/common/collect/bD;->b(Ljava/lang/Object;)Lcom/google/common/collect/bD;

    goto :goto_30

    .line 50
    :cond_48
    const-string v0, "playback_signal_provider"

    invoke-virtual {v1, v0}, Lcom/google/common/collect/bD;->b(Ljava/lang/Object;)Lcom/google/common/collect/bD;

    .line 51
    invoke-virtual {v1}, Lcom/google/common/collect/bD;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, LC/Q;->b:Lcom/google/common/collect/ImmutableSet;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LC/l;)LC/b;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 61
    const-string v0, "playback_signal_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, LD/h;

    iget-object v1, p0, LC/Q;->c:Landroid/content/Context;

    iget-object v2, p0, LC/Q;->d:LD/l;

    iget-object v3, p0, LC/Q;->e:LF/a;

    invoke-direct {v0, p2, v1, v2, v3}, LD/h;-><init>(LC/T;Landroid/content/Context;Lcom/google/common/collect/cW;LF/a;)V

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, LC/Q;->a:LC/v;

    invoke-virtual {v0, p1, p2}, LC/v;->a(Ljava/lang/String;LC/l;)LC/b;

    move-result-object v0

    goto :goto_13
.end method

.method public a(Landroid/os/Handler$Callback;)LF/i;
    .registers 5
    .parameter

    .prologue
    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RideAboutPlaybackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 76
    new-instance v1, LF/b;

    iget-object v2, p0, LC/Q;->e:LF/a;

    invoke-direct {v1, v2, v0, p1}, LF/b;-><init>(LF/a;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v1
.end method

.method public a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, LC/Q;->b:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, LC/Q;->a:LC/v;

    invoke-virtual {v0, p1}, LC/v;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
