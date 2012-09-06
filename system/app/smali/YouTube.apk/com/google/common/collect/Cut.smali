.class abstract Lcom/google/common/collect/Cut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final endpoint:Ljava/lang/Comparable;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 42
    return-void
.end method

.method static aboveAll()Lcom/google/common/collect/Cut;
    .registers 1

    .prologue
    .line 176
    invoke-static {}, Lcom/google/common/collect/Cut$AboveAll;->access$100()Lcom/google/common/collect/Cut$AboveAll;

    move-result-object v0

    return-object v0
.end method

.method static aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;
    .registers 2
    .parameter

    .prologue
    .line 287
    new-instance v0, Lcom/google/common/collect/Cut$AboveValue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static belowAll()Lcom/google/common/collect/Cut;
    .registers 1

    .prologue
    .line 108
    invoke-static {}, Lcom/google/common/collect/Cut$BelowAll;->access$000()Lcom/google/common/collect/Cut$BelowAll;

    move-result-object v0

    return-object v0
.end method

.method static belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;
    .registers 2
    .parameter

    .prologue
    .line 229
    new-instance v0, Lcom/google/common/collect/Cut$BelowValue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Cut$BelowValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method canonical(Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 2
    .parameter

    .prologue
    .line 63
    return-object p0
.end method

.method public compareTo(Lcom/google/common/collect/Cut;)I
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 70
    const/4 v0, 0x1

    .line 80
    :cond_7
    :goto_7
    return v0

    .line 72
    :cond_8
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_10

    .line 73
    const/4 v0, -0x1

    goto :goto_7

    .line 75
    :cond_10
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 76
    if-nez v0, :cond_7

    .line 80
    instance-of v0, p0, Lcom/google/common/collect/Cut$AboveValue;

    instance-of v1, p1, Lcom/google/common/collect/Cut$AboveValue;

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->a(ZZ)I

    move-result v0

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 36
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method

.method abstract describeAsLowerBound(Ljava/lang/StringBuilder;)V
.end method

.method abstract describeAsUpperBound(Ljava/lang/StringBuilder;)V
.end method

.method endpoint()Ljava/lang/Comparable;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    instance-of v1, p1, Lcom/google/common/collect/Cut;

    if-eqz v1, :cond_e

    .line 92
    check-cast p1, Lcom/google/common/collect/Cut;

    .line 94
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_a} :catch_f

    move-result v1

    .line 95
    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 99
    :cond_e
    :goto_e
    return v0

    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method abstract greatestValueBelow(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
.end method

.method abstract isLessThan(Ljava/lang/Comparable;)Z
.end method

.method abstract leastValueAbove(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
.end method

.method abstract typeAsLowerBound()Lcom/google/common/collect/BoundType;
.end method

.method abstract typeAsUpperBound()Lcom/google/common/collect/BoundType;
.end method

.method abstract withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
.end method

.method abstract withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
.end method
