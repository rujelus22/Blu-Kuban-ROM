.class Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/16 v13, 0x8

    const v12, 0x7f0b0100

    const/4 v14, 0x0

    .line 1074
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #calls: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideSplitButton()V
    invoke-static {v10}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$4(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 1075
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v1

    .line 1076
    .local v1, currentTime:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v8

    .line 1077
    .local v8, totalTime:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 1080
    .local v2, focusedView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changeMode(I)V

    .line 1081
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b0108

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v10, v12}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1085
    .local v5, scrollParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1086
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v10, v12}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v10, v12}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0201ca

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b0102

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b0101

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1092
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b0110

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b0105

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v14, v11, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1096
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b010d

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v14, v11, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1099
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b010b

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b010a

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x16a

    invoke-virtual {v10, v11, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1102
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v11, 0x7f0b0116

    invoke-virtual {v10, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/ve/view/trim/TrimBarView;

    .line 1105
    .local v9, trimbar:Lcom/sec/android/app/ve/view/trim/TrimBarView;
    if-eqz v2, :cond_184

    .line 1107
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v7

    .line 1108
    .local v7, startPos:I
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v10

    mul-int/lit8 v10, v10, 0x7d

    div-int/lit8 v10, v10, 0x2

    add-int v6, v7, v10

    .line 1109
    .local v6, scrollPos:I
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v4, v8, v10

    .line 1111
    .local v4, scale:F
    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1113
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0x29

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    add-int/lit8 v10, v10, 0x29

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1115
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setting the width :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " start X :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v11

    mul-int/lit8 v11, v11, 0x7d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->getPaddingLeft()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v9, v3}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    add-int/lit16 v10, v7, 0x176

    invoke-virtual {v9, v10, v14, v14, v14}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->setPadding(IIII)V

    .line 1122
    mul-float v10, v4, v1

    float-to-int v10, v10

    add-int v0, v10, v7

    .line 1124
    .local v0, currentPos:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "totalTime :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " :scale"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " startpos:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1126
    iget-object v10, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$5(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5$1;

    invoke-direct {v11, p0, v6, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5$1;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$5;ILcom/sec/android/app/ve/view/trim/TrimBarView;)V

    .line 1138
    const-wide/16 v12, 0xc8

    .line 1126
    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1141
    .end local v0           #currentPos:I
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v4           #scale:F
    .end local v6           #scrollPos:I
    .end local v7           #startPos:I
    :cond_184
    invoke-virtual {v9, v14}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->setVisibility(I)V

    .line 1152
    return-void
.end method
