.class final Lcom/google/common/cache/o;
.super Lcom/google/common/cache/m;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/cache/x;

.field b:Lcom/google/common/cache/x;

.field final synthetic c:Lcom/google/common/cache/n;


# direct methods
.method constructor <init>(Lcom/google/common/cache/n;)V
    .registers 2
    .parameter

    .prologue
    .line 3760
    iput-object p1, p0, Lcom/google/common/cache/o;->c:Lcom/google/common/cache/n;

    invoke-direct {p0}, Lcom/google/common/cache/m;-><init>()V

    .line 3770
    iput-object p0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/x;

    .line 3782
    iput-object p0, p0, Lcom/google/common/cache/o;->b:Lcom/google/common/cache/x;

    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .registers 3

    .prologue
    .line 3764
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 3786
    iget-object v0, p0, Lcom/google/common/cache/o;->b:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final setAccessTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 3768
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 3779
    iput-object p1, p0, Lcom/google/common/cache/o;->a:Lcom/google/common/cache/x;

    .line 3780
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 3791
    iput-object p1, p0, Lcom/google/common/cache/o;->b:Lcom/google/common/cache/x;

    .line 3792
    return-void
.end method
