.class LK/cr;
.super LK/bi;


# instance fields
.field final a:LK/cl;


# direct methods
.method constructor <init>(LK/cl;)V
    .registers 2

    invoke-direct {p0}, LK/bi;-><init>()V

    iput-object p1, p0, LK/cr;->a:LK/cl;

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()LK/cC;
    .registers 3

    new-instance v0, LK/cs;

    iget-object v1, p0, LK/cr;->a:LK/cl;

    invoke-static {v1}, LK/cl;->a(LK/cl;)[LK/co;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, LK/cs;-><init>(LK/cr;I)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/cr;->a:LK/cl;

    invoke-virtual {v0, p1}, LK/cl;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/cr;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/cr;->a:LK/cl;

    invoke-static {v0}, LK/cl;->a(LK/cl;)[LK/co;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
