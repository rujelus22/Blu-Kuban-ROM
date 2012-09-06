.class public Lcom/google/android/apps/docs/view/DocEntryRowRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DocEntryRowRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DocEntryRowRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .line 81
    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x2

    new-array v1, v0, [I

    sget v0, LcS;->title:I

    aput v0, v1, v2

    sget v0, LcS;->date:I

    aput v0, v1, v5

    array-length v3, v1

    move v0, v2

    :goto_1d
    if-ge v0, v3, :cond_31

    aget v2, v1, v0

    .line 86
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/view/DocEntryRowRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2e

    .line 88
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 85
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 91
    :cond_31
    return v5
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 50
    sget v0, LcS;->star_cb:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DocEntryRowRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 51
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, LXf;->a()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 53
    new-instance v1, Laan;

    invoke-direct {v1, p0}, Laan;-><init>(Lcom/google/android/apps/docs/view/DocEntryRowRelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 71
    :cond_1c
    return-void
.end method
