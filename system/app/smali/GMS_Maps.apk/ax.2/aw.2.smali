.class Lax/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lax/av;


# direct methods
.method constructor <init>(Lax/av;)V
    .registers 2

    iput-object p1, p0, Lax/aw;->a:Lax/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.google.android.apps.plus"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;)V

    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "oa"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lax/aw;->a:Lax/av;

    iget-object v1, v1, Lax/av;->d:Lax/bq;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "or"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lax/aw;->a:Lax/av;

    iget-object v1, v1, Lax/av;->d:Lax/bq;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public c(Z)V
    .registers 5

    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "oc"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lax/aw;->a:Lax/av;

    iget-object v1, v1, Lax/av;->d:Lax/bq;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method
