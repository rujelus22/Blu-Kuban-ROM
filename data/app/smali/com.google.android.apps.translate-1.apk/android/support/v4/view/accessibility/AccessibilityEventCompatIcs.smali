.class Landroid/support/v4/view/accessibility/AccessibilityEventCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityEventCompatIcs.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
    .registers 2
    .parameter "event"
    .parameter "record"

    .prologue
    .line 32
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 33
    return-void
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
    .registers 3
    .parameter "event"
    .parameter "index"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 2
    .parameter "event"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v0

    return v0
.end method
