.class LaM/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/X;


# direct methods
.method constructor <init>(LaM/X;)V
    .registers 2
    .parameter

    .prologue
    .line 1466
    iput-object p1, p0, LaM/ab;->a:LaM/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1472
    iget-object v0, p0, LaM/ab;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 1476
    if-nez v0, :cond_d

    .line 1490
    :goto_c
    return-void

    .line 1481
    :cond_d
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->t()V

    .line 1484
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1485
    iget-object v0, p0, LaM/ab;->a:LaM/X;

    invoke-static {v0}, LaM/X;->c(LaM/X;)LaM/ae;

    move-result-object v0

    invoke-virtual {v0}, LaM/ae;->a()V

    .line 1489
    :cond_1f
    iget-object v0, p0, LaM/ab;->a:LaM/X;

    invoke-virtual {v0}, LaM/X;->bG()V

    goto :goto_c
.end method
