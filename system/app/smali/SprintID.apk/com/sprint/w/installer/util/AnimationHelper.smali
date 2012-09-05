.class public Lcom/sprint/w/installer/util/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static expandOrCollapse(Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .parameter "view2Expand"
    .parameter "view2Measure"
    .parameter "collapsedHeight"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v3, p2, :cond_7

    .line 40
    :goto_6
    return-void

    .line 31
    :cond_7
    invoke-static {p0, p1}, Lcom/sprint/w/installer/util/AnimationHelper;->measureViewHeight(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 33
    .local v1, measuredHeight:I
    if-ge v1, p2, :cond_e

    .line 34
    move v1, p2

    .line 36
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 37
    .local v2, startHeight:I
    if-gt v2, p2, :cond_26

    move v0, v1

    .line 39
    .local v0, finishHeight:I
    :goto_15
    new-instance v3, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;

    new-instance v4, Lcom/sprint/w/installer/util/AnimationHelper;

    invoke-direct {v4}, Lcom/sprint/w/installer/util/AnimationHelper;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, p0, v2, v0}, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;-><init>(Lcom/sprint/w/installer/util/AnimationHelper;Landroid/view/View;II)V

    invoke-virtual {p0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    .end local v0           #finishHeight:I
    :cond_26
    move v0, p2

    .line 37
    goto :goto_15
.end method

.method private static measureViewHeight(Landroid/view/View;Landroid/view/View;)I
    .registers 10
    .parameter "view2Expand"
    .parameter "view2Measure"

    .prologue
    .line 16
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onMeasure"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 17
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 18
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_44

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 24
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_43
    return v2

    .line 19
    :catch_44
    move-exception v0

    .line 20
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_43
.end method
