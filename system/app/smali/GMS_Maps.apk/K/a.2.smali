.class abstract LK/a;
.super LK/aZ;

# interfaces
.implements LK/I;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient a:Ljava/util/Map;

.field private transient b:LK/a;

.field private transient c:Ljava/util/Set;

.field private transient d:Ljava/util/Set;

.field private transient e:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Map;LK/a;)V
    .registers 3

    invoke-direct {p0}, LK/aZ;-><init>()V

    iput-object p1, p0, LK/a;->a:Ljava/util/Map;

    iput-object p2, p0, LK/a;->b:LK/a;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;LK/a;LK/b;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LK/a;-><init>(Ljava/util/Map;LK/a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, LK/aZ;-><init>()V

    invoke-virtual {p0, p1, p2}, LK/a;->a(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(LK/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, LK/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, LK/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, LK/a;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, LK/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0, p1}, LK/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-object p2

    :cond_13
    if-eqz p3, :cond_27

    invoke-virtual {p0}, LK/a;->b()LK/I;

    move-result-object v0

    invoke-interface {v0, p2}, LK/I;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    iget-object v0, p0, LK/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0, p2}, LK/a;->a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_12

    :cond_27
    invoke-virtual {p0, p2}, LK/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v1

    :goto_2e
    const-string v4, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/v;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_38
    move v0, v2

    goto :goto_2e
.end method

.method static synthetic a(LK/a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, LK/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(LK/a;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, LK/a;->a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    if-eqz p2, :cond_5

    invoke-direct {p0, p3}, LK/a;->b(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, LK/a;->b:LK/a;

    iget-object v0, v0, LK/a;->a:Ljava/util/Map;

    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(LK/a;)LK/a;
    .registers 2

    iget-object v0, p0, LK/a;->b:LK/a;

    return-object v0
.end method

.method static synthetic b(LK/a;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, LK/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, LK/a;->b:LK/a;

    iget-object v0, v0, LK/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, LK/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LK/a;->a:Ljava/util/Map;

    if-nez v0, :cond_30

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    iget-object v0, p0, LK/a;->b:LK/a;

    if-nez v0, :cond_32

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    if-eq p1, p2, :cond_34

    :goto_22
    invoke-static {v1}, Lcom/google/common/base/v;->a(Z)V

    iput-object p1, p0, LK/a;->a:Ljava/util/Map;

    new-instance v0, LK/f;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, LK/f;-><init>(Ljava/util/Map;LK/a;LK/b;)V

    iput-object v0, p0, LK/a;->b:LK/a;

    return-void

    :cond_30
    move v0, v2

    goto :goto_7

    :cond_32
    move v0, v2

    goto :goto_f

    :cond_34
    move v1, v2

    goto :goto_22
.end method

.method public b()LK/I;
    .registers 2

    iget-object v0, p0, LK/a;->b:LK/a;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, LK/a;->d:Ljava/util/Set;

    if-nez v0, :cond_c

    new-instance v0, LK/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LK/i;-><init>(LK/a;LK/b;)V

    iput-object v0, p0, LK/a;->d:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, LK/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LK/a;->b:LK/a;

    iget-object v0, v0, LK/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/a;->b:LK/a;

    invoke-virtual {v0, p1}, LK/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, LK/a;->e:Ljava/util/Set;

    if-nez v0, :cond_c

    new-instance v0, LK/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LK/c;-><init>(LK/a;LK/b;)V

    iput-object v0, p0, LK/a;->e:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, LK/a;->c:Ljava/util/Set;

    if-nez v0, :cond_c

    new-instance v0, LK/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LK/g;-><init>(LK/a;LK/b;)V

    iput-object v0, p0, LK/a;->c:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LK/a;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, LK/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, LK/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, LK/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, LK/a;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
