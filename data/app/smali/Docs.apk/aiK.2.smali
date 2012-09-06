.class public LaiK;
.super LaiQ;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LaiQ",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:LaiK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiK",
            "<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient a:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient a:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient a:LaiR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiR",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient a:Laiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laiv",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final transient b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    invoke-static {}, LakG;->b()LakG;

    move-result-object v0

    sput-object v0, LaiK;->a:Ljava/util/Comparator;

    .line 75
    new-instance v0, LaiK;

    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v1

    sget-object v2, LaiK;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, LaiK;-><init>(LaiA;Ljava/util/Comparator;)V

    sput-object v0, LaiK;->a:LaiK;

    return-void
.end method

.method constructor <init>(LaiA;Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaiA",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, LaiQ;-><init>()V

    .line 418
    iput-object p1, p0, LaiK;->a:LaiA;

    .line 419
    iput-object p2, p0, LaiK;->b:Ljava/util/Comparator;

    .line 420
    return-void
.end method

.method private a(Ljava/lang/Object;Lall;Lalh;)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    invoke-direct {p0}, LaiK;->a()LaiA;

    move-result-object v0

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LaiK;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lalf;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lall;Lalh;)I

    move-result v0

    return v0
.end method

.method private a()LaiA;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiA",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 716
    new-instance v0, LaiN;

    iget-object v1, p0, LaiK;->a:LaiA;

    invoke-direct {v0, p0, v1}, LaiN;-><init>(LaiK;LaiA;)V

    return-object v0
.end method

.method private a(II)LaiK;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 732
    if-ge p1, p2, :cond_10

    .line 733
    new-instance v0, LaiK;

    iget-object v1, p0, LaiK;->a:LaiA;

    invoke-virtual {v1, p1, p2}, LaiA;->a(II)LaiA;

    move-result-object v1

    iget-object v2, p0, LaiK;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, LaiK;-><init>(LaiA;Ljava/util/Comparator;)V

    .line 736
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, LaiK;->b:Ljava/util/Comparator;

    invoke-static {v0}, LaiK;->a(Ljava/util/Comparator;)LaiK;

    move-result-object v0

    goto :goto_f
.end method

.method private static a(Ljava/util/Comparator;)LaiK;
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
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, LaiK;->a:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    sget-object v0, LaiK;->a:LaiK;

    .line 95
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, LaiK;

    invoke-static {}, LaiA;->c()LaiA;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LaiK;-><init>(LaiA;Ljava/util/Comparator;)V

    goto :goto_a
.end method

