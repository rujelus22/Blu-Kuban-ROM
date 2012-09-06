.class final Lcom/google/common/collect/Cut$AboveAll;
.super Lcom/google/common/collect/Cut;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 180
    new-instance v0, Lcom/google/common/collect/Cut$AboveAll;

    invoke-direct {v0}, Lcom/google/common/collect/Cut$AboveAll;-><init>()V

    sput-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 184
    return-void
.end method

.method static synthetic access$100()Lcom/google/common/collect/Cut$AboveAll;
    .registers 1

    .prologue
    .line 179
    sget-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 223
    sget-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    return-object v0
.end method


# virtual methods
.method public final compareTo(Lcom/google/common/collect/Cut;)I
    .registers 3
    .parameter

    .prologue
    .line 220
    if-ne p1, p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 179
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$AboveAll;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method

.method final describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 206
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 209
    const-string v0, "+\u221e)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    return-void
.end method

.method final endpoint()Ljava/lang/Comparable;
    .registers 3

    .prologue
    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greatestValueBelow(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/cr;->maxValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method final isLessThan(Ljava/lang/Comparable;)Z
    .registers 3
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method final leastValueAbove(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 213
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .registers 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 199
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
