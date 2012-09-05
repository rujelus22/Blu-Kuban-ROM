.class Lbf/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbf/g;


# direct methods
.method constructor <init>(Lbf/g;)V
    .registers 2

    iput-object p1, p0, Lbf/h;->a:Lbf/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lbf/h;->a:Lbf/g;

    invoke-static {v0}, Lbf/g;->a(Lbf/g;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lbf/h;->a:Lbf/g;

    invoke-static {v0}, Lbf/g;->b(Lbf/g;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lbf/h;->a:Lbf/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbf/g;->a(Lbf/g;Z)Z

    iget-object v0, p0, Lbf/h;->a:Lbf/g;

    invoke-virtual {v0}, Lbf/g;->b()V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_26

    :cond_1c
    iget-object v0, p0, Lbf/h;->a:Lbf/g;

    invoke-static {v0}, Lbf/g;->a(Lbf/g;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_26
    move-exception v0

    iget-object v1, p0, Lbf/h;->a:Lbf/g;

    invoke-static {v1}, Lbf/g;->a(Lbf/g;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
