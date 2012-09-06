.class final Lcom/google/common/cache/am;
.super Lcom/google/common/cache/ak;
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


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/x;)V
    .registers 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1500
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/ak;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/x;)V

    .line 1505
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/am;->a:J

    .line 1517
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/am;->b:Lcom/google/common/cache/x;

    .line 1530
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/am;->c:Lcom/google/common/cache/x;

    .line 1501
    return-void
.end method


# virtual methods
.method public final getNextInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/google/common/cache/am;->b:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/google/common/cache/am;->c:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getWriteTime()J
    .registers 3

    .prologue
    .line 1509
    iget-wide v0, p0, Lcom/google/common/cache/am;->a:J

    return-wide v0
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/google/common/cache/am;->b:Lcom/google/common/cache/x;

    .line 1528
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/google/common/cache/am;->c:Lcom/google/common/cache/x;

    .line 1541
    return-void
.end method

.method public final setWriteTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1514
    iput-wide p1, p0, Lcom/google/common/cache/am;->a:J

    .line 1515
    return-void
.end method
