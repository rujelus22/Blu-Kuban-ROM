.class LaM/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/friend/n;


# instance fields
.field final synthetic a:LaM/S;


# direct methods
.method constructor <init>(LaM/S;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, LaM/U;->a:LaM/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/aK;)Z
    .registers 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->a()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, LaM/U;->a:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->au()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b(Lcom/google/googlenav/friend/aK;)Z
    .registers 4
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, LaM/U;->a:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->a()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/X;->a(Lat/g;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/googlenav/friend/aK;)Z
    .registers 4
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, LaM/U;->a:LaM/S;

    invoke-static {v0}, LaM/S;->a(LaM/S;)LaM/X;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->a()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/X;->d(Lcom/google/googlenav/ai;)Z

    move-result v0

    return v0
.end method
