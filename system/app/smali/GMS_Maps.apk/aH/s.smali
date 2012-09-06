.class public Lah/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/google/googlenav/android/Y;

.field private d:I


# direct methods
.method public constructor <init>(ILcom/google/googlenav/android/Y;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lah/s;->b:Ljava/util/Map;

    .line 57
    iput p1, p0, Lah/s;->d:I

    .line 58
    iput-object p2, p0, Lah/s;->c:Lcom/google/googlenav/android/Y;

    .line 59
    new-instance v0, Lcom/google/common/collect/cF;

    invoke-direct {v0}, Lcom/google/common/collect/cF;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/cF;->a(I)Lcom/google/common/collect/cF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/cF;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lah/s;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 62
    return-void
.end method

.method static synthetic a(Lah/s;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lah/s;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/bx;Lah/v;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lah/s;->b(Lcom/google/googlenav/ui/bx;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aP;

    new-instance v3, Lah/t;

    invoke-direct {v3, p0, v0, p2}, Lah/t;-><init>(Lah/s;Ljava/lang/String;Lah/v;)V

    invoke-direct {v2, v0, p3, v3}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;ZLcom/google/googlenav/aR;)V

    invoke-virtual {v1, v2}, Lac/h;->c(Lac/g;)V

    .line 208
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/bx;Ljava/util/List;Lah/v;Lah/p;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lah/s;->b(Lcom/google/googlenav/ui/bx;)Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v0, p0, Lah/s;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    if-eqz v0, :cond_12

    .line 134
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_11
    :goto_11
    return-void

    .line 135
    :cond_12
    iget-object v0, p0, Lah/s;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v2, p0, Lah/s;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p3}, Lah/v;->a()V

    goto :goto_11
.end method

.method private a(Ljava/util/List;Lah/v;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 148
    move v1, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 149
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1e

    const/4 v3, 0x1

    .line 152
    :goto_17
    invoke-direct {p0, v0, p2, v3}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Lah/v;Z)V

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1e
    move v3, v2

    .line 150
    goto :goto_17

    .line 154
    :cond_20
    return-void
.end method

.method static synthetic b(Lah/s;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lah/s;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lah/s;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lah/s;->c:Lcom/google/googlenav/android/Y;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/bx;)LS/f;
    .registers 4
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lah/s;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0, p1}, Lah/s;->b(Lcom/google/googlenav/ui/bx;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_f

    .line 67
    check-cast v0, LS/f;

    .line 69
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lah/s;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 222
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bx;Lah/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 164
    return-void
.end method

.method public a(Ljava/lang/Iterable;Lah/p;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v1, Lah/v;

    invoke-direct {v1}, Lah/v;-><init>()V

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    .line 120
    invoke-direct {p0, v0, v2, v1, p2}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Ljava/util/List;Lah/v;Lah/p;)V

    goto :goto_e

    .line 124
    :cond_1e
    invoke-direct {p0, v2, v1}, Lah/s;->a(Ljava/util/List;Lah/v;)V

    .line 125
    return-void
.end method

.method public a(Ljava/lang/Iterable;Lcom/google/common/base/D;Lah/p;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p1, p2}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/Q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/bT;->b(Ljava/lang/Iterable;Lcom/google/common/base/Q;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 88
    return-void
.end method

.method public b()I
    .registers 4

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lah/s;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/f;

    .line 228
    invoke-interface {v0}, LS/f;->g()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c

    .line 230
    :cond_1f
    return v1
.end method

.method protected b(Lcom/google/googlenav/ui/bx;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bx;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/aP;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Iterable;Lcom/google/common/base/D;Lah/p;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {p1, p2}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;)Ljava/lang/Iterable;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/google/common/collect/bT;->d(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/Q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/bT;->b(Ljava/lang/Iterable;Lcom/google/common/base/Q;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 105
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lah/s;->d:I

    return v0
.end method

.method public c(Lcom/google/googlenav/ui/bx;)Z
    .registers 4
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lah/s;->b(Lcom/google/googlenav/ui/bx;)Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lah/s;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
