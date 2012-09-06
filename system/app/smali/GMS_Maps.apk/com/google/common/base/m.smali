.class final Lcom/google/common/base/m;
.super Lcom/google/common/base/b;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 322
    invoke-static {p2, v0}, Lcom/google/common/base/P;->b(II)I

    .line 323
    const/4 v0, -0x1

    return v0
.end method

.method public a()Lcom/google/common/base/b;
    .registers 1

    .prologue
    .line 382
    return-object p0
.end method

.method public a(Lcom/google/common/base/b;)Lcom/google/common/base/b;
    .registers 3
    .parameter

    .prologue
    .line 372
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    return-object v0
.end method

.method a(Lcom/google/common/base/o;)V
    .registers 2
    .parameter

    .prologue
    .line 379
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 310
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method
