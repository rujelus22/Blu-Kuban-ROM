.class final Lcom/google/common/base/e;
.super Lcom/google/common/base/b;
.source "SourceFile"


# instance fields
.field final synthetic p:[C


# direct methods
.method constructor <init>([C)V
    .registers 2
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/common/base/e;->p:[C

    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/base/o;)V
    .registers 6
    .parameter

    .prologue
    .line 486
    iget-object v1, p0, Lcom/google/common/base/e;->p:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-char v3, v1, v0

    .line 487
    invoke-virtual {p1, v3}, Lcom/google/common/base/o;->a(C)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 489
    :cond_e
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 480
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/common/base/e;->p:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
