.class Lcom/google/common/collect/aG;
.super Lcom/google/common/collect/aD;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# instance fields
.field volatile e:J

.field f:Lcom/google/common/collect/au;

.field g:Lcom/google/common/collect/au;

.field h:Lcom/google/common/collect/au;

.field i:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1274
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/aD;-><init>(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)V

    .line 1279
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/aG;->e:J

    .line 1289
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aG;->f:Lcom/google/common/collect/au;

    .line 1300
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aG;->g:Lcom/google/common/collect/au;

    .line 1313
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aG;->h:Lcom/google/common/collect/au;

    .line 1324
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aG;->i:Lcom/google/common/collect/au;

    .line 1275
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 1286
    iput-wide p1, p0, Lcom/google/common/collect/aG;->e:J

    .line 1287
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/google/common/collect/aG;->f:Lcom/google/common/collect/au;

    .line 1298
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/google/common/collect/aG;->g:Lcom/google/common/collect/au;

    .line 1309
    return-void
.end method

.method public c(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/google/common/collect/aG;->h:Lcom/google/common/collect/au;

    .line 1322
    return-void
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/google/common/collect/aG;->i:Lcom/google/common/collect/au;

    .line 1333
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 1282
    iget-wide v0, p0, Lcom/google/common/collect/aG;->e:J

    return-wide v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/common/collect/aG;->f:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/common/collect/aG;->g:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/common/collect/aG;->h:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/google/common/collect/aG;->i:Lcom/google/common/collect/au;

    return-object v0
.end method
