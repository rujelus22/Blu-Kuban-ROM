.class final Lcom/android/athome/picker/a/g;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/a/a;


# direct methods
.method public constructor <init>(Lcom/android/athome/picker/a/a;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    .line 633
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/athome/picker/a/g;->setCanceledOnTouchOutside(Z)V

    .line 635
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 640
    iget-object v0, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->e()V

    .line 644
    :goto_1d
    return-void

    .line 642
    :cond_1e
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_1d
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 647
    const/16 v1, 0x19

    if-ne p1, v1, :cond_24

    iget-object v1, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v1}, Lcom/android/athome/picker/a/a;->f(Lcom/android/athome/picker/a/a;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 648
    iget-object v1, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    iget-object v1, v1, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v2}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/q;->d(Ljava/lang/Object;I)V

    .line 656
    :goto_23
    return v0

    .line 651
    :cond_24
    const/16 v1, 0x18

    if-ne p1, v1, :cond_46

    iget-object v1, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v1}, Lcom/android/athome/picker/a/a;->f(Lcom/android/athome/picker/a/a;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 652
    iget-object v1, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    iget-object v1, v1, Lcom/android/athome/picker/a/a;->W:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v2}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/athome/picker/media/q;->d(Ljava/lang/Object;I)V

    goto :goto_23

    .line 656
    :cond_46
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 661
    const/16 v1, 0x19

    if-ne p1, v1, :cond_12

    iget-object v1, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v1}, Lcom/android/athome/picker/a/a;->f(Lcom/android/athome/picker/a/a;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 666
    :cond_11
    :goto_11
    return v0

    .line 663
    :cond_12
    const/16 v1, 0x18

    if-ne p1, v1, :cond_22

    iget-object v1, p0, Lcom/android/athome/picker/a/g;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v1}, Lcom/android/athome/picker/a/a;->f(Lcom/android/athome/picker/a/a;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 666
    :cond_22
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method
