.class public Lcom/google/common/collect/ImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;,
        Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;,
        Lcom/google/common/collect/ImmutableSortedMap$Values;,
        Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;,
        Lcom/google/common/collect/ImmutableSortedMap$EntrySet;,
        Lcom/google/common/collect/ImmutableSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMapFauxverideShim",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field

.field private static final NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;

.field private static final serialVersionUID:J


# instance fields
.field private final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final transient fromIndex:I

.field private transient keySet:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient toIndex:I

.field private transient values:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    .line 68
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    sget-object v2, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V

    .line 393
    return-void
.end method

.method private constructor <init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V
    .registers 6
    .parameter
    .parameter
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Comparator",
            "<-TK;>;II)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, entries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    move-object v0, p1

    .line 383
    check-cast v0, [Ljava/util/Map$Entry;

    .line 384
    .local v0, tmp:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<TK;TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    .line 385
    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    .line 386
    iput p3, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    .line 387
    iput p4, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    .line 388
    return-void
.end method

.method static synthetic access$000([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$100([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/ImmutableSortedMap;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/ImmutableSortedMap;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    return v0
.end method

.method private binarySearch(Ljava/lang/Object;)I
    .registers 8
    .parameter "key"

    .prologue
    .line 413
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    .line 414
    .local v1, lower:I
    iget v4, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    add-int/lit8 v3, v4, -0x1

    .line 416
    .local v3, upper:I
    :goto_6
    if-gt v1, v3, :cond_26

    .line 417
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    add-int v2, v1, v4

    .line 418
    .local v2, middle:I
    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 420
    .local v0, c:I
    if-gez v0, :cond_21

    .line 421
    add-int/lit8 v3, v2, -0x1

    goto :goto_6

    .line 422
    :cond_21
    if-lez v0, :cond_29

    .line 423
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 429
    .end local v0           #c:I
    .end local v2           #middle:I
    :cond_26
    neg-int v4, v1

    add-int/lit8 v2, v4, -0x1

    :cond_29
    return v2
.end method

.method private createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    goto :goto_a
.end method

.method private createKeySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 513
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    .line 521
    :goto_c
    return-object v2

    .line 517
    :cond_d
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/Object;

    .line 518
    .local v0, array:[Ljava/lang/Object;
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    .local v1, i:I
    :goto_15
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    if-ge v1, v2, :cond_2a

    .line 519
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 521
    :cond_2a
    new-instance v2, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v2, v0, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 6
    .parameter "newFromIndex"
    .parameter "newToIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    if-ge p1, p2, :cond_c

    .line 662
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V

    .line 665
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    goto :goto_b
.end method

.method private static emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 85
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private findSubmapIndex(Ljava/lang/Object;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 656
    .local v0, index:I
    if-ltz v0, :cond_7

    .end local v0           #index:I
    :goto_6
    return v0

    .restart local v0       #index:I
    :cond_7
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_6
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableMap;

    check-cast v0, Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method private static sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Comparator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$1;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap$1;-><init>(Ljava/util/Comparator;)V

    .line 252
    .local v0, entryComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/util/Map$Entry<**>;>;"
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 253
    return-void
.end method

.method private static validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/util/Comparator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_44

    .line 258
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_41

    .line 260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate keys in mappings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_44
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .parameter "value"

    .prologue
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 433
    if-nez p1, :cond_4

    .line 441
    :cond_3
    :goto_3
    return v1

    .line 436
    :cond_4
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    .local v0, i:I
    :goto_6
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    if-ge v0, v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 438
    const/4 v1, 0x1

    goto :goto_3

    .line 436
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 452
    .local v0, es:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;->createEntrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .end local v0           #es:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 590
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 592
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 400
    if-nez p1, :cond_4

    .line 409
    :cond_3
    :goto_3
    return-object v2

    .line 405
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->binarySearch(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_13

    move-result v1

    .line 409
    .local v1, i:I
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 406
    .end local v1           #i:I
    :catch_13
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_3
.end method

.method public headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 614
    .local v0, newToIndex:I
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 508
    .local v0, ks:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TK;>;"
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;->createKeySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .end local v0           #ks:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TK;>;"
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 597
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 599
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 396
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p2, toKey:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1f

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 634
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 635
    .local v0, newFromIndex:I
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v1

    .line 636
    .local v1, newToIndex:I
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v2

    return-object v2

    .line 633
    .end local v0           #newFromIndex:I
    .end local v1           #newToIndex:I
    :cond_1f
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 651
    .local v0, newFromIndex:I
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->values:Lcom/google/common/collect/ImmutableCollection;

    .line 532
    .local v0, v:Lcom/google/common/collect/ImmutableCollection;,"Lcom/google/common/collect/ImmutableCollection<TV;>;"
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Values;

    .end local v0           #v:Lcom/google/common/collect/ImmutableCollection;,"Lcom/google/common/collect/ImmutableCollection<TV;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Values;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->values:Lcom/google/common/collect/ImmutableCollection;

    :cond_b
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 690
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
