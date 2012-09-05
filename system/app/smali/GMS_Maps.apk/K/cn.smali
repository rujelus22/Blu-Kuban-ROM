.class LK/cn;
.super LK/bx;


# instance fields
.field final d:LK/cl;


# direct methods
.method constructor <init>(LK/cl;)V
    .registers 4

    invoke-static {p1}, LK/cl;->a(LK/cl;)[LK/co;

    move-result-object v0

    invoke-static {p1}, LK/cl;->b(LK/cl;)I

    move-result v1

    invoke-direct {p0, v0, v1}, LK/bx;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, LK/cn;->d:LK/cl;

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, LK/cn;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/cn;->d:LK/cl;

    invoke-virtual {v0, p1}, LK/cl;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
