.class public LDU;
.super LDx;
.source "ScrollingMovementMethod.java"

# interfaces
.implements LDH;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, LDx;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_16

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_16

    .line 100
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LCl;->a(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 103
    :cond_16
    if-eqz v0, :cond_3f

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3f

    .line 104
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->k()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->l()I

    move-result v2

    add-int/2addr v1, v2

    .line 106
    invoke-virtual {v0}, LCl;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 108
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getScrollX()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, LCl;->a(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->scrollTo(II)V

    .line 112
    :cond_3f
    return-void
.end method

.method protected a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LDU;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LDU;->b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p1, p2, p3}, LEb;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LDU;->c(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LDU;->d(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method protected e(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, LDU;->o(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected f(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, LDU;->p(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected g(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, LDU;->q(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected h(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, LDU;->r(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected i(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, LDU;->s(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected j(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, LDU;->t(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected m(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, LDU;->g(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected n(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, LDU;->h(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
