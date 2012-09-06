.class public Lcom/google/android/apps/plus/views/BottomActionBar;
.super Landroid/widget/LinearLayout;
.source "BottomActionBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/BottomActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/BottomActionBar;->setOrientation(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/BottomActionBar;->setOrientation(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Lcom/google/android/apps/plus/views/ActionButton;
    .registers 5
    .parameter "id"
    .parameter "labelResId"
    .parameter "clickListener"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/apps/plus/views/BottomActionBar;->addButton(ILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/google/android/apps/plus/views/ActionButton;

    move-result-object v0

    return-object v0
.end method

.method public addButton(ILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/google/android/apps/plus/views/ActionButton;
    .registers 8
    .parameter "id"
    .parameter "label"
    .parameter "clickListener"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ActionButton;

    .line 75
    .local v0, button:Lcom/google/android/apps/plus/views/ActionButton;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ActionButton;->setId(I)V

    .line 76
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/ActionButton;->setLabel(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/views/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/BottomActionBar;->addView(Landroid/view/View;)V

    .line 79
    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 10
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 52
    instance-of v2, p1, Lcom/google/android/apps/plus/views/ActionButton;

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1e

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0300e6

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, separator:Landroid/view/View;
    invoke-super {p0, v1, v4, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #separator:Landroid/view/View;
    :cond_1e
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-super {p0, p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/BottomActionBar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5
    .parameter "attrs"

    .prologue
    .line 44
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getButtons()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/ActionButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/views/ActionButton;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BottomActionBar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/BottomActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, child:Landroid/view/View;
    instance-of v3, v1, Lcom/google/android/apps/plus/views/ActionButton;

    if-eqz v3, :cond_19

    .line 90
    check-cast v1, Lcom/google/android/apps/plus/views/ActionButton;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 93
    :cond_1c
    return-object v0
.end method
