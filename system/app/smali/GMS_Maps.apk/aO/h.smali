.class public LaO/h;
.super LaO/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, LaO/a;-><init>(LaM/i;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(ZBI)C
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LaO/h;->a:LaM/i;

    move-object v1, v0

    check-cast v1, LaM/aT;

    .line 25
    invoke-virtual {v1}, LaM/aT;->ax()Z

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {v1}, LaM/aT;->bh()I

    move-result v3

    invoke-virtual {p0, p3}, LaO/h;->a(I)Z

    move-result v5

    move v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/aN;->a(ZZIIIZ)C

    move-result v0

    return v0
.end method
