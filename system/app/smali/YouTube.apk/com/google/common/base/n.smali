.class final Lcom/google/common/base/n;
.super Lcom/google/common/base/d;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/common/base/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 229
    invoke-static {p2, v0}, Lcom/google/common/base/ag;->b(II)I

    .line 230
    if-ne p2, v0, :cond_a

    const/4 p2, -0x1

    :cond_a
    return p2
.end method

.method public final a()Lcom/google/common/base/d;
    .registers 1

    .prologue
    .line 292
    return-object p0
.end method

.method public final a(Lcom/google/common/base/d;)Lcom/google/common/base/d;
    .registers 2
    .parameter

    .prologue
    .line 283
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-object p0
.end method

.method public final synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 218
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/d;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method
