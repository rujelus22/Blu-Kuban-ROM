.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;
.super Ljava/lang/Object;
.source "AxT9CandidateViewLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createNormalViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBtnIndex:I

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V
    .registers 3
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 25
    .parameter "v"
    .parameter "me"

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v18

    if-nez v18, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/view/GestureDetector;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 229
    const/16 v18, 0x1

    .line 353
    :goto_2d
    return v18

    .line 231
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 232
    .local v3, action:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 233
    .local v16, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 234
    .local v17, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getScrollX()I

    move-result v10

    .line 235
    .local v10, scrollX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$202(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v8

    .line 237
    .local v8, prevNextCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 240
    .local v9, realCount:I
    packed-switch v3, :pswitch_data_5f6

    .line 353
    :cond_80
    :goto_80
    const/16 v18, 0x1

    goto :goto_2d

    .line 242
    :pswitch_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$502(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 244
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move/from16 v18, v0

    if-eqz v18, :cond_fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getCandidateMode()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_fb

    move-object/from16 v14, p1

    .line 245
    check-cast v14, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .line 246
    .local v14, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {v14}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v19

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$702(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getCandidateMode()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f1

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->displayHwr()V
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V

    .line 251
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    goto :goto_80

    .line 253
    .end local v14           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :cond_fb
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move/from16 v18, v0

    if-eqz v18, :cond_80

    move-object/from16 v14, p1

    .line 254
    check-cast v14, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .line 255
    .restart local v14       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {v14}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v19

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$702(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 258
    const/4 v12, 0x0

    .line 259
    .local v12, textWidth:F
    const/4 v7, 0x0

    .line 260
    .local v7, paint:Landroid/graphics/Paint;
    invoke-virtual {v14}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$902(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 263
    const/4 v4, 0x0

    .local v4, idx:I
    :goto_13b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_247

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v18

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 265
    float-to-int v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x0

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    add-int/lit8 v19, v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 266
    .local v15, wordWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$912(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1012(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    add-int/lit8 v19, v4, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v19

    add-int/lit8 v21, v4, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v18

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 271
    float-to-int v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x0

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    add-int/lit8 v19, v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 273
    .local v6, next_wordWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v18

    add-int v19, v18, v6

    if-eqz v8, :cond_242

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v18

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1300()I

    move-result v20

    sub-int v18, v18, v20

    :goto_22d
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_23e

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 263
    :cond_23e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13b

    .line 273
    :cond_242
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v18

    goto :goto_22d

    .line 279
    .end local v6           #next_wordWidth:I
    .end local v15           #wordWidth:I
    :cond_247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    goto/16 :goto_80

    .line 283
    .end local v4           #idx:I
    .end local v7           #paint:Landroid/graphics/Paint;
    .end local v12           #textWidth:F
    .end local v14           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :pswitch_252
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move/from16 v18, v0

    if-eqz v18, :cond_2e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getCandidateMode()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2e5

    .line 284
    const/4 v4, 0x0

    .restart local v4       #idx:I
    :goto_271
    if-ge v4, v9, :cond_2cc

    .line 285
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1400()I

    move-result v18

    mul-int v18, v18, v4

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1400()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2e2

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1400()I

    move-result v18

    mul-int v18, v18, v4

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1400()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1400()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2e2

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$702(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 291
    :cond_2cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$502(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    goto/16 :goto_80

    .line 284
    :cond_2e2
    add-int/lit8 v4, v4, 0x1

    goto :goto_271

    .line 293
    .end local v4           #idx:I
    :cond_2e5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move/from16 v18, v0

    if-eqz v18, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v18

    if-nez v18, :cond_80

    move-object/from16 v14, p1

    .line 294
    check-cast v14, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .line 299
    .restart local v14       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    const/4 v7, 0x0

    .line 300
    .restart local v7       #paint:Landroid/graphics/Paint;
    const/4 v12, 0x0

    .line 301
    .restart local v12       #textWidth:F
    const/4 v13, 0x0

    .line 302
    .local v13, total_Width:I
    invoke-virtual {v14}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 304
    const/4 v4, 0x0

    .restart local v4       #idx:I
    :goto_305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_3b5

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v18

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 306
    float-to-int v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x0

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    add-int/lit8 v19, v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 307
    .restart local v15       #wordWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    if-gt v13, v0, :cond_4a6

    add-int v18, v13, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mStart_point:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTouchPosX:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4a6

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$702(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 315
    .end local v15           #wordWidth:I
    :cond_3b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mRealStart_point:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v11

    .line 316
    .local v11, startX:I
    const/4 v5, 0x1

    .line 317
    .local v5, isinvalid:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    :goto_3c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_4b0

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v18

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 319
    float-to-int v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x0

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    add-int/lit8 v19, v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 320
    .restart local v15       #wordWidth:I
    add-int/2addr v11, v15

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    add-int/lit8 v19, v4, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v19

    add-int/lit8 v21, v4, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v18

    sget v19, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->CANDIDATE_TEXTVIEW_PADDING:I

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 322
    float-to-int v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x0

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1100()I

    move-result v19

    add-int/lit8 v19, v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 324
    .restart local v6       #next_wordWidth:I
    add-int v19, v11, v6

    if-eqz v8, :cond_4ab

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v18

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1300()I

    move-result v20

    sub-int v18, v18, v20

    :goto_49b
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_4a2

    .line 325
    const/4 v5, 0x0

    .line 317
    :cond_4a2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3c4

    .line 313
    .end local v5           #isinvalid:Z
    .end local v6           #next_wordWidth:I
    .end local v11           #startX:I
    :cond_4a6
    add-int/2addr v13, v15

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_305

    .line 324
    .restart local v5       #isinvalid:Z
    .restart local v6       #next_wordWidth:I
    .restart local v11       #startX:I
    :cond_4ab
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v18

    goto :goto_49b

    .line 329
    .end local v6           #next_wordWidth:I
    .end local v15           #wordWidth:I
    :cond_4b0
    if-eqz v5, :cond_80

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$502(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    goto/16 :goto_80

    .line 336
    .end local v4           #idx:I
    .end local v5           #isinvalid:Z
    .end local v7           #paint:Landroid/graphics/Paint;
    .end local v11           #startX:I
    .end local v12           #textWidth:F
    .end local v13           #total_Width:I
    .end local v14           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :pswitch_4c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mIsDown:Z
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$502(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 337
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move/from16 v18, v0

    if-eqz v18, :cond_576

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getCandidateMode()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_576

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_556

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v18

    if-ltz v18, :cond_556

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v21 .. v21}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 347
    :cond_556
    :goto_556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v18 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$702(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 349
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    goto/16 :goto_80

    .line 341
    :cond_576
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move/from16 v18, v0

    if-eqz v18, :cond_556

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v18

    if-nez v18, :cond_556

    move-object/from16 v14, p1

    .line 342
    check-cast v14, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    .line 343
    .restart local v14       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_556

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v18

    if-ltz v18, :cond_556

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mViewManager:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSuggestionList:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mSelectedButton:I
    invoke-static/range {v21 .. v21}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_556

    .line 240
    nop

    :pswitch_data_5f6
    .packed-switch 0x0
        :pswitch_83
        :pswitch_4c8
        :pswitch_252
    .end packed-switch
.end method
