.class public Lcom/google/common/collect/ImmutableMultiset;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fj;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;

.field private final transient map:Lcom/google/common/collect/ImmutableMap;

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    .line 164
    iput p2, p0, Lcom/google/common/collect/ImmutableMultiset;->size:I

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/cg;
    .registers 1

    .prologue
    .line 374
    new-instance v0, Lcom/google/common/collect/cg;

    invoke-direct {v0}, Lcom/google/common/collect/cg;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .parameter

    .prologue
    .line 94
    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_7

    .line 96
    check-cast p0, Lcom/google/common/collect/ImmutableMultiset;

    .line 105
    :goto_6
    return-object p0

    .line 101
    :cond_7
    instance-of v0, p0, Lcom/google/common/collect/fj;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/google/common/collect/fj;

    .line 105
    :goto_d
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal(Lcom/google/common/collect/fj;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    goto :goto_6

    .line 101
    :cond_12
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object p0

    goto :goto_d
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 143
    invoke-static {v0, p0}, Lcom/google/common/collect/cr;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 144
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal(Lcom/google/common/collect/fj;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Lcom/google/common/collect/fj;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 10
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 111
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ca;

    move-result-object v5

    .line 113
    invoke-interface {p0}, Lcom/google/common/collect/fj;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 114
    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v7

    .line 115
    if-lez v7, :cond_4c

    .line 118
    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/google/common/collect/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ca;

    .line 119
    int-to-long v7, v7

    add-long v0, v1, v7

    :goto_2f
    move-wide v1, v0

    .line 121
    goto :goto_f

    .line 123
    :cond_31
    cmp-long v0, v1, v3

    if-nez v0, :cond_3a

    .line 124
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    .line 126
    :goto_39
    return-object v0

    :cond_3a
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v5}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    const-wide/32 v4, 0x7fffffff

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lcom/google/common/collect/ImmutableMultiset;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_39

    :cond_4c
    move-wide v0, v1

    goto :goto_2f
.end method

.method public static of()Lcom/google/common/collect/ImmutableMultiset;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMultiset;->INSTANCE:Lcom/google/common/collect/EmptyImmutableMultiset;

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .parameter

    .prologue
    .line 69
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .parameter

    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 344
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 345
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ca;

    move-result-object v4

    .line 346
    const-wide/16 v1, 0x0

    .line 347
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_3f

    .line 349
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 350
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 351
    if-gtz v6, :cond_33

    .line 352
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/google/common/collect/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ca;

    .line 355
    int-to-long v5, v6

    add-long/2addr v1, v5

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 358
    :cond_3f
    sget-object v0, Lcom/google/common/collect/ci;->a:Lcom/google/common/collect/fy;

    invoke-virtual {v4}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/fy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/google/common/collect/ci;->b:Lcom/google/common/collect/fy;

    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/fy;->a(Ljava/lang/Object;I)V

    .line 361
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 338
    invoke-static {p0, p1}, Lcom/google/common/collect/fx;->a(Lcom/google/common/collect/fj;Ljava/io/ObjectOutputStream;)V

    .line 339
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 280
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :cond_b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 256
    :goto_5
    return v0

    .line 244
    :cond_6
    instance-of v0, p1, Lcom/google/common/collect/fj;

    if-eqz v0, :cond_3e

    .line 245
    check-cast p1, Lcom/google/common/collect/fj;

    .line 246
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/fj;->size()I

    move-result v3

    if-eq v0, v3, :cond_18

    move v0, v2

    .line 247
    goto :goto_5

    .line 249
    :cond_18
    invoke-interface {p1}, Lcom/google/common/collect/fj;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 250
    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    if-eq v4, v0, :cond_20

    move v0, v2

    .line 251
    goto :goto_5

    :cond_3c
    move v0, v1

    .line 254
    goto :goto_5

    :cond_3e
    move v0, v2

    .line 256
    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/gf;
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/gf;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/google/common/collect/cf;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cf;-><init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->iterator()Lcom/google/common/collect/gf;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 364
    return-object p0
.end method
