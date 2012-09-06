.class final Landroid/support/v4/view/l;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/view/m;


# direct methods
.method constructor <init>(Landroid/support/v4/view/m;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1}, Landroid/support/v4/view/m;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 67
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/m;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/m;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->a(Landroid/view/View;I)V

    .line 78
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v4/view/l;->a:Landroid/support/v4/view/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/m;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 83
    return-void
.end method
