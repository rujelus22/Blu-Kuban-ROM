.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/br;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/common/collect/br;-><init>()V

    return-void
.end method

.method static a(I)I
    .registers 4
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 222
    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_d

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 228
    :goto_c
    return v0

    .line 227
    :cond_d
    if-ge p0, v1, :cond_17

    const/4 v0, 0x1

    :goto_10
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    move v0, v1

    .line 228
    goto :goto_c

    .line 227
    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter

    .prologue
    .line 286
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/google/common/collect/R;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_c
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter

    .prologue
    .line 336
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_12

    instance-of v0, p0, Lcom/google/common/collect/bR;

    if-nez v0, :cond_12

    move-object v0, p0

    .line 339
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 340
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->a()Z

    move-result v1

    if-nez v1, :cond_12

    .line 344
    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_11
.end method

.method public static a(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter

    .prologue
    .line 301
    invoke-static {p0}, Lcom/google/common/collect/cx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 13
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 160
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(I)I

    move-result v5

    .line 161
    new-array v6, v5, [Ljava/lang/Object;

    .line 162
    add-int/lit8 v7, v5, -0x1

    .line 163
    const/4 v1, 0x0

    move v2, v3

    move v0, v3

    .line 165
    :goto_d
    array-length v4, p0

    if-ge v2, v4, :cond_47

    .line 166
    aget-object v8, p0, v2

    .line 167
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 168
    invoke-static {v9}, Lcom/google/common/collect/bn;->a(I)I

    move-result v4

    .line 169
    :goto_1a
    and-int v10, v4, v7

    .line 170
    aget-object v11, v6, v10

    .line 171
    if-nez v11, :cond_2b

    .line 172
    if-eqz v1, :cond_25

    .line 173
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_25
    aput-object v8, v6, v10

    .line 177
    add-int/2addr v0, v9

    .line 165
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 179
    :cond_2b
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 180
    if-nez v1, :cond_28

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 183
    :goto_3a
    if-ge v4, v2, :cond_28

    .line 184
    aget-object v8, p0, v4

    .line 185
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 168
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 192
    :cond_47
    if-nez v1, :cond_56

    .line 195
    :goto_49
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5b

    .line 198
    aget-object v2, p0, v3

    .line 199
    new-instance v1, Lcom/google/common/collect/ds;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/ds;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    .line 205
    :goto_55
    return-object v0

    .line 192
    :cond_56
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_49

    .line 200
    :cond_5b
    array-length v1, p0

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->a(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v5, v1, :cond_69

    .line 203
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_55

    .line 205
    :cond_69
    new-instance v1, Lcom/google/common/collect/dj;

    invoke-direct {v1, p0, v0, v6, v7}, Lcom/google/common/collect/dj;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v0, v1

    goto :goto_55
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter

    .prologue
    .line 349
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 350
    array-length v1, v0

    packed-switch v1, :pswitch_data_1a

    .line 360
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_c
    return-object v0

    .line 352
    :pswitch_d
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_c

    .line 355
    :pswitch_12
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 356
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_c

    .line 350
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter

    .prologue
    .line 258
    array-length v0, p0

    packed-switch v0, :pswitch_data_1c

    .line 264
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_e
    return-object v0

    .line 260
    :pswitch_f
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_e

    .line 262
    :pswitch_14
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_e

    .line 258
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method public static d(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .parameter

    .prologue
    .line 87
    new-instance v0, Lcom/google/common/collect/ds;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ds;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f()Lcom/google/common/collect/ImmutableSet;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/common/collect/bd;->a:Lcom/google/common/collect/bd;

    return-object v0
.end method

.method public static g()Lcom/google/common/collect/bD;
    .registers 1

    .prologue
    .line 547
    new-instance v0, Lcom/google/common/collect/bD;

    invoke-direct {v0}, Lcom/google/common/collect/bD;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/common/collect/dE;
.end method

.method c()Z
    .registers 2

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 372
    if-ne p1, p0, :cond_4

    .line 373
    const/4 v0, 0x1

    .line 381
    :goto_3
    return v0

    .line 375
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 379
    const/4 v0, 0x0

    goto :goto_3

    .line 381
    :cond_23
    invoke-static {p0, p1}, Lcom/google/common/collect/dm;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 385
    invoke-static {p0}, Lcom/google/common/collect/dm;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method
