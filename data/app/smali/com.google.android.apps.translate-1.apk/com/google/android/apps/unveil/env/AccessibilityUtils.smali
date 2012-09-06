.class public Lcom/google/android/apps/unveil/env/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final className:Ljava/lang/String;

.field private final isSpeechSettingEnabled:Z

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "continuousTtsSettingsKeyResId"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->packageName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->className:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/unveil/Settings;->getBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->isSpeechSettingEnabled:Z

    .line 30
    return-void
.end method


# virtual methods
.method public isAccessibilityEnabled()Z
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSpokenAccessibilityEnabled()Z
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->isSpeechSettingEnabled:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public makeViewsAccessible(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 74
    :cond_8
    :goto_8
    return-void

    .line 65
    :cond_9
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_21

    move-object v1, p1

    .line 66
    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    .local v1, viewGroup:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->makeViewsAccessible(Landroid/view/View;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 70
    .end local v0           #i:I
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_21
    instance-of v2, p1, Landroid/widget/TextView;

    if-nez v2, :cond_2f

    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 72
    :cond_2f
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_8
.end method

.method public readTextForAccessibility(Ljava/lang/String;)V
    .registers 4
    .parameter "textToSpeak"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->isAccessibilityEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 89
    :goto_6
    return-void

    .line 81
    :cond_7
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 84
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 87
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/AccessibilityUtils;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_6
.end method
