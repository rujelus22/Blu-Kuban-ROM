.class public Lcom/google/android/apps/plus/util/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# direct methods
.method public static appendAndSeparateIfNotEmpty(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "sb"
    .parameter "text"

    .prologue
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_f
    return-void
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 25
    if-eqz p0, :cond_f

    .line 26
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 28
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    .line 30
    .end local v0           #accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method
