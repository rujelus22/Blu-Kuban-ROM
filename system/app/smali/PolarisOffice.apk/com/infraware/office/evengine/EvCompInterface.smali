.class Lcom/infraware/office/evengine/EvCompInterface;
.super Lcom/infraware/office/evengine/EvInterface;
.source "EvCompInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;
    }
.end annotation


# instance fields
.field private m_Timer:Ljava/util/Timer;

.field private m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/infraware/office/evengine/EvInterface;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    .line 15
    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    .line 64
    return-void
.end method


# virtual methods
.method public IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 1278
    monitor-enter p0

    .line 1279
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 1278
    monitor-exit p0

    .line 1281
    return-void

    .line 1278
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IApplyBookMark()V
    .registers 2

    .prologue
    .line 354
    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IApplyBookMark()V

    .line 354
    monitor-exit p0

    .line 357
    return-void

    .line 354
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IBookMarkOnOff(I)V
    .registers 3
    .parameter "a_bOn"

    .prologue
    .line 340
    monitor-enter p0

    .line 341
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IBookMarkOnOff(I)V

    .line 340
    monitor-exit p0

    .line 343
    return-void

    .line 340
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IBookmarkEditor(ILjava/lang/String;)V
    .registers 4
    .parameter "EEV_BOOKMARK_EDITOR_MODE"
    .parameter "a_pszBookmark"

    .prologue
    .line 704
    monitor-enter p0

    .line 705
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IBookmarkEditor(ILjava/lang/String;)V

    .line 704
    monitor-exit p0

    .line 707
    return-void

    .line 704
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IBulletNumbering(III)V
    .registers 5
    .parameter "EEV_BULLET_NUMBERIG"
    .parameter "EEV_BULLETNUMBER_TYPE"
    .parameter "bNumberReset"

    .prologue
    .line 632
    monitor-enter p0

    .line 633
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IBulletNumbering(III)V

    .line 632
    monitor-exit p0

    .line 635
    return-void

    .line 632
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICanCellDelete_Editor()Z
    .registers 3

    .prologue
    .line 956
    const/4 v0, 0x0

    .line 957
    .local v0, nRet:Z
    monitor-enter p0

    .line 958
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->ICanCellDelete()Z

    move-result v0

    .line 957
    monitor-exit p0

    .line 960
    return v0

    .line 957
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public ICanExtendSortRange()V
    .registers 2

    .prologue
    .line 1194
    monitor-enter p0

    .line 1195
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ICanExtendSortRange()I

    .line 1194
    monitor-exit p0

    .line 1197
    return-void

    .line 1194
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICancel()V
    .registers 2

    .prologue
    .line 478
    monitor-enter p0

    .line 479
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ICancel()V

    .line 478
    monitor-exit p0

    .line 481
    return-void

    .line 478
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICaretMark(II)V
    .registers 4
    .parameter "EEV_CARET_MARK"
    .parameter "nSelectMode"

    .prologue
    .line 627
    monitor-enter p0

    .line 628
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ICaretMark(II)V

    .line 627
    monitor-exit p0

    .line 630
    return-void

    .line 627
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICaretMove(III)V
    .registers 5
    .parameter "EEV_CARET_MOVE"
    .parameter "bShift"
    .parameter "bCtrl"

    .prologue
    .line 606
    monitor-enter p0

    .line 607
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICaretMove(III)V

    .line 606
    monitor-exit p0

    .line 609
    return-void

    .line 606
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICaretShow(I)V
    .registers 3
    .parameter "a_bCaret"

    .prologue
    .line 611
    monitor-enter p0

    .line 612
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ICaretShow(I)V

    .line 611
    monitor-exit p0

    .line 614
    return-void

    .line 611
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICellInsertDelete(II)V
    .registers 4
    .parameter "EEV_CELL_ISERT_DELETE"
    .parameter "a_nCellType"

    .prologue
    .line 689
    monitor-enter p0

    .line 690
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ICellInsertDelete(II)V

    .line 689
    monitor-exit p0

    .line 692
    return-void

    .line 689
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICellMergeSeparate(III)V
    .registers 5
    .parameter "EEV_WORD_CELL_MERGE_SEP"
    .parameter "a_nRow"
    .parameter "a_nCol"

    .prologue
    .line 694
    monitor-enter p0

    .line 695
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICellMergeSeparate(III)V

    .line 694
    monitor-exit p0

    .line 697
    return-void

    .line 694
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IChangeDisplay(I)V
    .registers 2
    .parameter "EEV_DISPLAY_MODE_TYPE"

    .prologue
    .line 277
    return-void
.end method

.method public IChangeScreen(III)V
    .registers 10
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IChangeScreen(IIIII)V

    .line 268
    monitor-exit p0

    .line 272
    return-void

    .line 268
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public IChangeViewMode(IIII)V
    .registers 6
    .parameter "EEV_VIEW_MODE"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "bDraw"

    .prologue
    .line 510
    monitor-enter p0

    .line 511
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IChangeViewMode(IIII)V

    .line 510
    monitor-exit p0

    .line 513
    return-void

    .line 510
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICharInsert(III)V
    .registers 5
    .parameter "EEV_CHAR_IPUT"
    .parameter "a_wCode"
    .parameter "a_nRepeat"

    .prologue
    .line 684
    monitor-enter p0

    .line 685
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICharInsert(III)V

    .line 684
    monitor-exit p0

    .line 687
    return-void

    .line 684
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IClose()V
    .registers 2

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IClose()V

    .line 150
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    if-eqz v0, :cond_15

    .line 151
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    .line 156
    :cond_15
    invoke-super {p0}, Lcom/infraware/office/evengine/EvInterface;->IClose()V

    .line 147
    monitor-exit p0

    .line 158
    return-void

    .line 147
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public ICreateTable(III)V
    .registers 5
    .parameter "a_nRow"
    .parameter "a_nCol"
    .parameter "a_nColor"

    .prologue
    .line 583
    monitor-enter p0

    .line 584
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICreateTable(III)V

    .line 583
    monitor-exit p0

    .line 586
    return-void

    .line 583
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IDeleteBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 1283
    monitor-enter p0

    .line 1284
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IDeleteBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 1283
    monitor-exit p0

    .line 1286
    return-void

    .line 1283
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IDeletePenDataForSlideShow()V
    .registers 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IDeletePenDataForSlideShow()V

    .line 1474
    return-void
