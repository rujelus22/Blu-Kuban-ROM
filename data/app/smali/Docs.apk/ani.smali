.class public final Lani;
.super LanF;
.source "ConfigurationException.java"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "LaqF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, LanF;-><init>(Ljava/lang/Iterable;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lani;->a:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lani;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lani;->a:Ljava/lang/Object;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_7
    const-string v3, "Can\'t clobber existing partial value %s with %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lani;->a:Ljava/lang/Object;

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, LafQ;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lani;

    iget-object v1, p0, Lani;->a:LaiE;

    invoke-direct {v0, v1}, Lani;-><init>(Ljava/lang/Iterable;)V

    .line 56
    iput-object p1, v0, Lani;->a:Ljava/lang/Object;

    .line 57
    return-object v0

    :cond_1f
    move v0, v2

    .line 53
    goto :goto_7
.end method

.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lani;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "LaqF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lani;->a:LaiE;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    const-string v0, "Guice configuration errors"

    iget-object v1, p0, Lani;->a:LaiE;

    invoke-static {v0, v1}, Laoy;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
