.class Lcom/google/googlenav/ui/view/android/u;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/j;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/j;)V
    .registers 3
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/u;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/u;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/j;Lcom/google/googlenav/ui/view/android/k;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/u;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    return-void
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/u;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 972
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/u;->b:Z

    .line 973
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 968
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/u;->b:Z

    return v0
.end method

.method public canSelectArbitrarily()Z
    .registers 2

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/u;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 991
    invoke-super {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 992
    return-void
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/u;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/u;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/u;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/ArrowKeyMovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/u;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1014
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/u;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/ui/view/android/j;I)V

    .line 1018
    :goto_f
    return-void

    .line 1016
    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/u;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1023
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/u;->a:Lcom/google/googlenav/ui/view/android/j;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/ui/view/android/j;I)V

    .line 1024
    const/4 v0, 0x1

    .line 1026
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10
.end method
