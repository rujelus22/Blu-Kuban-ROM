.class Lcom/google/android/apps/translate/editor/InputMethodView$12;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->slideUp(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InputMethodView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InputMethodView;)V
    .registers 2
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$12;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 806
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 810
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 814
    return-void
.end method
