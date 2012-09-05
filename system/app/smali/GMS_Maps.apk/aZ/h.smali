.class LaZ/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aC;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/googlenav/E;

.field final synthetic c:LaY/i;

.field final synthetic d:LaZ/b;


# direct methods
.method constructor <init>(LaZ/b;Ljava/util/Map;Lcom/google/googlenav/E;LaY/i;)V
    .registers 5

    iput-object p1, p0, LaZ/h;->d:LaZ/b;

    iput-object p2, p0, LaZ/h;->a:Ljava/util/Map;

    iput-object p3, p0, LaZ/h;->b:Lcom/google/googlenav/E;

    iput-object p4, p0, LaZ/h;->c:LaY/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aA;)Z
    .registers 5

    iget-object v0, p0, LaZ/h;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, LaZ/h;->b:Lcom/google/googlenav/E;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    iget-object v1, p0, LaZ/h;->d:LaZ/b;

    iget-object v2, p0, LaZ/h;->c:LaY/i;

    invoke-static {v1, v2, v0}, LaZ/b;->a(LaZ/b;LaY/i;Lcom/google/googlenav/D;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(Z)V

    const/4 v0, 0x0

    goto :goto_f
.end method
