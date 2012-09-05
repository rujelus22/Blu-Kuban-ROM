.class Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;
.super Ljava/lang/Object;
.source "Caption.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/caption/Caption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastX:F

.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const v0, -0x3b864000

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->lastX:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "event"

    .prologue
    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_30

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b0019

    if-ne v7, v8, :cond_27

    .line 204
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v7, 0x7f020159

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    :goto_17
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    const/4 v8, 0x1

    #setter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mDragging:Z
    invoke-static {v7, v8}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$2(Lcom/sec/android/app/ve/view/timeline/caption/Caption;Z)V

    .line 209
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 210
    const/4 v7, 0x1

    .line 333
    :goto_26
    return v7

    .line 206
    .restart local p1
    :cond_27
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v7, 0x7f020155

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_17

    .line 211
    .restart local p1
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_289

    .line 214
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getViewIndex(Landroid/view/View;)I

    move-result v3

    .line 216
    .local v3, mypos:I
    const/4 v0, 0x0

    .line 217
    .local v0, diff:F
    iget v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->lastX:F

    const v8, -0x3b864000

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_53

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v8, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->lastX:F

    sub-float v0, v7, v8

    .line 222
    :cond_53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b0019

    if-ne v7, v8, :cond_172

    .line 224
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v7, 0x7f020159

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_7a

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    const/16 v8, 0x80

    if-gt v7, v8, :cond_7a

    .line 227
    const-string v7, "can not decreased i am very small"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 228
    const/4 v7, 0x0

    goto :goto_26

    .line 229
    :cond_7a
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_98

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v0

    const/high16 v8, 0x4300

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_98

    .line 231
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    rsub-int v7, v7, 0x80

    add-int/lit8 v7, v7, 0x2

    int-to-float v0, v7

    .line 235
    :cond_98
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    .line 241
    .local v5, v:Lcom/sec/android/app/ve/view/timeline/caption/Caption;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {v8}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$3(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardX(F)I

    move-result v7

    int-to-float v1, v7

    .line 242
    .local v1, myEndX:F
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_e7

    if-eqz v5, :cond_e7

    .line 243
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardX(F)I

    move-result v7

    int-to-float v6, v7

    .line 246
    .local v6, x:F
    cmpg-float v7, v6, v1

    if-gtz v7, :cond_db

    .line 247
    const-string v7, "can not increased : i am touching my right side guy"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 248
    const/4 v7, 0x0

    goto/16 :goto_26

    .line 252
    :cond_db
    add-float v7, v1, v0

    cmpl-float v7, v7, v6

    if-ltz v7, :cond_e7

    .line 254
    sub-float v7, v6, v1

    const/high16 v8, 0x3f80

    sub-float v0, v7, v8

    .line 259
    .end local v6           #x:F
    :cond_e7
    add-float v6, v1, v0

    .line 260
    .restart local v6       #x:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    float-to-int v8, v6

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardTime(I)F

    move-result v4

    .line 261
    .local v4, time:F
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_105

    .line 262
    const/4 v7, 0x0

    goto/16 :goto_26

    .line 266
    :cond_105
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Diff is right moving:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->lastX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 267
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$3(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 317
    .end local v1           #myEndX:F
    .end local v4           #time:F
    .end local v5           #v:Lcom/sec/android/app/ve/view/timeline/caption/Caption;
    .end local v6           #x:F
    :cond_14e
    :goto_14e
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateTextEleList()V

    .line 318
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->lastX:F

    .line 321
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->showClipArtParam()V

    .line 333
    const/4 v7, 0x1

    goto/16 :goto_26

    .line 271
    .restart local p1
    :cond_172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b0018

    if-ne v7, v8, :cond_14e

    .line 273
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v7, 0x7f020155

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_19a

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    const/16 v8, 0x80

    if-gt v7, v8, :cond_19a

    .line 277
    const-string v7, "can not decreased"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 278
    const/4 v7, 0x0

    goto/16 :goto_26

    .line 279
    :cond_19a
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1b8

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v0

    const/high16 v8, 0x4300

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1b8

    .line 280
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getMyWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x80

    add-int/lit8 v7, v7, -0x2

    int-to-float v0, v7

    .line 283
    :cond_1b8
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v7

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    .line 289
    .restart local v5       #v:Lcom/sec/android/app/ve/view/timeline/caption/Caption;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {v8}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$3(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardX(F)I

    move-result v7

    int-to-float v2, v7

    .line 290
    .local v2, myStartX:F
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_228

    if-eqz v5, :cond_228

    .line 291
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardX(F)I

    move-result v7

    int-to-float v6, v7

    .line 292
    .restart local v6       #x:F
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "X diff :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 294
    cmpl-float v7, v6, v2

    if-ltz v7, :cond_217

    .line 295
    const-string v7, "can not increased : i am touching my right side guy"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 296
    const/4 v7, 0x0

    goto/16 :goto_26

    .line 300
    :cond_217
    add-float v7, v2, v0

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_228

    .line 302
    sub-float v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    neg-float v7, v7

    const/high16 v8, 0x3f80

    add-float v0, v7, v8

    .line 307
    .end local v6           #x:F
    :cond_228
    add-float v6, v2, v0

    .line 308
    .restart local v6       #x:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardTime(I)F

    move-result v4

    .line 309
    .restart local v4       #time:F
    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_23e

    .line 310
    const/4 v7, 0x0

    goto/16 :goto_26

    .line 312
    :cond_23e
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Diff is left moving:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->lastX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 313
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    #getter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {v7}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$3(Lcom/sec/android/app/ve/view/timeline/caption/Caption;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    goto/16 :goto_14e

    .line 324
    .end local v0           #diff:F
    .end local v2           #myStartX:F
    .end local v3           #mypos:I
    .end local v4           #time:F
    .end local v5           #v:Lcom/sec/android/app/ve/view/timeline/caption/Caption;
    .end local v6           #x:F
    .restart local p1
    :cond_289
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    const v8, 0x7f0b0018

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 325
    const v8, 0x7f020154

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    const v8, 0x7f0b0019

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 327
    const v8, 0x7f020158

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->this$0:Lcom/sec/android/app/ve/view/timeline/caption/Caption;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/ve/view/timeline/caption/Caption;->mDragging:Z
    invoke-static {v7, v8}, Lcom/sec/android/app/ve/view/timeline/caption/Caption;->access$2(Lcom/sec/android/app/ve/view/timeline/caption/Caption;Z)V

    .line 329
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 330
    const v7, -0x3b864000

    iput v7, p0, Lcom/sec/android/app/ve/view/timeline/caption/Caption$3;->lastX:F

    .line 331
    const/4 v7, 0x0

    goto/16 :goto_26
.end method
