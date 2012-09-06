.class Landroid/support/v4/view/am;
.super Landroid/support/v4/view/al;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/support/v4/view/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 183
    return-void
.end method

.method public final a(Landroid/view/View;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method
