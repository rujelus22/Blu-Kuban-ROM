.class final Lahd;
.super Lahe;
.source "LocalCache.java"

# interfaces
.implements LagU;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lahe",
        "<TK;TV;>;",
        "LagU",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field a:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:J

.field b:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILagU;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const-wide v1, 0x7fffffffffffffffL

    .line 1258
    invoke-direct {p0, p1, p2, p3}, Lahe;-><init>(Ljava/lang/Object;ILagU;)V

    .line 1263
    iput-wide v1, p0, Lahd;->a:J

    .line 1275
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahd;->a:LagU;

    .line 1288
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahd;->b:LagU;

    .line 1303
    iput-wide v1, p0, Lahd;->b:J

    .line 1315
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahd;->c:LagU;

    .line 1328
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    iput-object v0, p0, Lahd;->d:LagU;

    .line 1259
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 1267
    iget-wide v0, p0, Lahd;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1272
    iput-wide p1, p0, Lahd;->a:J

    .line 1273
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
    .line 1285
    iput-object p1, p0, Lahd;->a:LagU;

    .line 1286
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 1307
    iget-wide v0, p0, Lahd;->b:J

    return-wide v0
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
    .line 1280
    iget-object v0, p0, Lahd;->a:LagU;

    return-object v0
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 1312
    iput-wide p1, p0, Lahd;->b:J

    .line 1313
    return-void
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
    .line 1298
    iput-object p1, p0, Lahd;->b:LagU;

    .line 1299
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
    .line 1293
    iget-object v0, p0, Lahd;->b:LagU;

    return-object v0
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
    .line 1325
    iput-object p1, p0, Lahd;->c:LagU;

    .line 1326
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
    .line 1320
    iget-object v0, p0, Lahd;->c:LagU;

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
    .line 1338
    iput-object p1, p0, Lahd;->d:LagU;

    .line 1339
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
    .line 1333
    iget-object v0, p0, Lahd;->d:LagU;

    return-object v0
.end method
