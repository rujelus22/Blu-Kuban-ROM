.class final Lcom/google/common/base/f;
.super Lcom/google/common/base/b;
.source "SourceFile"


# instance fields
.field final synthetic p:C

.field final synthetic q:C


# direct methods
.method constructor <init>(CC)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 510
    iput-char p1, p0, Lcom/google/common/base/f;->p:C

    iput-char p2, p0, Lcom/google/common/base/f;->q:C

    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/base/b;
    .registers 1

    .prologue
    .line 526
    return-object p0
.end method

.method a(Lcom/google/common/base/o;)V
    .registers 5
    .parameter

    .prologue
    .line 516
    iget-char v0, p0, Lcom/google/common/base/f;->p:C

    .line 518
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/common/base/o;->a(C)V

    .line 519
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    iget-char v2, p0, Lcom/google/common/base/f;->q:C

    if-ne v0, v2, :cond_d

    .line 523
    return-void

    :cond_d
    move v0, v1

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 510
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 512
    iget-char v0, p0, Lcom/google/common/base/f;->p:C

    if-gt v0, p1, :cond_a

    iget-char v0, p0, Lcom/google/common/base/f;->q:C

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
