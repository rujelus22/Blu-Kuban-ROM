.class Landroid/support/v4/view/V;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 39
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 51
    return-void
.end method
