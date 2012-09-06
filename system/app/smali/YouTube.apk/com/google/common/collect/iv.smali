.class abstract Lcom/google/common/collect/iv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ir;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 668
    instance-of v1, p1, Lcom/google/common/collect/ir;

    if-eqz v1, :cond_20

    .line 669
    check-cast p1, Lcom/google/common/collect/ir;

    .line 670
    invoke-virtual {p0}, Lcom/google/common/collect/iv;->getCount()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_20

    invoke-virtual {p0}, Lcom/google/common/collect/iv;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    .line 673
    :cond_20
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/common/collect/iv;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 682
    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/google/common/collect/iv;->getCount()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/google/common/collect/iv;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 694
    invoke-virtual {p0}, Lcom/google/common/collect/iv;->getCount()I

    move-result v1

    .line 695
    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    :goto_f
    return-object v0

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method
