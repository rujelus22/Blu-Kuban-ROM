.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 953
    new-instance v0, Lcom/google/common/collect/iu;

    invoke-direct {v0}, Lcom/google/common/collect/iu;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multisets;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method static a(Lcom/google/common/collect/iq;Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 775
    invoke-interface {p0, p1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    .line 777
    sub-int v1, p2, v0

    .line 778
    if-lez v1, :cond_11

    .line 779
    invoke-interface {p0, p1, v1}, Lcom/google/common/collect/iq;->add(Ljava/lang/Object;I)I

    .line 784
    :cond_10
    :goto_10
    return v0

    .line 780
    :cond_11
    if-gez v1, :cond_10

    .line 781
    neg-int v1, v1

    invoke-interface {p0, p1, v1}, Lcom/google/common/collect/iq;->remove(Ljava/lang/Object;I)I

    goto :goto_10
.end method

.method static a(Ljava/lang/Iterable;)I
    .registers 2
    .parameter

    .prologue
    .line 474
    instance-of v0, p0, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_f

    .line 475
    check-cast p0, Lcom/google/common/collect/iq;

    invoke-interface {p0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 477
    :goto_e
    return v0

    :cond_f
    const/16 v0, 0xb

    goto :goto_e
.end method

.method public static a(Lcom/google/common/collect/iq;)Lcom/google/common/collect/iq;
    .registers 3
    .parameter

    .prologue
    .line 71
    instance-of v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    if-nez v0, :cond_8

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_9

    .line 78
    :cond_8
    :goto_8
    return-object p0

    :cond_9
    new-instance v1, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/iq;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/iq;)V

    move-object p0, v1

    goto :goto_8
.end method

.method static a(Ljava/util/Set;)Lcom/google/common/collect/iq;
    .registers 2
    .parameter

    .prologue
    .line 336
    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 291
    new-instance v0, Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static a(Lcom/google/common/collect/kg;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter

    .prologue
    .line 196
    new-instance v1, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;

    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kg;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/kg;Lcom/google/common/collect/is;)V

    return-object v1
.end method

.method static a(ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 943
    if-ltz p0, :cond_16

    move v0, v1

    :goto_5
    const-string v3, "%s cannot be negative: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 944
    return-void

    :cond_16
    move v0, v2

    .line 943
    goto :goto_5
.end method

.method static a(Lcom/google/common/collect/iq;Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 703
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 725
    :goto_5
    return v0

    .line 706
    :cond_6
    instance-of v0, p1, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_50

    .line 707
    check-cast p1, Lcom/google/common/collect/iq;

    .line 714
    invoke-interface {p0}, Lcom/google/common/collect/iq;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/iq;->size()I

    move-result v3

    if-ne v0, v3, :cond_28

    invoke-interface {p0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2a

    :cond_28
    move v0, v2

    .line 716
    goto :goto_5

    .line 718
    :cond_2a
    invoke-interface {p1}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 719
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    if-eq v4, v0, :cond_32

    move v0, v2

    .line 720
    goto :goto_5

    :cond_4e
    move v0, v1

    .line 723
    goto :goto_5

    :cond_50
    move v0, v2

    .line 725
    goto :goto_5
.end method

.method static a(Lcom/google/common/collect/iq;Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 793
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 795
    invoke-interface {p0, p1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_15

    .line 796
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/iq;->setCount(Ljava/lang/Object;I)I

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method static a(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 733
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 734
    const/4 v0, 0x0

    .line 744
    :goto_7
    return v0

    .line 736
    :cond_8
    instance-of v0, p1, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_2e

    .line 737
    check-cast p1, Lcom/google/common/collect/iq;

    .line 738
    invoke-interface {p1}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 739
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/google/common/collect/iq;->add(Ljava/lang/Object;I)I

    goto :goto_16

    .line 742
    :cond_2e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ee;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 744
    :cond_35
    const/4 v0, 0x1

    goto :goto_7
.end method

.method static b(Ljava/lang/Iterable;)Lcom/google/common/collect/iq;
    .registers 1
    .parameter

    .prologue
    .line 950
    check-cast p0, Lcom/google/common/collect/iq;

    return-object p0
.end method

.method static b(Lcom/google/common/collect/iq;)Ljava/util/Iterator;
    .registers 3
    .parameter

    .prologue
    .line 878
    new-instance v0, Lcom/google/common/collect/iz;

    invoke-interface {p0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/iz;-><init>(Lcom/google/common/collect/iq;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static b(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 752
    instance-of v0, p1, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/google/common/collect/iq;

    invoke-interface {p1}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 755
    :cond_a
    invoke-interface {p0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static c(Lcom/google/common/collect/iq;)I
    .registers 7
    .parameter

    .prologue
    .line 935
    const-wide/16 v0, 0x0

    .line 936
    invoke-interface {p0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 937
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_b

    .line 939
    :cond_20
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method static c(Lcom/google/common/collect/iq;Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 763
    instance-of v0, p1, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/google/common/collect/iq;

    invoke-interface {p1}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 766
    :cond_a
    invoke-interface {p0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
