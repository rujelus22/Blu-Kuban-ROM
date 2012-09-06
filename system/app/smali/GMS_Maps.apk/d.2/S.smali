.class final Ld/s;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# instance fields
.field final synthetic a:Ld/t;


# direct methods
.method constructor <init>(Ld/t;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Ld/s;->a:Ld/t;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Ld/s;->a:Ld/t;

    invoke-interface {v0, p1}, Ld/t;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Ld/s;->a:Ld/t;

    invoke-interface {v0, p1, p2}, Ld/t;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Ld/s;->a:Ld/t;

    invoke-interface {v0, p1, p2, p3}, Ld/t;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
