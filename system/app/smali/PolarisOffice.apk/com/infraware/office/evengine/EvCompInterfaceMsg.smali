.class Lcom/infraware/office/evengine/EvCompInterfaceMsg;
.super Lcom/infraware/office/evengine/EvInterface;
.source "EvCompInterfaceMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;
    }
.end annotation


# instance fields
.field protected final mHandler:Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/infraware/office/evengine/EvInterface;-><init>()V

    .line 78
    new-instance v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;

    invoke-direct {v0, p0}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;-><init>(Lcom/infraware/office/evengine/EvCompInterfaceMsg;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;

    .line 98
    return-void
.end method


# virtual methods
.method public IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 996
    return-void
.end method

.method public IApplyBookMark()V
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IApplyBookMark()V

    .line 331
    return-void
.end method

.method public IBookMarkOnOff(I)V
    .registers 3
    .parameter "a_bOn"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IBookMarkOnOff(I)V

    .line 323
    return-void
.end method

.method public IBookmarkEditor(ILjava/lang/String;)V
    .registers 4
    .parameter "EEV_BOOKMARK_EDITOR_MODE"
    .parameter "a_pszBookmark"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IBookmarkEditor(ILjava/lang/String;)V

    .line 608
    return-void
.end method

.method public IBulletNumbering(III)V
    .registers 5
    .parameter "EEV_BULLET_NUMBERIG"
    .parameter "EEV_BULLETNUMBER_TYPE"
    .parameter "bNumberReset"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IBulletNumbering(III)V

    .line 539
    return-void
.end method

.method public ICanCellDelete_Editor()Z
    .registers 3

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, nRet:Z
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->ICanCellDelete()Z

    move-result v0

    .line 777
    return v0
.end method

.method public ICanExtendSortRange()V
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ICanExtendSortRange()I

    .line 943
    return-void
.end method

.method public ICancel()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ICancel()V

    .line 416
    return-void
.end method

.method public ICaretMark(II)V
    .registers 4
    .parameter "EEV_CARET_MARK"
    .parameter "nSelectMode"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ICaretMark(II)V

    .line 536
    return-void
.end method

.method public ICaretMove(III)V
    .registers 5
    .parameter "EEV_CARET_MOVE"
    .parameter "bShift"
    .parameter "bCtrl"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICaretMove(III)V

    .line 521
    return-void
.end method

.method public ICaretShow(I)V
    .registers 3
    .parameter "a_bCaret"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ICaretShow(I)V

    .line 524
    return-void
.end method

.method public ICellInsertDelete(II)V
    .registers 4
    .parameter "EEV_CELL_ISERT_DELETE"
    .parameter "a_nCellType"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ICellInsertDelete(II)V

    .line 599
    return-void
.end method

.method public ICellMergeSeparate(III)V
    .registers 5
    .parameter "EEV_WORD_CELL_MERGE_SEP"
    .parameter "a_nRow"
    .parameter "a_nCol"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICellMergeSeparate(III)V

    .line 602
    return-void
.end method

.method public IChangeDisplay(I)V
    .registers 2
    .parameter "EEV_DISPLAY_MODE_TYPE"

    .prologue
    .line 267
    return-void
.end method

.method public IChangeScreen(III)V
    .registers 10
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IChangeScreen(IIIII)V

    .line 262
    return-void
.end method

.method public IChangeViewMode(IIII)V
    .registers 6
    .parameter "EEV_VIEW_MODE"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "bDraw"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IChangeViewMode(IIII)V

    .line 443
    return-void
.end method

.method public ICharInsert(III)V
    .registers 5
    .parameter "EEV_CHAR_IPUT"
    .parameter "a_wCode"
    .parameter "a_nRepeat"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICharInsert(III)V

    .line 596
    return-void
.end method

.method public IClose()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IClose()V

    .line 171
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->setOperationTimer(Z)V

    .line 173
    invoke-super {p0}, Lcom/infraware/office/evengine/EvInterface;->IClose()V

    .line 174
    return-void
.end method

.method public ICreateTable(III)V
    .registers 5
    .parameter "a_nRow"
    .parameter "a_nCol"
    .parameter "a_nColor"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICreateTable(III)V

    .line 504
    return-void
.end method

.method public IDeleteBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IDeleteBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 999
    return-void
.end method

.method public IDeletePenDataForSlideShow()V
    .registers 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IDeletePenDataForSlideShow()V

    .line 1136
    return-void
.end method

.method public IDocumentModified_Editor()Z
    .registers 3

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, nRet:Z
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IDocumentModified()Z

    move-result v0

    .line 769
    return v0
.end method

.method public IEditDocument(IIILjava/lang/String;)V
    .registers 6
    .parameter "EEV_EDIT_DOCUMENT"
    .parameter "nNative"
    .parameter "nDataType"
    .parameter "data"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IEditDocument(IIILjava/lang/String;)V

    .line 477
    return-void
.end method

.method public IEditPageRedrawBitmap()V
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IEditPageRedrawBitmap()V

    .line 554
    return-void
.end method

.method public IExitPreview()V
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IExitPreview()V

    .line 729
    return-void
.end method

.method public IFinalize()V
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->isInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 140
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IFinalize()V

    .line 142
    :cond_b
    return-void
.end method

.method public IFindWordNext(I)V
    .registers 3
    .parameter "a_bDirUp"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IFindWordNext(I)V

    .line 369
    return-void
.end method

.method public IFindWordNextByPos(II)V
    .registers 4
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IFindWordNextByPos(II)V

    .line 373
    return-void
.end method

.method public IFindWordStart(II)V
    .registers 4
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IFindWordStart(II)V

    .line 365
    return-void
.end method

.method public IFindWordStop()V
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IFindWordStop()V

    .line 377
    return-void
.end method

.method public IFlick(II)V
    .registers 4
    .parameter "a_nVelocityX"
    .parameter "a_nVelocityY"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IFlick(II)V

    .line 196
    return-void
.end method

.method public IGetBWPCellStatusInfo()I
    .registers 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetBWPCellStatusInfo()I

    move-result v0

    return v0
.end method

.method public IGetBWPGrapAttrInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    .registers 3

    .prologue
    .line 759
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPGrapAttrInfo(Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;)V

    .line 760
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    .registers 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpOpInfo()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPOpInfo(Lcom/infraware/office/evengine/EV$BWP_OP_INFO;)V

    .line 752
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpOpInfo()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetBWPSplitCellMaxNum_Editor()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;
    .registers 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPSplitCellMaxNum(Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;)V

    .line 756
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v0

    return-object v0
.end method

.method public IGetBookClipCount(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 992
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetBookClipCount(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I

    move-result v0

    return v0
.end method

.method public IGetBookClipName(ILcom/infraware/office/evengine/EV$BOOK_CLIP;)V
    .registers 4
    .parameter "a_nIndex"
    .parameter "a_pClip"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetBookClipName(ILcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 990
    return-void
.end method

.method public IGetBookmarkCount_Editor()I
    .registers 3

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, nCnt:I
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkCount_Editor()I

    move-result v0

    .line 818
    return v0
.end method

.method public IGetBookmarkInfo_Editor(I)Ljava/lang/String;
    .registers 4
    .parameter "a_nIndex"

    .prologue
    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkInfo_Editor(I)Ljava/lang/String;

    move-result-object v0

    .line 824
    return-object v0
.end method

.method public IGetBookmarkLabel(I)Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;
    .registers 4
    .parameter "a_nIndex"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBookmarkLabel()Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkLabel(ILcom/infraware/office/evengine/EV$BOOKMARK_LABEL;)V

    .line 732
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBookmarkLabel()Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;

    move-result-object v0

    return-object v0
.end method

.method public IGetBorderProperty()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
    .registers 3

    .prologue
    .line 981
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiBorderEvent()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBorderProperty(Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;)V

    .line 982
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiBorderEvent()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    return-object v0
.end method

.method public IGetBulletType_Editor()Lcom/infraware/office/evengine/EV$BULLET_TYPE;
    .registers 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBulletType()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBulletType(Lcom/infraware/office/evengine/EV$BULLET_TYPE;)V

    .line 802
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBulletType()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretAfterString(I)Ljava/lang/String;
    .registers 3
    .parameter "a_length"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretAfterString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretBeforeString(I)Ljava/lang/String;
    .registers 3
    .parameter "a_length"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCaretInfoEvent()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;
    .registers 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretPos(Lcom/infraware/office/evengine/EV$CARET_POS;)V

    .line 527
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretPos_Editor()I
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCaretPos_Editor()I

    move-result v0

    return v0
.end method

.method public IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    .registers 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getSheetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCellInfo(Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;)V

    .line 954
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getSheetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCellProperty_Editor()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;
    .registers 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getCellProperty()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCellProperty(Lcom/infraware/office/evengine/EV$CELL_PROPERTY;)V

    .line 806
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCellProperty()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;

    move-result-object v0

    return-object v0
.end method

.method public IGetCellType()I
    .registers 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCellType()I

    move-result v0

    return v0
.end method

.method public IGetChartInfo()Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
    .registers 3

    .prologue
    .line 964
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiSheetChartEvent()Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    move-result-object v0

    .line 965
    .local v0, chartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvNative;->IGetChartInfo(Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;)V

    .line 966
    return-object v0
.end method

.method public IGetColumn()I
    .registers 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetColumn()I

    move-result v0

    return v0
.end method

.method public IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    .registers 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetConfig(Lcom/infraware/office/evengine/EV$CONFIG_INFO;)V

    .line 423
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCurrentSheetIndex()I
    .registers 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCurrentSheetIndex()I

    move-result v0

    return v0
.end method

.method public IGetEditStauts_Editor()J
    .registers 4

    .prologue
    .line 796
    const-wide/16 v0, 0x0

    .line 797
    .local v0, a_Status:J
    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvNative;->IGetEditStauts()J

    move-result-wide v0

    .line 798
    return-wide v0
.end method

.method public IGetEditorMode_Editor()I
    .registers 2

    .prologue
    .line 772
    iget v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mEditorMode:I

    return v0
.end method

.method public IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;
    .registers 3

    .prologue
    .line 747
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiFontEvent()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetFontAttInfo(Lcom/infraware/office/evengine/EV$FONT_INFO;)V

    .line 748
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiFontEvent()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetFontPreview(Lcom/infraware/office/evengine/EV$FONT_DATA;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "fd"
    .parameter "text"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1089
    invoke-static {}, Lcom/infraware/office/evengine/EvImageUtil;->getEvImageUtil()Lcom/infraware/office/evengine/EvImageUtil;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/infraware/office/evengine/EvImageUtil;->CreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1090
    .local v0, previewBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_16

    .line 1091
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetFontPreview(Landroid/graphics/Bitmap;Lcom/infraware/office/evengine/EV$FONT_DATA;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1092
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1093
    const/4 v0, 0x0

    .line 1096
    :cond_16
    return-object v0
.end method

.method public IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    .registers 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getSheetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetFormatInfo(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 958
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getSheetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetHyperLinkInfoEx(II)Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    .registers 5
    .parameter "a_nX"
    .parameter "a_nY"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/infraware/office/evengine/EvNative;->IGetHyperLinkInfoEx(IILcom/infraware/office/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1021
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    .line 1025
    :goto_17
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    return-object v0

    .line 1023
    :cond_1e
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    goto :goto_17
.end method

.method public IGetHyperLinkInfo_Editor()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    .registers 3

    .prologue
    .line 781
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetHyperLinkInfo(Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 782
    const/4 v0, 0x0

    .line 783
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    goto :goto_f
.end method

.method public IGetImageMaxSize(I)I
    .registers 3
    .parameter "nMode"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetImageMaxSize(I)I

    move-result v0

    return v0
.end method

.method public IGetInvalidRect_Editor()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;
    .registers 3

    .prologue
    .line 763
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetInvalidRect(Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;)V

    .line 764
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetMarkString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v0

    .line 1057
    return-object v0
.end method

.method public IGetParaAttInfo_Editor()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;
    .registers 3

    .prologue
    .line 787
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetParaAttInfo(Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;)Z

    .line 788
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    .line 428
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;

    move-result-object v0

    return-object v0
.end method

.method public IGetProtectStatus()I
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetProtectStatus()I

    move-result v0

    return v0
.end method

.method public IGetScreenPos()Lcom/infraware/office/evengine/EV$SCREEN_INFO;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getScreenInfo()Lcom/infraware/office/evengine/EV$SCREEN_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetScrollInfo_Editor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getScrollInfoEditor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v0

    return-object v0
.end method

.method public IGetSeparateMarkString_Editor()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1049
    const/4 v0, 0x0

    .line 1050
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v0

    .line 1051
    return-object v0
.end method

.method public IGetSheetCount()I
    .registers 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSheetCount()I

    move-result v0

    return v0
.end method

.method public IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V
    .registers 4
    .parameter "a_pSheetInfo"
    .parameter "a_nIndex"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 962
    return-void
.end method

.method public IGetSheetNameList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSheetNameList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IGetSlideNoteString_Editor(I)Ljava/lang/String;
    .registers 4
    .parameter "a_nPageNum"

    .prologue
    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvNative;->IGetSlideNoteString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    return-object v0
.end method

.method public IGetSortRange(Lcom/infraware/office/evengine/EV$RANGE;I)I
    .registers 5
    .parameter "a_ppRange"
    .parameter "a_bExtendRange"

    .prologue
    .line 946
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetSortRange(Lcom/infraware/office/evengine/EV$RANGE;I)I

    move-result v0

    .line 947
    .local v0, nRet:I
    return v0
.end method

.method public IGetSystemFontCount()I
    .registers 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSystemFontCount()I

    move-result v0

    return v0
.end method

.method public IGetSystemFontNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSystemFontNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IGetTextToSpeachString(III)V
    .registers 5
    .parameter "nSize"
    .parameter "nDir"
    .parameter "nTextline"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IGetTextToSpeachString(III)V

    .line 1068
    return-void
.end method

.method public IGetTouchString(II)Ljava/lang/String;
    .registers 5
    .parameter "nSx"
    .parameter "nSy"

    .prologue
    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, strTemp:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetTouchString(II)Ljava/lang/String;

    move-result-object v0

    .line 1063
    return-object v0
.end method

.method public IGetUseFontCount()I
    .registers 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetUseFontCount()I

    move-result v0

    return v0
.end method

.method public IGetUseFontNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IHIDAction(IIII)V
    .registers 6
    .parameter "EEV_HID_ACTION"
    .parameter "a_nXPos"
    .parameter "a_nYPos"
    .parameter "a_wModifiers"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IHIDAction(IIII)V

    .line 588
    return-void
.end method

.method public IHTCClearAll()V
    .registers 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IHTCClearAll()V

    .line 1111
    return-void
.end method

.method public IHTCSetPenColor(I)V
    .registers 3
    .parameter "aPenColor"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenColor(I)V

    .line 1116
    return-void
.end method

.method public IHTCSetPenMode(I)V
    .registers 3
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenMode(I)V

    .line 1106
    return-void
.end method

.method public IHTCSetPenPosition([I[II)V
    .registers 5
    .parameter "a_pX"
    .parameter "a_pY"
    .parameter "nCnt"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenPosition([I[II)V

    .line 1126
    return-void
.end method

.method public IHTCSetPenSize(I)V
    .registers 3
    .parameter "aPenSize"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenSize(I)V

    .line 1121
    return-void
.end method

.method public IHyperLink(III)V
    .registers 5
    .parameter "EEV_HYPERLIK_MODE"
    .parameter "a_nXPos"
    .parameter "a_nYPos"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IHyperLink(III)V

    .line 349
    return-void
.end method

.method public IHyperLinkEnd()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IHyperLinkEnd()V

    .line 353
    return-void
.end method

.method public IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "a_pszHyperText"
    .parameter "a_pszHyperLink"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V
    .registers 12
    .parameter "a_pImgPath"
    .parameter "a_bitmap"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "bReplaceImage"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V

    .line 542
    return-void
.end method

.method public IIndentation(I)V
    .registers 3
    .parameter "EEV_IDENTATION"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IIndentation(I)V

    .line 605
    return-void
.end method

.method public IInitialize(III)V
    .registers 13
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nDpi"

    .prologue
    const/4 v4, 0x1

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/evengine/EvInterface;->IInitialize(III)V

    .line 124
    invoke-virtual {p0}, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->isInit()Z

    move-result v0

    if-nez v0, :cond_18

    .line 126
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    .line 128
    const/16 v3, 0x8

    .line 131
    const/16 v6, 0x10

    .line 132
    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v5, v4

    move v8, p3

    .line 126
    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->IInitialize(IIIIIIII)V

    .line 135
    :cond_18
    return-void
.end method

.method public IInputChar(I)V
    .registers 3
    .parameter "a_wCode"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IInputChar(I)V

    .line 514
    return-void
.end method

.method public IInsertShape(I)V
    .registers 3
    .parameter "a_nShape"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IInsertShape(I)V

    .line 686
    return-void
.end method

.method public IInsertString(Ljava/lang/String;III)V
    .registers 6
    .parameter "aszTemp"
    .parameter "nCompType"
    .parameter "nPos"
    .parameter "nStrLen"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IInsertString(Ljava/lang/String;III)V

    .line 545
    return-void
.end method

.method public IInsertTextBox()V
    .registers 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IInsertTextBox()V

    .line 680
    return-void
.end method

.method public IIsComplexColumn()Z
    .registers 3

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, nRet:Z
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IIsComplexColumn()Z

    move-result v0

    .line 1085
    return v0
.end method

.method public IIsPenDataForSlideShow()I
    .registers 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IIsPenDataForSlideShow()I

    move-result v0

    return v0
.end method

.method public IMemo(ILjava/lang/String;IIIII)V
    .registers 8
    .parameter "EEV_MEMO_TYPE"
    .parameter "a_sText"
    .parameter "a_nSelIndex"
    .parameter "a_nXpos"
    .parameter "a_nYpos"
    .parameter "a_nIconW"
    .parameter "a_nIconH"

    .prologue
    .line 389
    return-void
.end method

.method public IMovePage(II)V
    .registers 4
    .parameter "EEV_MOVE_TYPE"
    .parameter "a_nPage"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IMovePage(II)V

    .line 183
    return-void
.end method

.method public INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .parameter "a_sFilePath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_eLoadType"
    .parameter "a_eNewTemplatePPT"
    .parameter "a_nLocale"
    .parameter "bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"
    .parameter "a_sBookClipPath"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/office/evengine/EvNative;->INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 28
    .parameter "a_sFilePath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "EEV_FILE_LOAD_TYPE"
    .parameter "a_nLocale"
    .parameter "bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"
    .parameter "a_sBookClipPath"

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    .line 160
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    .line 156
    invoke-virtual/range {v1 .. v17}, Lcom/infraware/office/evengine/EvNative;->IOpen(Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public IOpenEx(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "a_sFilePath"
    .parameter "a_sPassword"
    .parameter "a_nLocale"
    .parameter "a_bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"
    .parameter "a_sBookClipPath"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/infraware/office/evengine/EvNative;->IOpenEx(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public IParagraphAlign(I)V
    .registers 3
    .parameter "EEV_PARAGRAPH_ALIGN"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IParagraphAlign(I)V

    .line 548
    return-void
.end method

.method public IPivotScreen(III)V
    .registers 5
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IPivotScreen(III)V

    .line 271
    return-void
.end method

.method public IPopupOffset(IIIII)V
    .registers 12
    .parameter "EEV_POPUP_ONOFF"
    .parameter "a_nLeft"
    .parameter "a_nRight"
    .parameter "a_nTop"
    .parameter "a_nBottom"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IPopupOffset(IIIII)V

    .line 614
    return-void
.end method

.method public IPrint(IIILjava/lang/String;)V
    .registers 5
    .parameter "EEV_PRIT_PAPER_TYPE"
    .parameter "a_nStartPage"
    .parameter "a_nEndPage"
    .parameter "a_sFilePath"

    .prologue
    .line 407
    return-void
.end method

.method public IReDraw()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IReDraw()V

    .line 245
    return-void
.end method

.method public IRedoUndo(I)V
    .registers 3
    .parameter "EEV_REDO_UNDO"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IRedoUndo(I)V

    .line 511
    return-void
.end method

.method public IReleaseFontPreview()V
    .registers 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IReleaseFontPreview()V

    .line 1101
    return-void
.end method

.method public IRemoveAllBookMark()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IRemoveAllBookMark()V

    .line 339
    return-void
.end method

.method public IRemoveBookMark(Ljava/lang/String;)V
    .registers 3
    .parameter "a_sFilePath"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IRemoveBookMark(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public IRotate(II)V
    .registers 4
    .parameter "EEV_ROTATE_TYPE"
    .parameter "a_nAngle"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IRotate(II)V

    .line 241
    return-void
.end method

.method public ISaveBookMark()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISaveBookMark()V

    .line 327
    return-void
.end method

.method public ISaveDocument(Ljava/lang/String;)V
    .registers 5
    .parameter "a_pszFilePath"

    .prologue
    .line 467
    const-string v0, "EvCompinterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ISaveDocument = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISaveDocument(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public IScreenCaptureModeOnOff(I)V
    .registers 2
    .parameter "a_bOn"

    .prologue
    .line 276
    return-void
.end method

.method public IScroll(IIIII)V
    .registers 12
    .parameter "EEV_SCROLL_COMMAND_TYPE"
    .parameter "EEV_SCROLL_FACTOR_TYPE"
    .parameter "a_nOffsetX"
    .parameter "a_nOffsetY"
    .parameter "EEV_KEY_TYPE"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IScroll(IIIII)V

    .line 232
    return-void
.end method

.method public ISearchStart(Ljava/lang/String;IIII)V
    .registers 12
    .parameter "a_sFind"
    .parameter "a_bMatchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_bFixedZoom"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISearchStart(Ljava/lang/String;IIII)V

    .line 357
    return-void
.end method

.method public ISearchStop()V
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISearchStop()V

    .line 361
    return-void
.end method

.method public ISelectAll()V
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISelectAll()V

    .line 653
    return-void
.end method

.method public ISellectAll()V
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISellectAll()V

    .line 829
    return-void
.end method

.method public ISetBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I

    move-result v0

    return v0
.end method

.method public ISetBookmarkLabel(Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;I)V
    .registers 4
    .parameter "a_pLabel"
    .parameter "a_bSaveBookmarkInfo"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetBookmarkLabel(Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;I)V

    .line 736
    return-void
.end method

.method public ISetBorder(IIIIIIIII)V
    .registers 20
    .parameter "nBMask"
    .parameter "nBStyle"
    .parameter "nBLeftColor"
    .parameter "nBTopColor"
    .parameter "nBRightColor"
    .parameter "nBBottomColor"
    .parameter "nBHoriColor"
    .parameter "nBVertColor"
    .parameter "nBCellColor"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/office/evengine/EvNative;->ISetBorder(IIIIIIIII)V

    .line 665
    return-void
.end method

.method public ISetColors(III)V
    .registers 5
    .parameter "nMask"
    .parameter "nForeColor"
    .parameter "nBackColor"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISetColors(III)V

    .line 668
    return-void
.end method

.method public ISetColumn(II)V
    .registers 4
    .parameter "a_nColCnt"
    .parameter "a_bAllPage"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetColumn(II)V

    .line 1006
    return-void
.end method

.method public ISetCompBackColor(IIIIJJIII)V
    .registers 24
    .parameter "a_nStart1"
    .parameter "a_nEnd1"
    .parameter "a_nStart2"
    .parameter "a_nEnd2"
    .parameter "a_dwColor1"
    .parameter "a_dwColor2"
    .parameter "a_bApplyFlag"
    .parameter "a_bDirectDraw"
    .parameter "a_nFakeCaretIndex"

    .prologue
    .line 1013
    monitor-enter p0

    .line 1014
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvNative;->ISetCompBackColor(IIIIJJIII)V

    .line 1013
    monitor-exit p0

    .line 1016
    return-void

    .line 1013
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public ISetFontAttribute(Ljava/lang/String;IIIIIII)V
    .registers 18
    .parameter "a_pszFont"
    .parameter "a_nFSize"
    .parameter "a_nMaskAtt"
    .parameter "a_nFontAtt"
    .parameter "a_nFColor"
    .parameter "a_nBColor"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 488
    return-void
.end method

.method public ISetHeapSize(I)V
    .registers 3
    .parameter "a_nHeapSize"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 103
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetHeapSize(I)V

    .line 104
    return-void
.end method

.method public ISetLineShape(IIII)V
    .registers 6
    .parameter "EEV_BORDER_STYLE"
    .parameter "a_LineThickness"
    .parameter "EEV_LIE_ARROW_TYPE"
    .parameter "a_LineColor"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->ISetLineShape(IIII)V

    .line 659
    return-void
.end method

.method public ISetLineSpace(I)V
    .registers 3
    .parameter "a_LineSpaceType"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetLineSpace(I)V

    .line 656
    return-void
.end method

.method public ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V
    .registers 14
    .parameter "DvL"
    .parameter "EvL"
    .parameter "EvWL"
    .parameter "EvPL"
    .parameter "EvSL"
    .parameter "previewListener"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->SetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 114
    return-void
.end method

.method public ISetModeStatus(I)V
    .registers 3
    .parameter "EEV_VIEW_MODE"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetModeStatus(I)V

    .line 551
    return-void
.end method

.method public ISetObjDelete()V
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetObjDelete()V

    .line 713
    return-void
.end method

.method public ISetObjPos(I)V
    .registers 3
    .parameter "a_nSendToType"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetObjPos(I)V

    .line 742
    return-void
.end method

.method public ISetObjResize(II)V
    .registers 4
    .parameter "a_nSizeX"
    .parameter "a_nSizeY"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetObjResize(II)V

    .line 739
    return-void
.end method

.method public ISetObjTextEdit()V
    .registers 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetObjTextEdit()V

    .line 710
    return-void
.end method

.method public ISetObjectAttribute(IIIIIIIIII)V
    .registers 22
    .parameter "aObjMastAtt"
    .parameter "aFillColor"
    .parameter "aGradient"
    .parameter "aBorderColor"
    .parameter "aBorderThick"
    .parameter "aBorderStyle"
    .parameter "aWidth"
    .parameter "aHeight"
    .parameter "aArrowType"
    .parameter "aRate"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/office/evengine/EvNative;->ISetObjectAttribute(IIIIIIIIII)V

    .line 501
    return-void
.end method

.method public ISetPageMap(IIIIII)V
    .registers 14
    .parameter "EEV_PAGEMAP_COMMAND_TYPE"
    .parameter "a_bDrawContents"
    .parameter "EEV_PAGEMAP_POSITION_TYPE"
    .parameter "a_bGenerateDrawEvt"
    .parameter "a_nRowMargin"
    .parameter "a_nColMargin"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISetPageMap(IIIIII)V

    .line 302
    return-void
.end method

.method public ISetParaAttribute(IIIIIIIIIIII)V
    .registers 26
    .parameter "a_VAlign"
    .parameter "a_HAlign"
    .parameter "a_nLeftMargineValue"
    .parameter "a_nRightMarginValue"
    .parameter "a_nFirstLineType"
    .parameter "a_nFirstLineValue"
    .parameter "a_nLineSpace"
    .parameter "a_nLineSpaceValue"
    .parameter "a_nParaTopValue"
    .parameter "a_nParaBottomValue"
    .parameter "a_ParaDirection"
    .parameter "a_bUndo"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/infraware/office/evengine/EvNative;->ISetParaAttribute(IIIIIIIIIIII)V

    .line 640
    return-void
.end method

.method public ISetPreview(IILjava/lang/String;)V
    .registers 10
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_szFilePath"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    const/16 v3, 0x10

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISetPreview(IIILjava/lang/String;I)V

    .line 723
    return-void
.end method

.method public ISetPreviewTimerCB()V
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetPreviewTimerCB()V

    .line 726
    return-void
.end method

.method public ISetPrint(IIILjava/lang/String;I)V
    .registers 12
    .parameter "a_PaperSize"
    .parameter "a_StartPage"
    .parameter "a_EndPage"
    .parameter "a_szFilePath"
    .parameter "a_ReturnType"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISetPrint(IIILjava/lang/String;I)V

    .line 1038
    return-void
.end method

.method public ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "a_PaperSize"
    .parameter "a_StartPage"
    .parameter "a_EndPage"
    .parameter "a_szFilePath"
    .parameter "a_ReturnType"
    .parameter "a_margin"
    .parameter "a_szPageBoundary"
    .parameter "a_szOutputPath"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public ISetPrintMode()V
    .registers 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetPrintMode()V

    .line 650
    return-void
.end method

.method public ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V
    .registers 3
    .parameter "a_Properties"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    .line 433
    return-void
.end method

.method public ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 14
    .parameter "a_sFind"
    .parameter "a_bMathchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_sReplace"
    .parameter "bReplaceMode"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    .line 644
    return-void
.end method

.method public ISetScreenMode(I)V
    .registers 3
    .parameter "EV_SCREENMODE_TYPE"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetScreenMode(I)V

    .line 683
    return-void
.end method

.method public ISetSortRange(Lcom/infraware/office/evengine/EV$RANGE;)V
    .registers 3
    .parameter "a_pRange"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetSortRange(Lcom/infraware/office/evengine/EV$RANGE;)V

    .line 951
    return-void
.end method

.method public ISetTemplateShape(II)V
    .registers 4
    .parameter "a_nShapeType"
    .parameter "a_nShapeColor"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetTemplateShape(II)V

    .line 662
    return-void
.end method

.method public ISetThumbnailByPrint(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 18
    .parameter "a_StartPage"
    .parameter "a_EndPage"
    .parameter "a_szFilePath"
    .parameter "a_RetrunType"
    .parameter "a_szPageBoundary"
    .parameter "a_szOutputPath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetThumbnailByPrint(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 1046
    return-void
.end method

.method public ISetViewMode(I)V
    .registers 3
    .parameter "EEV_VIEWMODE_TYPE"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetViewMode(I)V

    .line 253
    return-void
.end method

.method public ISetWebMode()V
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetWebMode()V

    .line 647
    return-void
.end method

.method public ISetWritePassword(Ljava/lang/String;)V
    .registers 3
    .parameter "strPassword"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetWritePassword(Ljava/lang/String;)V

    .line 1150
    return-void
.end method

.method public ISetZoom(IIIIIIIIIII)V
    .registers 24
    .parameter "EEV_ZOOM_TYPE"
    .parameter "a_nScale"
    .parameter "a_nSx"
    .parameter "a_nSy"
    .parameter "a_nEx"
    .parameter "a_nEy"
    .parameter "EEV_KEY_TYPE"
    .parameter "a_bStep"
    .parameter "a_bHaveZoomCenter"
    .parameter "a_nZoomCenterX"
    .parameter "a_nZoomCenterY"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvNative;->ISetZoom(IIIIIIIIIII)V

    .line 220
    return-void
.end method

.method public ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V
    .registers 3
    .parameter "a_pInfo"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 931
    return-void
.end method

.method public ISheetClear(I)V
    .registers 3
    .parameter "EEV_SHEET_CLEAR"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetClear(I)V

    .line 887
    return-void
.end method

.method public ISheetEdit(ILjava/lang/String;IIII)V
    .registers 14
    .parameter "EEV_SHEET_EDIT"
    .parameter "a_szSheetName"
    .parameter "a_nSheetIndex"
    .parameter "a_nSheets"
    .parameter "a_nMoveIndex"
    .parameter "a_bCopy"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 857
    return-void
.end method

.method public ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "a_pszFindText"
    .parameter "a_pszReplaceText"
    .parameter "a_nFlag"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    .line 909
    return-void
.end method

.method public ISheetFixFrame()V
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetFixFrame()V

    .line 860
    return-void
.end method

.method public ISheetFocus()V
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetFocus()V

    .line 912
    return-void
.end method

.method public ISheetFormat(IIIIIIII)V
    .registers 18
    .parameter "a_nFormat"
    .parameter "a_nDecimalPlaces"
    .parameter "a_bSeparate"
    .parameter "a_nCurrency"
    .parameter "a_nNegative"
    .parameter "a_nDate"
    .parameter "a_nTime"
    .parameter "a_nFraction"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISheetFormat(IIIIIIII)V

    .line 841
    return-void
.end method

.method public ISheetFunction(I)V
    .registers 3
    .parameter "a_nFunctionIndex"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetFunction(I)V

    .line 844
    return-void
.end method

.method public ISheetInputField(I)V
    .registers 3
    .parameter "a_bCancel"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetInputField(I)V

    .line 915
    return-void
.end method

.method public ISheetInsertCell(II)V
    .registers 4
    .parameter "a_bInsert"
    .parameter "EEV_SHEET_ISERT_CELL"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertCell(II)V

    .line 874
    return-void
.end method

.method public ISheetInsertChart(ILcom/infraware/office/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 18
    .parameter "a_nChartType"
    .parameter "a_tRange"
    .parameter "a_nSeriesIn"
    .parameter "a_szTitle"
    .parameter "a_szXAxis"
    .parameter "a_szYAxis"
    .parameter "a_nLegend"
    .parameter "a_nDimension"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertChart(ILcom/infraware/office/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 928
    return-void
.end method

.method public ISheetInsertColumns(III)V
    .registers 5
    .parameter "a_bInsert"
    .parameter "a_nCount"
    .parameter "a_bAutoFit"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertColumns(III)V

    .line 880
    return-void
.end method

.method public ISheetInsertRows(III)V
    .registers 5
    .parameter "a_bInsert"
    .parameter "a_nCount"
    .parameter "a_bAutoFit"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertRows(III)V

    .line 877
    return-void
.end method

.method public ISheetMerge()V
    .registers 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetMerge()V

    .line 918
    return-void
.end method

.method public ISheetPageBreak()V
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetPageBreak()V

    .line 863
    return-void
.end method

.method public ISheetProtection()V
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetProtection()V

    .line 866
    return-void
.end method

.method public ISheetRecalculate()V
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetRecalculate()V

    .line 847
    return-void
.end method

.method public ISheetSetAlignment(II)V
    .registers 4
    .parameter "a_nHAlignment"
    .parameter "a_nVAlignment"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISheetSetAlignment(II)V

    .line 837
    return-void
.end method

.method public ISheetSetColor(I)V
    .registers 3
    .parameter "a_lColor"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetSetColor(I)V

    .line 834
    return-void
.end method

.method public ISheetSetRowColSize(III)V
    .registers 5
    .parameter "EV_GUI_EVENT"
    .parameter "a_nValue"
    .parameter "a_bAutoFit"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetSetRowColSize(III)V

    .line 903
    return-void
.end method

.method public ISheetShowHideRowCol(III)V
    .registers 5
    .parameter "EEV_SHEET_SHOW_ROWCOL"
    .parameter "a_nValue"
    .parameter "a_bAutoFit"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetShowHideRowCol(III)V

    .line 895
    return-void
.end method

.method public ISheetSort(IIII)V
    .registers 6
    .parameter "a_bSortByRow"
    .parameter "a_nKey1"
    .parameter "a_nKey2"
    .parameter "a_nKey3"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->ISheetSort(IIII)V

    .line 906
    return-void
.end method

.method public IShowHideImage(I)V
    .registers 3
    .parameter "EEV_WORD_SHOW_HIDE"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IShowHideImage(I)V

    .line 557
    return-void
.end method

.method public ISlideAddMove(III)V
    .registers 5
    .parameter "EV_SLIDE_ADD_TYPE"
    .parameter "a_nCurrentPageNumber"
    .parameter "EEV_SLIDE_TEMPLATE_TYPE"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideAddMove(III)V

    .line 677
    return-void
.end method

.method public ISlideNote(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageNum"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideNote(III)V

    .line 692
    return-void
.end method

.method public ISlideNoteInput(ILjava/lang/String;I)V
    .registers 5
    .parameter "a_nSlidePage"
    .parameter "a_pszSlideNote"
    .parameter "a_nLen"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideNoteInput(ILjava/lang/String;I)V

    .line 695
    return-void
.end method

.method public ISlideObjInsert(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageCnt"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjInsert(III)V

    .line 707
    return-void
.end method

.method public ISlideObjMasterLayout(II)V
    .registers 4
    .parameter "a_Width"
    .parameter "a_Height"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISlideObjMasterLayout(II)V

    .line 704
    return-void
.end method

.method public ISlideObjStart(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageCnt"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjStart(III)V

    .line 698
    return-void
.end method

.method public ISlideObjStartEx(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageNum"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjStartEx(III)V

    .line 701
    return-void
.end method

.method public ISlideShow(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_StartPage"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideShow(III)V

    .line 689
    return-void
.end method

.method public ITextPlay(IIII)V
    .registers 5
    .parameter "EEV_TEXTPLAY_TYPE"
    .parameter "a_bAction"
    .parameter "a_nSYPos"
    .parameter "a_nEYPos"

    .prologue
    .line 398
    return-void
.end method

.method public IThreadSuspend(I)V
    .registers 3
    .parameter "a_bSuspend"

    .prologue
    .line 410
    iput p1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mbSuspend:I

    .line 411
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IThreadSuspend(I)V

    .line 412
    return-void
.end method

.method public IThumbnail(IIIII)V
    .registers 12
    .parameter "EEV_THUMBNAIL_MODE_TYPE"
    .parameter "a_nPages"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nStartPage"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IThumbnail(IIIII)V

    .line 319
    return-void
.end method

.method public IZoomInOut(II)V
    .registers 4
    .parameter "a_bI"
    .parameter "EEV_KEY_TYPE"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IZoomInOut(II)V

    .line 192
    return-void
.end method

.method public IsStartOfSentence_Editor()I
    .registers 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IIsStartOfSentence_Editor()I

    move-result v0

    return v0
.end method

.method protected OnInitComplete(I)V
    .registers 2
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/infraware/office/evengine/EvInterface;->OnInitComplete(I)V

    .line 118
    return-void
.end method

.method OnPreviewTimerStart()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->setPreviewTimer(Z)V

    .line 90
    return-void
.end method

.method OnPreviewTimerStop()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->setPreviewTimer(Z)V

    .line 94
    return-void
.end method

.method OnTimerStart()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->setOperationTimer(Z)V

    .line 82
    return-void
.end method

.method OnTimerStop()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mHandler:Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->setOperationTimer(Z)V

    .line 86
    return-void
.end method
