.class public Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;
.super Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
.source "EvEditGestureProc.java"


# instance fields
.field private final BUFFER_SIZE:I

.field private final LOG_CAT:Ljava/lang/String;

.field public final METAKEY_CTRL_ON:I

.field public final METAKEY_CTRL_PRESSED:I

.field public final METAKEY_HOME_END_KEY_FLAG:I

.field public final METAKEY_NONE:I

.field public final METAKEY_SHIFT_PRESSED:I

.field index:I

.field protected mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

.field protected mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

.field protected mExtractedText:Ljava/lang/String;

.field protected mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

.field protected mPrevText:Ljava/lang/String;

.field mSavedCaretPos:I

.field protected mbPrevComposing:Z

.field protected metaKeyStatus:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 8
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    .line 33
    const-string v0, "EvEditGestureProc"

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->LOG_CAT:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    .line 36
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    .line 37
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->index:I

    .line 38
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mSavedCaretPos:I

    .line 40
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    .line 41
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    .line 42
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    .line 320
    const/16 v0, 0x100

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->BUFFER_SIZE:I

    .line 675
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->METAKEY_NONE:I

    .line 676
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->METAKEY_SHIFT_PRESSED:I

    .line 677
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->METAKEY_CTRL_PRESSED:I

    .line 678
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->METAKEY_HOME_END_KEY_FLAG:I

    .line 679
    const/16 v0, 0x1000

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->METAKEY_CTRL_ON:I

    .line 680
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    .line 57
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    invoke-virtual {v0, v3}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->setIsLongpressEnabled(Z)V

    .line 59
    const-string v0, "EvEditGestureProc"

    const-string v1, "EvEditGestureProc(EvGestureCallback listener, View view)"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    invoke-direct {v0, p3}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    .line 61
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-direct {v0, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;-><init>(Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    .line 63
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    invoke-direct {v0, p1, p3}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;-><init>(Landroid/app/Activity;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    .line 64
    return-void
.end method


# virtual methods
.method public Gesturefinalize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->EvObjectProcfinalize()V

    .line 47
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->CaretTaskfinalize()V

    .line 48
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->ToastFinalize()V

    .line 49
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    .line 50
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    .line 51
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    .line 52
    invoke-super {p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->Gesturefinalize()V

    .line 53
    return-void
.end method

.method public GetObjCtrlSelIndex()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlSelIndex()I

    move-result v0

    return v0
.end method

.method public GetObjCtrlSize()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlSize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public GetObjCtrlType()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    return v0
.end method

.method public OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .registers 3
    .parameter "param"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->SetObjCtrlInfo(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    .line 87
    return-void
.end method

.method public finishComposingText()Z
    .registers 2

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->sendEmptyCommit()V

    .line 660
    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 11
    .parameter "hor"
    .parameter "ver"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetScrollInfo_Editor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v7

    .line 819
    .local v7, screenInfo:Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;
    iget v0, v7, Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;->nCurPosX:I

    int-to-float v3, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;->nCurPosY:I

    int-to-float v4, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;->nWidth:I

    int-to-float v5, v0

    iget v0, v7, Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;->nHeight:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getScrollBarRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 820
    return-void
.end method

.method public insertString(Ljava/lang/String;II)V
    .registers 10
    .parameter "strText"
    .parameter "compType"
    .parameter "compPos"

    .prologue
    const/16 v5, 0x100

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, s:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 325
    .local v1, t:I
    if-nez v1, :cond_5f

    .line 326
    const-string v2, "EvEditGestureProc"

    const-string v3, "insertString commit or delete"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2, p1, p2, p3, v1}, Lcom/infraware/office/evengine/EvInterface;->IInsertString(Ljava/lang/String;III)V

    .line 346
    :goto_15
    return-void

    .line 332
    :cond_16
    if-le v1, v5, :cond_62

    .line 333
    add-int/lit16 v2, v0, 0x100

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 334
    const-string v2, "EvEditGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertString1 comptype="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " comppos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    add-int v3, p3, v0

    invoke-virtual {v2, p1, p2, v3, v5}, Lcom/infraware/office/evengine/EvInterface;->IInsertString(Ljava/lang/String;III)V

    .line 343
    :goto_5b
    add-int/lit16 v1, v1, -0x100

    .line 344
    add-int/lit16 v0, v0, 0x100

    .line 331
    :cond_5f
    if-gtz v1, :cond_16

    goto :goto_15

    .line 338
    :cond_62
    add-int v2, v0, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 339
    const-string v2, "EvEditGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insertString2 comptype="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " comppos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    add-int v3, p3, v0

    invoke-virtual {v2, p1, p2, v3, v1}, Lcom/infraware/office/evengine/EvInterface;->IInsertString(Ljava/lang/String;III)V

    goto :goto_5b
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    if-eqz v0, :cond_16

    .line 310
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->isShow()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 311
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->show(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Z)V

    .line 312
    const/4 v0, 0x1

    .line 316
    :goto_15
    return v0

    :cond_16
    invoke-super {p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onBackPressed()Z

    move-result v0

    goto :goto_15
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->onConfigurationChanged()V

    .line 125
    :cond_9
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    const/4 v0, 0x0

    .line 244
    const-string v1, "EvEditGestureProc"

    const-string v2, "onDoubleTap"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-boolean v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbFindReplaceMode:Z

    if-eqz v1, :cond_16

    .line 247
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->onShowIme(Z)Z

    .line 248
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->TimerOff()V

    .line 249
    const/4 v0, 0x1

    .line 254
    :goto_15
    return v0

    .line 252
    :cond_16
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 253
    const/4 v1, 0x5

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    goto :goto_15
.end method

.method public onDoubleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 259
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    if-nez v1, :cond_e

    .line 267
    :cond_d
    :goto_d
    return v3

    .line 261
    :cond_e
    const/4 v0, 0x0

    .line 263
    .local v0, bShowIme:Z
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->CaretOnOff(Lcom/infraware/office/evengine/EV$CARET_INFO;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 264
    const/4 v0, 0x1

    .line 266
    :cond_26
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->onShowIme(Z)Z

    goto :goto_d
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "canvas"
    .parameter "content"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbFindReplaceMode:Z

    if-nez v0, :cond_22

    .line 107
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->CaretOnOff(Lcom/infraware/office/evengine/EV$CARET_INFO;)Z

    .line 108
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->DrawCaret(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    if-eqz v0, :cond_22

    .line 111
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->DrawObjCtrlPoint(Landroid/graphics/Canvas;Ljava/lang/Boolean;)V

    .line 114
    :cond_22
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    if-eqz v0, :cond_2d

    .line 115
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->update(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V

    .line 117
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 118
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->FlingObjCtrl()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 303
    const/4 v0, 0x1

    .line 304
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 684
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_d2

    .line 685
    iget v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_35

    move v1, v4

    .line 686
    .local v1, bHomeEndKey:Z
    :goto_12
    iget v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    and-int/lit8 v3, v6, 0x1

    .line 687
    .local v3, bShift:I
    iget v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    and-int/lit8 v0, v6, 0x2

    .line 689
    .local v0, bCtrl:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_23

    const/4 v3, 0x1

    .line 690
    :cond_23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_2e

    const/4 v0, 0x1

    .line 692
    :cond_2e
    sparse-switch p1, :sswitch_data_fe

    .line 786
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    move v4, v5

    .line 790
    .end local v0           #bCtrl:I
    .end local v1           #bHomeEndKey:Z
    .end local v3           #bShift:I
    :goto_34
    return v4

    :cond_35
    move v1, v5

    .line 685
    goto :goto_12

    .line 695
    .restart local v0       #bCtrl:I
    .restart local v1       #bHomeEndKey:Z
    .restart local v3       #bShift:I
    :sswitch_37
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/16 v7, 0xa

    invoke-virtual {v6, v5, v7, v5}, Lcom/infraware/office/evengine/EvInterface;->ICharInsert(III)V

    .line 696
    invoke-virtual {p0, v4, v4}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 697
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    goto :goto_34

    .line 700
    :sswitch_44
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/16 v7, 0x8

    invoke-virtual {v6, v8, v7, v4}, Lcom/infraware/office/evengine/EvInterface;->ICharInsert(III)V

    .line 701
    invoke-virtual {p0, v4, v5}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 702
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    goto :goto_34

    .line 706
    :sswitch_51
    const/4 v2, 0x1

    .line 707
    .local v2, bReturn:Z
    if-eqz v1, :cond_60

    .line 708
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, v10, v3, v0}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    .line 715
    :goto_59
    invoke-virtual {p0, v4, v4}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 716
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    move v4, v2

    .line 717
    goto :goto_34

    .line 710
    :cond_60
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretPos_Editor()I

    move-result v6

    if-ne v8, v6, :cond_69

    .line 711
    const/4 v2, 0x0

    .line 712
    :cond_69
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, v4, v3, v0}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    goto :goto_59

    .line 721
    .end local v2           #bReturn:Z
    :sswitch_6f
    const/4 v2, 0x1

    .line 722
    .restart local v2       #bReturn:Z
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretPos_Editor()I

    move-result v6

    if-ne v4, v6, :cond_79

    .line 723
    const/4 v2, 0x0

    .line 724
    :cond_79
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, v5, v3, v0}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    .line 725
    invoke-virtual {p0, v4, v4}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 726
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    move v4, v2

    .line 727
    goto :goto_34

    .line 730
    .end local v2           #bReturn:Z
    :sswitch_85
    if-eqz v1, :cond_93

    .line 731
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v3, v0}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    .line 734
    :goto_8d
    invoke-virtual {p0, v4, v5}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 735
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    goto :goto_34

    .line 733
    :cond_93
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, v8, v3, v0}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    goto :goto_8d

    .line 738
    :sswitch_99
    if-eqz v1, :cond_a6

    .line 739
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, v10, v3, v0}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    .line 742
    :goto_a0
    invoke-virtual {p0, v4, v5}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 743
    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    goto :goto_34

    .line 741
    :cond_a6
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v3, v0}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    goto :goto_a0

    .line 746
    :sswitch_ad
    iget v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_bb

    .line 747
    iget v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    goto/16 :goto_34

    .line 750
    :cond_bb
    iget v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    goto/16 :goto_34

    .line 753
    :sswitch_c3
    iget v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    goto/16 :goto_34

    .line 756
    :sswitch_cb
    if-ne v0, v4, :cond_d2

    .line 757
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4, v5, v5, v5, v9}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    .end local v0           #bCtrl:I
    .end local v1           #bHomeEndKey:Z
    .end local v3           #bShift:I
    :cond_d2
    :goto_d2
    move v4, v5

    .line 790
    goto/16 :goto_34

    .line 761
    .restart local v0       #bCtrl:I
    .restart local v1       #bHomeEndKey:Z
    .restart local v3       #bShift:I
    :sswitch_d5
    if-ne v0, v4, :cond_d2

    .line 762
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, v4, v5, v5, v9}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    goto :goto_d2

    .line 766
    :sswitch_dd
    if-ne v0, v4, :cond_d2

    .line 767
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4, v8, v5, v5, v9}, Lcom/infraware/office/evengine/EvInterface;->IEditDocument(IIILjava/lang/String;)V

    goto :goto_d2

    .line 771
    :sswitch_e5
    if-ne v0, v4, :cond_d2

    .line 772
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->ISelectAll()V

    goto :goto_d2

    .line 776
    :sswitch_ed
    if-ne v0, v4, :cond_d2

    .line 777
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, v4}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    goto :goto_d2

    .line 781
    :sswitch_f5
    if-ne v0, v4, :cond_d2

    .line 782
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4, v5}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    goto :goto_d2

    .line 692
    nop

    :sswitch_data_fe
    .sparse-switch
        0x13 -> :sswitch_6f
        0x14 -> :sswitch_51
        0x15 -> :sswitch_85
        0x16 -> :sswitch_99
        0x1d -> :sswitch_e5
        0x1f -> :sswitch_d5
        0x32 -> :sswitch_dd
        0x34 -> :sswitch_cb
        0x35 -> :sswitch_f5
        0x36 -> :sswitch_ed
        0x39 -> :sswitch_ad
        0x3b -> :sswitch_c3
        0x42 -> :sswitch_37
        0x43 -> :sswitch_44
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 795
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 796
    sparse-switch p1, :sswitch_data_1e

    .line 812
    :cond_b
    :goto_b
    :sswitch_b
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    .line 813
    return v3

    .line 805
    :sswitch_e
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->metaKeyStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 806
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    .line 807
    invoke-virtual {p0, v2, v2}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    goto :goto_b

    .line 796
    :sswitch_data_1e
    .sparse-switch
        0x13 -> :sswitch_b
        0x14 -> :sswitch_b
        0x15 -> :sswitch_b
        0x16 -> :sswitch_b
        0x39 -> :sswitch_e
        0x42 -> :sswitch_b
        0x43 -> :sswitch_b
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x6

    .line 290
    const-string v0, "EvEditGestureProc"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->LongPressObjCtrl(II)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 292
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    .line 298
    :cond_20
    :goto_20
    return-void

    .line 293
    :cond_21
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CARET_INFO;->bCaret:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 295
    iput v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    .line 296
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    iget v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->showOnInputAction(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;I)Z

    goto :goto_20
