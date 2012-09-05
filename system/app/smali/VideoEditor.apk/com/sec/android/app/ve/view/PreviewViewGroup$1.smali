.class Lcom/sec/android/app/ve/view/PreviewViewGroup$1;
.super Landroid/os/Handler;
.source "PreviewViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/PreviewViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 255
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/16 v9, 0x66

    const/high16 v6, 0x447a

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/16 v5, 0x67

    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_3c

    .line 258
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 260
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    :cond_25
    :goto_25
    return-void

    .line 265
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_25

    .line 272
    :cond_3c
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v9, :cond_1c6

    .line 273
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$1()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$2(Lcom/sec/android/app/ve/view/PreviewViewGroup;)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$3(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J

    move-result-wide v2

    long-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b3

    .line 280
    const-string v0, "runtime > fulltime"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$4(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$3(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J

    move-result-wide v3

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$6(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$7(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$3(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J

    move-result-wide v3

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_91
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$6(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$7(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$3(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J

    move-result-wide v3

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 288
    :cond_b3
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$4(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$2(Lcom/sec/android/app/ve/view/PreviewViewGroup;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91

    .line 291
    :cond_ce
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$1()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 296
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_185

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const-wide/16 v2, 0x0

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->total_trans:J
    invoke-static {v0, v2, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$8(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)V

    .line 301
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    :goto_f6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15b

    .line 315
    :goto_fc
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$4(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    .line 316
    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->total_trans:J
    invoke-static {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$10(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J

    move-result-wide v4

    long-to-float v4, v4

    sub-float/2addr v3, v4

    .line 315
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$6(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$7(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$3(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J

    move-result-wide v3

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 302
    :cond_15b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/app/video/editor/external/Element;

    .line 303
    .local v8, e:Lcom/samsung/app/video/editor/external/Element;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 304
    const-string v0, "matching :::break"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_fc

    .line 308
    :cond_173
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->total_trans:J
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$10(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v5

    add-long/2addr v3, v5

    #setter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->total_trans:J
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$8(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)V

    goto/16 :goto_f6

    .line 326
    .end local v8           #e:Lcom/samsung/app/video/editor/external/Element;
    :cond_185
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$4(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$6(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$7(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$3(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J

    move-result-wide v3

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 332
    :cond_1c6
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_220

    .line 337
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$1()Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 339
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v7

    .line 342
    .local v7, curPos:I
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    int-to-long v2, v7

    #calls: Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateScroll(J)V
    invoke-static {v0, v2, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$11(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 345
    const-wide/16 v2, 0xa

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_25

    .line 346
    .end local v7           #curPos:I
    :cond_1fe
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$1()Z

    move-result v0

    if-nez v0, :cond_25

    .line 351
    const-string v0, "Removing enqueued msgs when paused"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_25

    .line 357
    :cond_220
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x68

    if-ne v0, v2, :cond_2b5

    .line 358
    const-string v0, "Delay in Preview frame set operation"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, eTemp:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_252

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-eqz v0, :cond_252

    .line 362
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #eTemp:Lcom/samsung/app/video/editor/external/Element;
    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 364
    .restart local v1       #eTemp:Lcom/samsung/app/video/editor/external/Element;
    :cond_252
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    if-eqz v0, :cond_28c

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    if-eqz v0, :cond_28c

    .line 365
    const-string v0, "MI!"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .end local v1           #eTemp:Lcom/samsung/app/video/editor/external/Element;
    const/4 v2, 0x0

    .line 367
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F
    invoke-static {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$12(Lcom/sec/android/app/ve/view/PreviewViewGroup;)F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-long v3, v3

    const/16 v5, 0x258

    const/16 v6, 0x154

    .line 366
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    goto/16 :goto_25

    .line 368
    .restart local v1       #eTemp:Lcom/samsung/app/video/editor/external/Element;
    :cond_28c
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    if-nez v0, :cond_25

    if-eqz v1, :cond_25

    .line 369
    const-string v0, "MI?"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    const/4 v2, 0x0

    .line 371
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    mul-float/2addr v3, v6

    float-to-long v3, v3

    const/16 v5, 0x258

    const/16 v6, 0x154

    .line 370
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    goto/16 :goto_25

    .line 373
    .end local v1           #eTemp:Lcom/samsung/app/video/editor/external/Element;
    :cond_2b5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x69

    if-ne v0, v2, :cond_2e6

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "after 1 sec::"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    #getter for: Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_25

    .line 378
    :cond_2e6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6a

    if-ne v0, v2, :cond_25

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateDrawingDurationButton(ZI)V

    goto/16 :goto_25
.end method
