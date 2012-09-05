.class LaZ/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/o;


# instance fields
.field final synthetic a:LaZ/b;


# direct methods
.method private constructor <init>(LaZ/b;)V
    .registers 2

    iput-object p1, p0, LaZ/m;->a:LaZ/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaZ/b;LaZ/c;)V
    .registers 3

    invoke-direct {p0, p1}, LaZ/m;-><init>(LaZ/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/n;Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 7

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aD;

    iget-object v0, p0, LaZ/m;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->h(LaZ/b;)LK/I;

    move-result-object v0

    invoke-interface {v0}, LK/I;->b()LK/I;

    move-result-object v0

    invoke-interface {v0, p1}, LK/I;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()I

    move-result v3

    if-ge v1, v3, :cond_3a

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/D;->f()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v2, p0, LaZ/m;->a:LaZ/b;

    invoke-static {v2, v0, v1}, LaZ/b;->b(LaZ/b;LaY/i;I)V

    :cond_3a
    return-void

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method
