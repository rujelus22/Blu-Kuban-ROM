.class LK/i;
.super LK/bc;


# instance fields
.field final a:Ljava/util/Set;

.field final synthetic b:LK/a;


# direct methods
.method private constructor <init>(LK/a;)V
    .registers 3

    iput-object p1, p0, LK/i;->b:LK/a;

    invoke-direct {p0}, LK/bc;-><init>()V

    iget-object v0, p0, LK/i;->b:LK/a;

    invoke-static {v0}, LK/a;->b(LK/a;)LK/a;

    move-result-object v0

    invoke-virtual {v0}, LK/a;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LK/i;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(LK/a;LK/b;)V
    .registers 3

    invoke-direct {p0, p1}, LK/i;-><init>(LK/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LK/i;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, LK/i;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/i;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, LK/i;->b:LK/a;

    invoke-static {v0}, LK/a;->a(LK/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LK/j;

    invoke-direct {v1, p0, v0}, LK/j;-><init>(LK/i;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/i;->e()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, LK/i;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, LK/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
