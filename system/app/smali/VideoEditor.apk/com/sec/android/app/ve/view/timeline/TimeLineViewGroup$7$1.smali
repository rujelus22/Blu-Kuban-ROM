.class Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;

.field private final synthetic val$focusedView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

.field private final synthetic val$startPos:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;->this$1:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;

    iput-object p2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;->val$focusedView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    iput p3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;->val$startPos:I

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1229
    const/4 v0, 0x0

    .line 1230
    .local v0, scrollPos:I
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;->val$focusedView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_30

    .line 1231
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;->val$focusedView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v1

    .line 1232
    .local v1, startPos:I
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;->val$focusedView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7d

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 1238
    .end local v1           #startPos:I
    :goto_1b
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 1240
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1241
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 1242
    :cond_2f
    return-void

    .line 1234
    :cond_30
    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;->val$startPos:I

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7d

    div-int/lit8 v2, v2, 0x2

    add-int v0, v3, v2

    goto :goto_1b
.end method
