.class LQw;
.super Ljava/lang/Object;
.source "SharingInfoManagerImpl.java"

# interfaces
.implements LOS;


# instance fields
.field final synthetic a:LQn;

.field final synthetic a:LQs;


# direct methods
.method constructor <init>(LQs;LQn;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, LQw;->a:LQs;

    iput-object p2, p0, LQw;->a:LQn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, LQw;->a:LQs;

    iget-object v0, v0, LQs;->a:LQp;

    invoke-static {v0}, LQp;->a(LQp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LQx;

    invoke-direct {v1, p0, p1, p2}, LQx;-><init>(LQw;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, LQw;->a:LQs;

    iget-object v0, v0, LQs;->a:LQp;

    invoke-static {v0}, LQp;->a(LQp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LQy;

    invoke-direct {v1, p0}, LQy;-><init>(LQw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method
