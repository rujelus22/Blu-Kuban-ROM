.class Lcom/google/googlenav/ui/wizard/jk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/jj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/jj;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jk;->a:Lcom/google/googlenav/ui/wizard/jj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jk;->a:Lcom/google/googlenav/ui/wizard/jj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/jj;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jk;->a:Lcom/google/googlenav/ui/wizard/jj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jj;->o()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jk;->a:Lcom/google/googlenav/ui/wizard/jj;

    new-instance v1, Lcom/google/googlenav/ui/wizard/jn;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jk;->a:Lcom/google/googlenav/ui/wizard/jj;

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/jn;-><init>(Lcom/google/googlenav/ui/wizard/jj;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/jj;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 114
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jk;->a:Lcom/google/googlenav/ui/wizard/jj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/jj;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 116
    :cond_20
    return-void
.end method
