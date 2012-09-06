.class Lcom/google/googlenav/bF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cG;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bE;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/googlenav/bF;->a:Lcom/google/googlenav/bE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 210
    const-string v0, "a"

    const-string v1, "f"

    invoke-static {v0, v1}, Lcom/google/googlenav/bC;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bF;->a:Lcom/google/googlenav/bE;

    invoke-static {v1}, Lcom/google/googlenav/bE;->a(Lcom/google/googlenav/bE;)Lcom/google/googlenav/friend/bk;

    move-result-object v1

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 214
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 198
    const-string v0, "a"

    const-string v1, "s"

    invoke-static {v0, v1}, Lcom/google/googlenav/bC;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/google/googlenav/bF;->a:Lcom/google/googlenav/bE;

    iget-object v0, v0, Lcom/google/googlenav/bE;->a:Lcom/google/googlenav/bC;

    invoke-static {v0}, Lcom/google/googlenav/bC;->b(Lcom/google/googlenav/bC;)V

    .line 203
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 221
    const-string v0, "a"

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/google/googlenav/bC;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bF;->a:Lcom/google/googlenav/bE;

    invoke-static {v1}, Lcom/google/googlenav/bE;->b(Lcom/google/googlenav/bE;)Lcom/google/googlenav/friend/bk;

    move-result-object v1

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 225
    return-void
.end method
