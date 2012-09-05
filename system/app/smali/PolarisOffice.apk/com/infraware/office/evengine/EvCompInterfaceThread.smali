.class Lcom/infraware/office/evengine/EvCompInterfaceThread;
.super Lcom/infraware/office/evengine/EvInterface;
.source "EvCompInterfaceThread.java"

# interfaces
.implements Lcom/infraware/office/evengine/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;
    }
.end annotation


# instance fields
.field private m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/infraware/office/evengine/EvInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
    .registers 3
    .parameter "a_pClip"

    .prologue
    .line 1244
    monitor-enter p0

    .line 1245
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 1244
    monitor-exit p0

    .line 1247
    return-void

    .line 1244
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IApplyBookMark()V
    .registers 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvApplyBookMarkObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvApplyBookMarkObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 332
    return-void
.end method

.method public IBookMarkOnOff(I)V
    .registers 5
    .parameter "a_bOn"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvBookMarkOnOffObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1}, Lcom/infraware/office/evengine/EvBookMarkOnOffObj;-><init>(Lcom/infraware/office/evengine/EvNative;I)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 322
    return-void
.end method

.method public IBookmarkEditor(ILjava/lang/String;)V
    .registers 4
    .parameter "EEV_BOOKMARK_EDITOR_MODE"
    .parameter "a_pszBookmark"

    .prologue
    .line 675
    monitor-enter p0

    .line 676
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IBookmarkEditor(ILjava/lang/String;)V

    .line 675
    monitor-exit p0

    .line 678
    return-void

    .line 675
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
    .line 603
    monitor-enter p0

    .line 604
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IBulletNumbering(III)V

    .line 603
    monitor-exit p0

    .line 606
    return-void

    .line 603
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
    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, nRet:Z
    monitor-enter p0

    .line 928
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->ICanCellDelete()Z

    move-result v0

    .line 927
    monitor-exit p0

    .line 930
    return v0

    .line 927
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
    .line 1160
    monitor-enter p0

    .line 1161
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ICanExtendSortRange()I

    .line 1160
    monitor-exit p0

    .line 1163
    return-void

    .line 1160
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ICancel()V
    .registers 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvCancelObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvCancelObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 443
    return-void
.end method

.method public ICaretMark(II)V
    .registers 4
    .parameter "EEV_CARET_MARK"
    .parameter "nSelectMode"

    .prologue
    .line 598
    monitor-enter p0

    .line 599
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ICaretMark(II)V

    .line 598
    monitor-exit p0

    .line 601
    return-void

    .line 598
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
    .line 577
    monitor-enter p0

    .line 578
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICaretMove(III)V

    .line 577
    monitor-exit p0

    .line 580
    return-void

    .line 577
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
    .line 582
    monitor-enter p0

    .line 583
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ICaretShow(I)V

    .line 582
    monitor-exit p0

    .line 585
    return-void

    .line 582
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
    .line 660
    monitor-enter p0

    .line 661
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ICellInsertDelete(II)V

    .line 660
    monitor-exit p0

    .line 663
    return-void

    .line 660
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
    .line 665
    monitor-enter p0

    .line 666
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICellMergeSeparate(III)V

    .line 665
    monitor-exit p0

    .line 668
    return-void

    .line 665
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IChangeDisplay(I)V
    .registers 2
    .parameter "a_eType"

    .prologue
    .line 262
    return-void
.end method

.method public IChangeScreen(III)V
    .registers 7
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvChangeScreenObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/infraware/office/evengine/EvChangeScreenObj;-><init>(Lcom/infraware/office/evengine/EvNative;III)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 253
    return-void
.end method

.method public IChangeViewMode(IIII)V
    .registers 12
    .parameter "EEV_VIEW_MODE"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "bDraw"

    .prologue
    .line 472
    iget-object v6, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v0, Lcom/infraware/office/evengine/EvChangeViewMode;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/infraware/office/evengine/EvChangeViewMode;-><init>(Lcom/infraware/office/evengine/EvNative;IIII)V

    invoke-virtual {v6, v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 473
    return-void
.end method

.method public ICharInsert(III)V
    .registers 5
    .parameter "EEV_CHAR_IPUT"
    .parameter "a_wCode"
    .parameter "a_nRepeat"

    .prologue
    .line 655
    monitor-enter p0

    .line 656
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICharInsert(III)V

    .line 655
    monitor-exit p0

    .line 658
    return-void

    .line 655
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IClose()V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvCloseObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvCloseObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 158
    invoke-super {p0}, Lcom/infraware/office/evengine/EvInterface;->IClose()V

    .line 159
    return-void
.end method

.method public ICreateTable(III)V
    .registers 5
    .parameter "a_nRow"
    .parameter "a_nCol"
    .parameter "a_nColor"

    .prologue
    .line 554
    monitor-enter p0

    .line 555
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ICreateTable(III)V

    .line 554
    monitor-exit p0

    .line 557
    return-void

    .line 554
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
    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IDeleteBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 1250
    monitor-exit p0

    .line 1253
    return-void

    .line 1250
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
    .line 1450
    monitor-enter p0

    .line 1451
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IDeletePenDataForSlideShow()V

    .line 1450
    monitor-exit p0

    .line 1453
    return-void

    .line 1450
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IDocumentModified_Editor()Z
    .registers 3

    .prologue
    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, nRet:Z
    monitor-enter p0

    .line 918
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IDocumentModified()Z

    move-result v0

    .line 917
    monitor-exit p0

    .line 920
    return v0

    .line 917
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
    .line 521
    monitor-enter p0

    .line 522
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IEditDocument(IIILjava/lang/String;)V

    .line 521
    monitor-exit p0

    .line 524
    return-void

    .line 521
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
    .line 628
    monitor-enter p0

    .line 629
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IEditPageRedrawBitmap()V

    .line 628
    monitor-exit p0

    .line 631
    return-void

    .line 628
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
    .line 857
    monitor-enter p0

    .line 858
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IExitPreview()V

    .line 857
    monitor-exit p0

    .line 860
    return-void

    .line 857
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IFinalize()V
    .registers 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/infraware/office/evengine/EvCompInterfaceThread;->isInit()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 126
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvFinalizeObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvFinalizeObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 129
    :try_start_12
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->join()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_18

    .line 133
    :cond_17
    :goto_17
    return-void

    .line 130
    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public IFindWordNext(I)V
    .registers 5
    .parameter "a_bDirUp"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvFindWordNextObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1}, Lcom/infraware/office/evengine/EvFindWordNextObj;-><init>(Lcom/infraware/office/evengine/EvNative;I)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 378
    return-void
