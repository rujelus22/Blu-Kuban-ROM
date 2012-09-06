.class final Lcom/google/common/cache/ab;
.super Lcom/google/common/cache/ac;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/x;


# instance fields
.field volatile a:J

.field b:Lcom/google/common/cache/x;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field c:Lcom/google/common/cache/x;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile d:J

.field e:Lcom/google/common/cache/x;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field f:Lcom/google/common/cache/x;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/x;)V
    .registers 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const-wide v1, 0x7fffffffffffffffL

    .line 1258
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/ac;-><init>(Ljava/lang/Object;ILcom/google/common/cache/x;)V

    .line 1263
    iput-wide v1, p0, Lcom/google/common/cache/ab;->a:J

    .line 1275
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ab;->b:Lcom/google/common/cache/x;

    .line 1288
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ab;->c:Lcom/google/common/cache/x;

    .line 1303
    iput-wide v1, p0, Lcom/google/common/cache/ab;->d:J

    .line 1315
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ab;->e:Lcom/google/common/cache/x;

    .line 1328
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ab;->f:Lcom/google/common/cache/x;

    .line 1259
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .registers 3

    .prologue
    .line 1267
    iget-wide v0, p0, Lcom/google/common/cache/ab;->a:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/common/cache/ab;->b:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getNextInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/google/common/cache/ab;->e:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/common/cache/ab;->c:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/common/cache/ab;->f:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getWriteTime()J
    .registers 3

    .prologue
    .line 1307
    iget-wide v0, p0, Lcom/google/common/cache/ab;->d:J

    return-wide v0
.end method

.method public final setAccessTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1272
    iput-wide p1, p0, Lcom/google/common/cache/ab;->a:J

    .line 1273
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/google/common/cache/ab;->b:Lcom/google/common/cache/x;

    .line 1286
    return-void
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/google/common/cache/ab;->e:Lcom/google/common/cache/x;

    .line 1326
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/google/common/cache/ab;->c:Lcom/google/common/cache/x;

    .line 1299
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/google/common/cache/ab;->f:Lcom/google/common/cache/x;

    .line 1339
    return-void
.end method

.method public final setWriteTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1312
    iput-wide p1, p0, Lcom/google/common/cache/ab;->d:J

    .line 1313
    return-void
.end method
