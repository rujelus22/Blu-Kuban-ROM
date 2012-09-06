.class Lcom/google/googlenav/ui/wizard/cT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/history/G;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/b;

.field final synthetic b:Lcom/google/googlenav/friend/history/b;

.field final synthetic c:Lcom/google/googlenav/friend/history/b;

.field final synthetic d:Lcom/google/googlenav/ui/view/dialog/aM;

.field final synthetic e:Lcom/google/googlenav/ui/wizard/cS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cS;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/ui/view/dialog/aM;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cT;->e:Lcom/google/googlenav/ui/wizard/cS;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cT;->a:Lcom/google/googlenav/friend/history/b;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cT;->b:Lcom/google/googlenav/friend/history/b;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/cT;->c:Lcom/google/googlenav/friend/history/b;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/cT;->d:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cT;->d:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aM;->a()V

    .line 84
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cT;->e:Lcom/google/googlenav/ui/wizard/cS;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_19

    .line 76
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cT;->e:Lcom/google/googlenav/ui/wizard/cS;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/aF;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cT;->a:Lcom/google/googlenav/friend/history/b;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cT;->b:Lcom/google/googlenav/friend/history/b;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cT;->c:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/aF;->a(Ljava/util/List;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V

    .line 79
    :cond_19
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cT;->e:Lcom/google/googlenav/ui/wizard/cS;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cS;->a(Lcom/google/googlenav/ui/wizard/cS;)V

    .line 89
    return-void
.end method