.method private b()LaiR;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiR",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0}, LaiK;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 534
    iget-object v0, p0, LaiK;->b:Ljava/util/Comparator;

    invoke-static {v0}, LaiR;->a(Ljava/util/Comparator;)LaiR;

    move-result-object v0

    .line 537
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, LakT;

    new-instance v1, LaiL;

    iget-object v2, p0, LaiK;->a:LaiA;

    invoke-direct {v1, p0, v2}, LaiL;-><init>(LaiK;LaiA;)V

    iget-object v2, p0, LaiK;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, LakT;-><init>(LaiA;Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private c()LaiE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiE",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0}, LaiK;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, LaiO;

    invoke-direct {v0, p0}, LaiO;-><init>(LaiK;)V

    goto :goto_a
.end method


# virtual methods
.method public a()LaiE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiE",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, LaiK;->a:LaiE;

    .line 467
    if-nez v0, :cond_a

    invoke-direct {p0}, LaiK;->c()LaiE;

    move-result-object v0

    iput-object v0, p0, LaiK;->a:LaiE;

    :cond_a
    return-object v0
.end method

.method public a(Ljava/lang/Object;)LaiK;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaiK;->a(Ljava/lang/Object;Z)LaiK;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)LaiK;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 679
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, LaiK;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)LaiK;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;Z)LaiK;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 656
    if-eqz p2, :cond_12

    .line 657
    sget-object v0, Lall;->a:Lall;

    sget-object v1, Lalh;->a:Lalh;

    invoke-direct {p0, p1, v0, v1}, LaiK;->a(Ljava/lang/Object;Lall;Lalh;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 661
    :goto_c
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, LaiK;->a(II)LaiK;

    move-result-object v0

    return-object v0

    .line 659
    :cond_12
    sget-object v0, Lall;->a:Lall;

    sget-object v1, Lalh;->b:Lalh;

    invoke-direct {p0, p1, v0, v1}, LaiK;->a(Ljava/lang/Object;Lall;Lalh;)I

    move-result v0

    goto :goto_c
.end method

.method a(Ljava/lang/Object;ZLjava/lang/Object;Z)LaiK;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, p0, LaiK;->b:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, LafQ;->a(Z)V

    .line 687
    invoke-virtual {p0, p1, p2}, LaiK;->b(Ljava/lang/Object;Z)LaiK;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, LaiK;->a(Ljava/lang/Object;Z)LaiK;

    move-result-object v0

    return-object v0

    .line 686
    :cond_1b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a()LaiR;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiR",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, LaiK;->a:LaiR;

    .line 528
    if-nez v0, :cond_a

    invoke-direct {p0}, LaiK;->b()LaiR;

    move-result-object v0

    iput-object v0, p0, LaiK;->a:LaiR;

    :cond_a
    return-object v0
.end method

.method public a()Laiv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laiv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, LaiK;->a:Laiv;

    .line 554
    if-nez v0, :cond_b

    new-instance v0, LaiP;

    invoke-direct {v0, p0}, LaiP;-><init>(LaiK;)V

    iput-object v0, p0, LaiK;->a:Laiv;

    :cond_b
    return-object v0
.end method

.method a()Lalu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, LaiK;->a:LaiA;

    invoke-virtual {v0}, LaiA;->a()Lalu;

    move-result-object v0

    .line 559
    new-instance v1, LaiM;

    invoke-direct {v1, p0, v0}, LaiM;-><init>(LaiK;Lalu;)V

    return-object v1
.end method

.method a()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, LaiK;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, LaiK;->a:LaiA;

    invoke-virtual {v0}, LaiA;->a()Z

    move-result v0

    return v0
.end method

.method public synthetic b()LaiE;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, LaiK;->a()LaiR;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)LaiK;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LaiK;->b(Ljava/lang/Object;Z)LaiK;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Object;Z)LaiK;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "LaiK",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 707
    if-eqz p2, :cond_13

    .line 708
    sget-object v0, Lall;->a:Lall;

    sget-object v1, Lalh;->b:Lalh;

    invoke-direct {p0, p1, v0, v1}, LaiK;->a(Ljava/lang/Object;Lall;Lalh;)I

    move-result v0

    .line 712
    :goto_a
    invoke-virtual {p0}, LaiK;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, LaiK;->a(II)LaiK;

    move-result-object v0

    return-object v0

    .line 710
    :cond_13
    sget-object v0, Lall;->a:Lall;

    sget-object v1, Lalh;->a:Lalh;

    invoke-direct {p0, p1, v0, v1}, LaiK;->a(Ljava/lang/Object;Lall;Lalh;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

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
    .line 620
    iget-object v0, p0, LaiK;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 449
    if-nez p1, :cond_4

    .line 450
    const/4 v0, 0x0

    .line 452
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, LaiK;->a()Lalu;

    move-result-object v0

    invoke-static {v0, p1}, LaiY;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, LaiK;->a()LaiE;

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
    .line 625
    invoke-virtual {p0}, LaiK;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 626
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 628
    :cond_c
    iget-object v0, p0, LaiK;->a:LaiA;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 436
    if-nez p1, :cond_4

    .line 445
    :cond_3
    :goto_3
    return-object v0

    .line 441
    :cond_4
    :try_start_4
    sget-object v1, Lall;->a:Lall;

    sget-object v2, Lalh;->c:Lalh;

    invoke-direct {p0, p1, v1, v2}, LaiK;->a(Ljava/lang/Object;Lall;Lalh;)I
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_b} :catch_1b

    move-result v1

    .line 445
    if-ltz v1, :cond_3

    iget-object v0, p0, LaiK;->a:LaiA;

    invoke-virtual {v0, v1}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 442
    :catch_1b
    move-exception v1

    goto :goto_3
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, LaiK;->a(Ljava/lang/Object;)LaiK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, LaiK;->a()LaiR;

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
    .line 633
    invoke-virtual {p0}, LaiK;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 634
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 636
    :cond_c
    iget-object v0, p0, LaiK;->a:LaiA;

    invoke-virtual {p0}, LaiK;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, LaiK;->a:LaiA;

    invoke-virtual {v0}, LaiA;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, LaiK;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, LaiK;->b(Ljava/lang/Object;)LaiK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, LaiK;->a()Laiv;

    move-result-object v0

    return-object v0
.end method
