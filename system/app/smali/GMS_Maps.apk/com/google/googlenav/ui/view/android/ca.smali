.class Lcom/google/googlenav/ui/view/android/ca;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bZ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bZ;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ca;->a:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 6
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ca;->a:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bZ;->a(Lcom/google/googlenav/ui/view/android/bZ;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/view/android/V;->j:Lcom/google/googlenav/ui/g;

    if-ne v0, v1, :cond_24

    .line 381
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ca;->a:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bZ;->b(Lcom/google/googlenav/ui/view/android/bZ;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ca;->a:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bZ;->b(Lcom/google/googlenav/ui/view/android/bZ;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 388
    :cond_1b
    :goto_1b
    const/16 v0, 0x64

    const-string v1, "x"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 390
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ca;->a:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bZ;->a(Lcom/google/googlenav/ui/view/android/bZ;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    const/16 v1, 0x3f9

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 386
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ca;->a:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bZ;->a(Lcom/google/googlenav/ui/view/android/bZ;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/g;->h()V

    goto :goto_1b
.end method
