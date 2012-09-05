.class LK/cm;
.super LK/bv;


# instance fields
.field final transient b:LK/cl;


# direct methods
.method constructor <init>(LK/cl;)V
    .registers 3

    invoke-static {p1}, LK/cl;->a(LK/cl;)[LK/co;

    move-result-object v0

    invoke-direct {p0, v0}, LK/bv;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, LK/cm;->b:LK/cl;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1e

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, LK/cm;->b:LK/cl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, LK/cl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method
