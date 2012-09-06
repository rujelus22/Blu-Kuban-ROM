.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    return-void
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    return-void
.end method
