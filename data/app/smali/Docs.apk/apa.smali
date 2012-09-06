.class final Lapa;
.super Laoc;
.source "InstanceBindingImpl.java"

# interfaces
.implements LaqC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laoc",
        "<TT;>;",
        "LaqC",
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
            "<TT;>;"
        }
    .end annotation
.end field

.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LaoP;Lant;Ljava/lang/Object;Lapc;Ljava/util/Set;Ljava/lang/Object;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaoP;",
            "Lant",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lapc",
            "<+TT;>;",
            "Ljava/util/Set",
            "<",
            "Laqt;",
            ">;TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v5, LapG;->d:LapG;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Laoc;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;)V

    .line 43
    invoke-static {p5}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v0

    iput-object v0, p0, Lapa;->a:LaiE;

    .line 44
    iput-object p6, p0, Lapa;->a:Ljava/lang/Object;

    .line 45
    invoke-static {p6}, LaqX;->a(Ljava/lang/Object;)LanD;

    move-result-object v0

    iput-object v0, p0, Lapa;->a:LanD;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;Ljava/lang/Object;)V
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
            ">;TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Laoc;-><init>(Ljava/lang/Object;Lant;LapG;)V

    .line 51
    invoke-static {p4}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v0

    iput-object v0, p0, Lapa;->a:LaiE;

    .line 52
    iput-object p5, p0, Lapa;->a:Ljava/lang/Object;

    .line 53
    invoke-static {p5}, LaqX;->a(Ljava/lang/Object;)LanD;

    move-result-object v0

    iput-object v0, p0, Lapa;->a:LanD;

    .line 54
    return-void
.end method


# virtual methods
.method public a()LanD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lapa;->a:LanD;

    return-object v0
.end method

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
    .line 83
    new-instance v0, Lapa;

    invoke-virtual {p0}, Lapa;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lapa;->a()LapG;

    move-result-object v3

    iget-object v4, p0, Lapa;->a:LaiE;

    iget-object v5, p0, Lapa;->a:Ljava/lang/Object;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lapa;-><init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;Ljava/lang/Object;)V

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
    .line 79
    new-instance v0, Lapa;

    invoke-virtual {p0}, Lapa;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lapa;->a()Lant;

    move-result-object v2

    iget-object v4, p0, Lapa;->a:LaiE;

    iget-object v5, p0, Lapa;->a:Ljava/lang/Object;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lapa;-><init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lapa;->a:Ljava/lang/Object;

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
    .line 73
    iget-object v0, p0, Lapa;->a:Ljava/lang/Object;

    instance-of v0, v0, Laqr;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lapa;->a:Ljava/lang/Object;

    check-cast v0, Laqr;

    invoke-interface {v0}, Laqr;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lapa;->a:LaiE;

    invoke-static {v0}, Laqk;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 101
    instance-of v1, p1, Lapa;

    if-eqz v1, :cond_2e

    .line 102
    check-cast p1, Lapa;

    .line 103
    invoke-virtual {p0}, Lapa;->a()Lant;

    move-result-object v1

    invoke-virtual {p1}, Lapa;->a()Lant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lapa;->a()LapG;

    move-result-object v1

    invoke-virtual {p1}, Lapa;->a()LapG;

    move-result-object v2

    invoke-virtual {v1, v2}, LapG;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lapa;->a:Ljava/lang/Object;

    iget-object v2, p1, Lapa;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 107
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lapa;->a()Lant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lapa;->a()LapG;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 92
    const-class v0, LaqC;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lapa;->a()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lapa;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "instance"

    iget-object v2, p0, Lapa;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
