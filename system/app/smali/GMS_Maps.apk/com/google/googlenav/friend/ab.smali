.class Lcom/google/googlenav/friend/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final a:Lcom/google/googlenav/ui/wizard/bn;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/googlenav/friend/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/Z;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/googlenav/friend/ab;->c:Lcom/google/googlenav/friend/Z;

    iput-object p2, p0, Lcom/google/googlenav/friend/ab;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p0, p0, Lcom/google/googlenav/friend/ab;->a:Lcom/google/googlenav/ui/wizard/bn;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlenav/friend/ab;->c:Lcom/google/googlenav/friend/Z;

    iget-object v0, v0, Lcom/google/googlenav/friend/Z;->b:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v1, Lcom/google/googlenav/friend/ac;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/ac;-><init>(Lcom/google/googlenav/friend/ab;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/cs;)V

    .line 260
    return-void
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 278
    const/16 v0, 0x5b

    const-string v1, "gpo"

    const-string v2, "gr"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/ab;->c:Lcom/google/googlenav/friend/Z;

    iget-object v1, v1, Lcom/google/googlenav/friend/Z;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 282
    return-void
.end method

.method public c(Z)V
    .registers 5
    .parameter

    .prologue
    .line 267
    const/16 v0, 0x5b

    const-string v1, "gpo"

    const-string v2, "gc"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/ab;->c:Lcom/google/googlenav/friend/Z;

    iget-object v1, v1, Lcom/google/googlenav/friend/Z;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 271
    return-void
.end method
