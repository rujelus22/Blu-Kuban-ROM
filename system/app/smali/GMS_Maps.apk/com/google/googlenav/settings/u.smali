.class Lcom/google/googlenav/settings/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/aP;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/googlenav/settings/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/s;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/googlenav/settings/u;->b:Lcom/google/googlenav/settings/s;

    iput-boolean p2, p0, Lcom/google/googlenav/settings/u;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 218
    new-instance v0, Lcom/google/googlenav/settings/v;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/settings/v;-><init>(Lcom/google/googlenav/settings/u;LY/c;)V

    invoke-virtual {v0}, Lcom/google/googlenav/settings/v;->g()V

    .line 225
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/googlenav/settings/u;->b:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->a(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/B;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/settings/u;->a:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/B;->b(Z)V

    .line 230
    return-void
.end method
