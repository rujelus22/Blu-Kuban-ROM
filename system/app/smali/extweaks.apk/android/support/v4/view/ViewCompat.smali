.class public Landroid/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final IMPL:Landroid/support/v4/view/y; = null

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 126
    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    .line 132
    :goto_d
    return-void

    .line 127
    :cond_e
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1a

    .line 128
    new-instance v0, Landroid/support/v4/view/w;

    invoke-direct {v0}, Landroid/support/v4/view/w;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    goto :goto_d

    .line 130
    :cond_1a
    new-instance v0, Landroid/support/v4/view/v;

    invoke-direct {v0}, Landroid/support/v4/view/v;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/y;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 153
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/y;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 2
    .parameter

    .prologue
    .line 166
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    invoke-interface {v0, p0}, Landroid/support/v4/view/y;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 252
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/y;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 253
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 288
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/y;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 289
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 219
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/y;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 220
    return-void
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 303
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/y;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 304
    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    sget-object v0, Landroid/support/v4/view/ViewCompat;->IMPL:Landroid/support/v4/view/y;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/y;->c(Landroid/view/View;I)V

    .line 183
    return-void
.end method
