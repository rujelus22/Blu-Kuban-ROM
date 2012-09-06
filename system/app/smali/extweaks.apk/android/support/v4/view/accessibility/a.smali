.class final Landroid/support/v4/view/accessibility/a;
.super Landroid/support/v4/view/accessibility/b;
.source "AccessibilityEventCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    check-cast p2, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 54
    return-void
.end method
