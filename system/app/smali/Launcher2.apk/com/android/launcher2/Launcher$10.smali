.class Lcom/android/launcher2/Launcher$10;
.super Lcom/android/launcher2/LauncherAnimatorUpdateListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$scale:F

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$10;->val$toView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher2/Launcher$10;->val$scale:F

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/high16 v3, 0x3f80

    .line 2230
    iget-object v0, p0, Lcom/android/launcher2/Launcher$10;->val$toView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/Launcher$10;->val$scale:F

    mul-float/2addr v1, p1

    mul-float v2, p2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2231
    iget-object v0, p0, Lcom/android/launcher2/Launcher$10;->val$toView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/Launcher$10;->val$scale:F

    mul-float/2addr v1, p1

    mul-float v2, p2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2232
    return-void
.end method
