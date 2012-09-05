.class final LK/bO;
.super LK/l;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/base/w;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/w;)V
    .registers 3

    iput-object p1, p0, LK/bO;->a:Ljava/util/Iterator;

    iput-object p2, p0, LK/bO;->b:Lcom/google/common/base/w;

    invoke-direct {p0}, LK/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .registers 3

    :cond_0
    iget-object v0, p0, LK/bO;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, LK/bO;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LK/bO;->b:Lcom/google/common/base/w;

    invoke-interface {v1, v0}, Lcom/google/common/base/w;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0}, LK/bO;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_16
.end method
