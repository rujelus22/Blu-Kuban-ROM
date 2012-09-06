.class LC/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LC/U;


# direct methods
.method constructor <init>(LC/U;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, LC/V;->a:LC/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 50
    new-instance v0, Landroid/location/Location;

    const-string v1, "speed_provider"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, LC/V;->a:LC/U;

    iget-object v2, p0, LC/V;->a:LC/U;

    invoke-static {v2}, LC/U;->a(LC/U;)F

    move-result v2

    invoke-static {v1, v0, v2}, LC/U;->a(LC/U;Landroid/location/Location;F)V

    .line 52
    iget-object v1, p0, LC/V;->a:LC/U;

    invoke-static {v1}, LC/U;->b(LC/U;)Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 53
    new-instance v1, LC/R;

    invoke-direct {v1, v0}, LC/R;-><init>(Landroid/location/Location;)V

    .line 54
    sget-object v0, LC/S;->c:LC/S;

    invoke-virtual {v1, v0}, LC/R;->a(LC/S;)V

    .line 55
    iget-object v0, p0, LC/V;->a:LC/U;

    invoke-static {v0, v1}, LC/U;->a(LC/U;LC/R;)V

    .line 56
    iget-object v0, p0, LC/V;->a:LC/U;

    invoke-virtual {v0}, LC/U;->e()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 57
    iget-object v0, p0, LC/V;->a:LC/U;

    invoke-static {v0}, LC/U;->c(LC/U;)LF/i;

    move-result-object v0

    iget-object v1, p0, LC/V;->a:LC/U;

    iget-object v1, v1, LC/U;->a:Ljava/lang/Runnable;

    invoke-static {}, LC/U;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, LF/i;->b(Ljava/lang/Runnable;J)Z

    .line 59
    :cond_47
    return-void
.end method
