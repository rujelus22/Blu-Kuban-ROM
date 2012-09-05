.class final Lcom/google/common/collect/ab;
.super Lcom/google/common/collect/ao;
.source "SourceFile"


# instance fields
.field transient a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ab;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 948
    iput-object p1, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ao;-><init>()V

    .line 994
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1045
    return-void
.end method

.method public final count(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1030
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1031
    if-nez v0, :cond_11

    move v0, v1

    .line 1035
    :goto_10
    return v0

    .line 1031
    :cond_11
    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_16
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_14} :catch_19

    move-result v0

    goto :goto_10

    .line 1033
    :catch_16
    move-exception v0

    move v0, v1

    goto :goto_10

    .line 1035
    :catch_19
    move-exception v0

    move v0, v1

    goto :goto_10
.end method

.method public final elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/google/common/collect/ab;->a:Ljava/util/Set;

    .line 991
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/ac;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/ab;)V

    iput-object v0, p0, Lcom/google/common/collect/ab;->a:Ljava/util/Set;

    :cond_b
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1023
    new-instance v0, Lcom/google/common/collect/aa;

    iget-object v1, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/aa;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 951
    if-nez p2, :cond_8

    .line 952
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ab;->count(Ljava/lang/Object;)I

    move-result v1

    .line 980
    :cond_7
    :goto_7
    return v1

    .line 954
    :cond_8
    if-lez p2, :cond_29

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    .line 958
    :try_start_e
    iget-object v0, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1a} :catch_43
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_1a} :catch_41

    .line 965
    if-eqz v0, :cond_7

    .line 968
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 970
    if-lt p2, v2, :cond_2b

    .line 971
    iget-object v0, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    #calls: Lcom/google/common/collect/AbstractMultimap;->removeValuesForKey(Ljava/lang/Object;)I
    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    move-result v1

    goto :goto_7

    :cond_29
    move v0, v1

    .line 954
    goto :goto_b

    .line 974
    :cond_2b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 975
    :goto_2f
    if-ge v1, p2, :cond_3a

    .line 976
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 977
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 979
    :cond_3a
    iget-object v0, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    move v1, v2

    .line 980
    goto :goto_7

    .line 962
    :catch_41
    move-exception v0

    goto :goto_7

    .line 960
    :catch_43
    move-exception v0

    goto :goto_7
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$200(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
