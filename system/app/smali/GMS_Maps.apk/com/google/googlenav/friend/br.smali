.class final Lcom/google/googlenav/friend/br;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/be;


# direct methods
.method constructor <init>(LY/c;Lcom/google/googlenav/friend/be;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p2, p0, Lcom/google/googlenav/friend/br;->a:Lcom/google/googlenav/friend/be;

    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 539
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 540
    iget-object v0, p0, Lcom/google/googlenav/friend/br;->a:Lcom/google/googlenav/friend/be;

    if-eqz v0, :cond_14

    .line 541
    iget-object v0, p0, Lcom/google/googlenav/friend/br;->a:Lcom/google/googlenav/friend/be;

    invoke-interface {v0}, Lcom/google/googlenav/friend/be;->a()V

    .line 543
    :cond_14
    return-void
.end method
