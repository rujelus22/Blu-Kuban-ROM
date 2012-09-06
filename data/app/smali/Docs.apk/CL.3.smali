.class public LCL;
.super Ljava/lang/Object;
.source "TextAccessibilityHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a

    .line 51
    const/16 v0, 0x2000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 55
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 75
    :cond_29
    :goto_29
    return-void

    .line 60
    :cond_2a
    if-ne p2, p3, :cond_34

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p3, v0, :cond_34

    .line 61
    add-int/lit8 p3, p2, 0x1

    .line 63
    :cond_34
    sub-int v0, p3, p2

    const/16 v1, 0x1f5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 67
    const-class v2, LCL;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 70
    const-string v2, "com.google.android.apps.docs.editors"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_29
.end method

.method public static a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LCl;

    move-result-object v1

    .line 24
    invoke-virtual {v1, p2}, LCl;->h(I)I

    move-result v2

    .line 25
    invoke-virtual {v1, v2}, LCl;->c(I)I

    move-result v3

    .line 26
    invoke-virtual {v1, v2}, LCl;->i(I)I

    move-result v1

    .line 27
    invoke-static {v0, p1, v3, v1}, LCL;->a(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;II)V

    .line 29
    :cond_21
    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/editors/text/TextView;Ljava/lang/CharSequence;LEe;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LCx;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 37
    invoke-virtual {p2, p3}, LEe;->b(I)I

    move-result v1

    .line 38
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 39
    invoke-static {v0, p1, p3, v1}, LCL;->a(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;II)V

    .line 42
    :cond_18
    return-void
.end method
