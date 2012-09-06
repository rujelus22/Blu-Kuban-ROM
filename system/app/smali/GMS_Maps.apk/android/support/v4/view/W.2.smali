.class public Landroid/support/v4/view/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 57
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .registers 2
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method
