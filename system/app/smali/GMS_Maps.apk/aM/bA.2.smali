.class LaM/bA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/bz;


# direct methods
.method constructor <init>(LaM/bz;)V
    .registers 2
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, LaM/bA;->a:LaM/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, LaM/bA;->a:LaM/bz;

    iget-object v0, v0, LaM/bz;->a:LaM/bx;

    iget-object v0, v0, LaM/bx;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/bE;

    if-eqz v0, :cond_2b

    iget-object v0, p0, LaM/bA;->a:LaM/bz;

    iget-object v0, v0, LaM/bz;->a:LaM/bx;

    iget-object v0, v0, LaM/bx;->r:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, LaM/bA;->a:LaM/bz;

    iget-object v0, v0, LaM/bz;->a:LaM/bx;

    iget-object v0, v0, LaM/bx;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->w()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 499
    iget-object v0, p0, LaM/bA;->a:LaM/bz;

    iget-object v0, v0, LaM/bz;->a:LaM/bx;

    invoke-virtual {v0}, LaM/bx;->bp()V

    .line 501
    :cond_2b
    return-void
.end method
