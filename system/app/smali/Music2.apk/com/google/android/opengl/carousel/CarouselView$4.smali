.class Lcom/google/android/opengl/carousel/CarouselView$4;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/opengl/carousel/CarouselView;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselView;

.field final synthetic val$focusCard:I


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$focusCard:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 453
    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->val$focusCard:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselView;->getCardCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 454
    .local v1, nextFocus:I
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v2}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/opengl/carousel/CarouselScene;->setFocusedItem(I)V

    .line 455
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #calls: Lcom/google/android/opengl/carousel/CarouselView;->sendFocusedEvent(I)V
    invoke-static {v2, v1}, Lcom/google/android/opengl/carousel/CarouselView;->access$200(Lcom/google/android/opengl/carousel/CarouselView;I)V

    .line 457
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v2}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/opengl/carousel/CarouselScene;->getCarouselRotationPosition()I

    move-result v0

    .line 459
    .local v0, firstCard:I
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v2}, Lcom/google/android/opengl/carousel/CarouselView;->access$300(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v2

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_53

    .line 461
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v2}, Lcom/google/android/opengl/carousel/CarouselView;->access$300(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v2

    iget v2, v2, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollTime:I

    if-nez v2, :cond_54

    .line 462
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v2}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v3}, Lcom/google/android/opengl/carousel/CarouselView;->access$300(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v3

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/opengl/carousel/CarouselScene;->setCarouselRotationAngle(F)V

    .line 471
    :cond_53
    :goto_53
    return-void

    .line 464
    :cond_54
    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;
    invoke-static {v2}, Lcom/google/android/opengl/carousel/CarouselView;->access$000(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselScene;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v3}, Lcom/google/android/opengl/carousel/CarouselView;->access$300(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v3

    iget v3, v3, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v4}, Lcom/google/android/opengl/carousel/CarouselView;->access$300(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v4

    iget v4, v4, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollTime:I

    iget-object v5, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v5}, Lcom/google/android/opengl/carousel/CarouselView;->access$300(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v5

    iget v5, v5, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollInterpolationMode:I

    iget-object v6, p0, Lcom/google/android/opengl/carousel/CarouselView$4;->this$0:Lcom/google/android/opengl/carousel/CarouselView;

    #getter for: Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;
    invoke-static {v6}, Lcom/google/android/opengl/carousel/CarouselView;->access$300(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;

    move-result-object v6

    iget v6, v6, Lcom/google/android/opengl/carousel/CarouselSetting;->mDpadSmoothScrollMaxArc:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/opengl/carousel/CarouselScene;->setCarouselRotationAngle(FIIF)V

    goto :goto_53
.end method
