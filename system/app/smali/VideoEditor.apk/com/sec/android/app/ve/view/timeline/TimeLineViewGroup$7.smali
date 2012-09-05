.class Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const v5, 0x7f0b0100

    const/4 v6, 0x0

    .line 1200
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #calls: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideTrimBar()V
    invoke-static {v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$6(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    .line 1201
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v2

    .line 1202
    .local v2, startPos:I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 1204
    .local v0, focusedView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changeMode(I)V

    .line 1206
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1207
    .local v1, scrollParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1208
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1210
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v4, 0x7f0b0102

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v4, 0x7f0b0101

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1213
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1214
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v4, 0x7f0b0108

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v4, 0x7f0b0110

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v4, 0x7f0b010d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1218
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v4, 0x7f0b010b

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v4, 0x7f0b010a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x16a

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1220
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$7(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_e4

    .line 1221
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v5, 0x7f0b010e

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    #setter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;
    invoke-static {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$8(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;Landroid/view/View;)V

    .line 1222
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$7(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$9(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    :cond_e4
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mSplitBtn:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$7(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->mHander:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$5(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7$1;-><init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$7;Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;I)V

    .line 1243
    const-wide/16 v5, 0xc8

    .line 1226
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1245
    return-void
.end method
