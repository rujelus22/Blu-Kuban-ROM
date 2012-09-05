.class Lcom/android/internal/policy/impl/TabletLockScreen$2;
.super Ljava/lang/Object;
.source "TabletLockscreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/TabletLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/TabletLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/TabletLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/policy/impl/TabletLockScreen$2;->this$0:Lcom/android/internal/policy/impl/TabletLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleTouchDown(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen$2;->this$0:Lcom/android/internal/policy/impl/TabletLockScreen;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/TabletLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/TabletLockScreen;->access$100(Lcom/android/internal/policy/impl/TabletLockScreen;Z)V

    .line 180
    return-void
.end method

.method public onCircleTouchMove(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 184
    return-void
.end method

.method public onCircleTouchUp(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/TabletLockScreen$2;->this$0:Lcom/android/internal/policy/impl/TabletLockScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/TabletLockScreen;->bedimBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/TabletLockScreen;->access$100(Lcom/android/internal/policy/impl/TabletLockScreen;Z)V

    .line 190
    return-void
.end method
