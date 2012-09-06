.class public final LaeK;
.super LacS;
.source "Discussions.java"


# direct methods
.method constructor <init>(Lado;LadN;LacZ;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1740
    invoke-direct {p0, p1, p2, p3}, LacS;-><init>(Lado;LadN;LacZ;)V

    .line 1741
    return-void
.end method


# virtual methods
.method public bridge synthetic a(LacZ;)LadF;
    .registers 3
    .parameter

    .prologue
    .line 1729
    invoke-virtual {p0, p1}, LaeK;->a(LacZ;)LaeK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(LadJ;)LadF;
    .registers 3
    .parameter

    .prologue
    .line 1729
    invoke-virtual {p0, p1}, LaeK;->a(LadJ;)LaeK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)LadF;
    .registers 3
    .parameter

    .prologue
    .line 1729
    invoke-virtual {p0, p1}, LaeK;->a(Ljava/lang/String;)LaeK;

    move-result-object v0

    return-object v0
.end method

.method public a()LaeJ;
    .registers 10

    .prologue
    .line 1760
    invoke-virtual {p0}, LaeK;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1761
    new-instance v0, LaeJ;

    invoke-virtual {p0}, LaeK;->a()Lado;

    move-result-object v1

    invoke-virtual {p0}, LaeK;->a()LadJ;

    move-result-object v2

    invoke-virtual {p0}, LaeK;->a()Ladk;

    move-result-object v3

    invoke-virtual {p0}, LaeK;->a()LadN;

    move-result-object v4

    invoke-virtual {p0}, LaeK;->a()LadP;

    move-result-object v5

    invoke-virtual {p0}, LaeK;->a()LacZ;

    move-result-object v6

    invoke-virtual {v6}, LacZ;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, LaeK;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, LaeJ;-><init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, LaeJ;

    invoke-virtual {p0}, LaeK;->a()Lado;

    move-result-object v1

    invoke-virtual {p0}, LaeK;->a()LadJ;

    move-result-object v2

    invoke-virtual {p0}, LaeK;->a()Ladk;

    move-result-object v3

    invoke-virtual {p0}, LaeK;->a()LadN;

    move-result-object v4

    invoke-virtual {p0}, LaeK;->a()LadP;

    move-result-object v5

    invoke-virtual {p0}, LaeK;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, LaeK;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, LaeK;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, LaeJ;-><init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public a(LacZ;)LaeK;
    .registers 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1784
    invoke-super {p0, p1}, LacS;->a(LacZ;)LadF;

    .line 1785
    return-object p0
.end method

.method public a(LadJ;)LaeK;
    .registers 2
    .parameter

    .prologue
    .line 1803
    invoke-super {p0, p1}, LacS;->a(LadJ;)LadF;

    .line 1804
    return-object p0
.end method

.method public a(Ljava/lang/String;)LaeK;
    .registers 2
    .parameter

    .prologue
    .line 1815
    invoke-super {p0, p1}, LacS;->a(Ljava/lang/String;)LadF;

    .line 1816
    return-object p0
.end method
