.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# static fields
.field static final CUTOFF:I = 0x20000000

.field static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/collect/dt;
    .registers 1

    .prologue
    .line 532
    new-instance v0, Lcom/google/common/collect/dt;

    invoke-direct {v0}, Lcom/google/common/collect/dt;-><init>()V

    return-object v0
.end method

.method static chooseTableSize(I)I
    .registers 4
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 223
    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_d

    .line 224
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 229
    :goto_c
    return v0

    .line 228
    :cond_d
    if-ge p0, v1, :cond_17

    const/4 v0, 0x1

    :goto_10
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    move v0, v1

    .line 229
    goto :goto_c

    .line 228
    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static varargs construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 13
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 161
    :cond_1
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v5

    .line 162
    new-array v6, v5, [Ljava/lang/Object;

    .line 163
    add-int/lit8 v7, v5, -0x1

    .line 164
    const/4 v1, 0x0

    move v2, v3

    move v0, v3

    .line 166
    :goto_d
    array-length v4, p0

    if-ge v2, v4, :cond_47

    .line 167
    aget-object v8, p0, v2

    .line 168
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 169
    invoke-static {v9}, Lcom/google/common/collect/df;->a(I)I

    move-result v4

    .line 170
    :goto_1a
    and-int v10, v4, v7

    .line 171
    aget-object v11, v6, v10

    .line 172
    if-nez v11, :cond_2b

    .line 173
    if-eqz v1, :cond_25

    .line 174
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_25
    aput-object v8, v6, v10

    .line 178
    add-int/2addr v0, v9

    .line 166
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 180
    :cond_2b
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 181
    if-nez v1, :cond_28

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 184
    :goto_3a
    if-ge v4, v2, :cond_28

    .line 185
    aget-object v8, p0, v4

    .line 186
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 169
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 193
    :cond_47
    if-nez v1, :cond_56

    .line 196
    :goto_49
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5b

    .line 199
    aget-object v2, p0, v3

    .line 200
    new-instance v1, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    .line 206
    :goto_55
    return-object v0

    .line 193
    :cond_56
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_49

    .line 201
    :cond_5b
    array-length v1, p0

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-gt v5, v1, :cond_1

    .line 206
    new-instance v1, Lcom/google/common/collect/RegularImmutableSet;

    invoke-direct {v1, p0, v0, v6, v7}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v0, v1

    goto :goto_55
.end method

.method private static copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter

    .prologue
    .line 334
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 335
    array-length v1, v0

    packed-switch v1, :pswitch_data_1a

    .line 345
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_c
    return-object v0

    .line 337
    :pswitch_d
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_c

    .line 340
    :pswitch_12
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 341
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_c

    .line 335
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter

    .prologue
    .line 271
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/google/common/collect/cf;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_c
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter

    .prologue
    .line 321
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_12

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSortedSet;

    if-nez v0, :cond_12

    move-object v0, p0

    .line 324
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 325
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_12

    .line 329
    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_11
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter

    .prologue
    .line 286
    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter

    .prologue
    .line 243
    array-length v0, p0

    packed-switch v0, :pswitch_data_1c

    .line 249
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_e
    return-object v0

    .line 245
    :pswitch_f
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_e

    .line 247
    :pswitch_14
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_e

    .line 243
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableSet;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->INSTANCE:Lcom/google/common/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    aput-object p0, v1, v0

    .line 148
    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 149
    const/4 v0, 0x2

    aput-object p2, v1, v0

    .line 150
    const/4 v0, 0x3

    aput-object p3, v1, v0

    .line 151
    const/4 v0, 0x4

    aput-object p4, v1, v0

    .line 152
    const/4 v0, 0x5

    aput-object p5, v1, v0

    .line 153
    const/4 v0, 0x6

    :goto_18
    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 154
    add-int/lit8 v2, v0, -0x6

    aget-object v2, p6, v2

    aput-object v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 156
    :cond_24
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 357
    if-ne p1, p0, :cond_4

    .line 358
    const/4 v0, 0x1

    .line 366
    :goto_3
    return v0

    .line 360
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 364
    const/4 v0, 0x0

    goto :goto_3

    .line 366
    :cond_23
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 370
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/google/common/collect/mt;
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 524
    new-instance v0, Lcom/google/common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
