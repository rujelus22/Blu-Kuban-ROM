.class Ld/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 81
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 44
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 193
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 161
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public static a(Ljava/lang/Object;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 165
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 166
    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .parameter

    .prologue
    .line 93
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 66
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 169
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public static b(Ljava/lang/Object;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 173
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 174
    return-void
.end method

.method public static c(Ljava/lang/Object;)V
    .registers 1
    .parameter

    .prologue
    .line 217
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 218
    return-void
.end method

.method public static c(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 145
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 146
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 189
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public static c(Ljava/lang/Object;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 177
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 178
    return-void
.end method

.method public static d(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 149
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 150
    return-void
.end method

.method public static d(Ljava/lang/Object;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 201
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 202
    return-void
.end method
