.class abstract Lcom/google/common/collect/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/bx;
    .registers 4
    .parameter

    .prologue
    .line 310
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 312
    invoke-virtual {p0, v1}, Lcom/google/common/collect/bx;->a(Ljava/lang/Object;)Lcom/google/common/collect/bx;

    goto :goto_7

    .line 314
    :cond_15
    return-object p0
.end method

.method public abstract a(Ljava/lang/Object;)Lcom/google/common/collect/bx;
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/common/collect/bx;
    .registers 5
    .parameter

    .prologue
    .line 290
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    array-length v1, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_f

    aget-object v2, p1, v0

    .line 292
    invoke-virtual {p0, v2}, Lcom/google/common/collect/bx;->a(Ljava/lang/Object;)Lcom/google/common/collect/bx;

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 294
    :cond_f
    return-object p0
.end method
