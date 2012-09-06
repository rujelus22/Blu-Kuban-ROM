.class LaoW;
.super Laoc;
.source "InjectorImpl.java"

# interfaces
.implements LaqH;
.implements Laqr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laoc",
        "<",
        "LanD",
        "<TT;>;>;",
        "LaqH",
        "<",
        "LanD",
        "<TT;>;>;",
        "Laqr;"
    }
.end annotation


# instance fields
.field final a:Laoc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laoc",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LaoP;Lant;Lang;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaoP;",
            "Lant",
            "<",
            "LanD",
            "<TT;>;>;",
            "Lang",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    invoke-interface {p3}, Lang;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3}, LaoW;->a(Lang;)Lapc;

    move-result-object v4

    sget-object v5, LapG;->a:LapG;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Laoc;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;)V

    .line 355
    check-cast p3, Laoc;

    iput-object p3, p0, LaoW;->a:Laoc;

    .line 356
    return-void
.end method

.method static a(Lang;)Lapc;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lang",
            "<TT;>;)",
            "Lapc",
            "<",
            "LanD",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-interface {p0}, Lang;->a()LanD;

    move-result-object v0

    .line 360
    new-instance v1, LaoX;

    invoke-direct {v1, v0}, LaoX;-><init>(LanD;)V

    return-object v1
.end method


# virtual methods
.method public b()Lant;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lant",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, LaoW;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Lant;

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
    .line 387
    invoke-virtual {p0}, LaoW;->b()Lant;

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

    .line 392
    instance-of v1, p1, LaoW;

    if-eqz v1, :cond_2e

    .line 393
    check-cast p1, LaoW;

    .line 394
    invoke-virtual {p0}, LaoW;->a()Lant;

    move-result-object v1

    invoke-virtual {p1}, LaoW;->a()Lant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, LaoW;->a()LapG;

    move-result-object v1

    invoke-virtual {p1}, LaoW;->a()LapG;

    move-result-object v2

    invoke-virtual {v1, v2}, LapG;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, LaoW;->a:Laoc;

    iget-object v2, p1, LaoW;->a:Laoc;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 398
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 404
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, LaoW;->a()Lant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, LaoW;->a()LapG;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, LaoW;->a:Laoc;

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 380
    const-class v0, LaqH;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, LaoW;->a()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "providedKey"

    invoke-virtual {p0}, LaoW;->b()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
