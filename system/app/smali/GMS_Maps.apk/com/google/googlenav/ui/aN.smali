.class Lcom/google/googlenav/ui/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/am;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 228
    const/16 v0, 0x5f

    iget-object v1, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/am;

    iget-object v1, v1, Lcom/google/googlenav/ui/am;->c:Ljava/lang/String;

    const-string v2, "2"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    if-eqz p1, :cond_13

    .line 235
    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/aW;->b(Ljava/lang/String;I)V

    .line 240
    :cond_13
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lan/p;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v0}, Lan/p;->b(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2b

    .line 244
    invoke-static {v0}, Lan/p;->c(Landroid/content/Context;)V

    .line 250
    :goto_2a
    return-void

    .line 248
    :cond_2b
    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/aW;->b(Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/am;

    iget-object v0, v0, Lcom/google/googlenav/ui/am;->d:Lcom/google/googlenav/ui/ah;

    invoke-static {v0}, Lcom/google/googlenav/ui/ah;->e(Lcom/google/googlenav/ui/ah;)Lcom/google/googlenav/aA;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/am;

    iget-object v1, v1, Lcom/google/googlenav/ui/am;->d:Lcom/google/googlenav/ui/ah;

    invoke-static {v1}, Lcom/google/googlenav/ui/ah;->d(Lcom/google/googlenav/ui/ah;)Lcom/google/googlenav/ui/ap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/aA;->a(Lcom/google/googlenav/ui/ap;)V

    goto :goto_2a
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 256
    if-eqz p1, :cond_9

    .line 259
    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    .line 263
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/am;

    iget-object v0, v0, Lcom/google/googlenav/ui/am;->d:Lcom/google/googlenav/ui/ah;

    invoke-static {v0}, Lcom/google/googlenav/ui/ah;->b(Lcom/google/googlenav/ui/ah;)V

    .line 264
    const/16 v0, 0x5f

    iget-object v1, p0, Lcom/google/googlenav/ui/an;->a:Lcom/google/googlenav/ui/am;

    iget-object v1, v1, Lcom/google/googlenav/ui/am;->c:Ljava/lang/String;

    const-string v2, "3"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/an;->b(Z)V

    .line 273
    return-void
.end method
