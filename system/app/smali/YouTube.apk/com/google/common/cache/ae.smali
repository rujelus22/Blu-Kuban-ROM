.class final Lcom/google/common/cache/ae;
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


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/x;)V
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1211
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/ac;-><init>(Ljava/lang/Object;ILcom/google/common/cache/x;)V

    .line 1216
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/ae;->a:J

    .line 1228
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ae;->b:Lcom/google/common/cache/x;

    .line 1241
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ae;->c:Lcom/google/common/cache/x;

    .line 1212
    return-void
.end method


# virtual methods
.method public final getNextInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/common/cache/ae;->b:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/google/common/cache/ae;->c:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getWriteTime()J
    .registers 3

    .prologue
    .line 1220
    iget-wide v0, p0, Lcom/google/common/cache/ae;->a:J

    return-wide v0
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/google/common/cache/ae;->b:Lcom/google/common/cache/x;

    .line 1239
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/google/common/cache/ae;->c:Lcom/google/common/cache/x;

    .line 1252
    return-void
.end method

.method public final setWriteTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1225
    iput-wide p1, p0, Lcom/google/common/cache/ae;->a:J

    .line 1226
    return-void
.end method
