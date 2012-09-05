.class public abstract LK/bu;
.super LK/bi;

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, LK/bi;-><init>()V

    return-void
.end method

.method static a(I)I
    .registers 4

    const/high16 v1, 0x4000

    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_d

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    :goto_c
    return v0

    :cond_d
    if-ge p0, v1, :cond_17

    const/4 v0, 0x1

    :goto_10
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/v;->a(ZLjava/lang/Object;)V

    move v0, v1

    goto :goto_c

    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static a(Ljava/lang/Iterable;)LK/bu;
    .registers 2

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_d

    invoke-static {p0}, LK/J;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LK/bu;->a(Ljava/util/Collection;)LK/bu;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bu;->a(Ljava/util/Iterator;)LK/bu;

    move-result-object v0

    goto :goto_c
.end method

.method public static a(Ljava/util/Collection;)LK/bu;
    .registers 3

    instance-of v0, p0, LK/bu;

    if-eqz v0, :cond_12

    instance-of v0, p0, LK/bD;

    if-nez v0, :cond_12

    move-object v0, p0

    check-cast v0, LK/bu;

    invoke-virtual {v0}, LK/bu;->a()Z

    move-result v1

    if-nez v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0}, LK/bu;->b(Ljava/util/Collection;)LK/bu;

    move-result-object v0

    goto :goto_11
.end method

.method public static a(Ljava/util/Iterator;)LK/bu;
    .registers 2

    invoke-static {p0}, LK/bR;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LK/bu;->b(Ljava/util/Collection;)LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)LK/bu;
    .registers 2

    array-length v0, p0

    packed-switch v0, :pswitch_data_1c

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, LK/bu;->b([Ljava/lang/Object;)LK/bu;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    goto :goto_e

    :pswitch_14
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, LK/bu;->d(Ljava/lang/Object;)LK/bu;

    move-result-object v0

    goto :goto_e

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)LK/bu;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LK/bu;->b([Ljava/lang/Object;)LK/bu;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Collection;)LK/bu;
    .registers 3

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    packed-switch v1, :pswitch_data_1a

    invoke-static {v0}, LK/bu;->b([Ljava/lang/Object;)LK/bu;

    move-result-object v0

    :goto_c
    return-object v0

    :pswitch_d
    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    goto :goto_c

    :pswitch_12
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, LK/bu;->d(Ljava/lang/Object;)LK/bu;

    move-result-object v0

    goto :goto_c

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method private static varargs b([Ljava/lang/Object;)LK/bu;
    .registers 13

    const/4 v3, 0x0

    array-length v0, p0

    invoke-static {v0}, LK/bu;->a(I)I

    move-result v5

    new-array v6, v5, [Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    const/4 v1, 0x0

    move v2, v3

    move v0, v3

    :goto_d
    array-length v4, p0

    if-ge v2, v4, :cond_47

    aget-object v8, p0, v2

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, LK/bg;->a(I)I

    move-result v4

    :goto_1a
    and-int v10, v4, v7

    aget-object v11, v6, v10

    if-nez v11, :cond_2b

    if-eqz v1, :cond_25

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    aput-object v8, v6, v10

    add-int/2addr v0, v9

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2b
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    if-nez v1, :cond_28

    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    :goto_3a
    if-ge v4, v2, :cond_28

    aget-object v8, p0, v4

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_47
    if-nez v1, :cond_56

    :goto_49
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5b

    aget-object v2, p0, v3

    new-instance v1, LK/cB;

    invoke-direct {v1, v2, v0}, LK/cB;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    :goto_55
    return-object v0

    :cond_56
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    goto :goto_49

    :cond_5b
    array-length v1, p0

    invoke-static {v1}, LK/bu;->a(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v5, v1, :cond_69

    invoke-static {p0}, LK/bu;->b([Ljava/lang/Object;)LK/bu;

    move-result-object v0

    goto :goto_55

    :cond_69
    new-instance v1, LK/ct;

    invoke-direct {v1, p0, v0, v6, v7}, LK/ct;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v0, v1

    goto :goto_55
.end method

.method public static d(Ljava/lang/Object;)LK/bu;
    .registers 2

    new-instance v0, LK/cB;

    invoke-direct {v0, p0}, LK/cB;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f()LK/bu;
    .registers 1

    sget-object v0, LK/aV;->a:LK/aV;

    return-object v0
.end method

.method public static g()LK/bw;
    .registers 1

    new-instance v0, LK/bw;

    invoke-direct {v0}, LK/bw;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()LK/cC;
.end method

.method c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, LK/bu;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, LK/bu;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, LK/bu;

    invoke-virtual {v0}, LK/bu;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, LK/bu;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    const/4 v0, 0x0

    goto :goto_3

    :cond_23
    invoke-static {p0, p1}, LK/cw;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, LK/cw;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/bu;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method
