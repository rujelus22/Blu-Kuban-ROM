.class final Lcom/sdgtl/mediahub/spr/customview/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

.field private b:Landroid/widget/Scroller;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->b:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/customview/d;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/d;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->b:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #calls: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$16(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    :cond_d
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/customview/d;)Landroid/widget/Scroller;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->b:Landroid/widget/Scroller;

    return-object v0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/d;->a(Z)V

    return-void
.end method

.method public final a(I)V
    .registers 11

    const v6, 0x7fffffff

    const/4 v2, 0x0

    if-nez p1, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/d;->b()V

    if-gez p1, :cond_1f

    move v1, v6

    :goto_d
    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/d;->c:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->b:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_1f
    move v1, v2

    goto :goto_d
.end method

.method public final b(I)V
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/d;->b()V

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/d;->c:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->b:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mAnimationDuration:I
    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$15(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I

    move-result v5

    move v2, v1

    move v3, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method public final run()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, v4}, Lcom/sdgtl/mediahub/spr/customview/d;->a(Z)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    const/4 v1, 0x0

    #setter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldStopFling:Z
    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$17(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->c:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_47

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_30
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v3, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->trackMotionScroll(I)V

    if-eqz v1, :cond_55

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldStopFling:Z
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->access$18(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Z

    move-result v0

    if-nez v0, :cond_55

    iput v2, p0, Lcom/sdgtl/mediahub/spr/customview/d;->c:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :cond_47
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/customview/d;->a:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_30

    :cond_55
    invoke-direct {p0, v4}, Lcom/sdgtl/mediahub/spr/customview/d;->a(Z)V

    goto :goto_e
.end method
