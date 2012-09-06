.class final Lcom/google/common/collect/Count;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private value:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Count;-><init>(I)V

    .line 34
    return-void
.end method

.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 38
    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .registers 3
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 71
    instance-of v0, p1, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/common/collect/Count;

    iget v0, p1, Lcom/google/common/collect/Count;->value:I

    iget v1, p0, Lcom/google/common/collect/Count;->value:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final get()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final getAndAdd(I)I
    .registers 4
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 46
    add-int v1, v0, p1

    iput v1, p0, Lcom/google/common/collect/Count;->value:I

    .line 47
    return v0
.end method

.method public final getAndSet(I)I
    .registers 3
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 60
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 61
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public final set(I)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 56
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
