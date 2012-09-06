.class final Lcom/google/common/base/f;
.super Lcom/google/common/base/d;
.source "SourceFile"


# instance fields
.field final synthetic o:C

.field final synthetic p:C


# direct methods
.method constructor <init>(CC)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 449
    iput-char p1, p0, Lcom/google/common/base/f;->o:C

    iput-char p2, p0, Lcom/google/common/base/f;->p:C

    invoke-direct {p0}, Lcom/google/common/base/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/d;
    .registers 1

    .prologue
    .line 460
    return-object p0
.end method

.method final a(Lcom/google/common/base/q;)V
    .registers 3
    .parameter

    .prologue
    .line 455
    iget-char v0, p0, Lcom/google/common/base/f;->o:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/q;->a(C)V

    .line 456
    iget-char v0, p0, Lcom/google/common/base/f;->p:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/q;->a(C)V

    .line 457
    return-void
.end method

.method public final synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 449
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/d;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 451
    iget-char v0, p0, Lcom/google/common/base/f;->o:C

    if-eq p1, v0, :cond_8

    iget-char v0, p0, Lcom/google/common/base/f;->p:C

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
