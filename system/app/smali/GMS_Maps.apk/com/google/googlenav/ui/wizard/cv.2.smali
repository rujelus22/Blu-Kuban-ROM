.class Lcom/google/googlenav/ui/wizard/cV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aZ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/l;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/cS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cS;Lcom/google/googlenav/friend/history/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cV;->b:Lcom/google/googlenav/ui/wizard/cS;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cV;->a:Lcom/google/googlenav/friend/history/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cV;->b:Lcom/google/googlenav/ui/wizard/cS;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aF;->m()V

    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cV;->b:Lcom/google/googlenav/ui/wizard/cS;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->a:Lcom/google/googlenav/friend/history/w;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cV;->a:Lcom/google/googlenav/friend/history/l;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/l;->q()Lcom/google/googlenav/friend/history/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;)V

    .line 152
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cV;->b:Lcom/google/googlenav/ui/wizard/cS;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->a:Lcom/google/googlenav/friend/history/w;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/w;->a()V

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cV;->b:Lcom/google/googlenav/ui/wizard/cS;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cS;->a:Lcom/google/googlenav/ui/wizard/cR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cR;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/aF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aF;->l()V

    .line 160
    return-void
.end method
