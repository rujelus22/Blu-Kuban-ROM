.class public final LK/bo;
.super LK/bk;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, LK/bk;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LK/bo;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)LK/bk;
    .registers 3

    invoke-virtual {p0, p1}, LK/bo;->b(Ljava/lang/Object;)LK/bo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Ljava/lang/Object;)LK/bk;
    .registers 3

    invoke-virtual {p0, p1}, LK/bo;->b([Ljava/lang/Object;)LK/bo;

    move-result-object v0

    return-object v0
.end method

.method public a()LK/bn;
    .registers 2

    iget-object v0, p0, LK/bo;->a:Ljava/util/ArrayList;

    invoke-static {v0}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)LK/bo;
    .registers 4

    iget-object v0, p0, LK/bo;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs b([Ljava/lang/Object;)LK/bo;
    .registers 5

    iget-object v0, p0, LK/bo;->a:Ljava/util/ArrayList;

    iget-object v1, p0, LK/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-super {p0, p1}, LK/bk;->a([Ljava/lang/Object;)LK/bk;

    return-object p0
.end method
