.class public Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 126
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    .line 130
    :goto_d
    return-void

    .line 128
    :cond_e
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    goto :goto_d
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .registers 2
    .parameter "manager"

    .prologue
    .line 196
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method
