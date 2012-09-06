.class final Lcom/google/common/base/d;
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
    .line 461
    iput-char p1, p0, Lcom/google/common/base/d;->p:C

    iput-char p2, p0, Lcom/google/common/base/d;->q:C

    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/base/b;
    .registers 1

    .prologue
    .line 472
    return-object p0
.end method

.method a(Lcom/google/common/base/o;)V
    .registers 3
    .parameter

    .prologue
    .line 467
    iget-char v0, p0, Lcom/google/common/base/d;->p:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/o;->a(C)V

    .line 468
    iget-char v0, p0, Lcom/google/common/base/d;->q:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/o;->a(C)V

    .line 469
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 461
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 463
    iget-char v0, p0, Lcom/google/common/base/d;->p:C

    if-eq p1, v0, :cond_8

    iget-char v0, p0, Lcom/google/common/base/d;->q:C

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
