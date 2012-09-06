.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewGroupCompatIcs;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
