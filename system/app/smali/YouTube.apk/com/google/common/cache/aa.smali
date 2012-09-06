.class final Lcom/google/common/cache/aa;
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
    .line 1164
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/ac;-><init>(Ljava/lang/Object;ILcom/google/common/cache/x;)V

    .line 1169
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/aa;->a:J

    .line 1181
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/aa;->b:Lcom/google/common/cache/x;

    .line 1194
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/aa;->c:Lcom/google/common/cache/x;

    .line 1165
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .registers 3

    .prologue
    .line 1173
    iget-wide v0, p0, Lcom/google/common/cache/aa;->a:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/common/cache/aa;->b:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/common/cache/aa;->c:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final setAccessTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1178
    iput-wide p1, p0, Lcom/google/common/cache/aa;->a:J

    .line 1179
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/google/common/cache/aa;->b:Lcom/google/common/cache/x;

    .line 1192
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/google/common/cache/aa;->c:Lcom/google/common/cache/x;

    .line 1205
    return-void
.end method
