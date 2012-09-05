.class Lcom/google/googlenav/ui/wizard/fc;
.super Ljava/lang/Object;

# interfaces
.implements Lax/ag;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fa;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/fa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fc;->a:Lcom/google/googlenav/ui/wizard/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/fa;Lcom/google/googlenav/ui/wizard/fb;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/fc;-><init>(Lcom/google/googlenav/ui/wizard/fa;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fc;->a:Lcom/google/googlenav/ui/wizard/fa;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fa;->b(Lcom/google/googlenav/ui/wizard/fa;)Lcom/google/googlenav/ui/wizard/fd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/fd;->a()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aL;

    invoke-virtual {v0}, Lax/aL;->c()Lax/aN;

    move-result-object v2

    sget-object v3, Lax/aN;->c:Lax/aN;

    if-ne v2, v3, :cond_4

    new-instance v2, LaX/j;

    invoke-virtual {v0}, Lax/aL;->a()J

    move-result-wide v3

    const/4 v0, 0x2

    invoke-direct {v2, v3, v4, v0}, LaX/j;-><init>(JI)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fc;->a:Lcom/google/googlenav/ui/wizard/fa;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fa;->a(Lcom/google/googlenav/ui/wizard/fa;)Lay/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lay/a;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    goto :goto_4

    :cond_2c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fc;->a:Lcom/google/googlenav/ui/wizard/fa;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fa;->b(Lcom/google/googlenav/ui/wizard/fa;)Lcom/google/googlenav/ui/wizard/fd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/fd;->a(Ljava/util/List;)V

    return-void
.end method
