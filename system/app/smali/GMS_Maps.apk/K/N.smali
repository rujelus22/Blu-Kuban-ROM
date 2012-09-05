.class LK/N;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:LK/L;


# direct methods
.method constructor <init>(LK/L;Ljava/util/Collection;)V
    .registers 3

    iput-object p1, p0, LK/N;->b:LK/L;

    iput-object p2, p0, LK/N;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/N;->b:LK/L;

    iget-object v0, v0, LK/L;->b:Lcom/google/common/base/w;

    invoke-interface {v0, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LK/N;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
