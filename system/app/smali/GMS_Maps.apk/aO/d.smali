.class public LaO/d;
.super LaO/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, LaO/a;-><init>(LaM/i;)V

    .line 23
    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 5
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LaO/d;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()B

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 30
    :cond_18
    const/4 v0, 0x0

    .line 33
    :goto_19
    return-object v0

    :cond_1a
    iget-object v1, p0, LaO/d;->b:Lcom/google/googlenav/ui/bn;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()B

    move-result v0

    invoke-virtual {p0, p1}, LaO/d;->a(I)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/bn;->a(BZ)Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_19
.end method
