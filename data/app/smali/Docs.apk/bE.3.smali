.class final LbE;
.super Ljava/lang/Object;

# interfaces
.implements LbA;


# instance fields
.field final synthetic a:LbC;


# direct methods
.method constructor <init>(LbC;)V
    .registers 2

    iput-object p1, p0, LbE;->a:LbC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, LbE;->a:LbC;

    invoke-static {v0}, LbC;->a(LbC;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LbF;

    invoke-direct {v1, p0}, LbF;-><init>(LbE;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, LbE;->a:LbC;

    invoke-static {v0}, LbC;->a(LbC;)LbI;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LbI;->a(J)V

    return-void
.end method
