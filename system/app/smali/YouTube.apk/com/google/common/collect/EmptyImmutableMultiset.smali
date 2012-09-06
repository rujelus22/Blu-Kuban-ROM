.class final Lcom/google/common/collect/EmptyImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableMultiset;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/common/collect/EmptyImmutableMultiset;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableMultiset;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableMultiset;->INSTANCE:Lcom/google/common/collect/EmptyImmutableMultiset;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public final count(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method final distinctElements()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final elementSet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 40
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Lcom/google/common/collect/ee;->a()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
