.class public final Lapf;
.super Laoc;
.source "LinkedBindingImpl.java"

# interfaces
.implements LaqD;
.implements Laqr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laoc",
        "<TT;>;",
        "LaqD",
        "<TT;>;",
        "Laqr;"
    }
.end annotation


# instance fields
.field final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Lant;)V
    .registers 7
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
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Laoc;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;)V

    .line 38
    iput-object p6, p0, Lapf;->a:Lant;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lant;LapG;Lant;)V
    .registers 5
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
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Laoc;-><init>(Ljava/lang/Object;Lant;LapG;)V

    .line 43
    iput-object p4, p0, Lapf;->a:Lant;

    .line 44
    return-void
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
    .line 63
    new-instance v0, Lapf;

    invoke-virtual {p0}, Lapf;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lapf;->a()LapG;

    move-result-object v2

    iget-object v3, p0, Lapf;->a:Lant;

    invoke-direct {v0, v1, p1, v2, v3}, Lapf;-><init>(Ljava/lang/Object;Lant;LapG;Lant;)V

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
    .line 59
    new-instance v0, Lapf;

    invoke-virtual {p0}, Lapf;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lapf;->a()Lant;

    move-result-object v2

    iget-object v3, p0, Lapf;->a:Lant;

    invoke-direct {v0, v1, v2, p1, v3}, Lapf;-><init>(Ljava/lang/Object;Lant;LapG;Lant;)V

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
    .line 55
    iget-object v0, p0, Lapf;->a:Lant;

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

    .line 81
    instance-of v1, p1, Lapf;

    if-eqz v1, :cond_2e

    .line 82
    check-cast p1, Lapf;

    .line 83
    invoke-virtual {p0}, Lapf;->a()Lant;

    move-result-object v1

    invoke-virtual {p1}, Lapf;->a()Lant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lapf;->a()LapG;

    move-result-object v1

    invoke-virtual {p1}, Lapf;->a()LapG;

    move-result-object v2

    invoke-virtual {v1, v2}, LapG;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lapf;->a:Lant;

    iget-object v2, p1, Lapf;->a:Lant;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 87
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lapf;->a()Lant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lapf;->a()LapG;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lapf;->a:Lant;

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 71
    const-class v0, LaqD;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lapf;->a()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lapf;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lapf;->a()LapG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "target"

    iget-object v2, p0, Lapf;->a:Lant;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
