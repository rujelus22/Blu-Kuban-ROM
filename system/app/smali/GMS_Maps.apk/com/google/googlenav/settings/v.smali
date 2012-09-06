.class Lcom/google/googlenav/settings/v;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/u;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/u;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/u;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/u;

    iget-object v0, v0, Lcom/google/googlenav/settings/u;->b:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->b(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/u;

    iget-boolean v1, v1, Lcom/google/googlenav/settings/u;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/reporting/s;->a(Z)V

    .line 222
    iget-object v0, p0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/u;

    iget-object v0, v0, Lcom/google/googlenav/settings/u;->b:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->a(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/u;

    iget-boolean v1, v1, Lcom/google/googlenav/settings/u;->a:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/B;->a(Z)V

    .line 223
    return-void
.end method
