.class public Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageIcon"
.end annotation


# instance fields
.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mDrawState:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .registers 3
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 634
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    .line 642
    return-void
.end method


# virtual methods
.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z
    .registers 15
    .parameter "canvas"
    .parameter "pageNumber"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x4000

    const/high16 v5, 0x3f80

    const/4 v4, 0x2

    .line 645
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    if-ne v0, v9, :cond_13

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationStartTime:J

    .line 647
    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    .line 649
    :cond_13
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$400()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    aget v8, v0, v1

    .line 651
    .local v8, value:F
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    if-ne v0, v4, :cond_2f

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationStartTime:J

    sub-long v6, v0, v2

    .line 653
    .local v6, duration:J
    const-wide/16 v0, 0xc8

    cmp-long v0, v6, v0

    if-ltz v0, :cond_92

    .line 654
    iput v10, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    .line 658
    .end local v6           #duration:J
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #getter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v5, v8

    mul-float/2addr v0, v1

    div-float/2addr v0, v11

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #getter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v5, v8

    mul-float/2addr v1, v2

    div-float/2addr v1, v11

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 661
    invoke-virtual {p1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #getter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 663
    const/4 v0, -0x1

    if-eq p2, v0, :cond_89

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    if-eq v0, v4, :cond_70

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$400()[F

    move-result-object v0

    aget v0, v0, v4

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_89

    .line 666
    :cond_70
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #getter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mIconNumberCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$600(Lcom/sec/android/app/twlauncher/PageIndicator;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #getter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    #getter for: Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$700(Lcom/sec/android/app/twlauncher/PageIndicator;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    #calls: Lcom/sec/android/app/twlauncher/PageIndicator;->drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$800(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V

    .line 667
    :cond_89
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 669
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    if-eqz v0, :cond_a1

    move v0, v9

    :goto_91
    return v0

    .line 656
    .restart local v6       #duration:J
    :cond_92
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationFrom:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationTo:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationFrom:F

    sub-float/2addr v1, v2

    long-to-float v2, v6

    const/high16 v3, 0x4348

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float v8, v0, v1

    goto :goto_2f

    .end local v6           #duration:J
    :cond_a1
    move v0, v10

    .line 669
    goto :goto_91
.end method

.method public setDrawState(I)V
    .registers 4
    .parameter "drawState"

    .prologue
    .line 673
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    if-eq p1, v0, :cond_1b

    .line 674
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationState:I

    .line 675
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$400()[F

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationTo:F

    .line 676
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$400()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mAnimationFrom:F

    .line 677
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->mDrawState:I

    .line 679
    :cond_1b
    return-void
.end method
