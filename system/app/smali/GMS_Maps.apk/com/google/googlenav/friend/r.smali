.class final Lcom/google/googlenav/friend/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aY;


# direct methods
.method constructor <init>(Lcom/google/googlenav/aY;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/googlenav/friend/r;->a:Lcom/google/googlenav/aY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aW;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/friend/p;->a(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/googlenav/friend/r;->a:Lcom/google/googlenav/aY;

    if-eqz v0, :cond_d

    .line 258
    iget-object v0, p0, Lcom/google/googlenav/friend/r;->a:Lcom/google/googlenav/aY;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/aW;Z)V

    .line 260
    :cond_d
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/friend/p;->a(Z)V

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/friend/r;->a:Lcom/google/googlenav/aY;

    if-eqz v0, :cond_d

    .line 270
    iget-object v0, p0, Lcom/google/googlenav/friend/r;->a:Lcom/google/googlenav/aY;

    invoke-interface {v0, p1}, Lcom/google/googlenav/aY;->b(Lcom/google/googlenav/aW;)V

    .line 272
    :cond_d
    return-void
.end method
