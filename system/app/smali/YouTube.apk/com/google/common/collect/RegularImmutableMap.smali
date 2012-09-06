.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Lcom/google/common/collect/jn;

.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;

.field private transient keySet:Lcom/google/common/collect/ImmutableSet;

.field private final transient keySetHashCode:I

.field private final transient mask:I

.field private final transient table:[Lcom/google/common/collect/jn;

.field private transient values:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 49
    array-length v6, p1

    .line 50
    invoke-direct {p0, v6}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/jn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;

    .line 52
    invoke-static {v6}, Lcom/google/common/collect/RegularImmutableMap;->chooseTableSize(I)I

    move-result v0

    .line 53
    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableMap;->createEntryArray(I)[Lcom/google/common/collect/jn;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/jn;

    .line 54
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    move v4, v2

    move v0, v2

    .line 57
    :goto_1c
    if-ge v4, v6, :cond_69

    .line 60
    aget-object v3, p1, v4

    .line 61
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 63
    add-int v5, v0, v8

    .line 64
    invoke-static {v8}, Lcom/google/common/collect/df;->a(I)I

    move-result v0

    iget v8, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v8, v0

    .line 65
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/jn;

    aget-object v0, v0, v8

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3, v0}, Lcom/google/common/collect/RegularImmutableMap;->newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/jn;)Lcom/google/common/collect/jn;

    move-result-object v3

    .line 69
    iget-object v9, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/jn;

    aput-object v3, v9, v8

    .line 70
    iget-object v8, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;

    aput-object v3, v8, v4

    move-object v3, v0

    .line 71
    :goto_46
    if-eqz v3, :cond_64

    .line 72
    invoke-interface {v3}, Lcom/google/common/collect/jn;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    move v0, v1

    :goto_53
    const-string v8, "duplicate key: %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v2

    invoke-static {v0, v8, v9}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-interface {v3}, Lcom/google/common/collect/jn;->next()Lcom/google/common/collect/jn;

    move-result-object v0

    move-object v3, v0

    goto :goto_46

    :cond_62
    move v0, v2

    .line 72
    goto :goto_53

    .line 57
    :cond_64
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_1c

    .line 76
    :cond_69
    iput v0, p0, Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/jn;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMap;)I
    .registers 2
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I

    return v0
.end method

.method private static chooseTableSize(I)I
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v3, v0, 0x1

    .line 82
    if-lez v3, :cond_19

    move v0, v1

    :goto_b
    const-string v4, "table too large: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v3

    :cond_19
    move v0, v2

    .line 82
    goto :goto_b
.end method

.method private createEntryArray(I)[Lcom/google/common/collect/jn;
    .registers 3
    .parameter

    .prologue
    .line 93
    new-array v0, p1, [Lcom/google/common/collect/jn;

    return-object v0
.end method

.method private static newLinkedEntry(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/jn;)Lcom/google/common/collect/jn;
    .registers 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 98
    if-nez p2, :cond_8

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/RegularImmutableMap$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/jn;)V

    goto :goto_7
.end method


# virtual methods
.method public final containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    if-nez p1, :cond_4

    .line 183
    :cond_3
    :goto_3
    return v0

    .line 178
    :cond_4
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;

    array-length v3, v2

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 179
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 180
    const/4 v0, 0x1

    goto :goto_3

    .line 178
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public final entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 194
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :cond_b
    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_4

    .line 162
    :cond_3
    :goto_3
    return-object v0

    .line 146
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/df;->a(I)I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v1, v2

    .line 147
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Lcom/google/common/collect/jn;

    aget-object v1, v2, v1

    .line 148
    :goto_13
    if-eqz v1, :cond_3

    .line 150
    invoke-interface {v1}, Lcom/google/common/collect/jn;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 159
    invoke-interface {v1}, Lcom/google/common/collect/jn;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 149
    :cond_24
    invoke-interface {v1}, Lcom/google/common/collect/jn;->next()Lcom/google/common/collect/jn;

    move-result-object v1

    goto :goto_13
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->keySet:Lcom/google/common/collect/ImmutableSet;

    .line 220
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->keySet:Lcom/google/common/collect/ImmutableSet;

    :cond_b
    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;

    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cf;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/google/common/collect/cf;->a:Lcom/google/common/base/x;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/x;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 287
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->values:Lcom/google/common/collect/ImmutableCollection;

    .line 250
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$Values;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->values:Lcom/google/common/collect/ImmutableCollection;

    :cond_b
    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