.end method

.method public onMotionTilt(I)V
    .registers 19
    .parameter "tilt"

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    .line 351
    const-string v1, "EvEditGestureProc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tilt = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 354
    .local v13, gyroCurrentTime:J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mGyroPreviousTime:J

    sub-long v1, v13, v1

    const-wide/16 v4, 0xf

    cmp-long v1, v1, v4

    if-gez v1, :cond_2e

    .line 374
    .end local v13           #gyroCurrentTime:J
    :cond_2d
    :goto_2d
    return-void

    .line 357
    .restart local v13       #gyroCurrentTime:J
    :cond_2e
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2d

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v15

    .line 359
    .local v15, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    move/from16 v0, p1

    int-to-float v1, v0

    const v2, 0x3fb66666

    mul-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v16, v0

    .line 360
    .local v16, newTilt:I
    iget v1, v15, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    add-int v3, v1, v16

    .line 361
    .local v3, nScale:I
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v2

    iget v2, v2, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1, v2}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->minMax(III)I

    move-result v3

    .line 363
    const-string v1, "EvBaseGestureProc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "tilt = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " nScale = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v1, v3, :cond_9e

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    float-to-int v12, v12

    invoke-virtual/range {v1 .. v12}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 368
    :cond_9e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mGyroPreviousTime:J

    .line 370
    move-object/from16 v0, p0

    iget v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchPreSpace:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchBeginSpace:F

    .line 371
    move-object/from16 v0, p0

    iput v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchBeginScale:I

    goto/16 :goto_2d
