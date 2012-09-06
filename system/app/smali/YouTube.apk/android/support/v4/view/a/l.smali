.class final Landroid/support/v4/view/a/l;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/view/a/m;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/m;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Landroid/support/v4/view/a/l;->a:Landroid/support/v4/view/a/m;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v4/view/a/l;->a:Landroid/support/v4/view/a/m;

    invoke-interface {v0, p1}, Landroid/support/v4/view/a/m;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/view/a/l;->a:Landroid/support/v4/view/a/m;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/a/m;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v4/view/a/l;->a:Landroid/support/v4/view/a/m;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/a/m;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
