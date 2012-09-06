.class LajU;
.super LajA;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LajA",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LajT;

.field a:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LajT;)V
    .registers 2
    .parameter

    .prologue
    .line 3285
    iput-object p1, p0, LajU;->a:LajT;

    invoke-direct {p0}, LajA;-><init>()V

    .line 3295
    iput-object p0, p0, LajU;->a:Laka;

    .line 3307
    iput-object p0, p0, LajU;->b:Laka;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 3289
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 3293
    return-void
.end method

.method public a(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3304
    iput-object p1, p0, LajU;->a:Laka;

    .line 3305
    return-void
.end method

.method public b()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3299
    iget-object v0, p0, LajU;->a:Laka;

    return-object v0
.end method

.method public b(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3316
    iput-object p1, p0, LajU;->b:Laka;

    .line 3317
    return-void
.end method

.method public c()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3311
    iget-object v0, p0, LajU;->b:Laka;

    return-object v0
.end method
