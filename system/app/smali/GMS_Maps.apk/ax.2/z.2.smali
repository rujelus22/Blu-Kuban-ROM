.class Lax/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cc;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lax/x;


# direct methods
.method constructor <init>(Lax/x;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lax/z;->b:Lax/x;

    iput-object p2, p0, Lax/z;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lax/aP;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lax/aP;->a(I)V

    invoke-virtual {p1}, Lax/aP;->B()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    iget-object v2, p0, Lax/z;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lax/z;->a(Lax/aP;)V

    iget-object v2, p0, Lax/z;->b:Lax/x;

    invoke-static {v2}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v2

    invoke-virtual {v2}, LaY/K;->b()Lax/aS;

    move-result-object v2

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lax/aS;->a(Ljava/lang/Long;)Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, v0}, Lax/z;->a(Lax/aP;)V

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_31
    iget-object v0, p0, Lax/z;->b:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->J()V

    iget-object v0, p0, Lax/z;->b:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaY/K;->a(B)V

    iget-object v0, p0, Lax/z;->b:Lax/x;

    invoke-static {v0}, Lax/x;->f(Lax/x;)Lax/r;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    return-void
.end method
