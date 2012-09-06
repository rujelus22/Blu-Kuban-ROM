.class final Lcom/google/common/collect/EmptyImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableMap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/common/collect/EmptyImmutableMap;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableMap;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableMap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 59
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 71
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 72
    check-cast p1, Ljava/util/Map;

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 75
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 47
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

.method public final keySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 63
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method final readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableMap;

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string v0, "{}"

    return-object v0
.end method

.method public final values()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/google/common/collect/ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
