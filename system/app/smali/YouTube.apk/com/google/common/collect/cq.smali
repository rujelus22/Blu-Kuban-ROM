.class public final Lcom/google/common/collect/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 253
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_b

    .line 255
    check-cast p1, Ljava/util/Collection;

    .line 256
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 258
    :goto_a
    return v0

    :cond_b
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/cr;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    goto :goto_a
.end method
