.class Lcom/google/android/apps/plus/views/PhotoInfoView$1;
.super Ljava/lang/Object;
.source "PhotoInfoView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/PhotoInfoView;->hideHeaderInfoView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/PhotoInfoView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/PhotoInfoView;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView$1;->this$0:Lcom/google/android/apps/plus/views/PhotoInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView$1;->this$0:Lcom/google/android/apps/plus/views/PhotoInfoView;

    #getter for: Lcom/google/android/apps/plus/views/PhotoInfoView;->mHide:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->access$000(Lcom/google/android/apps/plus/views/PhotoInfoView;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView$1;->this$0:Lcom/google/android/apps/plus/views/PhotoInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setVisibility(I)V

    .line 328
    :cond_f
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 321
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 317
    return-void
.end method
