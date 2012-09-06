.class Lcom/google/googlenav/ui/view/dialog/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laz/m;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bZ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bZ;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ca;->a:Lcom/google/googlenav/ui/view/dialog/bZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineDataUpdate(Laz/l;)V
    .registers 3
    .parameter

    .prologue
    .line 410
    invoke-virtual {p1}, Laz/l;->j()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Laz/l;->b()I

    move-result v0

    if-nez v0, :cond_26

    .line 412
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ca;->a:Lcom/google/googlenav/ui/view/dialog/bZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bZ;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    invoke-virtual {v0}, Laz/a;->h()Z

    .line 413
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ca;->a:Lcom/google/googlenav/ui/view/dialog/bZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bZ;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Laz/a;->b(Laz/m;)V

    .line 415
    :cond_26
    return-void
.end method
