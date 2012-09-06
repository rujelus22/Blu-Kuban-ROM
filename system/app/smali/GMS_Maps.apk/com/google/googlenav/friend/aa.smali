.class Lcom/google/googlenav/friend/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/Z;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/googlenav/friend/aa;->a:Lcom/google/googlenav/friend/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.google.android.apps.plus"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V

    .line 180
    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "oa"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aa;->a:Lcom/google/googlenav/friend/Z;

    iget-object v1, v1, Lcom/google/googlenav/friend/Z;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 189
    return-void
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 207
    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "or"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aa;->a:Lcom/google/googlenav/friend/Z;

    iget-object v1, v1, Lcom/google/googlenav/friend/Z;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 211
    return-void
.end method

.method public c(Z)V
    .registers 5
    .parameter

    .prologue
    .line 196
    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "oc"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aa;->a:Lcom/google/googlenav/friend/Z;

    iget-object v1, v1, Lcom/google/googlenav/friend/Z;->d:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 200
    return-void
.end method
