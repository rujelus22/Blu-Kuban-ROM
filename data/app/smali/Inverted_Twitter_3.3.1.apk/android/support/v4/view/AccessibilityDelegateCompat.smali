.class public Landroid/support/v4/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_DELEGATE:Ljava/lang/Object;

.field private static final IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# instance fields
.field final mBridge:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_16

    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    :goto_d
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    return-void

    :cond_16
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method getBridge()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
