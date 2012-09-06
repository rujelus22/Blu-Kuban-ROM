.class LaM/bY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/layer/q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/cq;

.field final synthetic b:LaM/bU;


# direct methods
.method constructor <init>(LaM/bU;Lcom/google/googlenav/cq;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, LaM/bY;->b:LaM/bU;

    iput-object p2, p0, LaM/bY;->a:Lcom/google/googlenav/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 538
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/W;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, LaM/bY;->b:LaM/bU;

    invoke-static {v0}, LaM/bU;->e(LaM/bU;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LaM/bZ;

    invoke-direct {v1, p0, p2}, LaM/bZ;-><init>(LaM/bY;Lcom/google/googlenav/W;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method
