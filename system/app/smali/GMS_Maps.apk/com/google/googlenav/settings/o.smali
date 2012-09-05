.class Lcom/google/googlenav/settings/o;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

.field private b:Lax/aZ;

.field private c:Lax/bD;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lax/bD;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/settings/p;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/settings/p;-><init>(Lcom/google/googlenav/settings/o;Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    iput-object v0, p0, Lcom/google/googlenav/settings/o;->b:Lax/aZ;

    iput-object p2, p0, Lcom/google/googlenav/settings/o;->c:Lax/bD;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/Q;->g:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "automatic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/k;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->c:Lax/bD;

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->b:Lax/aZ;

    invoke-virtual {v0, v2, v1}, Lax/bD;->a(ZLax/aZ;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const-string v0, "manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/Q;->i:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "start_activity_on_complete"

    const-class v2, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    :cond_3d
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/k;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->c:Lax/bD;

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->b:Lax/aZ;

    invoke-virtual {v0, v2, v1}, Lax/bD;->b(ZLax/aZ;)V

    goto :goto_1e
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lax/k;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lax/k;

    move-result-object v0

    invoke-virtual {v0}, Lax/k;->k()Lax/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lax/j;->a(Z)V

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/q;->a(Lax/j;)V

    goto :goto_8
.end method

.method public b()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/Q;->f:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    if-eqz p1, :cond_21

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/Q;->e:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "start_activity_on_complete"

    const-class v2, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Z)V

    goto :goto_20
.end method

.method public c()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/Q;->k:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lax/k;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->h(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lax/k;

    move-result-object v0

    invoke-virtual {v0}, Lax/k;->k()Lax/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lax/j;->b(Z)V

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/q;->a(Lax/j;)V

    goto :goto_8
.end method

.method public d()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/Q;->j:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