.end method

.method public IFindWordNextByPos(II)V
    .registers 6
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvFindWordNextByPosObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2}, Lcom/infraware/office/evengine/EvFindWordNextByPosObj;-><init>(Lcom/infraware/office/evengine/EvNative;II)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 383
    return-void
.end method

.method public IFindWordStart(II)V
    .registers 6
    .parameter "a_nXpos"
    .parameter "a_nYpos"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvFindWordStartObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2}, Lcom/infraware/office/evengine/EvFindWordStartObj;-><init>(Lcom/infraware/office/evengine/EvNative;II)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 373
    return-void
.end method

.method public IFindWordStop()V
    .registers 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvFindWordStopObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvFindWordStopObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 388
    return-void
.end method

.method public IFlick(II)V
    .registers 6
    .parameter "a_nVelocityX"
    .parameter "a_nVelocityY"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvFlickObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2}, Lcom/infraware/office/evengine/EvFlickObj;-><init>(Lcom/infraware/office/evengine/EvNative;II)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 184
    return-void
.end method

.method public IGetBWPCellStatusInfo()I
    .registers 2

    .prologue
    .line 1358
    monitor-enter p0

    .line 1359
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetBWPCellStatusInfo()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1358
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
    .line 904
    monitor-enter p0

    .line 905
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPGrapAttrInfo(Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;)V

    .line 904
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 907
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpGrapAttrInfo()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    return-object v0

    .line 904
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
    .line 892
    monitor-enter p0

    .line 893
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpOpInfo()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPOpInfo(Lcom/infraware/office/evengine/EV$BWP_OP_INFO;)V

    .line 892
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 895
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpOpInfo()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

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

