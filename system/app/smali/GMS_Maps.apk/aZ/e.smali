.class LaZ/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aF;


# instance fields
.field final synthetic a:LaZ/b;


# direct methods
.method constructor <init>(LaZ/b;)V
    .registers 2

    iput-object p1, p0, LaZ/e;->a:LaZ/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 5

    iget-object v0, p0, LaZ/e;->a:LaZ/b;

    invoke-static {v0}, LaZ/b;->g(LaZ/b;)LaY/x;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, LaZ/e;->a:LaZ/b;

    invoke-virtual {v0}, LaY/x;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/E;->c()I

    move-result v2

    invoke-static {v1, v0, v2}, LaZ/b;->a(LaZ/b;LaY/i;I)V

    :cond_15
    return-void
.end method
