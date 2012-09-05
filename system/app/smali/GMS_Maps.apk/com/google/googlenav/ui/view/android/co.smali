.class Lcom/google/googlenav/ui/view/android/co;
.super Landroid/text/method/ArrowKeyMovementMethod;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/cm;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/cm;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/co;->a:Lcom/google/googlenav/ui/view/android/cm;

    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/co;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/cm;Lcom/google/googlenav/ui/view/android/cn;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/co;-><init>(Lcom/google/googlenav/ui/view/android/cm;)V

    return-void
.end method

.method private b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/co;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

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

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/co;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/co;->b:Z

    return v0
.end method

.method public canSelectArbitrarily()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/co;->b()Z

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

    invoke-super {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    return-void
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/co;->b()Z

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

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/co;->b()Z

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

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/co;->b()Z

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
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/co;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/co;->a:Lcom/google/googlenav/ui/view/android/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cm;->a()V

    :goto_b
    return-void

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/co;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/co;->a:Lcom/google/googlenav/ui/view/android/cm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cm;->a()V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c
.end method
