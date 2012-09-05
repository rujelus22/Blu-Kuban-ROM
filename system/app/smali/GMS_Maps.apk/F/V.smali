.class LF/V;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/U;


# direct methods
.method constructor <init>(LF/U;)V
    .registers 2

    iput-object p1, p0, LF/V;->a:LF/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Landroid/location/Location;

    const-string v1, "speed_provider"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LF/V;->a:LF/U;

    iget-object v2, p0, LF/V;->a:LF/U;

    invoke-static {v2}, LF/U;->a(LF/U;)F

    move-result v2

    invoke-static {v1, v0, v2}, LF/U;->a(LF/U;Landroid/location/Location;F)V

    iget-object v1, p0, LF/V;->a:LF/U;

    invoke-static {v1}, LF/U;->b(LF/U;)Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    new-instance v1, LF/R;

    invoke-direct {v1, v0}, LF/R;-><init>(Landroid/location/Location;)V

    sget-object v0, LF/S;->c:LF/S;

    invoke-virtual {v1, v0}, LF/R;->a(LF/S;)V

    iget-object v0, p0, LF/V;->a:LF/U;

    invoke-static {v0, v1}, LF/U;->a(LF/U;LF/R;)V

    iget-object v0, p0, LF/V;->a:LF/U;

    invoke-virtual {v0}, LF/U;->e()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, LF/V;->a:LF/U;

    invoke-static {v0}, LF/U;->c(LF/U;)LI/i;

    move-result-object v0

    iget-object v1, p0, LF/V;->a:LF/U;

    iget-object v1, v1, LF/U;->a:Ljava/lang/Runnable;

    invoke-static {}, LF/U;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LI/i;->b(Ljava/lang/Runnable;J)Z

    :cond_47
    return-void
.end method
