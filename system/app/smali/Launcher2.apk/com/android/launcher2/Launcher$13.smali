.class Lcom/android/launcher2/Launcher$13;
.super Lcom/android/launcher2/LauncherAnimatorUpdateListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$oldScaleX:F

.field final synthetic val$oldScaleY:F

.field final synthetic val$scaleFactor:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2351
    iput-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$13;->val$fromView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher2/Launcher$13;->val$oldScaleX:F

    iput p4, p0, Lcom/android/launcher2/Launcher$13;->val$scaleFactor:F

    iput p5, p0, Lcom/android/launcher2/Launcher$13;->val$oldScaleY:F

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->val$fromView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/Launcher$13;->val$oldScaleX:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/launcher2/Launcher$13;->val$scaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2354
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->val$fromView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/Launcher$13;->val$oldScaleY:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/launcher2/Launcher$13;->val$scaleFactor:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2355
    return-void
.end method
