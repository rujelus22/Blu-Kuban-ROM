.class Lcom/google/common/base/StringUtil$CodePointSet$Builder;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/StringUtil$CodePointSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field codePoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 2437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2438
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;
    .registers 4
    .parameter "c"

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2442
    return-object p0
.end method

.method addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;
    .registers 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2446
    move v0, p1

    .local v0, i:I
    :goto_1
    if-gt v0, p2, :cond_f

    .line 2447
    iget-object v1, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2446
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2449
    :cond_f
    return-object p0
.end method

.method addSet(Lcom/google/common/base/StringUtil$CodePointSet;)Lcom/google/common/base/StringUtil$CodePointSet$Builder;
    .registers 6
    .parameter "set"

    .prologue
    .line 2453
    iget-object v2, p1, Lcom/google/common/base/StringUtil$CodePointSet;->elements:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2454
    .local v0, i:I
    iget-object v2, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2456
    .end local v0           #i:I
    :cond_20
    return-object p0
.end method

.method create()Lcom/google/common/base/StringUtil$CodePointSet;
    .registers 4

    .prologue
    .line 2460
    new-instance v0, Lcom/google/common/base/StringUtil$CodePointSet;

    iget-object v1, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/StringUtil$CodePointSet;-><init>(Ljava/util/Set;Lcom/google/common/base/StringUtil$1;)V

    return-object v0
.end method
