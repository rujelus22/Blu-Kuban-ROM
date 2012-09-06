.class Lcom/google/googlenav/ui/wizard/cA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LT/f;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/cz;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cz;LT/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/cz;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cA;->a:LT/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/cz;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cz;->f:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/cz;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cz;->f:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->h:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/dialog/at;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:LT/f;

    if-eqz v0, :cond_2e

    .line 220
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/cz;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cz;->f:Lcom/google/googlenav/ui/wizard/cw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cw;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/at;

    .line 221
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/cz;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/cz;->b:Lcom/google/googlenav/ui/wizard/cC;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->a:LT/f;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/cC;->a(LT/f;)V

    .line 222
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/cz;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/cz;->b:Lcom/google/googlenav/ui/wizard/cC;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/at;->a(Lcom/google/googlenav/ui/wizard/cC;)V

    .line 224
    :cond_2e
    return-void
.end method
