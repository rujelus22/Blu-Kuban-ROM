.class Lcom/google/googlenav/friend/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/t;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/t;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/googlenav/friend/x;->a:Lcom/google/googlenav/friend/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 391
    invoke-static {}, LaM/ch;->b()V

    .line 392
    new-instance v0, Lcom/google/googlenav/friend/y;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/y;-><init>(Lcom/google/googlenav/friend/x;)V

    invoke-static {v0}, Lar/c;->a(Lar/e;)V

    .line 400
    return-void
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 404
    invoke-static {}, LaM/ch;->c()V

    .line 405
    const/4 v0, 0x1

    .line 406
    iget-object v1, p0, Lcom/google/googlenav/friend/x;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v1}, Lcom/google/googlenav/friend/t;->c(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/ui/friend/q;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/friend/q;->a(Ljava/lang/Boolean;Z)V

    .line 407
    iget-object v0, p0, Lcom/google/googlenav/friend/x;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->J()V

    .line 408
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 412
    invoke-static {}, LaM/ch;->d()V

    .line 413
    return-void
.end method