.method public IGetBWPSplitCellMaxNum_Editor()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;
    .registers 3

    .prologue
    .line 898
    monitor-enter p0

    .line 899
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBWPSplitCellMaxNum(Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;)V

    .line 898
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 901
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBwpSplitCellMaxNum()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;

    move-result-object v0

    return-object v0

    .line 898
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
    .line 1239
    monitor-enter p0

    .line 1240
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetBookClipCount(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 1239
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
    .line 1234
    monitor-enter p0

    .line 1235
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetBookClipName(ILcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 1234
    monitor-exit p0

    .line 1237
    return-void

    .line 1234
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
    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, nCnt:I
    monitor-enter p0

    .line 979
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkCount_Editor()I

    move-result v0

    .line 978
    monitor-exit p0

    .line 981
    return v0

    .line 978
    :catchall_a
    move-exception v1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public IGetBookmarkInfo_Editor(I)Ljava/lang/String;
    .registers 4
    .parameter "nIndex"

    .prologue
    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 987
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkInfo_Editor(I)Ljava/lang/String;

    move-result-object v0

    .line 986
    monitor-exit p0

    .line 989
    return-object v0

    .line 986
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
    .line 862
    monitor-enter p0

    .line 863
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBookmarkLabel()Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBookmarkLabel(ILcom/infraware/office/evengine/EV$BOOKMARK_LABEL;)V

    .line 862
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 865
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBookmarkLabel()Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;

    move-result-object v0

    return-object v0

    .line 862
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
    .line 1222
    monitor-enter p0

    .line 1223
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiBorderEvent()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBorderProperty(Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;)V

    .line 1222
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 1225
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiBorderEvent()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    return-object v0

    .line 1222
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
    .line 956
    monitor-enter p0

    .line 957
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBulletType()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetBulletType(Lcom/infraware/office/evengine/EV$BULLET_TYPE;)V

    .line 956
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 959
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getBulletType()Lcom/infraware/office/evengine/EV$BULLET_TYPE;

    move-result-object v0

    return-object v0

    .line 956
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
    .line 1297
    monitor-enter p0

    .line 1298
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretAfterString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1297
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
    .line 1291
    monitor-enter p0

    .line 1292
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1291
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
    .line 883
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCaretInfoEvent()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;
    .registers 3

    .prologue
    .line 587
    monitor-enter p0

    .line 588
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCaretPos(Lcom/infraware/office/evengine/EV$CARET_POS;)V

    .line 587
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 590
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;

    move-result-object v0

    return-object v0

    .line 587
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
    .line 1461
    monitor-enter p0

    .line 1462
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCaretPos_Editor()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1461
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
    .registers 3

    .prologue
    .line 1177
    monitor-enter p0

    .line 1178
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getSheetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCellInfo(Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;)V

    .line 1177
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 1180
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getSheetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;

    move-result-object v0

    return-object v0

    .line 1177
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
    .line 962
    monitor-enter p0

    .line 963
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getCellProperty()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetCellProperty(Lcom/infraware/office/evengine/EV$CELL_PROPERTY;)V

    .line 962
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 965
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getCellProperty()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;

    move-result-object v0

    return-object v0

    .line 962
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
    .line 1352
    monitor-enter p0

    .line 1353
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCellType()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1352
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
    .line 1194
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiSheetChartEvent()Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;

    move-result-object v0

    .line 1195
    .local v0, chartInfo:Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;->clear()V

    .line 1196
    monitor-enter p0

    .line 1197
    :try_start_a
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvNative;->IGetChartInfo(Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;)V

    .line 1196
    monitor-exit p0

    .line 1199
    return-object v0

    .line 1196
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
    .line 1268
    monitor-enter p0

    .line 1269
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetColumn()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1268
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
    .line 446
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetCurrentSheetIndex()I
    .registers 2

    .prologue
    .line 1150
    monitor-enter p0

    .line 1151
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetCurrentSheetIndex()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1150
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
    .line 949
    const-wide/16 v0, 0x0

    .line 950
    .local v0, a_Status:J
    monitor-enter p0

    .line 951
    :try_start_3
    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvNative;->IGetEditStauts()J

    move-result-wide v0

    .line 950
    monitor-exit p0

    .line 953
    return-wide v0

    .line 950
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
    .line 923
    iget v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->mEditorMode:I

    return v0
.end method

.method public IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;
    .registers 3

    .prologue
    .line 886
    monitor-enter p0

    .line 887
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiFontEvent()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetFontAttInfo(Lcom/infraware/office/evengine/EV$FONT_INFO;)V

    .line 886
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 889
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiFontEvent()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v0

    return-object v0

    .line 886
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
    .line 1378
    invoke-static {}, Lcom/infraware/office/evengine/EvImageUtil;->getEvImageUtil()Lcom/infraware/office/evengine/EvImageUtil;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/infraware/office/evengine/EvImageUtil;->CreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1379
    .local v0, previewBitmap:Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 1380
    if-eqz v0, :cond_17

    .line 1381
    :try_start_b
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetFontPreview(Landroid/graphics/Bitmap;Lcom/infraware/office/evengine/EV$FONT_DATA;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1382
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1383
    const/4 v0, 0x0

    .line 1386
    :cond_17
    monitor-exit p0

    return-object v0

    .line 1379
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
    .line 1183
    monitor-enter p0

    .line 1184
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getSheetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetFormatInfo(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1183
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 1186
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getSheetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    return-object v0

    .line 1183
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
    .line 1280
    monitor-enter p0

    .line 1281
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/infraware/office/evengine/EvNative;->IGetHyperLinkInfoEx(IILcom/infraware/office/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1282
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    .line 1286
    :goto_18
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1284
    :cond_20
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    goto :goto_18

    .line 1280
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
    .line 933
    monitor-enter p0

    .line 934
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetHyperLinkInfo(Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 935
    monitor-exit p0

    const/4 v0, 0x0

    .line 937
    :goto_11
    return-object v0

    .line 933
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    .line 937
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getHyperLinkInfo()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    goto :goto_11

    .line 933
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
    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, nRet:I
    monitor-enter p0

    .line 842
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvNative;->IGetImageMaxSize(I)I

    move-result v0

    .line 841
    monitor-exit p0

    .line 844
    return v0

    .line 841
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
    .line 910
    monitor-enter p0

    .line 911
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetInvalidRect(Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;)V

    .line 910
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 913
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getInvalidDrawInfo()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;

    move-result-object v0

    return-object v0

    .line 910
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
    .line 1330
    const/4 v0, 0x0

    .line 1331
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1332
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetMarkString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    monitor-exit p0

    .line 1334
    return-object v0

    .line 1331
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
    .line 940
    monitor-enter p0

    .line 941
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetParaAttInfo(Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;)Z

    .line 940
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 943
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getGuiSetParaAttEvent()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;

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

.method public IGetProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;
    .registers 3

    .prologue
    .line 451
    monitor-enter p0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->IGetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    .line 451
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14

    .line 454
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;

    move-result-object v0

    return-object v0

    .line 451
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
    .line 1364
    monitor-enter p0

    .line 1365
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetProtectStatus()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1364
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
    .line 837
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getScreenInfo()Lcom/infraware/office/evengine/EV$SCREEN_INFO;

    move-result-object v0

    return-object v0
.end method

.method public IGetScrollInfo_Editor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->getScrollInfoEditor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;

    move-result-object v0

    return-object v0
.end method

.method public IGetSeparateMarkString_Editor()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1322
    const/4 v0, 0x0

    .line 1323
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1324
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v0

    .line 1323
    monitor-exit p0

    .line 1326
    return-object v0

    .line 1323
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
    .line 1145
    monitor-enter p0

    .line 1146
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSheetCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1145
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
    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V

    .line 1189
    monitor-exit p0

    .line 1192
    return-void

    .line 1189
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
    .line 1155
    monitor-enter p0

    .line 1156
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSheetNameList()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1155
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
    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 971
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvNative;->IGetSlideNoteString(I)Ljava/lang/String;

    move-result-object v0

    .line 970
    monitor-exit p0

    .line 973
    return-object v0

    .line 970
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
    .line 1166
    monitor-enter p0

    .line 1167
    :try_start_1
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetSortRange(Lcom/infraware/office/evengine/EV$RANGE;I)I

    move-result v0

    .line 1166
    .local v0, nRet:I
    monitor-exit p0

    .line 1169
    return v0

    .line 1166
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
    .line 1212
    monitor-enter p0

    .line 1213
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSystemFontCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1212
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
    .line 1217
    monitor-enter p0

    .line 1218
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetSystemFontNames()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1217
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
    .line 1346
    monitor-enter p0

    .line 1347
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IGetTextToSpeachString(III)V

    .line 1346
    monitor-exit p0

    .line 1349
    return-void

    .line 1346
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
    .line 1338
    const/4 v0, 0x0

    .line 1339
    .local v0, strTemp:Ljava/lang/String;
    monitor-enter p0

    .line 1340
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IGetTouchString(II)Ljava/lang/String;

    move-result-object v0

    .line 1339
    monitor-exit p0

    .line 1342
    return-object v0

    .line 1339
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
    .line 1202
    monitor-enter p0

    .line 1203
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetUseFontCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1202
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
    .line 1207
    monitor-enter p0

    .line 1208
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1207
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
    .line 645
    monitor-enter p0

    .line 646
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IHIDAction(IIII)V

    .line 645
    monitor-exit p0

    .line 648
    return-void

    .line 645
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
    .line 1417
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IHTCClearAll()V

    .line 1418
    return-void
.end method

.method public IHTCSetPenColor(I)V
    .registers 3
    .parameter "aPenColor"

    .prologue
    .line 1422
    monitor-enter p0

    .line 1423
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenColor(I)V

    .line 1422
    monitor-exit p0

    .line 1425
    return-void

    .line 1422
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IHTCSetPenMode(I)V
    .registers 3
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    .line 1410
    monitor-enter p0

    .line 1411
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenMode(I)V

    .line 1410
    monitor-exit p0

    .line 1413
    return-void

    .line 1410
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IHTCSetPenPosition([I[II)V
    .registers 5
    .parameter "a_pX"
    .parameter "a_pY"
    .parameter "nCnt"

    .prologue
    .line 1436
    monitor-enter p0

    .line 1437
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenPosition([I[II)V

    .line 1436
    monitor-exit p0

    .line 1439
    return-void

    .line 1436
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IHTCSetPenSize(I)V
    .registers 3
    .parameter "aPenSize"

    .prologue
    .line 1429
    monitor-enter p0

    .line 1430
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IHTCSetPenSize(I)V

    .line 1429
    monitor-exit p0

    .line 1432
    return-void

    .line 1429
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IHyperLink(III)V
    .registers 7
    .parameter "a_eType"
    .parameter "a_nXPos"
    .parameter "a_nYPos"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvHyperLinkObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/infraware/office/evengine/EvHyperLinkObj;-><init>(Lcom/infraware/office/evengine/EvNative;III)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 353
    return-void
.end method

.method public IHyperLinkEnd()V
    .registers 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvHyperLinkEndObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvHyperLinkEndObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 358
    return-void
.end method

.method public IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "a_pszHyperText"
    .parameter "a_pszHyperLink"

    .prologue
    .line 680
    monitor-enter p0

    .line 681
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    monitor-exit p0

    .line 683
    return-void

    .line 680
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
    .line 608
    monitor-enter p0

    .line 609
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V

    .line 608
    monitor-exit p0

    .line 611
    return-void

    .line 608
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
    .line 670
    monitor-enter p0

    .line 671
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IIndentation(I)V

    .line 670
    monitor-exit p0

    .line 673
    return-void

    .line 670
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IInitialize(III)V
    .registers 15
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nDpi"

    .prologue
    const/4 v5, 0x1

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/evengine/EvInterface;->IInitialize(III)V

    .line 115
    invoke-virtual {p0}, Lcom/infraware/office/evengine/EvCompInterfaceThread;->isInit()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 117
    new-instance v0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    invoke-direct {v0, p0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;-><init>(Lcom/infraware/office/evengine/EvCompInterfaceThread;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    .line 118
    iget-object v10, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v0, Lcom/infraware/office/evengine/EvInitializeObj;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    const/16 v4, 0x8

    const/16 v7, 0x10

    const/4 v8, 0x0

    move v2, p1

    move v3, p2

    move v6, v5

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/infraware/office/evengine/EvInitializeObj;-><init>(Lcom/infraware/office/evengine/EvNative;IIIIIIII)V

    invoke-virtual {v10, v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 119
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->start()V

    .line 121
    :cond_2b
    return-void
.end method

.method public IInputChar(I)V
    .registers 3
    .parameter "a_wCode"

    .prologue
    .line 568
    monitor-enter p0

    .line 569
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IInputChar(I)V

    .line 568
    monitor-exit p0

    .line 571
    return-void

    .line 568
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
    .line 787
    monitor-enter p0

    .line 788
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IInsertShape(I)V

    .line 787
    monitor-exit p0

    .line 790
    return-void

    .line 787
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
    .line 613
    monitor-enter p0

    .line 614
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->IInsertString(Ljava/lang/String;III)V

    .line 613
    monitor-exit p0

    .line 616
    return-void

    .line 613
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
    .line 777
    monitor-enter p0

    .line 778
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IInsertTextBox()V

    .line 777
    monitor-exit p0

    .line 780
    return-void

    .line 777
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
    .line 1370
    const/4 v0, 0x0

    .line 1371
    .local v0, nRet:Z
    monitor-enter p0

    .line 1372
    :try_start_2
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->IIsComplexColumn()Z

    move-result v0

    .line 1371
    monitor-exit p0

    .line 1374
    return v0

    .line 1371
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
    .line 1443
    monitor-enter p0

    .line 1444
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IIsPenDataForSlideShow()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1443
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public IMemo(ILjava/lang/String;IIIII)V
    .registers 8
    .parameter "a_eMemoType"
    .parameter "a_sText"
    .parameter "a_nSelIndex"
    .parameter "a_nXpos"
    .parameter "a_nYpos"
    .parameter "a_nIconW"
    .parameter "a_nIconH"

    .prologue
    .line 405
    return-void
.end method

.method public IMovePage(II)V
    .registers 6
    .parameter "a_eMoveType"
    .parameter "a_nPage"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvMovePageObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2}, Lcom/infraware/office/evengine/EvMovePageObj;-><init>(Lcom/infraware/office/evengine/EvNative;II)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 169
    return-void
.end method

.method public INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .parameter "a_pszFilePath"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "a_eLoadType"
    .parameter "EEV_SLIDE_TEMPLATE_TYPE"
    .parameter "a_nLocale"
    .parameter "bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"
    .parameter "a_sBookClipPath"

    .prologue
    .line 506
    monitor-enter p0

    .line 507
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 506
    monitor-exit p0

    .line 509
    return-void

    .line 506
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 30
    .parameter "a_sFilePath"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_eLoadType"
    .parameter "a_nLocale"
    .parameter "a_bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"
    .parameter "a_sBookClipPath"

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    move-object/from16 v19, v0

    new-instance v1, Lcom/infraware/office/evengine/EvOpenObj;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    invoke-direct/range {v1 .. v18}, Lcom/infraware/office/evengine/EvOpenObj;-><init>(Lcom/infraware/office/evengine/EvNative;Ljava/lang/String;IIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 147
    return-void
.end method

.method public IOpenEx(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "a_sFilePath"
    .parameter "a_sPassword"
    .parameter "a_nLocale"
    .parameter "a_bLandScape"
    .parameter "a_sTempPath"
    .parameter "a_sBookMarkPath"
    .parameter "a_sBookClipPath"

    .prologue
    .line 153
    return-void
.end method

.method public IParagraphAlign(I)V
    .registers 3
    .parameter "EEV_PARAGRAPH_ALIGN"

    .prologue
    .line 618
    monitor-enter p0

    .line 619
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IParagraphAlign(I)V

    .line 618
    monitor-exit p0

    .line 621
    return-void

    .line 618
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IPivotScreen(III)V
    .registers 7
    .parameter "bLandScape"
    .parameter "a_nWidth"
    .parameter "a_nHeight"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvPivotScreenObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/infraware/office/evengine/EvPivotScreenObj;-><init>(Lcom/infraware/office/evengine/EvNative;III)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 267
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
    .line 685
    monitor-enter p0

    .line 686
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->IPopupOffset(IIIII)V

    .line 685
    monitor-exit p0

    .line 688
    return-void

    .line 685
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public IPrint(IIILjava/lang/String;)V
    .registers 5
    .parameter "a_ePaperType"
    .parameter "a_nStartPage"
    .parameter "a_nEndPage"
    .parameter "a_sFilePath"

    .prologue
    .line 433
    return-void
.end method

.method public IReDraw()V
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvRedrawObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvRedrawObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 234
    return-void
.end method

.method public IRedoUndo(I)V
    .registers 3
    .parameter "EEV_REDO_UNDO"

    .prologue
    .line 563
    monitor-enter p0

    .line 564
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IRedoUndo(I)V

    .line 563
    monitor-exit p0

    .line 566
    return-void

    .line 563
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
    .line 1391
    monitor-enter p0

    .line 1392
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IReleaseFontPreview()V

    .line 1391
    monitor-exit p0

    .line 1394
    return-void

    .line 1391
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IRemoveAllBookMark()V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvRemoveAllBookMarkObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvRemoveAllBookMarkObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 342
    return-void
.end method

.method public IRemoveBookMark(Ljava/lang/String;)V
    .registers 5
    .parameter "a_sFilePath"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvRemoveBookMarkObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1}, Lcom/infraware/office/evengine/EvRemoveBookMarkObj;-><init>(Lcom/infraware/office/evengine/EvNative;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 337
    return-void
.end method

.method public IRotate(II)V
    .registers 6
    .parameter "a_eRotateType"
    .parameter "a_nAngle"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvRotateObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2}, Lcom/infraware/office/evengine/EvRotateObj;-><init>(Lcom/infraware/office/evengine/EvNative;II)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 226
    return-void
.end method

.method public ISaveBookMark()V
    .registers 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvSaveBookMarkObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvSaveBookMarkObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 327
    return-void
.end method

.method public ISaveDocument(Ljava/lang/String;)V
    .registers 3
    .parameter "a_pszFilePath"

    .prologue
    .line 511
    monitor-enter p0

    .line 512
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISaveDocument(Ljava/lang/String;)V

    .line 511
    monitor-exit p0

    .line 514
    return-void

    .line 511
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public IScreenCaptureModeOnOff(I)V
    .registers 2
    .parameter "a_bOn"

    .prologue
    .line 276
    return-void
.end method

.method public IScroll(IIIII)V
    .registers 14
    .parameter "EEV_SCROLL_COMMAND_TYPE"
    .parameter "a_eFactor"
    .parameter "a_nOffsetX"
    .parameter "a_nOffsetY"
    .parameter "a_eKey"

    .prologue
    .line 215
    iget-object v7, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v0, Lcom/infraware/office/evengine/EvScrollObj;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/infraware/office/evengine/EvScrollObj;-><init>(Lcom/infraware/office/evengine/EvNative;IIIII)V

    invoke-virtual {v7, v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 216
    return-void
.end method

.method public ISearchStart(Ljava/lang/String;IIII)V
    .registers 14
    .parameter "a_sFind"
    .parameter "a_bMatchWord"
    .parameter "a_bCase"
    .parameter "a_bDirUp"
    .parameter "a_bFixedZoom"

    .prologue
    .line 362
    iget-object v7, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v0, Lcom/infraware/office/evengine/EvSearchStartObj;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/infraware/office/evengine/EvSearchStartObj;-><init>(Lcom/infraware/office/evengine/EvNative;Ljava/lang/String;IIII)V

    invoke-virtual {v7, v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 363
    return-void
.end method

.method public ISearchStop()V
    .registers 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvSearchStopObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2}, Lcom/infraware/office/evengine/EvSearchStopObj;-><init>(Lcom/infraware/office/evengine/EvNative;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 368
    return-void
.end method

.method public ISelectAll()V
    .registers 2

    .prologue
    .line 734
    monitor-enter p0

    .line 735
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISelectAll()V

    .line 734
    monitor-exit p0

    .line 737
    return-void

    .line 734
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
    .line 993
    monitor-enter p0

    .line 994
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISellectAll()V

    .line 993
    monitor-exit p0

    .line 996
    return-void

    .line 993
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
    .line 1229
    monitor-enter p0

    .line 1230
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 1229
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
    .line 868
    monitor-enter p0

    .line 869
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetBookmarkLabel(Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;I)V

    .line 868
    monitor-exit p0

    .line 871
    return-void

    .line 868
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
    .line 755
    monitor-enter p0

    .line 756
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 755
    monitor-exit p0

    .line 758
    return-void

    .line 755
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
    .line 761
    monitor-enter p0

    .line 762
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISetColors(III)V

    .line 761
    monitor-exit p0

    .line 764
    return-void

    .line 761
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
    .line 1262
    monitor-enter p0

    .line 1263
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetColumn(II)V

    .line 1262
    monitor-exit p0

    .line 1265
    return-void

    .line 1262
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
    .line 1274
    monitor-enter p0

    .line 1275
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 1274
    monitor-exit p0

    .line 1277
    return-void

    .line 1274
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
    .line 534
    monitor-enter p0

    .line 535
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 534
    monitor-exit p0

    .line 537
    return-void

    .line 534
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public ISetHeapSize(I)V
    .registers 4
    .parameter "a_nHeapSize"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    monitor-enter v1

    .line 85
    :try_start_3
    invoke-super {p0, p1}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 86
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetHeapSize(I)V

    .line 84
    monitor-exit v1

    .line 88
    return-void

    .line 84
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public ISetLineShape(IIII)V
    .registers 6
    .parameter "EEV_BORDER_STYLE"
    .parameter "a_LineThickness"
    .parameter "EEV_LIE_ARROW_TYPE"
    .parameter "a_LineColor"

    .prologue
    .line 744
    monitor-enter p0

    .line 745
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->ISetLineShape(IIII)V

    .line 744
    monitor-exit p0

    .line 747
    return-void

    .line 744
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
    .line 739
    monitor-enter p0

    .line 740
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetLineSpace(I)V

    .line 739
    monitor-exit p0

    .line 742
    return-void

    .line 739
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
    .line 97
    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->SetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 97
    monitor-exit p0

    .line 100
    return-void

    .line 97
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
    .line 623
    monitor-enter p0

    .line 624
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetModeStatus(I)V

    .line 623
    monitor-exit p0

    .line 626
    return-void

    .line 623
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
    .line 832
    monitor-enter p0

    .line 833
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetObjDelete()V

    .line 832
    monitor-exit p0

    .line 835
    return-void

    .line 832
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
    .line 878
    monitor-enter p0

    .line 879
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetObjPos(I)V

    .line 878
    monitor-exit p0

    .line 881
    return-void

    .line 878
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
    .line 873
    monitor-enter p0

    .line 874
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetObjResize(II)V

    .line 873
    monitor-exit p0

    .line 876
    return-void

    .line 873
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
    .line 827
    monitor-enter p0

    .line 828
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetObjTextEdit()V

    .line 827
    monitor-exit p0

    .line 830
    return-void

    .line 827
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
    .line 549
    monitor-enter p0

    .line 550
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 549
    monitor-exit p0

    .line 552
    return-void

    .line 549
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public ISetPageMap(IIIIII)V
    .registers 16
    .parameter "EEV_PAGEMAP_COMMAND_TYPE"
    .parameter "a_bDrawContents"
    .parameter "EEV_PAGEMAP_POSITION_TYPE"
    .parameter "a_bGenerateDrawEvt"
    .parameter "a_nRowMargin"
    .parameter "a_nColMargin"

    .prologue
    .line 299
    iget-object v8, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v0, Lcom/infraware/office/evengine/EvSetPageMapObj;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/infraware/office/evengine/EvSetPageMapObj;-><init>(Lcom/infraware/office/evengine/EvNative;IIIIII)V

    invoke-virtual {v8, v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 300
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
    .line 702
    monitor-enter p0

    .line 703
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

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

    .line 702
    monitor-exit p0

    .line 716
    return-void

    .line 702
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
    .line 847
    monitor-enter p0

    .line 848
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    const/16 v3, 0x10

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISetPreview(IIILjava/lang/String;I)V

    .line 847
    monitor-exit p0

    .line 850
    return-void

    .line 847
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
    .line 852
    monitor-enter p0

    .line 853
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetPreviewTimerCB()V

    .line 852
    monitor-exit p0

    .line 855
    return-void

    .line 852
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
    .line 1304
    monitor-enter p0

    .line 1305
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvNative;->ISetPrint(IIILjava/lang/String;I)V

    .line 1304
    monitor-exit p0

    .line 1307
    return-void

    .line 1304
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
    .line 1310
    monitor-enter p0

    .line 1311
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1310
    monitor-exit p0

    .line 1313
    return-void

    .line 1310
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
    .line 729
    monitor-enter p0

    .line 730
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetPrintMode()V

    .line 729
    monitor-exit p0

    .line 732
    return-void

    .line 729
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
    .line 459
    monitor-enter p0

    .line 460
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    .line 459
    monitor-exit p0

    .line 462
    return-void

    .line 459
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
    .line 719
    monitor-enter p0

    .line 720
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    .line 719
    monitor-exit p0

    .line 722
    return-void

    .line 719
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
    .line 782
    monitor-enter p0

    .line 783
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetScreenMode(I)V

    .line 782
    monitor-exit p0

    .line 785
    return-void

    .line 782
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
    .line 1172
    monitor-enter p0

    .line 1173
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetSortRange(Lcom/infraware/office/evengine/EV$RANGE;)V

    .line 1172
    monitor-exit p0

    .line 1175
    return-void

    .line 1172
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
    .line 749
    monitor-enter p0

    .line 750
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISetTemplateShape(II)V

    .line 749
    monitor-exit p0

    .line 752
    return-void

    .line 749
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
    .line 1316
    monitor-enter p0

    .line 1317
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISetThumbnailByPrint(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 1316
    monitor-exit p0

    .line 1319
    return-void

    .line 1316
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public ISetViewMode(I)V
    .registers 5
    .parameter "a_eViewMode"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvSetViewModeObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1}, Lcom/infraware/office/evengine/EvSetViewModeObj;-><init>(Lcom/infraware/office/evengine/EvNative;I)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 243
    return-void
.end method

.method public ISetWebMode()V
    .registers 2

    .prologue
    .line 724
    monitor-enter p0

    .line 725
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetWebMode()V

    .line 724
    monitor-exit p0

    .line 727
    return-void

    .line 724
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
    .line 1468
    monitor-enter p0

    .line 1469
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetWritePassword(Ljava/lang/String;)V

    .line 1468
    monitor-exit p0

    .line 1471
    return-void

    .line 1468
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ISetZoom(IIIIIIIIIII)V
    .registers 26
    .parameter "a_eZoomType"
    .parameter "a_nScale"
    .parameter "a_nSx"
    .parameter "a_nSy"
    .parameter "a_nEx"
    .parameter "a_nEy"
    .parameter "a_eKey"
    .parameter "a_bStep"
    .parameter "a_bHaveZoomCenter"
    .parameter "a_nZoomCenterX"
    .parameter "a_nZoomCenterY"

    .prologue
    .line 202
    iget-object v13, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v0, Lcom/infraware/office/evengine/EvSetZoomObj;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/infraware/office/evengine/EvSetZoomObj;-><init>(Lcom/infraware/office/evengine/EvNative;IIIIIIIIIII)V

    invoke-virtual {v13, v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 203
    return-void
.end method

.method public ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V
    .registers 3
    .parameter "a_pInfo"

    .prologue
    .line 1140
    monitor-enter p0

    .line 1141
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V

    .line 1140
    monitor-exit p0

    .line 1143
    return-void

    .line 1140
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
    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetClear(I)V

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

.method public ISheetEdit(ILjava/lang/String;IIII)V
    .registers 14
    .parameter "EEV_SHEET_EDIT"
    .parameter "a_szSheetName"
    .parameter "a_nSheetIndex"
    .parameter "a_nSheets"
    .parameter "a_nMoveIndex"
    .parameter "a_bCopy"

    .prologue
    .line 1033
    monitor-enter p0

    .line 1034
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 1033
    monitor-exit p0

    .line 1036
    return-void

    .line 1033
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
    .line 1108
    monitor-enter p0

    .line 1109
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1108
    monitor-exit p0

    .line 1111
    return-void

    .line 1108
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
    .line 1038
    monitor-enter p0

    .line 1039
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetFixFrame()V

    .line 1038
    monitor-exit p0

    .line 1041
    return-void

    .line 1038
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
    .line 1113
    monitor-enter p0

    .line 1114
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetFocus()V

    .line 1113
    monitor-exit p0

    .line 1116
    return-void

    .line 1113
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
    .line 1011
    monitor-enter p0

    .line 1012
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISheetFormat(IIIIIIII)V

    .line 1011
    monitor-exit p0

    .line 1014
    return-void

    .line 1011
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
    .line 1016
    monitor-enter p0

    .line 1017
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetFunction(I)V

    .line 1016
    monitor-exit p0

    .line 1019
    return-void

    .line 1016
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
    .line 1118
    monitor-enter p0

    .line 1119
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetInputField(I)V

    .line 1118
    monitor-exit p0

    .line 1121
    return-void

    .line 1118
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
    .line 1058
    monitor-enter p0

    .line 1059
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertCell(II)V

    .line 1058
    monitor-exit p0

    .line 1061
    return-void

    .line 1058
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
    .line 1135
    monitor-enter p0

    .line 1136
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertChart(ILcom/infraware/office/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1135
    monitor-exit p0

    .line 1138
    return-void

    .line 1135
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
    .line 1068
    monitor-enter p0

    .line 1069
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertColumns(III)V

    .line 1068
    monitor-exit p0

    .line 1071
    return-void

    .line 1068
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
    .line 1063
    monitor-enter p0

    .line 1064
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetInsertRows(III)V

    .line 1063
    monitor-exit p0

    .line 1066
    return-void

    .line 1063
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
    .line 1123
    monitor-enter p0

    .line 1124
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetMerge()V

    .line 1123
    monitor-exit p0

    .line 1126
    return-void

    .line 1123
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
    .line 1043
    monitor-enter p0

    .line 1044
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetPageBreak()V

    .line 1043
    monitor-exit p0

    .line 1046
    return-void

    .line 1043
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
    .line 1048
    monitor-enter p0

    .line 1049
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetProtection()V

    .line 1048
    monitor-exit p0

    .line 1051
    return-void

    .line 1048
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
    .line 1021
    monitor-enter p0

    .line 1022
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISheetRecalculate()V

    .line 1021
    monitor-exit p0

    .line 1024
    return-void

    .line 1021
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
    .line 1005
    monitor-enter p0

    .line 1006
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISheetSetAlignment(II)V

    .line 1005
    monitor-exit p0

    .line 1008
    return-void

    .line 1005
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
    .line 1000
    monitor-enter p0

    .line 1001
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISheetSetColor(I)V

    .line 1000
    monitor-exit p0

    .line 1003
    return-void

    .line 1000
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
    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetSetRowColSize(III)V

    .line 1098
    monitor-exit p0

    .line 1101
    return-void

    .line 1098
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
    .line 1087
    monitor-enter p0

    .line 1088
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISheetShowHideRowCol(III)V

    .line 1087
    monitor-exit p0

    .line 1090
    return-void

    .line 1087
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
    .line 1103
    monitor-enter p0

    .line 1104
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/infraware/office/evengine/EvNative;->ISheetSort(IIII)V

    .line 1103
    monitor-exit p0

    .line 1106
    return-void

    .line 1103
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
    .line 633
    monitor-enter p0

    .line 634
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->IShowHideImage(I)V

    .line 633
    monitor-exit p0

    .line 636
    return-void

    .line 633
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
    .line 772
    monitor-enter p0

    .line 773
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideAddMove(III)V

    .line 772
    monitor-exit p0

    .line 775
    return-void

    .line 772
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
    .line 797
    monitor-enter p0

    .line 798
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideNote(III)V

    .line 797
    monitor-exit p0

    .line 800
    return-void

    .line 797
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
    .line 802
    monitor-enter p0

    .line 803
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideNoteInput(ILjava/lang/String;I)V

    .line 802
    monitor-exit p0

    .line 805
    return-void

    .line 802
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
    .line 822
    monitor-enter p0

    .line 823
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjInsert(III)V

    .line 822
    monitor-exit p0

    .line 825
    return-void

    .line 822
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
    .line 817
    monitor-enter p0

    .line 818
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/evengine/EvNative;->ISlideObjMasterLayout(II)V

    .line 817
    monitor-exit p0

    .line 820
    return-void

    .line 817
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
    .line 807
    monitor-enter p0

    .line 808
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjStart(III)V

    .line 807
    monitor-exit p0

    .line 810
    return-void

    .line 807
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
    .line 812
    monitor-enter p0

    .line 813
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideObjStartEx(III)V

    .line 812
    monitor-exit p0

    .line 815
    return-void

    .line 812
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
    .line 792
    monitor-enter p0

    .line 793
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/infraware/office/evengine/EvNative;->ISlideShow(III)V

    .line 792
    monitor-exit p0

    .line 795
    return-void

    .line 792
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public ITextPlay(IIII)V
    .registers 5
    .parameter "a_ePlayType"
    .parameter "a_bAction"
    .parameter "a_nSYPos"
    .parameter "a_nEYPos"

    .prologue
    .line 419
    return-void
.end method

.method public IThreadSuspend(I)V
    .registers 5
    .parameter "a_bSuspend"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvThreadSuspendObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1}, Lcom/infraware/office/evengine/EvThreadSuspendObj;-><init>(Lcom/infraware/office/evengine/EvNative;I)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 438
    return-void
.end method

.method public IThumbnail(IIIII)V
    .registers 14
    .parameter "a_eMode"
    .parameter "a_nPages"
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nStartPage"

    .prologue
    .line 316
    iget-object v7, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v0, Lcom/infraware/office/evengine/EvThumbnailObj;

    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/infraware/office/evengine/EvThumbnailObj;-><init>(Lcom/infraware/office/evengine/EvNative;IIIII)V

    invoke-virtual {v7, v0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 317
    return-void
.end method

.method public IZoomInOut(II)V
    .registers 6
    .parameter "a_bI"
    .parameter "a_eKey"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    new-instance v1, Lcom/infraware/office/evengine/EvZoomInOutObj;

    iget-object v2, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v1, v2, p1, p2}, Lcom/infraware/office/evengine/EvZoomInOutObj;-><init>(Lcom/infraware/office/evengine/EvNative;II)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setTask(Lcom/infraware/office/evengine/EvTaskObj;)V

    .line 179
    return-void
.end method

.method public IsStartOfSentence_Editor()I
    .registers 2

    .prologue
    .line 1256
    monitor-enter p0

    .line 1257
    :try_start_1
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->IIsStartOfSentence_Editor()I

    move-result v0

    monitor-exit p0

    return v0

    .line 1256
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
    .line 108
    invoke-super {p0, p1}, Lcom/infraware/office/evengine/EvInterface;->OnInitComplete(I)V

    .line 109
    return-void
.end method

.method OnPreviewTimerStart()V
    .registers 1

    .prologue
    .line 1400
    return-void
.end method

.method OnPreviewTimerStop()V
    .registers 1

    .prologue
    .line 1406
    return-void
.end method

.method OnTimerStart()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setMbTimer(Z)V

    return-void
.end method

.method OnTimerStop()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread;->m_thread:Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->setMbTimer(Z)V

    return-void
.end method
