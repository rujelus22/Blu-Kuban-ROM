.class public LC/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LC/l;)LC/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Handler$Callback;)LF/i;
    .registers 4
    .parameter

    .prologue
    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RideAboutLocationThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 44
    new-instance v1, LF/h;

    invoke-direct {v1, v0, p1}, LF/h;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v1
.end method

.method public a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 24
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
