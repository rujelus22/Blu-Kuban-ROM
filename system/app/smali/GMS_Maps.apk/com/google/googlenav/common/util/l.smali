.class public Lcom/google/googlenav/common/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/googlenav/common/util/l;->a:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/google/googlenav/common/util/l;->b:I

    .line 75
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/googlenav/common/util/l;->a:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    .line 84
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 85
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/util/l;

    .line 86
    iget v0, v0, Lcom/google/googlenav/common/util/l;->b:I

    add-int/2addr p2, v0

    .line 84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 88
    :cond_1c
    iput p2, p0, Lcom/google/googlenav/common/util/l;->b:I

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/common/util/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/googlenav/common/util/l;->a:Ljava/lang/String;

    .line 97
    iget v0, p2, Lcom/google/googlenav/common/util/l;->b:I

    iput v0, p0, Lcom/google/googlenav/common/util/l;->b:I

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method private a(I)Ljava/util/List;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p1, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v2

    .line 118
    :goto_d
    if-ge v0, p1, :cond_17

    .line 119
    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 121
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/common/util/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/common/util/l;->b:I

    invoke-static {v1}, Lcom/google/googlenav/common/util/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/google/googlenav/common/util/l;

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/google/googlenav/common/util/m;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/util/m;-><init>(Lcom/google/googlenav/common/util/l;)V

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v1, v2

    .line 133
    :goto_53
    array-length v0, v5

    if-ge v1, v0, :cond_76

    .line 134
    aget-object v0, v5, v1

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/util/l;->a(I)Ljava/util/List;

    move-result-object v6

    move v3, v2

    .line 135
    :goto_5f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_72

    .line 136
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5f

    .line 133
    :cond_72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    .line 140
    :cond_76
    return-object v4
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 152
    iget v0, p0, Lcom/google/googlenav/common/util/l;->b:I

    iget v1, p1, Lcom/google/googlenav/common/util/l;->b:I

    add-int/2addr v0, v1

    .line 155
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    move v3, v0

    .line 158
    :goto_d
    iget-object v0, p0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/util/l;

    .line 160
    iget-object v4, v0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2d

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hierarchical MemoryUsages can\'t be merged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2d
    iget v4, v0, Lcom/google/googlenav/common/util/l;->b:I

    sub-int/2addr v3, v4

    .line 164
    iget-object v4, v0, Lcom/google/googlenav/common/util/l;->a:Ljava/lang/String;

    iget v0, v0, Lcom/google/googlenav/common/util/l;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_3f
    move v4, v3

    move v3, v2

    .line 169
    :goto_41
    iget-object v0, p1, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_83

    .line 170
    iget-object v0, p1, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/util/l;

    .line 171
    iget-object v1, v0, Lcom/google/googlenav/common/util/l;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_61

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hierarchical MemoryUsages can\'t be merged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_61
    iget v1, v0, Lcom/google/googlenav/common/util/l;->b:I

    sub-int/2addr v4, v1

    .line 176
    iget-object v1, v0, Lcom/google/googlenav/common/util/l;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 177
    if-eqz v1, :cond_bd

    .line 178
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    .line 180
    :goto_73
    iget-object v6, v0, Lcom/google/googlenav/common/util/l;->a:Ljava/lang/String;

    iget v0, v0, Lcom/google/googlenav/common/util/l;->b:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_41

    .line 185
    :cond_83
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 186
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    new-instance v5, Lcom/google/googlenav/common/util/l;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v5, v1, v0}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_90

    .line 190
    :cond_b5
    new-instance v0, Lcom/google/googlenav/common/util/l;

    iget-object v1, p0, Lcom/google/googlenav/common/util/l;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0

    :cond_bd
    move v1, v2

    goto :goto_73
.end method

.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/util/l;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
