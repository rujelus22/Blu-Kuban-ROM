.class LaH/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaH/d;


# direct methods
.method constructor <init>(LaH/d;)V
    .registers 2

    iput-object p1, p0, LaH/e;->a:LaH/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, LaH/e;->a:LaH/d;

    invoke-static {v0}, LaH/d;->a(LaH/d;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, LaH/e;->a:LaH/d;

    invoke-static {v1}, LaH/d;->b(LaH/d;)LaH/j;

    move-result-object v1

    invoke-virtual {v1, v0}, LaH/j;->d(Landroid/location/Location;)V

    iget-object v1, p0, LaH/e;->a:LaH/d;

    invoke-static {v1, v0}, LaH/d;->a(LaH/d;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method
