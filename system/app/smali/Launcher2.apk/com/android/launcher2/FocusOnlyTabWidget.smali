.class public Lcom/android/launcher2/FocusOnlyTabWidget;
.super Landroid/widget/TabWidget;
.source "FocusOnlyTabWidget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getChildTabIndex(Landroid/view/View;)I
    .registers 5
    .parameter "v"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v1

    .line 50
    .local v1, tabCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_e

    .line 55
    .end local v0           #i:I
    :goto_d
    return v0

    .line 50
    .restart local v0       #i:I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 55
    :cond_11
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public getSelectedTab()Landroid/view/View;
    .registers 5

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    .line 39
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 41
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 45
    .end local v2           #v:Landroid/view/View;
    :goto_11
    return-object v2

    .line 39
    .restart local v2       #v:Landroid/view/View;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 45
    .end local v2           #v:Landroid/view/View;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 81
    if-ne p1, p0, :cond_11

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getSelectedTab()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 85
    :cond_11
    return-void
.end method

.method public setCurrentTabToFocusedTab()V
    .registers 7

    .prologue
    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, tab:Landroid/view/View;
    const/4 v2, -0x1

    .line 61
    .local v2, index:I
    invoke-virtual {p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v0

    .line 62
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 64
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 65
    move-object v3, v4

    .line 66
    move v2, v1

    .line 70
    .end local v4           #v:Landroid/view/View;
    :cond_15
    const/4 v5, -0x1

    if-le v2, v5, :cond_1f

    .line 71
    invoke-super {p0, v2}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 72
    const/4 v5, 0x1

    invoke-super {p0, v3, v5}, Landroid/widget/TabWidget;->onFocusChange(Landroid/view/View;Z)V

    .line 74
    :cond_1f
    return-void

    .line 62
    .restart local v4       #v:Landroid/view/View;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public superOnFocusChange(Landroid/view/View;Z)V
    .registers 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/TabWidget;->onFocusChange(Landroid/view/View;Z)V

    .line 77
    return-void
.end method
