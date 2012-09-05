.class Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;
.super Ljava/lang/Object;
.source "DurationView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastX:F

.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const v0, -0x3b864000

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->lastX:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 19
    .parameter "view"
    .parameter "event"

    .prologue
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2e

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0036

    if-ne v1, v2, :cond_23

    .line 137
    check-cast p1, Landroid/widget/ImageView;

    .line 138
    .end local p1
    const v1, 0x7f02015b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    :goto_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mDragging:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;Z)V

    .line 145
    const/4 v1, 0x1

    .line 306
    :goto_22
    return v1

    .line 140
    .restart local p1
    :cond_23
    check-cast p1, Landroid/widget/ImageView;

    .line 141
    .end local p1
    const v1, 0x7f020157

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    .line 146
    .restart local p1
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_398

    .line 148
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 148
    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getViewIndex(Landroid/view/View;)I

    move-result v11

    .line 151
    .local v11, mypos:I
    const/4 v8, 0x0

    .line 152
    .local v8, diff:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->lastX:F

    const v2, -0x3b864000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_57

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->lastX:F

    sub-float v8, v1, v2

    .line 157
    :cond_57
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0036

    if-ne v1, v2, :cond_1f6

    .line 159
    check-cast p1, Landroid/widget/ImageView;

    .line 160
    .end local p1
    const v1, 0x7f02015b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gez v1, :cond_82

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getMyWidth()I

    move-result v1

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_82

    .line 163
    const-string v1, "can not decreased i am very small"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    goto :goto_22

    .line 165
    :cond_82
    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gez v1, :cond_a4

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getMyWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x4348

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a4

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getMyWidth()I

    move-result v1

    rsub-int v1, v1, 0xc8

    add-int/lit8 v1, v1, -0x1

    int-to-float v8, v1

    .line 173
    :cond_a4
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    .line 174
    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 173
    check-cast v14, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 183
    .local v14, v:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$2(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getX(F)I

    move-result v1

    int-to-float v9, v1

    .line 184
    .local v9, myEndX:F
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_10b

    if-eqz v14, :cond_10b

    .line 185
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v14}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getX(F)I

    move-result v1

    int-to-float v15, v1

    .line 188
    .local v15, x:F
    cmpg-float v1, v15, v9

    if-gtz v1, :cond_ff

    .line 189
    const-string v1, "can not increased : i am touching my right side guy"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    goto/16 :goto_22

    .line 195
    :cond_ff
    add-float v1, v9, v8

    cmpl-float v1, v1, v15

    if-ltz v1, :cond_10b

    .line 197
    sub-float v1, v15, v9

    const/high16 v2, 0x3f80

    sub-float v8, v1, v2

    .line 201
    .end local v15           #x:F
    :cond_10b
    add-float v15, v9, v8

    .line 202
    .restart local v15       #x:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    float-to-int v2, v15

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getTime(I)F

    move-result v13

    .line 203
    .local v13, time:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v1

    cmpl-float v1, v13, v1

    if-lez v1, :cond_127

    .line 204
    const/4 v1, 0x0

    goto/16 :goto_22

    .line 209
    :cond_127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Diff is right moving:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->lastX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$2(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v2

    add-float/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    .line 212
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateDrawingDurationButton(ZI)V

    .line 214
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    const/4 v3, 0x0

    const/high16 v4, 0x447a

    mul-float/2addr v4, v13

    float-to-long v4, v4

    const/16 v6, 0x258

    const/16 v7, 0x154

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    .line 216
    invoke-static {v13}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    const v3, 0x7f0b0035

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->setText(Landroid/view/View;Ljava/lang/String;)V
    invoke-static {v1, v2, v12}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$3(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;Landroid/view/View;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    const/high16 v3, 0x447a

    mul-float/2addr v3, v13

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->showDrawing(Lcom/samsung/app/video/editor/external/Element;I)V

    .line 221
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    const/high16 v3, 0x447a

    mul-float/2addr v3, v13

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->showCaption(Lcom/samsung/app/video/editor/external/Element;I)V

    .line 292
    .end local v9           #myEndX:F
    .end local v12           #str:Ljava/lang/String;
    .end local v13           #time:F
    .end local v14           #v:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    .end local v15           #x:F
    :cond_1db
    :goto_1db
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->updateTextEleList()V

    .line 293
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->update()V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->lastX:F

    .line 306
    const/4 v1, 0x1

    goto/16 :goto_22

    .line 226
    .restart local p1
    :cond_1f6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0034

    if-ne v1, v2, :cond_1db

    .line 228
    check-cast p1, Landroid/widget/ImageView;

    .line 229
    .end local p1
    const v1, 0x7f020157

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_222

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getMyWidth()I

    move-result v1

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_222

    .line 233
    const-string v1, "can not decreased"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    goto/16 :goto_22

    .line 235
    :cond_222
    const/4 v1, 0x0

    cmpl-float v1, v8, v1

    if-lez v1, :cond_244

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getMyWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v8

    const/high16 v2, 0x4348

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_244

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getMyWidth()I

    move-result v1

    rsub-int v1, v1, 0xc8

    add-int/lit8 v1, v1, -0x1

    int-to-float v8, v1

    .line 240
    :cond_244
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    .line 241
    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 240
    check-cast v14, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 251
    .restart local v14       #v:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$2(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getX(F)I

    move-result v1

    int-to-float v10, v1

    .line 252
    .local v10, myStartX:F
    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gez v1, :cond_2cc

    if-eqz v14, :cond_2cc

    .line 253
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    .line 254
    invoke-virtual {v14}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v2

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getX(F)I

    move-result v1

    int-to-float v15, v1

    .line 255
    .restart local v15       #x:F
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X diff :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 257
    cmpl-float v1, v15, v10

    if-ltz v1, :cond_2bb

    .line 258
    const-string v1, "can not increased : i am touching my right side guy"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x0

    goto/16 :goto_22

    .line 264
    :cond_2bb
    add-float v1, v10, v8

    cmpg-float v1, v1, v15

    if-gtz v1, :cond_2cc

    .line 266
    sub-float v1, v10, v15

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x3f80

    add-float v8, v1, v2

    .line 270
    .end local v15           #x:F
    :cond_2cc
    add-float v15, v10, v8

    .line 271
    .restart local v15       #x:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getTime(I)F

    move-result v13

    .line 272
    .restart local v13       #time:F
    const/4 v1, 0x0

    cmpg-float v1, v13, v1

    if-gez v1, :cond_2e2

    .line 273
    const/4 v1, 0x0

    goto/16 :goto_22

    .line 275
    :cond_2e2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Diff is left moving:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->lastX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    #getter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$2(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v2

    add-float/2addr v2, v13

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStartTime(F)V

    .line 278
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateDrawingDurationButton(ZI)V

    .line 280
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    const/4 v3, 0x0

    const/high16 v4, 0x447a

    mul-float/2addr v4, v13

    float-to-long v4, v4

    const/16 v6, 0x258

    const/16 v7, 0x154

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    .line 282
    invoke-static {v13}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->timeFormat(F)Ljava/lang/String;

    move-result-object v12

    .line 283
    .restart local v12       #str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #calls: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->setText(Landroid/view/View;Ljava/lang/String;)V
    invoke-static {v1, v2, v12}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$3(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;Landroid/view/View;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    const/high16 v3, 0x447a

    mul-float/2addr v3, v13

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->showDrawing(Lcom/samsung/app/video/editor/external/Element;I)V

    .line 289
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    const/high16 v3, 0x447a

    mul-float/2addr v3, v13

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->showCaption(Lcom/samsung/app/video/editor/external/Element;I)V

    goto/16 :goto_1db

    .line 297
    .end local v8           #diff:F
    .end local v10           #myStartX:F
    .end local v11           #mypos:I
    .end local v12           #str:Ljava/lang/String;
    .end local v13           #time:F
    .end local v14           #v:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    .end local v15           #x:F
    .restart local p1
    :cond_398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    const v2, 0x7f0b0034

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 298
    const v2, 0x7f020156

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 300
    const v2, 0x7f02015a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->this$0:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->mDragging:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->access$1(Lcom/sec/android/app/ve/view/timeline/paint/DurationView;Z)V

    .line 303
    const v1, -0x3b864000

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/DurationView$3;->lastX:F

    .line 304
    const/4 v1, 0x0

    goto/16 :goto_22
.end method
