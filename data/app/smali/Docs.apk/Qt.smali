.class LQt;
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
    .line 86
    iput-object p1, p0, LQt;->a:LQs;

    iput-object p2, p0, LQt;->a:LQn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, LQt;->a:LQs;

    invoke-static {v0}, LQs;->a(LQs;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 100
    :goto_8
    return-void

    .line 93
    :cond_9
    const-string v0, "SharingWorkflowImpl"

    invoke-static {v0, p1, p2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    iget-object v0, p0, LQt;->a:LQs;

    iget-object v0, v0, LQs;->a:LQp;

    invoke-static {v0}, LQp;->a(LQp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LQu;

    invoke-direct {v1, p0, p1, p2}, LQu;-><init>(LQt;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
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
    .line 104
    iget-object v0, p0, LQt;->a:LQs;

    invoke-static {v0}, LQs;->a(LQs;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 118
    :goto_8
    return-void

    .line 108
    :cond_9
    iget-object v0, p0, LQt;->a:LQs;

    invoke-static {v0, p1}, LQs;->a(LQs;Ljava/util/Set;)V

    .line 110
    iget-object v0, p0, LQt;->a:LQs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LQs;->a(LQs;Z)Z

    .line 112
    iget-object v0, p0, LQt;->a:LQs;

    iget-object v0, v0, LQs;->a:LQp;

    invoke-static {v0}, LQp;->a(LQp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LQv;

    invoke-direct {v1, p0}, LQv;-><init>(LQt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method
