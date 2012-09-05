.class Lcom/android/browser/PhoneUi$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PhoneUi;->showNavScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PhoneUi;

.field final synthetic val$animView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/browser/PhoneUi;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/browser/PhoneUi$1;->this$0:Lcom/android/browser/PhoneUi;

    iput-object p2, p0, Lcom/android/browser/PhoneUi$1;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "anim"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/browser/PhoneUi$1;->this$0:Lcom/android/browser/PhoneUi;

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/PhoneUi$1;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lcom/android/browser/PhoneUi$1;->this$0:Lcom/android/browser/PhoneUi;

    #calls: Lcom/android/browser/PhoneUi;->finishAnimationIn()V
    invoke-static {v0}, Lcom/android/browser/PhoneUi;->access$300(Lcom/android/browser/PhoneUi;)V

    .line 376
    iget-object v0, p0, Lcom/android/browser/PhoneUi$1;->this$0:Lcom/android/browser/PhoneUi;

    iget-object v0, v0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 377
    return-void
.end method
