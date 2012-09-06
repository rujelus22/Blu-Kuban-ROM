.class final Lapt;
.super Laoc;
.source "ProviderInstanceBindingImpl.java"

# interfaces
.implements LaqI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laoc",
        "<TT;>;",
        "LaqI",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<",
            "Laqt;",
            ">;"
        }
    .end annotation
.end field

.field final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;LanD;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lant",
            "<TT;>;",
            "LapG;",
            "Ljava/util/Set",
            "<",
            "Laqt;",
            ">;",
            "LanD",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Laoc;-><init>(Ljava/lang/Object;Lant;LapG;)V

    .line 51
    invoke-static {p4}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v0

    iput-object v0, p0, Lapt;->a:LaiE;

    .line 52
    iput-object p5, p0, Lapt;->a:LanD;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lant;)Laoc;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<TT;>;)",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lapt;

    invoke-virtual {p0}, Lapt;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lapt;->a()LapG;

    move-result-object v3

    iget-object v4, p0, Lapt;->a:LaiE;

    iget-object v5, p0, Lapt;->a:LanD;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lapt;-><init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;LanD;)V

    return-object v0
.end method

.method public a(LapG;)Laoc;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LapG;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lapt;

    invoke-virtual {p0}, Lapt;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lapt;->a()Lant;

    move-result-object v2

    iget-object v4, p0, Lapt;->a:LaiE;

    iget-object v5, p0, Lapt;->a:LanD;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lapt;-><init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;LanD;)V

    return-object v0
.end method

.method public b()LanD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanD",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lapt;->a:LanD;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lapt;->a:LanD;

    instance-of v0, v0, Laqr;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lapt;->a:LanD;

    check-cast v0, Laqr;

    invoke-interface {v0}, Laqr;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lapt;->a:LaiE;

    invoke-static {v0}, Laqk;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    instance-of v1, p1, Lapt;

    if-eqz v1, :cond_2e

    .line 107
    check-cast p1, Lapt;

    .line 108
    invoke-virtual {p0}, Lapt;->a()Lant;

    move-result-object v1

    invoke-virtual {p1}, Lapt;->a()Lant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lapt;->a()LapG;

    move-result-object v1

    invoke-virtual {p1}, Lapt;->a()LapG;

    move-result-object v2

    invoke-virtual {v1, v2}, LapG;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lapt;->a:LanD;

    iget-object v2, p1, Lapt;->a:LanD;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 112
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lapt;->a()Lant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lapt;->a()LapG;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 96
    const-class v0, LaqI;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lapt;->a()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lapt;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lapt;->a()LapG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lapt;->a:LanD;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