.end method

.method public IDocumentModified_Editor()Z
    .registers 3

    .prologue
    .line 946
    const/4 v0, 0x0

    .line 947
    .local v0, nRet:Z
    monitor-enter p0

    .line 948
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IDocumentModified()Z

    move-result v0

    .line 947
    monitor-exit p0

    .line 950
    return v0

    .line 947
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IEditDocument(IIILjava/lang/String;)V
    .registers 6
    .parameter "EEV_EDIT_DOCUMENT"
    .parameter "nNative"
    .parameter "nDataType"
    .parameter "data"

    .prologue
    .line 550
    monitor-enter p0

    .line 551
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IEditDocument(IIILjava/lang/String;)V

    .line 550
    monitor-exit p0

    .line 553
    return-void

    .line 550
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IEditPageRedrawBitmap()V
    .registers 2

    .prologue
    .line 657
    monitor-enter p0

    .line 658
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IEditPageRedrawBitmap()V

    .line 657
    monitor-exit p0

    .line 660
    return-void

    .line 657
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IExitPreview()V
    .registers 2

    .prologue
    .line 887
    monitor-enter p0

    .line 888
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IExitPreview()V

    .line 887
    monitor-exit p0

    .line 890
    return-void

    .line 887
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IFinalize()V
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/infraware/office/evengine/EvCompInterface;->isInit()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 112
    monitor-enter p0

    .line 113
    :try_start_7
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IFinalize()V

    .line 112
    monitor-exit p0

    .line 116
    :cond_d
    return-void

    .line 112
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public IFindWordNext(I)V
    .registers 3
    .parameter "a_bDirUp"

    .prologue
    .line 416
    monitor-enter p0

    .line 417
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IFindWordNext(I)V

    .line 416
    monitor-exit p0

    .line 419
    return-void

    .line 416
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IFindWordNextByPos(II)V
    .registers 4
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 423
    monitor-enter p0

    .line 424
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IFindWordNextByPos(II)V

    .line 423
    monitor-exit p0

    .line 426
    return-void

    .line 423
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IFindWordStart(II)V
    .registers 4
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 409
    monitor-enter p0

    .line 410
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IFindWordStart(II)V

    .line 409
    monitor-exit p0

    .line 412
    return-void

    .line 409
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IFindWordStop()V
    .registers 2

    .prologue
    .line 430
    monitor-enter p0

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IFindWordStop()V

    .line 430
    monitor-exit p0

    .line 433
    return-void

    .line 430
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IFlick(II)V
    .registers 4
    .parameter "a_nVelocityX"
    .parameter "a_nVelocityY"

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IFlick(II)V

    .line 186
    monitor-exit p0

    .line 189
    return-void

    .line 186
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IGetBWPCellStatusInfo()I
    .registers 2

    .prologue
    .line 1391
    monitor-enter p0

    .line 1392
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetBWPCellStatusInfo()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1391
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetBWPGrapAttrInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    .registers 3

    .prologue
    .line 934
    monitor-enter p0

    .line 935
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPGrapAttrInfo(Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;)V

    .line 934
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 937
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    return-object v0

    .line 934
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    .registers 3

    .prologue
    .line 922
    monitor-enter p0

    .line 923
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpOpInfo()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPOpInfo(Lcom/infraware/office/evengine/EV$BWP_OP_INFO;)V

    .line 922
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 925
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpOpInfo()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    return-object v0

    .line 922
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetBWPSplitCellMaxNum_Editor()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;
    .registers 3

    .prologue
    .line 928
    monitor-enter p0

    .line 929
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPSplitCellMaxNum(Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;)V

    .line 928
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 931
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v0

    return-object v0

    .line 928
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetBookClipCount(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 1273
    monitor-enter p0

    .line 1274
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetBookClipCount(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 1273
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetBookClipName(ILcom/infraware/office/evengine/EV$BOOK_CLIP;)V
    .registers 4
    .parameter "a_nIndex"
    .parameter "a_pClip"

    .prologue
    .line 1268
    monitor-enter p0

    .line 1269
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetBookClipName(ILcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 1268
    monitor-exit p0

    .line 1271
    return-void

    .line 1268
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IGetBookmarkCount_Editor()I
    .registers 3

    .prologue
    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, nCnt:I
    monitor-enter p0

    .line 1013
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkCount_Editor()I

    move-result v0

    .line 1012
    monitor-exit p0

    .line 1015
    return v0

    .line 1012
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IGetBookmarkInfo_Editor(I)Ljava/lang/String;
    .registers 4
    .parameter "a_nIndex"

    .prologue
    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1021
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkInfo_Editor(I)Ljava/lang/String;

    move-result-object v0

    .line 1020
    monitor-exit p0

    .line 1023
    return-object v0

    .line 1020
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IGetBookmarkLabel(I)Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;
    .registers 4
    .parameter "a_nIndex"

    .prologue
    .line 892
    monitor-enter p0

    .line 893
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBookmarkLabel()Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkLabel(ILcom/infraware/office/evengine/EV$BOOKMARK_LABEL;)V

    .line 892
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 895
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBookmarkLabel()Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;

    move-result-object v0

    return-object v0

    .line 892
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetBorderProperty()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
    .registers 3

    .prologue
    .line 1256
    monitor-enter p0

    .line 1257
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiBorderEvent()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBorderProperty(Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;)V

    .line 1256
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 1259
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiBorderEvent()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    return-object v0

    .line 1256
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetBulletType_Editor()Lcom/infraware/office/evengine/EV$BULLET_TYPE;
    .registers 3

    .prologue
    .line 990
    monitor-enter p0

    .line 991
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBulletType()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBulletType(Lcom/infraware/office/evengine/EV$BULLET_TYPE;)V

    .line 990
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 993
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBulletType()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v0

    return-object v0

    .line 990
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetCaretAfterString(I)Ljava/lang/String;
    .registers 3
    .parameter "a_length"

    .prologue
    .line 1331
    monitor-enter p0

    .line 1332
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretAfterString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1331
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetCaretBeforeString(I)Ljava/lang/String;
    .registers 3
    .parameter "a_length"

    .prologue
    .line 1325
    monitor-enter p0

    .line 1326
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1325
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;
    .registers 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCaretInfoEvent()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;
    .registers 3

    .prologue
    .line 616
    monitor-enter p0

    .line 617
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretPos(Lcom/infraware/office/evengine/EV$CARET_POS;)V

    .line 616
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 619
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;

    move-result-object v0

    return-object v0

    .line 616
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetCaretPos_Editor()I
    .registers 2

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCaretPos_Editor()I

    move-result v0

    return v0
.end method

.method public IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    .registers 3

    .prologue
    .line 1211
    monitor-enter p0

    .line 1212
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getSheetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCellInfo(Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;)V

    .line 1211
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 1214
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getSheetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    return-object v0

    .line 1211
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetCellProperty_Editor()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;
    .registers 3

    .prologue
    .line 996
    monitor-enter p0

    .line 997
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getCellProperty()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCellProperty(Lcom/infraware/office/evengine/EV$CELL_PROPERTY;)V

    .line 996
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 999
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCellProperty()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;

    move-result-object v0

    return-object v0

    .line 996
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetCellType()I
    .registers 2

    .prologue
    .line 1385
    monitor-enter p0

    .line 1386
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCellType()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1385
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetChartInfo()Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
    .registers 3

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiSheetChartEvent()Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    move-result-object v0

    .line 1229
    .local v0, chartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->clear()V

    .line 1230
    monitor-enter p0

    .line 1231
    :try_start_a
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvNative;->IGetChartInfo(Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;)V

    .line 1230
    monitor-exit p0

    .line 1233
    return-object v0

    .line 1230
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v1
.end method

.method public IGetColumn()I
    .registers 2

    .prologue
    .line 1301
    monitor-enter p0

    .line 1302
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetColumn()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1301
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCurrentSheetIndex()I
    .registers 2

    .prologue
    .line 1184
    monitor-enter p0

    .line 1185
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCurrentSheetIndex()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1184
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetEditStauts_Editor()J
    .registers 4

    .prologue
    .line 983
    const-wide/16 v0, 0x0

    .line 984
    .local v0, a_Status:J
    monitor-enter p0

    .line 985
    :try_start_3
    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvNative;->IGetEditStauts()J

    move-result-wide v0

    .line 984
    monitor-exit p0

    .line 987
    return-wide v0

    .line 984
    :catchall_b
    move-exception v2

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v2
.end method

.method public IGetEditorMode_Editor()I
    .registers 2

    .prologue
    .line 953
    iget v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->mEditorMode:I

    return v0
.end method

.method public IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;
    .registers 3

    .prologue
    .line 916
    monitor-enter p0

    .line 917
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiFontEvent()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetFontAttInfo(Lcom/infraware/office/evengine/EV$FONT_INFO;)V

    .line 916
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 919
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiFontEvent()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v0

    return-object v0

    .line 916
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetFontPreview(Lcom/infraware/office/evengine/EV$FONT_DATA;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "fd"
    .parameter "text"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1411
    invoke-static {}, Lcom/infraware/office/evengine/EvImageUtil;->getEvImageUtil()Lcom/infraware/office/evengine/EvImageUtil;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/infraware/office/evengine/EvImageUtil;->CreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1412
    .local v0, previewBitmap:Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 1413
    if-eqz v0, :cond_17

    .line 1414
    :try_start_b
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetFontPreview(Landroid/graphics/Bitmap;Lcom/infraware/office/evengine/EV$FONT_DATA;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1415
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1416
    const/4 v0, 0x0

    .line 1419
    :cond_17
    monitor-exit p0

    return-object v0

    .line 1412
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    .registers 3

    .prologue
    .line 1217
    monitor-enter p0

    .line 1218
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getSheetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetFormatInfo(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1217
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 1220
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getSheetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    return-object v0

    .line 1217
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetHyperLinkInfoEx(II)Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    .registers 5
    .parameter "a_nX"
    .parameter "a_nY"

    .prologue
    .line 1314
    monitor-enter p0

    .line 1315
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/infraware/office/evengine/EvNative;->IGetHyperLinkInfoEx(IILcom/infraware/office/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1316
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    .line 1320
    :goto_18
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1318
    :cond_20
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    goto :goto_18

    .line 1314
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public IGetHyperLinkInfo_Editor()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    .registers 3

    .prologue
    .line 964
    monitor-enter p0

    .line 965
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetHyperLinkInfo(Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 966
    monitor-exit p0

    const/4 v0, 0x0

    .line 968
    :goto_11
    return-object v0

    .line 964
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    .line 968
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    goto :goto_11

    .line 964
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public IGetImageMaxSize(I)I
    .registers 4
    .parameter "nMode"

    .prologue
    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, nRet:I
    monitor-enter p0

    .line 871
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvNative;->IGetImageMaxSize(I)I

    move-result v0

    .line 870
    monitor-exit p0

    .line 873
    return v0

    .line 870
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IGetInvalidRect_Editor()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;
    .registers 3

    .prologue
    .line 940
    monitor-enter p0

    .line 941
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetInvalidRect(Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;)V

    .line 940
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 943
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v0

    return-object v0

    .line 940
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetMarkString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1363
    const/4 v0, 0x0

    .line 1364
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1365
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetMarkString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    monitor-exit p0

    .line 1367
    return-object v0

    .line 1364
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IGetParaAttInfo_Editor()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;
    .registers 3

    .prologue
    .line 972
    monitor-enter p0

    .line 973
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetParaAttInfo(Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;)Z

    .line 972
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 975
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;

    move-result-object v0

    return-object v0

    .line 972
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;
    .registers 3

    .prologue
    .line 491
    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    .line 491
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 494
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;

    move-result-object v0

    return-object v0

    .line 491
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public IGetProtectStatus()I
    .registers 2

    .prologue
    .line 1397
    monitor-enter p0

    .line 1398
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetProtectStatus()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1397
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetScreenPos()Lcom/infraware/office/evengine/EV$SCREEN_INFO;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getScreenInfo()Lcom/infraware/office/evengine/EV$SCREEN_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetScrollInfo_Editor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;
    .registers 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getScrollInfoEditor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v0

    return-object v0
.end method

.method public IGetSeparateMarkString_Editor()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1357
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v0

    .line 1356
    monitor-exit p0

    .line 1359
    return-object v0

    .line 1356
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IGetSheetCount()I
    .registers 2

    .prologue
    .line 1179
    monitor-enter p0

    .line 1180
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSheetCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1179
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V
    .registers 4
    .parameter "a_pSheetInfo"
    .parameter "a_nIndex"

    .prologue
    .line 1223
    monitor-enter p0

    .line 1224
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 1223
    monitor-exit p0

    .line 1226
    return-void

    .line 1223
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IGetSheetNameList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSheetNameList()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1189
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetSlideNoteString_Editor(I)Ljava/lang/String;
    .registers 4
    .parameter "a_nPageNum"

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1005
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvNative;->IGetSlideNoteString(I)Ljava/lang/String;

    move-result-object v0

    .line 1004
    monitor-exit p0

    .line 1007
    return-object v0

    .line 1004
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IGetSortRange(Lcom/infraware/office/evengine/EV$RANGE;I)I
    .registers 5
    .parameter "a_ppRange"
    .parameter "a_bExtendRange"

    .prologue
    .line 1200
    monitor-enter p0

    .line 1201
    :try_start_1
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetSortRange(Lcom/infraware/office/evengine/EV$RANGE;I)I

    move-result v0

    .line 1200
    .local v0, nRet:I
    monitor-exit p0

    .line 1203
    return v0

    .line 1200
    .end local v0           #nRet:I
    :catchall_9
    move-exception v1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public IGetSystemFontCount()I
    .registers 2

    .prologue
    .line 1246
    monitor-enter p0

    .line 1247
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSystemFontCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1246
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetSystemFontNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1251
    monitor-enter p0

    .line 1252
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSystemFontNames()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1251
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetTextToSpeachString(III)V
    .registers 5
    .parameter "nSize"
    .parameter "nDir"
    .parameter "nTextline"

    .prologue
    .line 1379
    monitor-enter p0

    .line 1380
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IGetTextToSpeachString(III)V

    .line 1379
    monitor-exit p0

    .line 1382
    return-void

    .line 1379
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IGetTouchString(II)Ljava/lang/String;
    .registers 5
    .parameter "nSx"
    .parameter "nSy"

    .prologue
    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1373
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetTouchString(II)Ljava/lang/String;

    move-result-object v0

    .line 1372
    monitor-exit p0

    .line 1375
    return-object v0

    .line 1372
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IGetUseFontCount()I
    .registers 2

    .prologue
    .line 1236
    monitor-enter p0

    .line 1237
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetUseFontCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1236
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetUseFontNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1241
    monitor-enter p0

    .line 1242
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1241
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IHIDAction(IIII)V
    .registers 6
    .parameter "EEV_HID_ACTION"
    .parameter "a_nXPos"
    .parameter "a_nYPos"
    .parameter "a_wModifiers"

    .prologue
    .line 674
    monitor-enter p0

    .line 675
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IHIDAction(IIII)V

    .line 674
    monitor-exit p0

    .line 677
    return-void

    .line 674
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IHTCClearAll()V
    .registers 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IHTCClearAll()V

    .line 1449
    return-void
.end method

.method public IHTCSetPenColor(I)V
    .registers 3
    .parameter "aPenColor"

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenColor(I)V

    .line 1454
    return-void
.end method

.method public IHTCSetPenMode(I)V
    .registers 3
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenMode(I)V

    .line 1444
    return-void
.end method

.method public IHTCSetPenPosition([I[II)V
    .registers 5
    .parameter "a_pX"
    .parameter "a_pY"
    .parameter "nCnt"

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenPosition([I[II)V

    .line 1464
    return-void
.end method

.method public IHTCSetPenSize(I)V
    .registers 3
    .parameter "aPenSize"

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenSize(I)V

    .line 1459
    return-void
.end method

.method public IHyperLink(III)V
    .registers 5
    .parameter "EEV_HYPERLIK_MODE"
    .parameter "a_nXPos"
    .parameter "a_nYPos"

    .prologue
    .line 381
    monitor-enter p0

    .line 382
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IHyperLink(III)V

    .line 381
    monitor-exit p0

    .line 384
    return-void

    .line 381
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IHyperLinkEnd()V
    .registers 2

    .prologue
    .line 388
    monitor-enter p0

    .line 389
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IHyperLinkEnd()V

    .line 388
    monitor-exit p0

    .line 391
    return-void

    .line 388
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "a_pszHyperText"
    .parameter "a_pszHyperLink"

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    monitor-exit p0

    .line 712
    return-void

    .line 709
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V
    .registers 12
    .parameter "a_pImgPath"
    .parameter "a_bitmap"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "bReplaceImage"

    .prologue
    .line 637
    monitor-enter p0

    .line 638
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V

    .line 637
    monitor-exit p0

    .line 640
    return-void

    .line 637
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public IIndentation(I)V
    .registers 3
    .parameter "EEV_IDENTATION"

    .prologue
    .line 699
    monitor-enter p0

    .line 700
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IIndentation(I)V

    .line 699
    monitor-exit p0

    .line 702
    return-void

    .line 699
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IInitialize(III)V
    .registers 13
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nDpi"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/evengine/EvInterface;->IInitialize(III)V

    .line 93
    monitor-enter p0

    .line 94
    :try_start_4
    invoke-virtual {p0}, Lcom/infraware/office/evengine/EvCompInterface;->isInit()Z

    move-result v0

    if-nez v0, :cond_19

    .line 96
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    .line 98
    const/16 v3, 0x8

    .line 99
    const/4 v4, 0x1

    .line 100
    const/4 v5, 0x1

    .line 101
    const/16 v6, 0x10

    .line 102
    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v8, p3

    .line 96
    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->IInitialize(IIIIIIII)V

    .line 93
    :cond_19
    monitor-exit p0

    .line 106
    return-void

    .line 93
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public IInputChar(I)V
    .registers 3
    .parameter "a_wCode"

    .prologue
    .line 597
    monitor-enter p0

    .line 598
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IInputChar(I)V

    .line 597
    monitor-exit p0

    .line 600
    return-void

    .line 597
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IInsertShape(I)V
    .registers 3
    .parameter "a_nShape"

    .prologue
    .line 816
    monitor-enter p0

    .line 817
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IInsertShape(I)V

    .line 816
    monitor-exit p0

    .line 819
    return-void

    .line 816
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IInsertString(Ljava/lang/String;III)V
    .registers 6
    .parameter "aszTemp"
    .parameter "nCompType"
    .parameter "nPos"
    .parameter "nStrLen"

    .prologue
    .line 642
    monitor-enter p0

    .line 643
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IInsertString(Ljava/lang/String;III)V

    .line 642
    monitor-exit p0

    .line 645
    return-void

    .line 642
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IInsertTextBox()V
    .registers 2

    .prologue
    .line 806
    monitor-enter p0

    .line 807
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IInsertTextBox()V

    .line 806
    monitor-exit p0

    .line 809
    return-void

    .line 806
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IIsComplexColumn()Z
    .registers 3

    .prologue
    .line 1403
    const/4 v0, 0x0

    .line 1404
    .local v0, nRet:Z
    monitor-enter p0

    .line 1405
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IIsComplexColumn()Z

    move-result v0

    .line 1404
    monitor-exit p0

    .line 1407
    return v0

    .line 1404
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IIsPenDataForSlideShow()I
    .registers 2

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

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
    .line 446
    return-void
.end method

.method public IMovePage(II)V
    .registers 4
    .parameter "EEV_MOVE_TYPE"
    .parameter "a_nPage"

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IMovePage(II)V

    .line 167
    monitor-exit p0

    .line 170
    return-void

    .line 167
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 524
    monitor-enter p0

    .line 525
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 524
    monitor-exit p0

    .line 536
    return-void

    .line 524
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
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
    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    .line 135
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

    .line 131
    invoke-virtual/range {v1 .. v17}, Lcom/infraware/office/evengine/EvNative;->IOpen(Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit p0

    .line 137
    return-void

    .line 130
    :catchall_23
    move-exception v1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v1
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
    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/infraware/office/evengine/EvNative;->IOpenEx(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    monitor-exit p0

    .line 143
    return-void

    .line 140
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public IParagraphAlign(I)V
    .registers 3
    .parameter "EEV_PARAGRAPH_ALIGN"

    .prologue
    .line 647
    monitor-enter p0

    .line 648
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IParagraphAlign(I)V

    .line 647
    monitor-exit p0

    .line 650
    return-void

    .line 647
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IPivotScreen(III)V
    .registers 5
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IPivotScreen(III)V

    .line 281
    monitor-exit p0

    .line 284
    return-void

    .line 281
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IPopupOffset(IIIII)V
    .registers 12
    .parameter "EEV_POPUP_ONOFF"
    .parameter "a_nLeft"
    .parameter "a_nRight"
    .parameter "a_nTop"
    .parameter "a_nBottom"

    .prologue
    .line 714
    monitor-enter p0

    .line 715
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IPopupOffset(IIIII)V

    .line 714
    monitor-exit p0

    .line 717
    return-void

    .line 714
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public IPrint(IIILjava/lang/String;)V
    .registers 5
    .parameter "EEV_PRIT_PAPER_TYPE"
    .parameter "a_nStartPage"
    .parameter "a_nEndPage"
    .parameter "a_sFilePath"

    .prologue
    .line 466
    return-void
.end method

.method public IReDraw()V
    .registers 2

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IReDraw()V

    .line 245
    monitor-exit p0

    .line 248
    return-void

    .line 245
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IRedoUndo(I)V
    .registers 3
    .parameter "EEV_REDO_UNDO"

    .prologue
    .line 592
    monitor-enter p0

    .line 593
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IRedoUndo(I)V

    .line 592
    monitor-exit p0

    .line 595
    return-void

    .line 592
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IReleaseFontPreview()V
    .registers 2

    .prologue
    .line 1424
    monitor-enter p0

    .line 1425
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IReleaseFontPreview()V

    .line 1424
    monitor-exit p0

    .line 1427
    return-void

    .line 1424
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IRemoveAllBookMark()V
    .registers 2

    .prologue
    .line 368
    monitor-enter p0

    .line 369
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IRemoveAllBookMark()V

    .line 368
    monitor-exit p0

    .line 371
    return-void

    .line 368
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IRemoveBookMark(Ljava/lang/String;)V
    .registers 3
    .parameter "a_sFilePath"

    .prologue
    .line 361
    monitor-enter p0

    .line 362
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IRemoveBookMark(Ljava/lang/String;)V

    .line 361
    monitor-exit p0

    .line 364
    return-void

    .line 361
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IRotate(II)V
    .registers 4
    .parameter "EEV_ROTATE_TYPE"
    .parameter "a_nAngle"

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IRotate(II)V

    .line 239
    monitor-exit p0

    .line 242
    return-void

    .line 239
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISaveBookMark()V
    .registers 2

    .prologue
    .line 347
    monitor-enter p0

    .line 348
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISaveBookMark()V

    .line 347
    monitor-exit p0

    .line 350
    return-void

    .line 347
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISaveDocument(Ljava/lang/String;)V
    .registers 5
    .parameter "a_pszFilePath"

    .prologue
    .line 539
    monitor-enter p0

    .line 540
    :try_start_1
    const-string v0, "EvCompinterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ISaveDocument = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISaveDocument(Ljava/lang/String;)V

    .line 539
    monitor-exit p0

    .line 543
    return-void

    .line 539
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public IScreenCaptureModeOnOff(I)V
    .registers 2
    .parameter "a_bOn"

    .prologue
    .line 289
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
    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IScroll(IIIII)V

    .line 227
    monitor-exit p0

    .line 230
    return-void

    .line 227
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public ISearchStart(Ljava/lang/String;IIII)V
    .registers 12
    .parameter "a_sFind"
    .parameter "a_bMatchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_bFixedZoom"

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISearchStart(Ljava/lang/String;IIII)V

    .line 395
    monitor-exit p0

    .line 398
    return-void

    .line 395
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public ISearchStop()V
    .registers 2

    .prologue
    .line 402
    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISearchStop()V

    .line 402
    monitor-exit p0

    .line 405
    return-void

    .line 402
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISelectAll()V
    .registers 2

    .prologue
    .line 763
    monitor-enter p0

    .line 764
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISelectAll()V

    .line 763
    monitor-exit p0

    .line 766
    return-void

    .line 763
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISellectAll()V
    .registers 2

    .prologue
    .line 1027
    monitor-enter p0

    .line 1028
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISellectAll()V

    .line 1027
    monitor-exit p0

    .line 1030
    return-void

    .line 1027
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 1263
    monitor-enter p0

    .line 1264
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 1263
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public ISetBookmarkLabel(Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;I)V
    .registers 4
    .parameter "a_pLabel"
    .parameter "a_bSaveBookmarkInfo"

    .prologue
    .line 898
    monitor-enter p0

    .line 899
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetBookmarkLabel(Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;I)V

    .line 898
    monitor-exit p0

    .line 901
    return-void

    .line 898
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 784
    monitor-enter p0

    .line 785
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 784
    monitor-exit p0

    .line 787
    return-void

    .line 784
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public ISetColors(III)V
    .registers 5
    .parameter "nMask"
    .parameter "nForeColor"
    .parameter "nBackColor"

    .prologue
    .line 790
    monitor-enter p0

    .line 791
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISetColors(III)V

    .line 790
    monitor-exit p0

    .line 793
    return-void

    .line 790
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetColumn(II)V
    .registers 4
    .parameter "a_nColCnt"
    .parameter "a_bAllPage"

    .prologue
    .line 1295
    monitor-enter p0

    .line 1296
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetColumn(II)V

    .line 1295
    monitor-exit p0

    .line 1298
    return-void

    .line 1295
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 1307
    monitor-enter p0

    .line 1308
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 1307
    monitor-exit p0

    .line 1310
    return-void

    .line 1307
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
    .line 563
    monitor-enter p0

    .line 564
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 563
    monitor-exit p0

    .line 566
    return-void

    .line 563
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public ISetHeapSize(I)V
    .registers 3
    .parameter "a_nHeapSize"

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_1
    invoke-super {p0, p1}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 70
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetHeapSize(I)V

    .line 68
    monitor-exit p0

    .line 72
    return-void

    .line 68
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public ISetLineShape(IIII)V
    .registers 6
    .parameter "EEV_BORDER_STYLE"
    .parameter "a_LineThickness"
    .parameter "EEV_LIE_ARROW_TYPE"
    .parameter "a_LineColor"

    .prologue
    .line 773
    monitor-enter p0

    .line 774
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->ISetLineShape(IIII)V

    .line 773
    monitor-exit p0

    .line 776
    return-void

    .line 773
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetLineSpace(I)V
    .registers 3
    .parameter "a_LineSpaceType"

    .prologue
    .line 768
    monitor-enter p0

    .line 769
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetLineSpace(I)V

    .line 768
    monitor-exit p0

    .line 771
    return-void

    .line 768
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->SetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 80
    monitor-exit p0

    .line 83
    return-void

    .line 80
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public ISetModeStatus(I)V
    .registers 3
    .parameter "EEV_VIEW_MODE"

    .prologue
    .line 652
    monitor-enter p0

    .line 653
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetModeStatus(I)V

    .line 652
    monitor-exit p0

    .line 655
    return-void

    .line 652
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetObjDelete()V
    .registers 2

    .prologue
    .line 861
    monitor-enter p0

    .line 862
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetObjDelete()V

    .line 861
    monitor-exit p0

    .line 864
    return-void

    .line 861
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetObjPos(I)V
    .registers 3
    .parameter "a_nSendToType"

    .prologue
    .line 908
    monitor-enter p0

    .line 909
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetObjPos(I)V

    .line 908
    monitor-exit p0

    .line 911
    return-void

    .line 908
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetObjResize(II)V
    .registers 4
    .parameter "a_nSizeX"
    .parameter "a_nSizeY"

    .prologue
    .line 903
    monitor-enter p0

    .line 904
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetObjResize(II)V

    .line 903
    monitor-exit p0

    .line 906
    return-void

    .line 903
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetObjTextEdit()V
    .registers 2

    .prologue
    .line 856
    monitor-enter p0

    .line 857
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetObjTextEdit()V

    .line 856
    monitor-exit p0

    .line 859
    return-void

    .line 856
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 578
    monitor-enter p0

    .line 579
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 578
    monitor-exit p0

    .line 581
    return-void

    .line 578
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
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
    .line 314
    monitor-enter p0

    .line 315
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISetPageMap(IIIIII)V

    .line 314
    monitor-exit p0

    .line 317
    return-void

    .line 314
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
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
    .line 731
    monitor-enter p0

    .line 732
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 731
    monitor-exit p0

    .line 745
    return-void

    .line 731
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public ISetPreview(IILjava/lang/String;)V
    .registers 10
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_szFilePath"

    .prologue
    .line 877
    monitor-enter p0

    .line 878
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    const/16 v3, 0x10

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISetPreview(IIILjava/lang/String;I)V

    .line 877
    monitor-exit p0

    .line 880
    return-void

    .line 877
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public ISetPreviewTimerCB()V
    .registers 2

    .prologue
    .line 882
    monitor-enter p0

    .line 883
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetPreviewTimerCB()V

    .line 882
    monitor-exit p0

    .line 885
    return-void

    .line 882
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetPrint(IIILjava/lang/String;I)V
    .registers 12
    .parameter "a_PaperSize"
    .parameter "a_StartPage"
    .parameter "a_EndPage"
    .parameter "a_szFilePath"
    .parameter "a_ReturnType"

    .prologue
    .line 1337
    monitor-enter p0

    .line 1338
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISetPrint(IIILjava/lang/String;I)V

    .line 1337
    monitor-exit p0

    .line 1340
    return-void

    .line 1337
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
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
    .line 1343
    monitor-enter p0

    .line 1344
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1343
    monitor-exit p0

    .line 1346
    return-void

    .line 1343
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public ISetPrintMode()V
    .registers 2

    .prologue
    .line 758
    monitor-enter p0

    .line 759
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetPrintMode()V

    .line 758
    monitor-exit p0

    .line 761
    return-void

    .line 758
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V
    .registers 3
    .parameter "a_Properties"

    .prologue
    .line 498
    monitor-enter p0

    .line 499
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    .line 498
    monitor-exit p0

    .line 501
    return-void

    .line 498
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 748
    monitor-enter p0

    .line 749
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    .line 748
    monitor-exit p0

    .line 751
    return-void

    .line 748
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public ISetScreenMode(I)V
    .registers 3
    .parameter "EV_SCREENMODE_TYPE"

    .prologue
    .line 811
    monitor-enter p0

    .line 812
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetScreenMode(I)V

    .line 811
    monitor-exit p0

    .line 814
    return-void

    .line 811
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetSortRange(Lcom/infraware/office/evengine/EV$RANGE;)V
    .registers 3
    .parameter "a_pRange"

    .prologue
    .line 1206
    monitor-enter p0

    .line 1207
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetSortRange(Lcom/infraware/office/evengine/EV$RANGE;)V

    .line 1206
    monitor-exit p0

    .line 1209
    return-void

    .line 1206
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetTemplateShape(II)V
    .registers 4
    .parameter "a_nShapeType"
    .parameter "a_nShapeColor"

    .prologue
    .line 778
    monitor-enter p0

    .line 779
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetTemplateShape(II)V

    .line 778
    monitor-exit p0

    .line 781
    return-void

    .line 778
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 1349
    monitor-enter p0

    .line 1350
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetThumbnailByPrint(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 1349
    monitor-exit p0

    .line 1352
    return-void

    .line 1349
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public ISetViewMode(I)V
    .registers 3
    .parameter "EEV_VIEWMODE_TYPE"

    .prologue
    .line 256
    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetViewMode(I)V

    .line 256
    monitor-exit p0

    .line 259
    return-void

    .line 256
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetWebMode()V
    .registers 2

    .prologue
    .line 753
    monitor-enter p0

    .line 754
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetWebMode()V

    .line 753
    monitor-exit p0

    .line 756
    return-void

    .line 753
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetWritePassword(Ljava/lang/String;)V
    .registers 3
    .parameter "strPassword"

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetWritePassword(Ljava/lang/String;)V

    .line 1488
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
    .line 207
    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 207
    monitor-exit p0

    .line 215
    return-void

    .line 207
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V
    .registers 3
    .parameter "a_pInfo"

    .prologue
    .line 1174
    monitor-enter p0

    .line 1175
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1174
    monitor-exit p0

    .line 1177
    return-void

    .line 1174
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetClear(I)V
    .registers 3
    .parameter "EEV_SHEET_CLEAR"

    .prologue
    .line 1111
    monitor-enter p0

    .line 1112
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetClear(I)V

    .line 1111
    monitor-exit p0

    .line 1114
    return-void

    .line 1111
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 1067
    monitor-enter p0

    .line 1068
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 1067
    monitor-exit p0

    .line 1070
    return-void

    .line 1067
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "a_pszFindText"
    .parameter "a_pszReplaceText"
    .parameter "a_nFlag"

    .prologue
    .line 1142
    monitor-enter p0

    .line 1143
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1142
    monitor-exit p0

    .line 1145
    return-void

    .line 1142
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetFixFrame()V
    .registers 2

    .prologue
    .line 1072
    monitor-enter p0

    .line 1073
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetFixFrame()V

    .line 1072
    monitor-exit p0

    .line 1075
    return-void

    .line 1072
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetFocus()V
    .registers 2

    .prologue
    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetFocus()V

    .line 1147
    monitor-exit p0

    .line 1150
    return-void

    .line 1147
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 1045
    monitor-enter p0

    .line 1046
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISheetFormat(IIIIIIII)V

    .line 1045
    monitor-exit p0

    .line 1048
    return-void

    .line 1045
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public ISheetFunction(I)V
    .registers 3
    .parameter "a_nFunctionIndex"

    .prologue
    .line 1050
    monitor-enter p0

    .line 1051
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetFunction(I)V

    .line 1050
    monitor-exit p0

    .line 1053
    return-void

    .line 1050
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetInputField(I)V
    .registers 3
    .parameter "a_bCancel"

    .prologue
    .line 1152
    monitor-enter p0

    .line 1153
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetInputField(I)V

    .line 1152
    monitor-exit p0

    .line 1155
    return-void

    .line 1152
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetInsertCell(II)V
    .registers 4
    .parameter "a_bInsert"
    .parameter "EEV_SHEET_ISERT_CELL"

    .prologue
    .line 1092
    monitor-enter p0

    .line 1093
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertCell(II)V

    .line 1092
    monitor-exit p0

    .line 1095
    return-void

    .line 1092
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
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
    .line 1169
    monitor-enter p0

    .line 1170
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertChart(ILcom/infraware/office/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1169
    monitor-exit p0

    .line 1172
    return-void

    .line 1169
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public ISheetInsertColumns(III)V
    .registers 5
    .parameter "a_bInsert"
    .parameter "a_nCount"
    .parameter "a_bAutoFit"

    .prologue
    .line 1102
    monitor-enter p0

    .line 1103
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertColumns(III)V

    .line 1102
    monitor-exit p0

    .line 1105
    return-void

    .line 1102
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetInsertRows(III)V
    .registers 5
    .parameter "a_bInsert"
    .parameter "a_nCount"
    .parameter "a_bAutoFit"

    .prologue
    .line 1097
    monitor-enter p0

    .line 1098
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertRows(III)V

    .line 1097
    monitor-exit p0

    .line 1100
    return-void

    .line 1097
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetMerge()V
    .registers 2

    .prologue
    .line 1157
    monitor-enter p0

    .line 1158
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetMerge()V

    .line 1157
    monitor-exit p0

    .line 1160
    return-void

    .line 1157
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetPageBreak()V
    .registers 2

    .prologue
    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetPageBreak()V

    .line 1077
    monitor-exit p0

    .line 1080
    return-void

    .line 1077
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetProtection()V
    .registers 2

    .prologue
    .line 1082
    monitor-enter p0

    .line 1083
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetProtection()V

    .line 1082
    monitor-exit p0

    .line 1085
    return-void

    .line 1082
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetRecalculate()V
    .registers 2

    .prologue
    .line 1055
    monitor-enter p0

    .line 1056
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetRecalculate()V

    .line 1055
    monitor-exit p0

    .line 1058
    return-void

    .line 1055
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetSetAlignment(II)V
    .registers 4
    .parameter "a_nHAlignment"
    .parameter "a_nVAlignment"

    .prologue
    .line 1039
    monitor-enter p0

    .line 1040
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISheetSetAlignment(II)V

    .line 1039
    monitor-exit p0

    .line 1042
    return-void

    .line 1039
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetSetColor(I)V
    .registers 3
    .parameter "a_lColor"

    .prologue
    .line 1034
    monitor-enter p0

    .line 1035
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetSetColor(I)V

    .line 1034
    monitor-exit p0

    .line 1037
    return-void

    .line 1034
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetSetRowColSize(III)V
    .registers 5
    .parameter "EV_GUI_EVENT"
    .parameter "a_nValue"
    .parameter "a_bAutoFit"

    .prologue
    .line 1132
    monitor-enter p0

    .line 1133
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetSetRowColSize(III)V

    .line 1132
    monitor-exit p0

    .line 1135
    return-void

    .line 1132
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetShowHideRowCol(III)V
    .registers 5
    .parameter "EEV_SHEET_SHOW_ROWCOL"
    .parameter "a_nValue"
    .parameter "a_bAutoFit"

    .prologue
    .line 1121
    monitor-enter p0

    .line 1122
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetShowHideRowCol(III)V

    .line 1121
    monitor-exit p0

    .line 1124
    return-void

    .line 1121
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISheetSort(IIII)V
    .registers 6
    .parameter "a_bSortByRow"
    .parameter "a_nKey1"
    .parameter "a_nKey2"
    .parameter "a_nKey3"

    .prologue
    .line 1137
    monitor-enter p0

    .line 1138
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->ISheetSort(IIII)V

    .line 1137
    monitor-exit p0

    .line 1140
    return-void

    .line 1137
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IShowHideImage(I)V
    .registers 3
    .parameter "EEV_WORD_SHOW_HIDE"

    .prologue
    .line 662
    monitor-enter p0

    .line 663
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IShowHideImage(I)V

    .line 662
    monitor-exit p0

    .line 665
    return-void

    .line 662
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISlideAddMove(III)V
    .registers 5
    .parameter "EV_SLIDE_ADD_TYPE"
    .parameter "a_nCurrentPageNumber"
    .parameter "EEV_SLIDE_TEMPLATE_TYPE"

    .prologue
    .line 801
    monitor-enter p0

    .line 802
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideAddMove(III)V

    .line 801
    monitor-exit p0

    .line 804
    return-void

    .line 801
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISlideNote(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageNum"

    .prologue
    .line 826
    monitor-enter p0

    .line 827
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideNote(III)V

    .line 826
    monitor-exit p0

    .line 829
    return-void

    .line 826
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISlideNoteInput(ILjava/lang/String;I)V
    .registers 5
    .parameter "a_nSlidePage"
    .parameter "a_pszSlideNote"
    .parameter "a_nLen"

    .prologue
    .line 831
    monitor-enter p0

    .line 832
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideNoteInput(ILjava/lang/String;I)V

    .line 831
    monitor-exit p0

    .line 834
    return-void

    .line 831
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISlideObjInsert(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageCnt"

    .prologue
    .line 851
    monitor-enter p0

    .line 852
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjInsert(III)V

    .line 851
    monitor-exit p0

    .line 854
    return-void

    .line 851
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISlideObjMasterLayout(II)V
    .registers 4
    .parameter "a_Width"
    .parameter "a_Height"

    .prologue
    .line 846
    monitor-enter p0

    .line 847
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISlideObjMasterLayout(II)V

    .line 846
    monitor-exit p0

    .line 849
    return-void

    .line 846
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISlideObjStart(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageCnt"

    .prologue
    .line 836
    monitor-enter p0

    .line 837
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjStart(III)V

    .line 836
    monitor-exit p0

    .line 839
    return-void

    .line 836
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISlideObjStartEx(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_PageNum"

    .prologue
    .line 841
    monitor-enter p0

    .line 842
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjStartEx(III)V

    .line 841
    monitor-exit p0

    .line 844
    return-void

    .line 841
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISlideShow(III)V
    .registers 5
    .parameter "a_Width"
    .parameter "a_Height"
    .parameter "a_StartPage"

    .prologue
    .line 821
    monitor-enter p0

    .line 822
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideShow(III)V

    .line 821
    monitor-exit p0

    .line 824
    return-void

    .line 821
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ITextPlay(IIII)V
    .registers 5
    .parameter "EEV_TEXTPLAY_TYPE"
    .parameter "a_bAction"
    .parameter "a_nSYPos"
    .parameter "a_nEYPos"

    .prologue
    .line 456
    return-void
.end method

.method public IThreadSuspend(I)V
    .registers 3
    .parameter "a_bSuspend"

    .prologue
    .line 470
    monitor-enter p0

    .line 471
    :try_start_1
    iput p1, p0, Lcom/infraware/office/evengine/EvCompInterface;->mbSuspend:I

    .line 472
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IThreadSuspend(I)V

    .line 470
    monitor-exit p0

    .line 474
    return-void

    .line 470
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public IThumbnail(IIIII)V
    .registers 12
    .parameter "EEV_THUMBNAIL_MODE_TYPE"
    .parameter "a_nPages"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nStartPage"

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IThumbnail(IIIII)V

    .line 333
    monitor-exit p0

    .line 336
    return-void

    .line 333
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public IZoomInOut(II)V
    .registers 4
    .parameter "a_bI"
    .parameter "EEV_KEY_TYPE"

    .prologue
    .line 179
    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IZoomInOut(II)V

    .line 179
    monitor-exit p0

    .line 182
    return-void

    .line 179
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IsStartOfSentence_Editor()I
    .registers 2

    .prologue
    .line 1289
    monitor-enter p0

    .line 1290
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IIsStartOfSentence_Editor()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1289
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected OnInitComplete(I)V
    .registers 2
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/infraware/office/evengine/EvInterface;->OnInitComplete(I)V

    .line 87
    return-void
.end method

.method OnPreviewTimerStart()V
    .registers 1

    .prologue
    .line 1433
    return-void
.end method

.method OnPreviewTimerStop()V
    .registers 1

    .prologue
    .line 1439
    return-void
.end method

.method OnTimerStart()V
    .registers 7

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    if-nez v0, :cond_25

    .line 41
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    .line 42
    new-instance v0, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;-><init>(Lcom/infraware/office/evengine/EvCompInterface;Z)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    .line 44
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 39
    :goto_23
    monitor-exit p0

    .line 50
    return-void

    .line 47
    :cond_25
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->setOperationTimer(Z)V

    goto :goto_23

    .line 39
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method OnTimerStop()V
    .registers 3

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_Timer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    if-eqz v0, :cond_f

    .line 56
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface;->m_TimerTask:Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->setOperationTimer(Z)V

    .line 54
    :cond_f
    monitor-exit p0

    .line 59
    return-void

    .line 54
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method
