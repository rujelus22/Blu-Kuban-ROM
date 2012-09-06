.class public LwR;
.super Ljava/lang/Object;
.source "EditorStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, LwR;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 75
    .line 76
    iget-object v0, p0, LwR;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 77
    sget v0, Lus;->offline:I

    move v1, v0

    .line 82
    :goto_c
    if-eqz v1, :cond_69

    .line 83
    iget-object v0, p0, LwR;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v0, p0, LwR;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, LwR;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 87
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 88
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 90
    const-class v3, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 93
    const-string v3, "com.google.android.apps.docs.editors"

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, LwR;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 100
    :cond_5c
    :goto_5c
    return-void

    .line 78
    :cond_5d
    iget-object v0, p0, LwR;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->b(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 79
    sget v0, Lus;->message_loading:I

    move v1, v0

    goto :goto_c

    .line 98
    :cond_69
    iget-object v0, p0, LwR;->a:Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;->a(Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5c

    :cond_75
    move v1, v2

    goto :goto_c
.end method
