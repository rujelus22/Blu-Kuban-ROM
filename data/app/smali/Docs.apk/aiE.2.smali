.class public abstract LaiE;
.super Laiv;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Laiv",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 349
    invoke-direct {p0}, Laiv;-><init>()V

    return-void
.end method

.method static a(I)I
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

    invoke-static {v0, v2}, LafQ;->a(ZLjava/lang/Object;)V

    move v0, v1

    .line 229
    goto :goto_c

    .line 228
    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static a()LaiE;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "LaiE",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lail;->a:Lail;

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)LaiE;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "LaiE",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 271
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_d

    invoke-static {p0}, LahZ;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LaiE;->a(Ljava/util/Iterator;)LaiE;

    move-result-object v0

    goto :goto_c
.end method

.method public static a(Ljava/lang/Object;)LaiE;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "LaiE",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lalc;

    invoke-direct {v0, p0}, Lalc;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)LaiE;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "LaiE",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 321
    instance-of v0, p0, LaiE;

    if-eqz v0, :cond_12

    instance-of v0, p0, LaiR;

    if-nez v0, :cond_12

    move-object v0, p0

    .line 324
    check-cast v0, LaiE;

    .line 325
    invoke-virtual {v0}, LaiE;->a()Z

    move-result v1

    if-nez v1, :cond_12

    .line 329
    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0}, LaiE;->b(Ljava/util/Collection;)LaiE;

    move-result-object v0

    goto :goto_11
.end method

.method public static a(Ljava/util/Iterator;)LaiE;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "LaiE",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p0}, Lajk;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LaiE;->b(Ljava/util/Collection;)LaiE;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a([Ljava/lang/Object;)LaiE;
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "LaiE",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 161
    array-length v0, p0

    invoke-static {v0}, LaiE;->a(I)I

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
    invoke-static {v9}, Lait;->a(I)I

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
    new-instance v1, Lalc;

    invoke-direct {v1, v2, v0}, Lalc;-><init>(Ljava/lang/Object;I)V

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

    invoke-static {v1}, LaiE;->a(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v5, v1, :cond_69

    .line 204
    invoke-static {p0}, LaiE;->a([Ljava/lang/Object;)LaiE;

    move-result-object v0

    goto :goto_55

    .line 206
    :cond_69
    new-instance v1, LakS;

    invoke-direct {v1, p0, v0, v6, v7}, LakS;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v0, v1

    goto :goto_55
.end method

.method public static a()LaiG;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "LaiG",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, LaiG;

    invoke-direct {v0}, LaiG;-><init>()V

    return-object v0
.end method

.method private static b(Ljava/util/Collection;)LaiE;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "LaiE",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 335
    array-length v1, v0

    packed-switch v1, :pswitch_data_1a

    .line 345
    invoke-static {v0}, LaiE;->a([Ljava/lang/Object;)LaiE;

    move-result-object v0

    :goto_c
    return-object v0

    .line 337
    :pswitch_d
    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v0

    goto :goto_c

    .line 340
    :pswitch_12
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 341
    invoke-static {v0}, LaiE;->a(Ljava/lang/Object;)LaiE;

    move-result-object v0

    goto :goto_c

    .line 335
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Lalu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TE;>;"
        }
    .end annotation
.end method

.method b()Z
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

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
    instance-of v0, p1, LaiE;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, LaiE;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, LaiE;

    invoke-virtual {v0}, LaiE;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, LaiE;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 364
    const/4 v0, 0x0

    goto :goto_3

    .line 366
    :cond_23
    invoke-static {p0, p1}, LakX;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 370
    invoke-static {p0}, LakX;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, LaiE;->a()Lalu;

    move-result-object v0

    return-object v0
.end method
