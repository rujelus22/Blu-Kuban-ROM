.class public abstract LDc;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field protected a:F

.field private a:I

.field protected a:Landroid/graphics/drawable/Drawable;

.field private final a:Landroid/widget/PopupWindow;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field private a:Z

.field private final a:[I

.field private final a:[J

.field private b:F

.field private b:I

.field private b:Z

.field private c:F

.field private c:I

.field private final d:F

.field private d:I

.field private final e:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 7822
    iput-object p1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    .line 7823
    invoke-static {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7820
    iput-boolean v2, p0, LDc;->b:Z

    .line 7844
    new-array v0, v1, [J

    iput-object v0, p0, LDc;->a:[J

    .line 7845
    new-array v0, v1, [I

    iput-object v0, p0, LDc;->a:[I

    .line 7846
    iput v2, p0, LDc;->g:I

    .line 7847
    iput v2, p0, LDc;->h:I

    .line 7824
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    .line 7825
    invoke-static {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, LCK;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7826
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 7828
    :cond_38
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 7829
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7830
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7831
    invoke-virtual {p0}, LDc;->a()V

    .line 7833
    iget-object v0, p0, LDc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 7834
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, LDc;->d:F

    .line 7835
    const v1, 0x3f333333

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, LDc;->e:F

    .line 7836
    return-void
.end method

.method private c(I)V
    .registers 3
    .parameter

    .prologue
    .line 7850
    const/4 v0, 0x0

    iput v0, p0, LDc;->h:I

    .line 7851
    invoke-direct {p0, p1}, LDc;->d(I)V

    .line 7852
    return-void
.end method

.method private d(I)V
    .registers 6
    .parameter

    .prologue
    .line 7855
    iget v0, p0, LDc;->h:I

    if-lez v0, :cond_d

    iget-object v0, p0, LDc;->a:[I

    iget v1, p0, LDc;->g:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_d

    .line 7864
    :goto_c
    return-void

    .line 7860
    :cond_d
    iget v0, p0, LDc;->g:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, LDc;->g:I

    .line 7861
    iget-object v0, p0, LDc;->a:[I

    iget v1, p0, LDc;->g:I

    aput p1, v0, v1

    .line 7862
    iget-object v0, p0, LDc;->a:[J

    iget v1, p0, LDc;->g:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 7863
    iget v0, p0, LDc;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LDc;->h:I

    goto :goto_c
.end method

.method private d()Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7921
    iget-boolean v2, p0, LDc;->a:Z

    if-eqz v2, :cond_7

    .line 7955
    :cond_6
    :goto_6
    return v0

    .line 7925
    :cond_7
    iget-object v2, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->s()Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 7926
    goto :goto_6

    .line 7929
    :cond_11
    iget-object v2, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->g()I

    move-result v2

    .line 7930
    iget-object v3, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v3}, Lcom/google/android/apps/docs/editors/text/TextView;->h()I

    move-result v3

    .line 7931
    iget-object v4, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v4

    .line 7932
    iget-object v5, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v5}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v5

    .line 7934
    iget-object v6, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    .line 7936
    iget-object v7, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v7, v7, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    if-nez v7, :cond_3a

    iget-object v7, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    .line 7937
    :cond_3a
    iget-object v7, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v7, v7, Lcom/google/android/apps/docs/editors/text/TextView;->a:Landroid/graphics/Rect;

    .line 7938
    iput v4, v7, Landroid/graphics/Rect;->left:I

    .line 7939
    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 7940
    invoke-virtual {v6}, Lcom/google/android/apps/docs/editors/text/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v5

    iput v2, v7, Landroid/graphics/Rect;->right:I

    .line 7941
    invoke-virtual {v6}, Lcom/google/android/apps/docs/editors/text/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 7943
    invoke-virtual {v6}, Lcom/google/android/apps/docs/editors/text/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 7944
    if-eqz v2, :cond_5d

    const/4 v3, 0x0

    invoke-interface {v2, v6, v7, v3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-nez v2, :cond_5f

    :cond_5d
    move v0, v1

    .line 7945
    goto :goto_6

    .line 7948
    :cond_5f
    iget-object v2, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v2, v2, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    .line 7949
    invoke-virtual {v6, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->getLocationInWindow([I)V

    .line 7950
    aget v3, v2, v1

    iget v4, p0, LDc;->a:I

    add-int/2addr v3, v4

    iget v4, p0, LDc;->a:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 7951
    aget v2, v2, v0

    iget v4, p0, LDc;->b:I

    add-int/2addr v2, v4

    .line 7955
    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_88

    iget v4, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    if-gt v3, v4, :cond_88

    iget v3, v7, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_88

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_6

    :cond_88
    move v0, v1

    goto/16 :goto_6
.end method

.method private g()V
    .registers 10

    .prologue
    .line 7867
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7868
    const/4 v1, 0x0

    .line 7869
    iget v0, p0, LDc;->g:I

    .line 7870
    iget v4, p0, LDc;->h:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7871
    :goto_e
    if-ge v1, v4, :cond_26

    iget-object v5, p0, LDc;->a:[J

    aget-wide v5, v5, v0

    sub-long v5, v2, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_26

    .line 7872
    add-int/lit8 v1, v1, 0x1

    .line 7873
    iget v0, p0, LDc;->g:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x5

    goto :goto_e

    .line 7876
    :cond_26
    if-lez v1, :cond_3d

    if-ge v1, v4, :cond_3d

    iget-object v1, p0, LDc;->a:[J

    aget-wide v4, v1, v0

    sub-long v1, v2, v4

    const-wide/16 v3, 0x15e

    cmp-long v1, v1, v3

    if-lez v1, :cond_3d

    .line 7877
    iget-object v1, p0, LDc;->a:[I

    aget v0, v1, v0

    invoke-virtual {p0, v0}, LDc;->a(I)V

    .line 7879
    :cond_3d
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(II)V
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 7916
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 7

    .prologue
    .line 7888
    invoke-virtual {p0}, LDc;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 7889
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    iget v1, p0, LDc;->e:I

    iget v2, p0, LDc;->f:I

    invoke-virtual {p0}, LDc;->getRight()I

    move-result v3

    invoke-virtual {p0}, LDc;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, LDc;->getBottom()I

    move-result v4

    invoke-virtual {p0}, LDc;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 7899
    :goto_21
    return-void

    .line 7892
    :cond_22
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    const/4 v2, 0x0

    iget v3, p0, LDc;->e:I

    iget v4, p0, LDc;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7894
    const/4 v0, 0x1

    iput-boolean v0, p0, LDc;->b:Z

    .line 7896
    iget-object v0, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7897
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_21
.end method

.method protected b(I)V
    .registers 5
    .parameter

    .prologue
    .line 7966
    invoke-direct {p0, p1}, LDc;->d(I)V

    .line 7967
    iget-object v0, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v0, p1}, LCl;->h(I)I

    move-result v0

    .line 7968
    iget-object v1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v1, v0}, LCl;->k(I)I

    move-result v0

    .line 7970
    iget-object v1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v1, p1}, LCl;->a(I)F

    move-result v1

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    iget v2, p0, LDc;->a:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, LDc;->a:I

    .line 7971
    iput v0, p0, LDc;->b:I

    .line 7974
    iget v0, p0, LDc;->a:I

    iget-object v1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->e(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LDc;->a:I

    .line 7975
    iget v0, p0, LDc;->b:I

    iget-object v1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->f(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LDc;->b:I

    .line 7976
    return-void
.end method

.method protected b()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7979
    invoke-virtual {p0}, LDc;->a()I

    move-result v2

    invoke-virtual {p0, v2}, LDc;->b(I)V

    .line 7981
    iget v2, p0, LDc;->e:I

    .line 7982
    iget v3, p0, LDc;->f:I

    .line 7984
    iget-object v4, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v5, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v5, v5, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    invoke-virtual {v4, v5}, Lcom/google/android/apps/docs/editors/text/TextView;->getLocationInWindow([I)V

    .line 7985
    iget-object v4, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v4, v4, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    aget v4, v4, v0

    iget v5, p0, LDc;->a:I

    add-int/2addr v4, v5

    iput v4, p0, LDc;->e:I

    .line 7986
    iget-object v4, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v4, v4, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    aget v4, v4, v1

    iget v5, p0, LDc;->b:I

    add-int/2addr v4, v5

    iput v4, p0, LDc;->f:I

    .line 7988
    iget v4, p0, LDc;->e:I

    if-ne v2, v4, :cond_34

    iget v2, p0, LDc;->f:I

    if-eq v3, v2, :cond_35

    :cond_34
    move v0, v1

    :cond_35
    return v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 7902
    const/4 v0, 0x0

    iput-boolean v0, p0, LDc;->a:Z

    .line 7903
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7904
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 8081
    iget-boolean v0, p0, LDc;->a:Z

    return v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 7907
    invoke-virtual {p0}, LDc;->c()V

    .line 7909
    const/4 v0, 0x0

    iput-boolean v0, p0, LDc;->b:Z

    .line 7911
    iget-object v0, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7912
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 7913
    return-void
.end method

.method e()V
    .registers 1

    .prologue
    .line 8086
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 8090
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 8023
    iget-object v0, p0, LDc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, LDc;->getRight()I

    move-result v1

    invoke-virtual {p0}, LDc;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, LDc;->getBottom()I

    move-result v2

    invoke-virtual {p0}, LDc;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8024
    iget-object v0, p0, LDc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8025
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 7883
    iget-object v0, p0, LDc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, LDc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LDc;->setMeasuredDimension(II)V

    .line 7884
    invoke-virtual {p0}, LDc;->onPreDraw()Z

    .line 7885
    return-void
.end method

.method public onPreDraw()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 7993
    invoke-virtual {p0}, LDc;->b()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 7994
    iget-boolean v0, p0, LDc;->a:Z

    if-eqz v0, :cond_4e

    .line 7995
    iget-object v0, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    aget v0, v0, v3

    iget v1, p0, LDc;->c:I

    if-ne v0, v1, :cond_20

    iget-object v0, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    aget v0, v0, v5

    iget v1, p0, LDc;->d:I

    if-eq v0, v1, :cond_4e

    .line 7996
    :cond_20
    iget v0, p0, LDc;->b:F

    iget-object v1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    aget v1, v1, v3

    iget v2, p0, LDc;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, LDc;->b:F

    .line 7997
    iget v0, p0, LDc;->c:F

    iget-object v1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    aget v1, v1, v5

    iget v2, p0, LDc;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, LDc;->c:F

    .line 7998
    iget-object v0, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    aget v0, v0, v3

    iput v0, p0, LDc;->c:I

    .line 7999
    iget-object v0, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    aget v0, v0, v5

    iput v0, p0, LDc;->d:I

    .line 8003
    :cond_4e
    invoke-virtual {p0}, LDc;->e()V

    .line 8005
    invoke-direct {p0}, LDc;->d()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 8006
    iget-object v0, p0, LDc;->a:Landroid/widget/PopupWindow;

    iget v1, p0, LDc;->e:I

    iget v2, p0, LDc;->f:I

    iget-object v3, p0, LDc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, LDc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 8009
    iget-boolean v0, p0, LDc;->b:Z

    if-eqz v0, :cond_79

    invoke-virtual {p0}, LDc;->a()Z

    move-result v0

    if-nez v0, :cond_79

    .line 8010
    invoke-virtual {p0}, LDc;->b()V

    .line 8018
    :cond_79
    :goto_79
    return v5

    .line 8013
    :cond_7a
    invoke-virtual {p0}, LDc;->a()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 8014
    invoke-virtual {p0}, LDc;->c()V

    goto :goto_79
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 8029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_96

    .line 8077
    :goto_9
    return v5

    .line 8031
    :pswitch_a
    invoke-virtual {p0}, LDc;->a()I

    move-result v0

    invoke-direct {p0, v0}, LDc;->c(I)V

    .line 8032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, LDc;->a:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, LDc;->b:F

    .line 8033
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, LDc;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, LDc;->c:F

    .line 8035
    iget-object v0, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    .line 8036
    iget-object v1, p0, LDc;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLocationInWindow([I)V

    .line 8037
    aget v1, v0, v2

    iput v1, p0, LDc;->c:I

    .line 8038
    aget v0, v0, v5

    iput v0, p0, LDc;->d:I

    .line 8039
    iput-boolean v5, p0, LDc;->a:Z

    goto :goto_9

    .line 8044
    :pswitch_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 8045
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 8049
    iget v0, p0, LDc;->c:F

    iget v3, p0, LDc;->d:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 8050
    iget v3, p0, LDc;->b:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget v4, p0, LDc;->d:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 8052
    iget v4, p0, LDc;->e:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_80

    .line 8053
    iget v4, p0, LDc;->e:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 8054
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 8059
    :goto_60
    iget v3, p0, LDc;->d:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, LDc;->c:F

    .line 8061
    iget v0, p0, LDc;->b:F

    sub-float v0, v1, v0

    iget v1, p0, LDc;->a:F

    add-float/2addr v0, v1

    .line 8062
    iget v1, p0, LDc;->c:F

    sub-float v1, v2, v1

    iget v2, p0, LDc;->d:F

    add-float/2addr v1, v2

    .line 8064
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, LDc;->a(II)V

    goto :goto_9

    .line 8056
    :cond_80
    iget v4, p0, LDc;->e:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 8057
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_60

    .line 8069
    :pswitch_8b
    invoke-direct {p0}, LDc;->g()V

    .line 8070
    iput-boolean v2, p0, LDc;->a:Z

    goto/16 :goto_9

    .line 8074
    :pswitch_92
    iput-boolean v2, p0, LDc;->a:Z

    goto/16 :goto_9

    .line 8029
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8b
        :pswitch_39
        :pswitch_92
    .end packed-switch
.end method
