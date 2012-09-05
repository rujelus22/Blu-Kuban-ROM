.class LK/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:LK/i;


# direct methods
.method constructor <init>(LK/i;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, LK/j;->c:LK/i;

    iput-object p2, p0, LK/j;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, LK/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LK/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LK/j;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, LK/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, LK/j;->c:LK/i;

    iget-object v0, v0, LK/i;->b:LK/a;

    iget-object v1, p0, LK/j;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, LK/a;->b(LK/a;Ljava/lang/Object;)V

    return-void
.end method
