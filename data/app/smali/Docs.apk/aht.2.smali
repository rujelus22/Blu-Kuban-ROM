.class Laht;
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

.field final synthetic a:Lahs;

.field b:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lahs;)V
    .registers 2
    .parameter

    .prologue
    .line 3623
    iput-object p1, p0, Laht;->a:Lahs;

    invoke-direct {p0}, Lagx;-><init>()V

    .line 3633
    iput-object p0, p0, Laht;->a:LagU;

    .line 3645
    iput-object p0, p0, Laht;->b:LagU;

    return-void
.end method


# virtual methods
.method public b()J
    .registers 3

    .prologue
    .line 3627
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 3631
    return-void
.end method

.method public c(LagU;)V
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
    .line 3642
    iput-object p1, p0, Laht;->a:LagU;

    .line 3643
    return-void
.end method

.method public d()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3637
    iget-object v0, p0, Laht;->a:LagU;

    return-object v0
.end method

.method public d(LagU;)V
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
    .line 3654
    iput-object p1, p0, Laht;->b:LagU;

    .line 3655
    return-void
.end method

.method public e()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3649
    iget-object v0, p0, Laht;->b:LagU;

    return-object v0
.end method
