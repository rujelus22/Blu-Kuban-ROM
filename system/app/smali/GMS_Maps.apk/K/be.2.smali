.class public final LK/be;
.super LK/a;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, LK/a;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static e()LK/be;
    .registers 1

    new-instance v0, LK/be;

    invoke-direct {v0}, LK/be;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b()LK/I;
    .registers 2

    invoke-super {p0}, LK/a;->b()LK/I;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, LK/a;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    invoke-super {p0}, LK/a;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, LK/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, LK/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, LK/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1, p2}, LK/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .registers 2

    invoke-super {p0, p1}, LK/a;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1}, LK/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
