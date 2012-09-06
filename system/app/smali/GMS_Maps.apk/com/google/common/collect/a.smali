.class abstract Lcom/google/common/collect/a;
.super Lcom/google/common/collect/bh;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Q;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:Lcom/google/common/collect/a;

.field private transient c:Ljava/util/Set;

.field private transient d:Ljava/util/Set;

.field private transient e:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/common/collect/bh;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/a;-><init>(Ljava/util/Map;Lcom/google/common/collect/a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/common/collect/bh;-><init>()V

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/common/collect/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lcom/google/common/collect/a;->b(Ljava/lang/Object;)V

    .line 134
    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 106
    if-eqz v3, :cond_13

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 116
    :goto_12
    return-object p2

    .line 109
    :cond_13
    if-eqz p3, :cond_27

    .line 110
    invoke-virtual {p0}, Lcom/google/common/collect/a;->b()Lcom/google/common/collect/Q;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/common/collect/Q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_1c
    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/google/common/collect/a;->a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    .line 116
    goto :goto_12

    .line 112
    :cond_27
    invoke-virtual {p0, p2}, Lcom/google/common/collect/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v1

    :goto_2e
    const-string v4, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/P;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_38
    move v0, v2

    goto :goto_2e
.end method

.method static synthetic a(Lcom/google/common/collect/a;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/a;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/a;->a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    if-eqz p2, :cond_5

    .line 122
    invoke-direct {p0, p3}, Lcom/google/common/collect/a;->b(Ljava/lang/Object;)V

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    iget-object v0, v0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/a;)Lcom/google/common/collect/a;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/a;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/common/collect/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    iget-object v0, v0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    if-nez v0, :cond_30

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 75
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    if-nez v0, :cond_32

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 76
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 77
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 78
    if-eq p1, p2, :cond_34

    :goto_22
    invoke-static {v1}, Lcom/google/common/base/P;->a(Z)V

    .line 79
    iput-object p1, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/google/common/collect/f;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/google/common/collect/f;-><init>(Ljava/util/Map;Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V

    iput-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    .line 81
    return-void

    :cond_30
    move v0, v2

    .line 74
    goto :goto_7

    :cond_32
    move v0, v2

    .line 75
    goto :goto_f

    :cond_34
    move v1, v2

    .line 78
    goto :goto_22
.end method

.method public b()Lcom/google/common/collect/Q;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/common/collect/a;->d:Ljava/util/Set;

    .line 226
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V

    iput-object v0, p0, Lcom/google/common/collect/a;->d:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 151
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    iget-object v0, v0, Lcom/google/common/collect/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 152
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/common/collect/a;->b:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/common/collect/a;->e:Ljava/util/Set;

    .line 273
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/c;-><init>(Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V

    iput-object v0, p0, Lcom/google/common/collect/a;->e:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/common/collect/a;->c:Ljava/util/Set;

    .line 165
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V

    iput-object v0, p0, Lcom/google/common/collect/a;->c:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/a;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 144
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 147
    :cond_20
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/google/common/collect/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/a;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
