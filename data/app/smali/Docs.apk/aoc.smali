.class public abstract Laoc;
.super Ljava/lang/Object;
.source "BindingImpl.java"

# interfaces
.implements Lang;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lang",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:LaoP;

.field private final a:LapG;

.field private final a:Lapc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapc",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;)V
    .registers 6
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
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Laoc;->a:LaoP;

    .line 41
    iput-object p2, p0, Laoc;->a:Lant;

    .line 42
    iput-object p3, p0, Laoc;->a:Ljava/lang/Object;

    .line 43
    iput-object p4, p0, Laoc;->a:Lapc;

    .line 44
    iput-object p5, p0, Laoc;->a:LapG;

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lant;LapG;)V
    .registers 5
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
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Laoc;->a:Lapc;

    .line 49
    iput-object v0, p0, Laoc;->a:LaoP;

    .line 50
    iput-object p1, p0, Laoc;->a:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Laoc;->a:Lant;

    .line 52
    iput-object p3, p0, Laoc;->a:LapG;

    .line 53
    return-void
.end method


# virtual methods
.method public a()LanD;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Laoc;->a:LanD;

    if-nez v0, :cond_1a

    .line 67
    iget-object v0, p0, Laoc;->a:LaoP;

    if-nez v0, :cond_10

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProvider() not supported for module bindings"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_10
    iget-object v0, p0, Laoc;->a:LaoP;

    iget-object v1, p0, Laoc;->a:Lant;

    invoke-virtual {v0, v1}, LaoP;->a(Lant;)LanD;

    move-result-object v0

    iput-object v0, p0, Laoc;->a:LanD;

    .line 73
    :cond_1a
    iget-object v0, p0, Laoc;->a:LanD;

    return-object v0
.end method

.method public a()Lant;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Laoc;->a:Lant;

    return-object v0
.end method

.method protected a(Lant;)Laoc;
    .registers 3
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
    .line 105
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected a(LapG;)Laoc;
    .registers 3
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
    .line 101
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a()LapG;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Laoc;->a:LapG;

    return-object v0
.end method

.method public a()Lapc;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lapc",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Laoc;->a:Lapc;

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Laoc;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Laqd;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Laqd",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Laoc;->a:LapG;

    invoke-virtual {v0, p1}, LapG;->a(Laqd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 89
    instance-of v0, p0, LaqC;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 109
    const-class v0, Lang;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Laoc;->a:Lant;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "scope"

    iget-object v2, p0, Laoc;->a:LapG;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "source"

    iget-object v2, p0, Laoc;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
