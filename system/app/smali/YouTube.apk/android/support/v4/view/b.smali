.class Landroid/support/v4/view/b;
.super Landroid/support/v4/view/g;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v4/view/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-object v0
.end method

.method public a(Landroid/support/v4/view/a;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 127
    new-instance v0, Landroid/support/v4/view/c;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/c;-><init>(Landroid/support/v4/view/b;Landroid/support/v4/view/a;)V

    new-instance v1, Landroid/support/v4/view/i;

    invoke-direct {v1, v0}, Landroid/support/v4/view/i;-><init>(Landroid/support/v4/view/j;)V

    return-object v1
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 205
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-virtual {p3}, Landroid/support/v4/view/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 187
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    return-void
.end method

.method public final c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 193
    return-void
.end method

.method public final d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 211
    return-void
.end method
