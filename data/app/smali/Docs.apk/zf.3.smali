.class Lzf;
.super LyQ;
.source "SectionChildFactory.java"


# instance fields
.field final synthetic a:LwH;

.field final synthetic a:Lyg;

.field final synthetic a:Lzd;


# direct methods
.method constructor <init>(Lzd;ILjava/lang/Class;Lyg;LwH;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lzf;->a:Lzd;

    iput-object p4, p0, Lzf;->a:Lyg;

    iput-object p5, p0, Lzf;->a:LwH;

    invoke-direct {p0, p2, p3}, LyQ;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(LBH;LBV;)Lzr;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBH",
            "<",
            "Lzr;",
            ">;",
            "LBV",
            "<",
            "Lzr;",
            ">;)",
            "Lzr;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lzf;->a:Lzd;

    invoke-static {v0}, Lzd;->a(Lzd;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lzf;->a:Lzd;

    invoke-static {v0}, Lzd;->a(Lzd;)LvI;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lzf;->a:Lzd;

    invoke-static {v0}, Lzd;->a(Lzd;)LvI;

    move-result-object v0

    invoke-interface {v0}, LvI;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 67
    const-string v0, "SectionChildFactory"

    const-string v1, "New table"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lzz;

    iget-object v3, p0, Lzf;->a:Lyg;

    iget-object v4, p0, Lzf;->a:LwH;

    iget-object v1, p0, Lzf;->a:Lzd;

    invoke-static {v1}, Lzd;->a(Lzd;)Lxp;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lzz;-><init>(LBH;LBV;Lyg;LwH;Lxp;)V

    .line 71
    :goto_34
    return-object v0

    .line 70
    :cond_35
    const-string v0, "SectionChildFactory"

    const-string v1, "New unsupported table"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, LzD;

    iget-object v3, p0, Lzf;->a:Lyg;

    iget-object v4, p0, Lzf;->a:LwH;

    iget-object v1, p0, Lzf;->a:Lzd;

    invoke-static {v1}, Lzd;->a(Lzd;)Lxp;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LzD;-><init>(LBH;LBV;Lyg;LwH;Lxp;)V

    goto :goto_34
.end method
