.class public LCR;
.super Landroid/view/View$AccessibilityDelegate;
.source "TextView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, LCR;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 981
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 983
    iget-object v0, p0, LCR;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Z

    move-result v0

    .line 984
    if-nez v0, :cond_14

    .line 985
    iget-object v1, p0, LCR;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 987
    :cond_14
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 988
    return-void
.end method
