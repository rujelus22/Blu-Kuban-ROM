.class final Lcom/google/common/cache/ar;
.super Lcom/google/common/cache/m;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/cache/x;

.field b:Lcom/google/common/cache/x;

.field final synthetic c:Lcom/google/common/cache/aq;


# direct methods
.method constructor <init>(Lcom/google/common/cache/aq;)V
    .registers 2
    .parameter

    .prologue
    .line 3623
    iput-object p1, p0, Lcom/google/common/cache/ar;->c:Lcom/google/common/cache/aq;

    invoke-direct {p0}, Lcom/google/common/cache/m;-><init>()V

    .line 3633
    iput-object p0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/x;

    .line 3645
    iput-object p0, p0, Lcom/google/common/cache/ar;->b:Lcom/google/common/cache/x;

    return-void
.end method


# virtual methods
.method public final getNextInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/google/common/cache/ar;->b:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getWriteTime()J
    .registers 3

    .prologue
    .line 3627
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 3642
    iput-object p1, p0, Lcom/google/common/cache/ar;->a:Lcom/google/common/cache/x;

    .line 3643
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 3654
    iput-object p1, p0, Lcom/google/common/cache/ar;->b:Lcom/google/common/cache/x;

    .line 3655
    return-void
.end method

.method public final setWriteTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 3631
    return-void
.end method
