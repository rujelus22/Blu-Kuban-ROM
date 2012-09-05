.class Lcom/sec/android/app/ve/view/timeline/caption/Caption$2$1;
.super Ljava/lang/Object;
.source "Caption.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/caption/Caption$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/view/timeline/caption/Caption$2;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/caption/Caption$2;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$2$1;->this$1:Lcom/sec/android/app/ve/view/timeline/caption/Caption$2;

    iput-object p2, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$2$1;->val$view:Landroid/view/View;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 158
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$2$1;->val$view:Landroid/view/View;

    check-cast v3, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardX(F)I

    move-result v2

    .line 159
    .local v2, startX:I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$2$1;->val$view:Landroid/view/View;

    check-cast v3, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardX(F)I

    move-result v1

    .line 160
    .local v1, endX:I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getBaseLinePosition()I

    move-result v0

    .line 161
    .local v0, baselineX:I
    if-lt v0, v2, :cond_35

    if-gt v0, v1, :cond_35

    .line 164
    :goto_34
    return-void

    .line 163
    :cond_35
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_34
.end method
