.class public Lar/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar/k;->a:Ljava/lang/String;

    iput p2, p0, Lar/k;->b:I

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lar/k;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lar/k;->c:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/k;

    iget v0, v0, Lar/k;->b:I

    add-int/2addr p2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_1c
    iput p2, p0, Lar/k;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lar/k;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar/k;->a:Ljava/lang/String;

    iget v0, p2, Lar/k;->b:I

    iput v0, p0, Lar/k;->b:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lar/k;->c:Ljava/util/List;

    iget-object v0, p0, Lar/k;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Ljava/util/List;
    .registers 9

    const/4 v2, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p1, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    :goto_d
    if-ge v0, p1, :cond_17

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/k;->b:I

    invoke-static {v1}, Lar/j;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lar/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lar/k;

    iget-object v0, p0, Lar/k;->c:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lar/l;

    invoke-direct {v0, p0}, Lar/l;-><init>(Lar/k;)V

    invoke-static {v5, v0}, Lar/a;->a([Ljava/lang/Object;Lar/d;)V

    move v1, v2

    :goto_53
    array-length v0, v5

    if-ge v1, v0, :cond_76

    aget-object v0, v5, v1

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v0, v3}, Lar/k;->a(I)Ljava/util/List;

    move-result-object v6

    move v3, v2

    :goto_5f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_72

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5f

    :cond_72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    :cond_76
    return-object v4
.end method


# virtual methods
.method public a(Lar/k;)Lar/k;
    .registers 9

    const/4 v2, 0x0

    iget v0, p0, Lar/k;->b:I

    iget v1, p1, Lar/k;->b:I

    add-int/2addr v0, v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    move v3, v0

    :goto_d
    iget-object v0, p0, Lar/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    iget-object v0, p0, Lar/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/k;

    iget-object v4, v0, Lar/k;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hierarchical MemoryUsages can\'t be merged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget v4, v0, Lar/k;->b:I

    sub-int/2addr v3, v4

    iget-object v4, v0, Lar/k;->a:Ljava/lang/String;

    iget v0, v0, Lar/k;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_3f
    move v4, v3

    move v3, v2

    :goto_41
    iget-object v0, p1, Lar/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_83

    iget-object v0, p1, Lar/k;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/k;

    iget-object v1, v0, Lar/k;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_61

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hierarchical MemoryUsages can\'t be merged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    iget v1, v0, Lar/k;->b:I

    sub-int/2addr v4, v1

    iget-object v1, v0, Lar/k;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_b7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    :goto_73
    iget-object v6, v0, Lar/k;->a:Ljava/lang/String;

    iget v0, v0, Lar/k;->b:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    :cond_83
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v6, Lar/k;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v6, v0, v1}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_90

    :cond_af
    new-instance v0, Lar/k;

    iget-object v1, p0, Lar/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0

    :cond_b7
    move v1, v2

    goto :goto_73
.end method

.method public a()Ljava/util/List;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lar/k;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
