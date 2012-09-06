.class Lcom/google/googlenav/ui/view/dialog/bZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bS;)V
    .registers 2
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bZ;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 401
    const-string v0, "a"

    const-string v1, ""

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bZ;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ca;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/ca;-><init>(Lcom/google/googlenav/ui/view/dialog/bZ;)V

    invoke-virtual {v0, v1}, Laz/a;->a(Laz/m;)V

    .line 417
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bZ;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    invoke-virtual {v0}, Laz/a;->f()V

    .line 418
    return-void
.end method
