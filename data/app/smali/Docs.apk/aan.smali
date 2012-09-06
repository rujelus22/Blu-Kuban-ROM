.class public Laan;
.super Landroid/view/View$AccessibilityDelegate;
.source "DocEntryRowRelativeLayout.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DocEntryRowRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DocEntryRowRelativeLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Laan;->a:Lcom/google/android/apps/docs/view/DocEntryRowRelativeLayout;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_25

    sget v0, LcY;->doclist_starred_state:I

    .line 59
    :goto_e
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_25
    sget v0, LcY;->doclist_unstarred_state:I

    goto :goto_e
.end method