.end method

.method public onMultiTouchDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    invoke-virtual {v1, v0}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->setManualOnOff(Z)V

    .line 186
    iget v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    if-ne v1, v0, :cond_24

    .line 187
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchPreCenter:Landroid/graphics/PointF;

    .line 188
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchBeginSpace:F

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchPreSpace:F

    .line 189
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchBeginScale:I

    .line 190
    const/4 v1, 0x2

    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    .line 193
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public onMultiTouchDrag(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 220
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_62

    .line 221
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->spacing(Landroid/view/MotionEvent;)F

    move-result v13

    .line 222
    .local v13, newDist:F
    const/high16 v0, 0x4120

    cmpl-float v0, v13, v0

    if-lez v0, :cond_61

    .line 223
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->midPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v12

    .line 224
    .local v12, center:Landroid/graphics/PointF;
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchBeginScale:I

    int-to-float v0, v0

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchBeginSpace:F

    div-float v3, v13, v3

    mul-float/2addr v0, v3

    float-to-int v2, v0

    .line 225
    .local v2, nScale:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    invoke-virtual {p0, v2, v0, v3}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->minMax(III)I

    move-result v2

    .line 227
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_47

    .line 228
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v3, v12, Landroid/graphics/PointF;->x:F

    float-to-int v10, v3

    iget v3, v12, Landroid/graphics/PointF;->y:F

    float-to-int v11, v3

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v7

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 230
    :cond_47
    const-string v0, "EvEditGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onMultiTouchDrag nScale = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput v13, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchPreSpace:F

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mGyroPreviousTime:J

    .line 239
    .end local v2           #nScale:I
    .end local v12           #center:Landroid/graphics/PointF;
    .end local v13           #newDist:F
    :cond_61
    :goto_61
    return v7

    :cond_62
    move v7, v1

    goto :goto_61
.end method

.method public onMultiTouchUp(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "e"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v7, :cond_38

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    if-ne v0, v7, :cond_38

    .line 200
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchBeginSpace:F

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchPreSpace:F

    .line 201
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mMultiTouchBeginScale:I

    .line 203
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mGyroPreviousTime:J

    .line 205
    iput v12, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    .line 206
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v2

    iget v2, v2, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    move v1, v12

    .line 215
    :cond_38
    return v1
.end method

.method public onShowIme(Z)Z
    .registers 9
    .parameter "bShow"

    .prologue
    const/4 v2, 0x0

    .line 665
    if-eqz p1, :cond_17

    .line 666
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/office/util/EvUtil;->showIme(Landroid/view/View;)V

    .line 667
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v1, 0x9

    const/4 v6, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 672
    :goto_15
    const/4 v0, 0x1

    return v0

    .line 670
    :cond_17
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/office/util/EvUtil;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    goto :goto_15
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 272
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    if-nez v1, :cond_e

    .line 285
    :cond_d
    :goto_d
    return v3

    .line 274
    :cond_e
    const/4 v0, 0x0

    .line 276
    .local v0, bShowIme:Z
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->CaretOnOff(Lcom/infraware/office/evengine/EV$CARET_INFO;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 277
    const/4 v0, 0x1

    .line 284
    :cond_26
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->onShowIme(Z)Z

    goto :goto_d
.end method

.method public onSingleTouchDown(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 131
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    invoke-virtual {v0, v4}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->setManualOnOff(Z)V

    .line 132
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    .line 146
    :cond_c
    :goto_c
    return v4

    .line 135
    :cond_d
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onSingleTouchDown(Landroid/view/MotionEvent;)Z

    .line 136
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    if-nez v0, :cond_38

    .line 137
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    .line 139
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->CheckObjCtrlPoint(IILjava/lang/Boolean;)V

    .line 140
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v2, v5}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 143
    :cond_38
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    if-eqz v0, :cond_c

    .line 144
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->setObjectRectOnTouchDown(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V

    goto :goto_c
.end method

.method public onSingleTouchDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    const-string v0, "EvEditGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSingleTouchDrag mTouchState ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_47

    .line 153
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    .line 154
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->CheckObjCtrlPoint(IILjava/lang/Boolean;)V

    .line 155
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x1b

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 160
    :cond_43
    :goto_43
    invoke-virtual {p0, v4, v4}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 161
    return v4

    .line 157
    :cond_47
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    if-eq v0, v4, :cond_50

    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_43

    .line 158
    :cond_50
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    goto :goto_43
.end method

.method public onSingleTouchUp(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    const-string v0, "EvEditGestureProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSingleTouchUp mTouchState ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    if-ne v0, v5, :cond_5b

    .line 169
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->CheckObjCtrlPoint(IILjava/lang/Boolean;)V

    .line 170
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v6, v1, v2, v4}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    .line 175
    :cond_3f
    :goto_3f
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_55

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->isShow()Z

    move-result v0

    if-nez v0, :cond_55

    .line 176
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mObjectToastMenu:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvObjectProc:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;

    iget v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->showOnInputAction(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;I)Z

    .line 178
    :cond_55
    invoke-virtual {p0, v5, v5}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 179
    iput v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    .line 180
    return v5

    .line 171
    :cond_5b
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3f

    .line 172
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v6, v1, v2, v4}, Lcom/infraware/office/evengine/EvInterface;->IHIDAction(IIII)V

    goto :goto_3f
.end method

.method public onTextChanged(ZLjava/lang/CharSequence;III)V
    .registers 31
    .parameter "bComposing"
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    if-eqz v3, :cond_a

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->sendEmptyCommit()V

    .line 547
    :goto_9
    return-void

    .line 384
    :cond_a
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_2f

    move-object/from16 v20, p2

    .line 385
    check-cast v20, Landroid/text/Spannable;

    .line 386
    .local v20, sp:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface/range {v20 .. v20}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/BackgroundColorSpan;

    .line 387
    .local v10, bspans:[Landroid/text/style/BackgroundColorSpan;
    array-length v13, v10

    .line 388
    .local v13, count:I
    const/4 v3, 0x1

    if-lt v13, v3, :cond_3f

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->setManualOnOff(Z)V

    .line 394
    .end local v10           #bspans:[Landroid/text/style/BackgroundColorSpan;
    .end local v13           #count:I
    .end local v20           #sp:Landroid/text/Spannable;
    :cond_2f
    :goto_2f
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v16

    .line 395
    .local v16, endPos:I
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    .line 396
    .local v23, strText:Ljava/lang/String;
    if-nez v16, :cond_48

    if-nez p4, :cond_48

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->sendEmptyCommit()V

    goto :goto_9

    .line 391
    .end local v16           #endPos:I
    .end local v23           #strText:Ljava/lang/String;
    .restart local v10       #bspans:[Landroid/text/style/BackgroundColorSpan;
    .restart local v13       #count:I
    .restart local v20       #sp:Landroid/text/Spannable;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCaretTask:Lcom/infraware/office/baseframe/gestureproc/CaretTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/infraware/office/baseframe/gestureproc/CaretTask;->setManualOnOff(Z)V

    goto :goto_2f

    .line 401
    .end local v10           #bspans:[Landroid/text/style/BackgroundColorSpan;
    .end local v13           #count:I
    .end local v20           #sp:Landroid/text/Spannable;
    .restart local v16       #endPos:I
    .restart local v23       #strText:Ljava/lang/String;
    :cond_48
    if-nez p1, :cond_178

    .line 402
    if-nez p4, :cond_a5

    .line 403
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "commmit onTextChanged compPos=0 Len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    .line 405
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->insertString(Ljava/lang/String;II)V

    .line 429
    :goto_8a
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 430
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    .line 545
    :goto_97
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    .line 546
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    goto/16 :goto_9

    .line 408
    :cond_a5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 409
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    if-eqz v3, :cond_154

    .line 410
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "comp onTextChanged compPos=0 Len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :try_start_df
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v4, p4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 413
    .local v21, strCompare1:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 414
    .local v22, strCompare2:Ljava/lang/String;
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_115

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_11e

    .line 415
    :cond_115
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3, v4}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->insertString(Ljava/lang/String;II)V
    :try_end_11e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_df .. :try_end_11e} :catch_14f

    .line 419
    .end local v21           #strCompare1:Ljava/lang/String;
    .end local v22           #strCompare2:Ljava/lang/String;
    :cond_11e
    :goto_11e
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "commmit onTextChanged compPos=0 Len=0 :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->insertString(Ljava/lang/String;II)V

    .line 427
    :goto_13f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/16 v4, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    goto/16 :goto_8a

    .line 416
    :catch_14f
    move-exception v15

    .line 417
    .local v15, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v15}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_11e

    .line 422
    .end local v15           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v4, 0x2

    const/16 v5, 0x8

    move/from16 v0, p4

    invoke-virtual {v3, v4, v5, v0}, Lcom/infraware/office/evengine/EvInterface;->ICharInsert(III)V

    .line 423
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    .line 424
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3, v4}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->insertString(Ljava/lang/String;II)V

    goto :goto_13f

    .line 432
    :cond_178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    if-eqz v3, :cond_271

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    .line 433
    .local v19, prevPos:I
    :goto_186
    sub-int v12, v19, p4

    .line 434
    .local v12, compPos:I
    sub-int v11, p5, p4

    .line 435
    .local v11, compLen:I
    if-nez v19, :cond_195

    .line 436
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    if-nez v3, :cond_195

    .line 437
    if-lez p4, :cond_275

    .line 438
    const/4 v11, -0x1

    .line 456
    :cond_195
    :goto_195
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged0-2  mbPrevComposing : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    if-nez v11, :cond_345

    .line 458
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged1  compLen="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    if-gez v12, :cond_1fa

    .line 460
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 461
    .local v24, t:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/infraware/office/evengine/EvInterface;->ICaretMove(III)V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v4, 0x2

    const/16 v5, 0x8

    move/from16 v0, v24

    invoke-virtual {v3, v4, v5, v0}, Lcom/infraware/office/evengine/EvInterface;->ICharInsert(III)V

    .line 463
    const/4 v12, 0x0

    .line 467
    .end local v24           #t:I
    :cond_1fa
    :try_start_1fa
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v12, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_205
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1fa .. :try_end_205} :catch_33f

    move-result-object v23

    .line 471
    :goto_206
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged1-1  compPos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_228
    :goto_228
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "comp onTextChanged compPos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3, v12}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->insertString(Ljava/lang/String;II)V

    .line 542
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->updateCaretPos(ZZ)V

    .line 543
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    goto/16 :goto_97

    .line 432
    .end local v11           #compLen:I
    .end local v12           #compPos:I
    .end local v19           #prevPos:I
    :cond_271
    const/16 v19, 0x0

    goto/16 :goto_186

    .line 440
    .restart local v11       #compLen:I
    .restart local v12       #compPos:I
    .restart local v19       #prevPos:I
    :cond_275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    if-eqz v3, :cond_195

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_195

    .line 441
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged0  strText.length()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mExtractedText.length()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strText:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mExtractedText:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    invoke-static {v5}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_195

    .line 443
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    .line 444
    .local v24, t:Ljava/lang/CharSequence;
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged0-0 t.length()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_195

    .line 446
    const-string v3, "EvEditGestureProc"

    const-string v4, "onTextChanged0-1  in"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    .line 449
    sub-int v12, v19, p4

    goto/16 :goto_195

    .line 468
    .end local v24           #t:Ljava/lang/CharSequence;
    :catch_33f
    move-exception v15

    .line 469
    .restart local v15       #e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v15}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_206

    .line 473
    .end local v15           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_345
    if-lez v11, :cond_48f

    .line 474
    const-string v21, ""

    .line 475
    .restart local v21       #strCompare1:Ljava/lang/String;
    move-object/from16 v22, v23

    .line 476
    .restart local v22       #strCompare2:Ljava/lang/String;
    if-lez v19, :cond_358

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v5, v19, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 478
    :cond_358
    const/4 v3, 0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_366

    .line 479
    const/4 v3, 0x0

    add-int/lit8 v4, v16, -0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 481
    :cond_366
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_372

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_453

    .line 482
    :cond_372
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_453

    .line 483
    add-int/lit8 v12, v16, -0x1

    .line 484
    sub-int v14, v16, v19

    .line 486
    .local v14, diff:I
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged2-1 prevPos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " diff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v3, 0x1

    if-ne v14, v3, :cond_43a

    .line 488
    const/4 v3, 0x2

    move/from16 v0, v16

    if-lt v0, v3, :cond_3fe

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    if-eqz v3, :cond_3fe

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3fe

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v17

    .line 491
    .local v17, nCode1:I
    add-int/lit8 v3, v16, -0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v18

    .line 492
    .local v18, nCode2:I
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged2-2 nCode1="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nCode2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3fe

    .line 494
    add-int/lit8 v12, v12, -0x1

    .line 495
    add-int/lit8 v11, v11, 0x1

    .line 504
    .end local v17           #nCode1:I
    .end local v18           #nCode2:I
    :cond_3fe
    :goto_3fe
    sub-int v3, v16, v11

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    .line 514
    .end local v14           #diff:I
    :goto_40c
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged2-4 compPos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " compLen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_228

    .line 501
    .restart local v14       #diff:I
    :cond_43a
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged2-3 prevPos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    move/from16 v12, v19

    goto :goto_3fe

    .line 508
    .end local v14           #diff:I
    :cond_453
    :try_start_453
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v12, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_45e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_453 .. :try_end_45e} :catch_460

    move-result-object v23

    goto :goto_40c

    .line 509
    :catch_460
    move-exception v15

    .line 510
    .restart local v15       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "compPos = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", strText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40c

    .line 516
    .end local v15           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v21           #strCompare1:Ljava/lang/String;
    .end local v22           #strCompare2:Ljava/lang/String;
    :cond_48f
    if-gez v11, :cond_228

    .line 517
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged3 compPos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " compLen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    if-nez v3, :cond_4c9

    .line 519
    if-gez v12, :cond_4c9

    .line 520
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 521
    .local v24, t:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v4, 0x2

    const/16 v5, 0x8

    move/from16 v0, v24

    invoke-virtual {v3, v4, v5, v0}, Lcom/infraware/office/evengine/EvInterface;->ICharInsert(III)V

    .line 522
    move/from16 v12, p3

    .line 526
    .end local v24           #t:I
    :cond_4c9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    if-nez v3, :cond_4d1

    if-lez p5, :cond_50b

    .line 527
    :cond_4d1
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v12, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    .line 537
    const-string v3, "EvEditGestureProc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTextChanged3-1 compPos="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " compLen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_228

    .line 529
    :cond_50b
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    .line 530
    if-lez v19, :cond_525

    .line 531
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 532
    .restart local v24       #t:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v4, 0x2

    const/16 v5, 0x8

    move/from16 v0, v24

    invoke-virtual {v3, v4, v5, v0}, Lcom/infraware/office/evengine/EvInterface;->ICharInsert(III)V

    .line 534
    .end local v24           #t:I
    :cond_525
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    goto/16 :goto_9
.end method

