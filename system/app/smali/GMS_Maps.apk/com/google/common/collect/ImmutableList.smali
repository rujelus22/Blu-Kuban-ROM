.class public abstract Lcom/google/common/collect/ImmutableList;
.super Lcom/google/common/collect/br;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/common/collect/br;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .parameter

    .prologue
    .line 229
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/google/common/collect/R;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_f
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/google/common/collect/do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/do;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
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

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
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

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .parameter

    .prologue
    .line 255
    instance-of v0, p0, Lcom/google/common/collect/br;

    if-eqz v0, :cond_15

    .line 257
    check-cast p0, Lcom/google/common/collect/br;

    invoke-virtual {p0}, Lcom/google/common/collect/br;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 260
    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_14
.end method

.method public static a(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .parameter

    .prologue
    .line 269
    invoke-static {p0}, Lcom/google/common/collect/cx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .parameter

    .prologue
    .line 279
    array-length v0, p0

    packed-switch v0, :pswitch_data_1e

    .line 285
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_e
    return-object v0

    .line 281
    :pswitch_f
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_e

    .line 283
    :pswitch_14
    new-instance v0, Lcom/google/common/collect/do;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/do;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    .line 279
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 317
    if-nez p0, :cond_1b

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1b
    return-object p0
.end method

.method private static b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .parameter

    .prologue
    .line 291
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 292
    array-length v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 302
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_c
    return-object v0

    .line 294
    :pswitch_d
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_c

    .line 297
    :pswitch_12
    new-instance v0, Lcom/google/common/collect/do;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/collect/do;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    .line 292
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method private static varargs b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .parameter

    .prologue
    .line 308
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 309
    aget-object v1, p0, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    :cond_c
    new-instance v0, Lcom/google/common/collect/cZ;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cZ;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/bw;
    .registers 1

    .prologue
    .line 548
    new-instance v0, Lcom/google/common/collect/bw;

    invoke-direct {v0}, Lcom/google/common/collect/bw;-><init>()V

    return-object v0
.end method

.method public static f()Lcom/google/common/collect/ImmutableList;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ba;

    return-object v0
.end method


# virtual methods
.method public abstract a(II)Lcom/google/common/collect/ImmutableList;
.end method

.method public abstract a(I)Lcom/google/common/collect/dF;
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/dF;
    .registers 2

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->a(I)Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/common/collect/ImmutableList;
    .registers 1

    .prologue
    .line 402
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 512
    invoke-static {p0, p1}, Lcom/google/common/collect/cx;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 516
    invoke-static {p0}, Lcom/google/common/collect/cx;->b(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->a(I)Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 373
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
