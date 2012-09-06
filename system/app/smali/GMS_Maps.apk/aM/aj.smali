.class public LaM/aj;
.super LaM/aY;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, LaM/aY;-><init>(LaM/i;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/view/d;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, LaM/aj;->c:LaM/i;

    check-cast v0, LaM/ak;

    invoke-virtual {v0}, LaM/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0}, LaM/aY;->a()Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
