.class Lcom/google/googlenav/friend/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cs;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/ab;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/ab;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/googlenav/friend/ac;->a:Lcom/google/googlenav/friend/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 238
    const/16 v0, 0x5b

    const-string v1, "gpo"

    const-string v2, "ga"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lcom/google/googlenav/friend/ac;->a:Lcom/google/googlenav/friend/ab;

    iget-object v1, v1, Lcom/google/googlenav/friend/ab;->c:Lcom/google/googlenav/friend/Z;

    iget-object v1, v1, Lcom/google/googlenav/friend/Z;->c:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/friend/ad;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/ad;-><init>(Lcom/google/googlenav/friend/ac;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/friend/ac;->a:Lcom/google/googlenav/friend/ab;

    iget-object v0, v0, Lcom/google/googlenav/friend/ab;->c:Lcom/google/googlenav/friend/Z;

    iget-object v0, v0, Lcom/google/googlenav/friend/Z;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->s()V

    .line 253
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/googlenav/friend/ac;->a:Lcom/google/googlenav/friend/ab;

    iget-object v0, v0, Lcom/google/googlenav/friend/ab;->a:Lcom/google/googlenav/ui/wizard/bn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/bn;->c(Z)V

    .line 258
    return-void
.end method
