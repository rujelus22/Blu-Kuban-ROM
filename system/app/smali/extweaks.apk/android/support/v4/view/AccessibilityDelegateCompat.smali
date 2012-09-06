.class public Landroid/support/v4/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# static fields
.field private static final DEFAULT_DELEGATE:Ljava/lang/Object;

.field private static final IMPL:Landroid/support/v4/view/c;


# instance fields
.field final mBridge:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_16

    .line 193
    new-instance v0, Landroid/support/v4/view/a;

    invoke-direct {v0}, Landroid/support/v4/view/a;-><init>()V

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    .line 197
    :goto_d
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    invoke-interface {v0}, Landroid/support/v4/view/c;->a()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    .line 198
    return-void

    .line 195
    :cond_16
    new-instance v0, Landroid/support/v4/view/d;

    invoke-direct {v0}, Landroid/support/v4/view/d;-><init>()V

    sput-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/c;->a(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    .line 207
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 274
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method getBridge()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/view/AccessibilityDelegateCompat;->mBridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 314
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 315
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 333
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 334
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 294
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 295
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 231
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 232
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 253
    sget-object v0, Landroid/support/v4/view/AccessibilityDelegateCompat;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/c;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 254
    return-void
.end method
