.class Lcom/google/googlenav/friend/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/iF;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/t;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/t;)V
    .registers 2
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/google/googlenav/friend/C;->a:Lcom/google/googlenav/friend/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/googlenav/friend/C;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->bG()V

    .line 672
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 664
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/friend/C;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->e(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/friend/p;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;J)V

    .line 666
    :cond_18
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/googlenav/friend/C;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->Z()V

    .line 677
    return-void
.end method
