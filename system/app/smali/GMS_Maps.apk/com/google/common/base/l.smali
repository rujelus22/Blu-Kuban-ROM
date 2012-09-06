.class final Lcom/google/common/base/l;
.super Lcom/google/common/base/b;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 241
    invoke-static {p2, v0}, Lcom/google/common/base/P;->b(II)I

    .line 242
    if-ne p2, v0, :cond_a

    const/4 p2, -0x1

    :cond_a
    return p2
.end method

.method public a()Lcom/google/common/base/b;
    .registers 1

    .prologue
    .line 304
    return-object p0
.end method

.method public a(Lcom/google/common/base/b;)Lcom/google/common/base/b;
    .registers 2
    .parameter

    .prologue
    .line 295
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 230
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method
