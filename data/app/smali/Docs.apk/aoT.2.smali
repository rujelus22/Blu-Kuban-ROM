.class LaoT;
.super Laoc;
.source "InjectorImpl.java"

# interfaces
.implements Laqg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laoc",
        "<TT;>;",
        "Laqg",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<TT;>;"
        }
    .end annotation
.end field

.field final a:Lang;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lang",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final a:LaqT;

.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LaoP;Lant;Ljava/lang/Object;Lang;LaqT;)V
    .registers 12
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
            "<TT;>;TT;",
            "Lang",
            "<",
            "Ljava/lang/String;",
            ">;",
            "LaqT;",
            ")V"
        }
    .end annotation

    .prologue
    .line 470
    invoke-interface {p4}, Lang;->a()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Laon;

    invoke-static {p3}, LaoL;->a(Ljava/lang/Object;)LaoK;

    move-result-object v0

    invoke-direct {v4, v0}, Laon;-><init>(LaoK;)V

    sget-object v5, LapG;->a:LapG;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Laoc;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;)V

    .line 472
    iput-object p3, p0, LaoT;->a:Ljava/lang/Object;

    .line 473
    invoke-static {p3}, LaqX;->a(Ljava/lang/Object;)LanD;

    move-result-object v0

    iput-object v0, p0, LaoT;->a:LanD;

    .line 474
    iput-object p4, p0, LaoT;->a:Lang;

    .line 475
    iput-object p5, p0, LaoT;->a:LaqT;

    .line 476
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
    .line 479
    iget-object v0, p0, LaoT;->a:LanD;

    return-object v0
.end method

.method public b()Lant;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lant",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, LaoT;->a:Lang;

    invoke-interface {v0}, Lang;->a()Lant;

    move-result-object v0

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
    .line 499
    invoke-virtual {p0}, LaoT;->b()Lant;

    move-result-object v0

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

    .line 516
    instance-of v1, p1, LaoT;

    if-eqz v1, :cond_2e

    .line 517
    check-cast p1, LaoT;

    .line 518
    invoke-virtual {p0}, LaoT;->a()Lant;

    move-result-object v1

    invoke-virtual {p1}, LaoT;->a()Lant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, LaoT;->a()LapG;

    move-result-object v1

    invoke-virtual {p1}, LaoT;->a()LapG;

    move-result-object v2

    invoke-virtual {v1, v2}, LapG;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, LaoT;->a:Ljava/lang/Object;

    iget-object v2, p1, LaoT;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 522
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 528
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, LaoT;->a()Lant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, LaoT;->a()LapG;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, LaoT;->a:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 507
    const-class v0, Laqg;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, LaoT;->a()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "sourceKey"

    invoke-virtual {p0}, LaoT;->b()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "value"

    iget-object v2, p0, LaoT;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
