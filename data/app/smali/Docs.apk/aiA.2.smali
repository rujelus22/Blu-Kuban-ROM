.class public abstract LaiA;
.super Laiv;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Laiv",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 310
    invoke-direct {p0}, Laiv;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)LaiA;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_10

    invoke-static {p0}, LahZ;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LaiA;->a(Ljava/util/Collection;)LaiA;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LaiA;->a(Ljava/util/Iterator;)LaiA;

    move-result-object v0

    goto :goto_f
.end method

.method public static a(Ljava/lang/Object;)LaiA;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, LakY;

    invoke-direct {v0, p0}, LakY;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)LaiA;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LaiA;->b([Ljava/lang/Object;)LaiA;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LaiA;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

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

    invoke-static {v0}, LaiA;->b([Ljava/lang/Object;)LaiA;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)LaiA;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 242
    instance-of v0, p0, Laiv;

    if-eqz v0, :cond_15

    .line 244
    check-cast p0, Laiv;

    invoke-virtual {p0}, Laiv;->a()LaiA;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, LaiA;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, LaiA;->b(Ljava/util/Collection;)LaiA;

    move-result-object v0

    .line 247
    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, LaiA;->b(Ljava/util/Collection;)LaiA;

    move-result-object v0

    goto :goto_14
.end method

.method public static a(Ljava/util/Iterator;)LaiA;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {p0}, Lajk;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LaiA;->b(Ljava/util/Collection;)LaiA;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)LaiA;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 266
    array-length v0, p0

    packed-switch v0, :pswitch_data_1e

    .line 272
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, LaiA;->b([Ljava/lang/Object;)LaiA;

    move-result-object v0

    :goto_e
    return-object v0

    .line 268
    :pswitch_f
    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v0

    goto :goto_e

    .line 270
    :pswitch_14
    new-instance v0, LakY;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, LakY;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    .line 266
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method public static a()LaiB;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "LaiB",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, LaiB;

    invoke-direct {v0}, LaiB;-><init>()V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 304
    if-nez p0, :cond_1b

    .line 305
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

    .line 307
    :cond_1b
    return-object p0
.end method

.method private static b(Ljava/util/Collection;)LaiA;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 279
    array-length v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 289
    invoke-static {v1}, LaiA;->b([Ljava/lang/Object;)LaiA;

    move-result-object v0

    :goto_c
    return-object v0

    .line 281
    :pswitch_d
    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v0

    goto :goto_c

    .line 284
    :pswitch_12
    new-instance v0, LakY;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, LakY;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    .line 279
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method private static varargs b([Ljava/lang/Object;)LaiA;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 296
    aget-object v1, p0, v0

    invoke-static {v1, v0}, LaiA;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_c
    new-instance v0, LakI;

    invoke-direct {v0, p0}, LakI;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c()LaiA;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Laii;->a:Laii;

    return-object v0
.end method


# virtual methods
.method public a()LaiA;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiA",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 389
    return-object p0
.end method

.method public abstract a(II)LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LaiA",
            "<TE;>;"
        }
    .end annotation
.end method

.method public a()Lalu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p0}, LaiA;->a()Lalv;

    move-result-object v0

    return-object v0
.end method

.method public a()Lalv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalv",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaiA;->a(I)Lalv;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(I)Lalv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lalv",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 499
    invoke-static {p0, p1}, Lajk;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 503
    invoke-static {p0}, Lajk;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, LaiA;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, LaiA;->a()Lalv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, LaiA;->a(I)Lalv;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 360
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
    invoke-virtual {p0, p1, p2}, LaiA;->a(II)LaiA;

    move-result-object v0

    return-object v0
.end method
