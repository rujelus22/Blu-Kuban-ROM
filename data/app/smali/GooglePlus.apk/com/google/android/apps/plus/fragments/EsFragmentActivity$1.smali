.class Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;
.super Ljava/lang/Object;
.source "EsFragmentActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->hideTitlebar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

.field final synthetic val$titleLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;->val$titleLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;->this$0:Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    #getter for: Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->access$200(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 625
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;->val$titleLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    :cond_f
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 620
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 616
    return-void
.end method
