.class public LF/P;
.super Ljava/lang/Object;

# interfaces
.implements LF/x;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LF/o;)LF/b;
    .registers 4

    const/4 v0, 0x0

    return-object v0
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

    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    return-object v0
.end method
