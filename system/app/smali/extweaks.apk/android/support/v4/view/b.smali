.class final Landroid/support/v4/view/b;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;


# instance fields
.field final synthetic a:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field final synthetic b:Landroid/support/v4/view/a;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Landroid/support/v4/view/b;->b:Landroid/support/v4/view/a;

    iput-object p2, p0, Landroid/support/v4/view/b;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v4/view/b;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/view/b;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 112
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/view/b;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 118
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v4/view/b;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 123
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v4/view/b;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v4/view/b;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 134
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v4/view/b;->a:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 139
    return-void
.end method