.method public sendEmptyCommit()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/infraware/office/evengine/EvInterface;->IInsertString(Ljava/lang/String;III)V

    .line 71
    :cond_19
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    .line 72
    return-void
.end method

.method public setExtractedText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mExtractedText:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    .line 82
    return-void
.end method

.method public setPrevText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 75
    const-string v0, "EvEditGestureProc"

    const-string v1, "EvEditGestureProc setprevtext"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mPrevText:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public updateCaretPos(ZZ)V
    .registers 28
    .parameter "bSoftCommit"
    .parameter "bHardCommit"

    .prologue
    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/infraware/office/util/EvUtil;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 552
    .local v21, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_14b

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 585
    const-string v2, "EvEditGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "updateCaretPos bSoftCommit="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " bHardCommit="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;

    move-result-object v17

    .line 587
    .local v17, ev_caretPos:Lcom/infraware/office/evengine/EV$CARET_POS;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/infraware/office/evengine/EV$CARET_POS;->nParaPos:I

    add-int/lit8 v19, v2, 0x1

    .line 588
    .local v19, ev_paraPos:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/office/evengine/EV$CARET_POS;->nColPos:I

    move/from16 v18, v0

    .line 593
    .local v18, ev_colPos:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 594
    .local v24, str_colPos:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v22

    .line 595
    .local v22, length:I
    const/4 v15, 0x1

    .line 596
    .local v15, ciper:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_5b
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_14c

    .line 605
    const/16 v23, 0x0

    .line 606
    .local v23, paraPos:I
    if-eqz p2, :cond_6f

    .line 607
    move-object/from16 v0, p0

    iget v2, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mSavedCaretPos:I

    move/from16 v0, v18

    if-eq v2, v0, :cond_6f

    .line 608
    mul-int v23, v19, v15

    .line 610
    :cond_6f
    add-int v14, v23, v18

    .line 612
    .local v14, caretPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getEditableText()Landroid/text/Editable;

    move-result-object v16

    .line 613
    .local v16, editable:Landroid/text/Editable;
    if-eqz p1, :cond_d0

    if-eqz p2, :cond_d0

    .line 614
    move-object/from16 v0, p0

    iget v2, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mTouchStatus:I

    if-nez v2, :cond_97

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual/range {v2 .. v13}, Lcom/infraware/office/evengine/EvInterface;->ISetCompBackColor(IIIIJJIII)V

    .line 618
    :cond_97
    const-string v2, "EvEditGestureProc"

    const-string v3, "updateCaretPos 0"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget v2, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mSavedCaretPos:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_ba

    .line 620
    const-string v2, "EvEditGestureProc"

    const-string v3, "updateCaretPos 1"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, v21

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 623
    :cond_ba
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mbPrevComposing:Z

    if-eqz v2, :cond_d0

    .line 624
    const-string v2, "EvEditGestureProc"

    const-string v3, "updateCaretPos restartInput"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 629
    :cond_d0
    const-string v2, "EvEditGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "updateCaretPos ev_paraPos="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ev_colPos="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " paraPos="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    move v4, v14

    .line 632
    .local v4, selStart:I
    move v5, v14

    .line 633
    .local v5, selEnd:I
    const/4 v6, -0x1

    .line 634
    .local v6, candStart:I
    const/4 v7, -0x1

    .line 640
    .local v7, candEnd:I
    invoke-interface/range {v16 .. v16}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_116

    if-nez p1, :cond_116

    .line 641
    invoke-static/range {v16 .. v16}, Lcom/infraware/office/baseframe/EvInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    .line 642
    sub-int v6, v5, v7

    .line 643
    if-gez v6, :cond_152

    .line 644
    invoke-static/range {v16 .. v16}, Lcom/infraware/office/baseframe/EvInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    .line 650
    :cond_116
    :goto_116
    move-object/from16 v0, p0

    iput v5, v0, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->mSavedCaretPos:I

    .line 651
    const-string v2, "EvEditGestureProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "updateCaretPos selStart="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " candStart="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " candEnd="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;->getView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v2, v21

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 655
    .end local v4           #selStart:I
    .end local v5           #selEnd:I
    .end local v6           #candStart:I
    .end local v7           #candEnd:I
    .end local v14           #caretPos:I
    .end local v15           #ciper:I
    .end local v16           #editable:Landroid/text/Editable;
    .end local v17           #ev_caretPos:Lcom/infraware/office/evengine/EV$CARET_POS;
    .end local v18           #ev_colPos:I
    .end local v19           #ev_paraPos:I
    .end local v20           #i:I
    .end local v22           #length:I
    .end local v23           #paraPos:I
    .end local v24           #str_colPos:Ljava/lang/String;
    :cond_14b
    return-void

    .line 597
    .restart local v15       #ciper:I
    .restart local v17       #ev_caretPos:Lcom/infraware/office/evengine/EV$CARET_POS;
    .restart local v18       #ev_colPos:I
    .restart local v19       #ev_paraPos:I
    .restart local v20       #i:I
    .restart local v22       #length:I
    .restart local v24       #str_colPos:Ljava/lang/String;
    :cond_14c
    mul-int/lit8 v15, v15, 0xa

    .line 596
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5b

    .line 646
    .restart local v4       #selStart:I
    .restart local v5       #selEnd:I
    .restart local v6       #candStart:I
    .restart local v7       #candEnd:I
    .restart local v14       #caretPos:I
    .restart local v16       #editable:Landroid/text/Editable;
    .restart local v23       #paraPos:I
    :cond_152
    move v7, v5

    goto :goto_116
.end method
