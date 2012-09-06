.class Lagz;
.super Lagx;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagx",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic a:Lagy;

.field b:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lagy;)V
    .registers 2
    .parameter

    .prologue
    .line 3760
    iput-object p1, p0, Lagz;->a:Lagy;

    invoke-direct {p0}, Lagx;-><init>()V

    .line 3770
    iput-object p0, p0, Lagz;->a:LagU;

    .line 3782
    iput-object p0, p0, Lagz;->b:LagU;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 3764
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 3768
    return-void
.end method

.method public a(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3779
    iput-object p1, p0, Lagz;->a:LagU;

    .line 3780
    return-void
.end method

.method public b()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3774
    iget-object v0, p0, Lagz;->a:LagU;

    return-object v0
.end method

.method public b(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3791
    iput-object p1, p0, Lagz;->b:LagU;

    .line 3792
    return-void
.end method

.method public c()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3786
    iget-object v0, p0, Lagz;->b:LagU;

    return-object v0
.end method
