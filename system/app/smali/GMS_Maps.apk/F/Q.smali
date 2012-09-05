.class public LF/Q;
.super Ljava/lang/Object;

# interfaces
.implements LF/x;


# instance fields
.field private final a:LF/y;

.field private final b:LK/bu;

.field private final c:Landroid/content/Context;

.field private final d:LG/l;

.field private final e:LI/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LG/l;LI/a;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LF/y;

    invoke-direct {v0, p1, p3}, LF/y;-><init>(Landroid/content/Context;Laf/a;)V

    iput-object v0, p0, LF/Q;->a:LF/y;

    iput-object p1, p0, LF/Q;->c:Landroid/content/Context;

    iput-object p2, p0, LF/Q;->d:LG/l;

    iput-object p3, p0, LF/Q;->e:LI/a;

    invoke-static {}, LK/bu;->g()LK/bw;

    move-result-object v1

    iget-object v0, p0, LF/Q;->a:LF/y;

    invoke-virtual {v0}, LF/y;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, LF/z;->a:LK/bu;

    invoke-virtual {v3, v0}, LK/bu;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v1, v0}, LK/bw;->b(Ljava/lang/Object;)LK/bw;

    goto :goto_1e

    :cond_36
    const-string v0, "playback_signal_provider"

    invoke-virtual {v1, v0}, LK/bw;->b(Ljava/lang/Object;)LK/bw;

    invoke-virtual {v1}, LK/bw;->a()LK/bu;

    move-result-object v0

    iput-object v0, p0, LF/Q;->b:LK/bu;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LF/o;)LF/b;
    .registers 7

    const-string v0, "playback_signal_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, LG/h;

    iget-object v1, p0, LF/Q;->c:Landroid/content/Context;

    iget-object v2, p0, LF/Q;->d:LG/l;

    iget-object v3, p0, LF/Q;->e:LI/a;

    invoke-direct {v0, p2, v1, v2, v3}, LG/h;-><init>(LF/T;Landroid/content/Context;LK/ch;LI/a;)V

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, LF/Q;->a:LF/y;

    invoke-virtual {v0, p1, p2}, LF/y;->a(Ljava/lang/String;LF/o;)LF/b;

    move-result-object v0

    goto :goto_13
.end method

.method public a(Landroid/os/Handler$Callback;)LI/i;
    .registers 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RideAboutPlaybackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, LI/b;

    iget-object v2, p0, LF/Q;->e:LI/a;

    invoke-direct {v1, v2, v0, p1}, LI/b;-><init>(LI/a;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v1
.end method

.method public a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LF/Q;->b:LK/bu;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    iget-object v0, p0, LF/Q;->a:LF/y;

    invoke-virtual {v0, p1}, LF/y;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
