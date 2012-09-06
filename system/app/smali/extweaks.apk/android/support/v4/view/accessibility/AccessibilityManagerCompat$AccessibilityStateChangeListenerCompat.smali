.class public abstract Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# instance fields
.field final mListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->access$000()Landroid/support/v4/view/accessibility/g;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/g;->a(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;->mListener:Ljava/lang/Object;

    .line 197
    return-void
.end method


# virtual methods
.method public abstract onAccessibilityStateChanged(Z)V
.end method
