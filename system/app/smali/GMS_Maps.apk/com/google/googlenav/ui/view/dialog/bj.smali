.class Lcom/google/googlenav/ui/view/dialog/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bi;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bi;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bj;->a:Lcom/google/googlenav/ui/view/dialog/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bj;->a:Lcom/google/googlenav/ui/view/dialog/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bi;->c:LaM/i;

    invoke-virtual {v0}, LaM/i;->af()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bj;->a:Lcom/google/googlenav/ui/view/dialog/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bi;->a:Lcom/google/googlenav/ui/view/android/bE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bj;->a:Lcom/google/googlenav/ui/view/dialog/bi;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bi;->d:Lcom/google/googlenav/ui/view/dialog/bh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bh;->a()V

    .line 79
    :cond_1b
    return-void
.end method
