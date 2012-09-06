.class Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 192
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/dh;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 206
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 189
    sget-object v0, Lcom/google/common/collect/ee;->a:Lcom/google/common/collect/mt;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 195
    sget-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 199
    array-length v0, p1

    if-lez v0, :cond_7

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 202
    :cond_7
    return-object p1
.end method
