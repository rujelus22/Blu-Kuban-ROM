.class public LDm;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements LCe;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/widget/PopupWindow;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field private final a:[I

.field private final a:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 7673
    iput-object p1, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7669
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, LDm;->a:[Landroid/view/View;

    .line 7670
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v1

    aput v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->c(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, LDm;->a:[I

    .line 7674
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-static {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDm;->a:Landroid/widget/PopupWindow;

    .line 7675
    iget-object v0, p0, LDm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 7677
    iget-object v0, p0, LDm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7678
    iget-object v0, p0, LDm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7679
    return-void
.end method

.method private a(Z)I
    .registers 3
    .parameter

    .prologue
    .line 7682
    iget-object v0, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private a(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 7686
    invoke-direct {p0, p1}, LDm;->a(Z)I

    move-result v2

    .line 7687
    iget-object v0, p0, LDm;->a:[Landroid/view/View;

    aget-object v1, v0, v2

    .line 7689
    if-nez v1, :cond_4d

    .line 7690
    iget-object v0, p0, LDm;->a:[I

    aget v3, v0, v2

    .line 7691
    iget-object v0, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 7694
    if-eqz v0, :cond_4b

    .line 7695
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7698
    :goto_25
    if-nez v0, :cond_2f

    .line 7699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to inflate TextEdit paste window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7702
    :cond_2f
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7703
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7705
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 7707
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7709
    iget-object v1, p0, LDm;->a:[Landroid/view/View;

    aput-object v0, v1, v2

    .line 7712
    :goto_45
    iget-object v1, p0, LDm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7713
    return-void

    :cond_4b
    move-object v0, v1

    goto :goto_25

    :cond_4d
    move-object v0, v1

    goto :goto_45
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 7717
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LDm;->a(Z)V

    .line 7718
    invoke-virtual {p0}, LDm;->b()V

    .line 7719
    return-void
.end method

.method b()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7740
    iget-object v0, p0, LDm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 7741
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 7742
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 7743
    iget-object v2, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v2

    .line 7744
    iget-object v3, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v3, v3, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v3, v2}, LCl;->h(I)I

    move-result v3

    .line 7745
    iget-object v4, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v4, v4, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v4, v3}, LCl;->a(I)I

    move-result v4

    .line 7746
    iget-object v5, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v5, v5, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v5, v2}, LCl;->a(I)F

    move-result v2

    .line 7748
    invoke-static {}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/graphics/Rect;

    move-result-object v5

    .line 7749
    int-to-float v6, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float v6, v2, v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 7750
    sub-int v6, v4, v0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 7752
    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 7753
    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v6

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 7755
    iget-object v0, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0, v5}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/graphics/Rect;)V

    .line 7757
    iget-object v0, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:[I

    .line 7758
    iget-object v6, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v6, v0}, Lcom/google/android/apps/docs/editors/text/TextView;->getLocationInWindow([I)V

    .line 7759
    aget v6, v0, v8

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    aput v6, v0, v8

    .line 7760
    aget v6, v0, v9

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    aput v5, v0, v9

    .line 7762
    iget-object v5, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v5}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7763
    aget v6, v0, v9

    if-gez v6, :cond_de

    .line 7764
    invoke-direct {p0, v8}, LDm;->a(Z)V

    .line 7766
    iget-object v1, p0, LDm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 7767
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 7768
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 7773
    aget v7, v0, v9

    add-int/2addr v1, v7

    aput v1, v0, v9

    .line 7774
    iget-object v1, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    invoke-virtual {v1, v3}, LCl;->k(I)I

    move-result v1

    .line 7775
    sub-int/2addr v1, v4

    .line 7776
    aget v3, v0, v9

    add-int/2addr v1, v3

    aput v1, v0, v9

    .line 7780
    iget-object v1, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v3}, Lcom/google/android/apps/docs/editors/text/TextView;->d(Lcom/google/android/apps/docs/editors/text/TextView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7781
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 7783
    int-to-float v3, v1

    add-float/2addr v2, v3

    int-to-float v3, v6

    add-float/2addr v2, v3

    int-to-float v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d4

    .line 7784
    aget v2, v0, v8

    div-int/lit8 v3, v6, 0x2

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 7794
    :goto_c8
    iget-object v1, p0, LDm;->a:Landroid/widget/PopupWindow;

    iget-object v2, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    aget v3, v0, v8

    aget v0, v0, v9

    invoke-virtual {v1, v2, v8, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7795
    return-void

    .line 7786
    :cond_d4
    aget v2, v0, v8

    div-int/lit8 v3, v6, 0x2

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    aput v1, v0, v8

    goto :goto_c8

    .line 7790
    :cond_de
    aget v2, v0, v8

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v8

    .line 7791
    sub-int v1, v5, v1

    aget v2, v0, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v8

    goto :goto_c8
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 7728
    iget-object v0, p0, LDm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 7733
    iget-object v0, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7734
    iget-object v0, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v1, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->n()I

    move-result v1

    iget-object v2, p0, LDm;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->o()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;II)V

    .line 7736
    :cond_19
    invoke-virtual {p0}, LDm;->t()V

    .line 7737
    return-void
.end method

.method public t()V
    .registers 2

    .prologue
    .line 7723
    iget-object v0, p0, LDm;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7724
    return-void
.end method
