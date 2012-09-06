.class final Landroid/support/v4/view/accessibility/i;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatIcs.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/accessibility/j;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/j;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Landroid/support/v4/view/accessibility/i;->a:Landroid/support/v4/view/accessibility/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccessibilityStateChanged(Z)V
    .registers 3
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/v4/view/accessibility/i;->a:Landroid/support/v4/view/accessibility/j;

    invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/j;->a(Z)V

    .line 40
    return-void
.end method
