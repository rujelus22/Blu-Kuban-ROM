.class Lcom/sprint/w/installer/ScreenshotViewer$2;
.super Ljava/lang/Object;
.source "ScreenshotViewer.java"

# interfaces
.implements Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ScreenshotViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/ScreenshotViewer;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/ScreenshotViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenChanged(Landroid/view/View;I)V
    .registers 5
    .parameter "newScreen"
    .parameter "newScreenIndex"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iput p2, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    .line 101
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mChildCnt:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_49

    .line 102
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    if-nez v0, :cond_4a

    .line 103
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mInTransition:Ljava/util/List;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInRight:Landroid/view/animation/Animation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 104
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    :cond_34
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_49

    .line 108
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeOutLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    :cond_49
    :goto_49
    return-void

    .line 110
    :cond_4a
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mChildCnt:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_8f

    .line 111
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6b

    .line 112
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeOutRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    :cond_6b
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mInTransition:Ljava/util/List;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInLeft:Landroid/view/animation/Animation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 116
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_49

    .line 119
    :cond_8f
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mInTransition:Ljava/util/List;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInRight:Landroid/view/animation/Animation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 120
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    :cond_b2
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mInTransition:Ljava/util/List;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInLeft:Landroid/view/animation/Animation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 123
    iget-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sprint/w/installer/ScreenshotViewer$2;->this$0:Lcom/sprint/w/installer/ScreenshotViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_49
.end method

.method public onScreenChanging(Landroid/view/View;I)V
    .registers 3
    .parameter "newScreen"
    .parameter "newScreenIndex"

    .prologue
    .line 96
    return-void
.end method
