.class Lcom/google/android/apps/translate/home/TitleView$3;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/home/TitleView;->slideUpInputMethodView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/home/TitleView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/home/TitleView;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/apps/translate/home/TitleView$3;->this$0:Lcom/google/android/apps/translate/home/TitleView;

    iput-object p2, p0, Lcom/google/android/apps/translate/home/TitleView$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView$3;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 176
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 180
    return-void
.end method
