.class final Lcom/google/common/collect/ev;
.super Lcom/google/common/collect/et;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .parameter

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/google/common/collect/et;-><init>(Ljava/util/Collection;)V

    .line 587
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 592
    invoke-static {p0, p1}, Lcom/google/common/collect/at;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 596
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
