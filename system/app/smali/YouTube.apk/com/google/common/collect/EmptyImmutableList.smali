.class final Lcom/google/common/collect/EmptyImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

.field static final ITERATOR:Lcom/google/common/collect/mu;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/common/collect/EmptyImmutableList;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableList;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableList;->INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

    .line 39
    new-instance v0, Lcom/google/common/collect/ct;

    invoke-direct {v0}, Lcom/google/common/collect/ct;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableList;->ITERATOR:Lcom/google/common/collect/mu;

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/EmptyImmutableList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 137
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 141
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 142
    check-cast p1, Ljava/util/List;

    .line 143
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 145
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(II)I

    .line 107
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 111
    const/4 v0, -0x1

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 87
    invoke-static {}, Lcom/google/common/collect/ee;->a()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public final listIterator()Lcom/google/common/collect/mu;
    .registers 2

    .prologue
    .line 128
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->ITERATOR:Lcom/google/common/collect/mu;

    return-object v0
.end method

.method public final listIterator(I)Lcom/google/common/collect/mu;
    .registers 3
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->b(II)I

    .line 133
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->ITERATOR:Lcom/google/common/collect/mu;

    return-object v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableList;->listIterator()Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EmptyImmutableList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method final readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 157
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

    return-object v0
.end method

.method public final reverse()Lcom/google/common/collect/ImmutableList;
    .registers 1

    .prologue
    .line 124
    return-object p0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public final subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ag;->a(III)V

    .line 120
    return-object p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 93
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 97
    array-length v0, p1

    if-lez v0, :cond_7

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 100
    :cond_7
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    const-string v0, "[]"

    return-object v0
.end method
