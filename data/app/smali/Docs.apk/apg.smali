.class final Lapg;
.super Laoc;
.source "LinkedProviderBindingImpl.java"

# interfaces
.implements Laow;
.implements LaqJ;
.implements Laqr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laoc",
        "<TT;>;",
        "Laow;",
        "LaqJ",
        "<TT;>;",
        "Laqr;"
    }
.end annotation


# instance fields
.field final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<+",
            "LasT",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final a:Laow;


# direct methods
.method private constructor <init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Lant;Laow;)V
    .registers 8
    .parameter
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
            "LapG;",
            "Lant",
            "<+",
            "LasT",
            "<+TT;>;>;",
            "Laow;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Laoc;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;)V

    .line 41
    iput-object p6, p0, Lapg;->a:Lant;

    .line 42
    iput-object p7, p0, Lapg;->a:Laow;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lant;LapG;Lant;)V
    .registers 6
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
            "Lant",
            "<+",
            "LasT",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Laoc;-><init>(Ljava/lang/Object;Lant;LapG;)V

    .line 54
    iput-object p4, p0, Lapg;->a:Lant;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lapg;->a:Laow;

    .line 56
    return-void
.end method

.method static a(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Lant;Laow;)Lapg;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LaoP;",
            "Lant",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lapc",
            "<+TT;>;",
            "LapG;",
            "Lant",
            "<+",
            "LasT",
            "<+TT;>;>;",
            "Laow;",
            ")",
            "Lapg",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lapg;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lapg;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Lant;Laow;)V

    return-object v0
.end method


# virtual methods
.method public a(Lant;)Laoc;
    .registers 6
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
    .line 89
    new-instance v0, Lapg;

    invoke-virtual {p0}, Lapg;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lapg;->a()LapG;

    move-result-object v2

    iget-object v3, p0, Lapg;->a:Lant;

    invoke-direct {v0, v1, p1, v2, v3}, Lapg;-><init>(Ljava/lang/Object;Lant;LapG;Lant;)V

    return-object v0
.end method

.method public a(LapG;)Laoc;
    .registers 6
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
    .line 85
    new-instance v0, Lapg;

    invoke-virtual {p0}, Lapg;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lapg;->a()Lant;

    move-result-object v2

    iget-object v3, p0, Lapg;->a:Lant;

    invoke-direct {v0, v1, v2, p1, v3}, Lapg;-><init>(Ljava/lang/Object;Lant;LapG;Lant;)V

    return-object v0
.end method

.method public a(LaoP;Laoy;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lapg;->a:Laow;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lapg;->a:Laow;

    invoke-interface {v0, p1, p2}, Laow;->a(LaoP;Laoy;)V

    .line 78
    :cond_9
    return-void
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
    .line 81
    iget-object v0, p0, Lapg;->a:Lant;

    invoke-static {v0}, Laqk;->a(Lant;)Laqk;

    move-result-object v0

    invoke-static {v0}, LaiE;->a(Ljava/lang/Object;)LaiE;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 108
    instance-of v1, p1, Lapg;

    if-eqz v1, :cond_2e

    .line 109
    check-cast p1, Lapg;

    .line 110
    invoke-virtual {p0}, Lapg;->a()Lant;

    move-result-object v1

    invoke-virtual {p1}, Lapg;->a()Lant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lapg;->a()LapG;

    move-result-object v1

    invoke-virtual {p1}, Lapg;->a()LapG;

    move-result-object v2

    invoke-virtual {v1, v2}, LapG;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lapg;->a:Lant;

    iget-object v2, p1, Lapg;->a:Lant;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 114
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lapg;->a()Lant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lapg;->a()LapG;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lapg;->a:Lant;

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 98
    const-class v0, LaqJ;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lapg;->a()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lapg;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lapg;->a()LapG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lapg;->a:Lant;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
