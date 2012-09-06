.class final Lcom/google/common/collect/Cut$BelowAll;
.super Lcom/google/common/collect/Cut;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    new-instance v0, Lcom/google/common/collect/Cut$BelowAll;

    invoke-direct {v0}, Lcom/google/common/collect/Cut$BelowAll;-><init>()V

    sput-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 118
    return-void
.end method

.method static synthetic access$000()Lcom/google/common/collect/Cut$BelowAll;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 165
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    return-object v0
.end method


# virtual methods
.method final canonical(Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 3
    .parameter

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/cr;->minValue()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object p0

    .line 158
    :goto_8
    return-object p0

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public final compareTo(Lcom/google/common/collect/Cut;)I
    .registers 3
    .parameter

    .prologue
    .line 162
    if-ne p1, p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 113
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$BelowAll;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method

.method final describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method

.method final describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final endpoint()Ljava/lang/Comparable;
    .registers 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greatestValueBelow(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 151
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final isLessThan(Ljava/lang/Comparable;)Z
    .registers 3
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method final leastValueAbove(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/common/collect/cr;->minValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method final typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .registers 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
