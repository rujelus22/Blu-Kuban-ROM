.class public abstract Lcom/infraware/office/evengine/EvInterface;
.super Ljava/lang/Object;
.source "EvInterface.java"

# interfaces
.implements Lcom/infraware/office/evengine/E;
.implements Lcom/infraware/office/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/office/evengine/E$EV_DOCEXTENSION_TYPE;


# static fields
.field protected static mInterface:Lcom/infraware/office/evengine/EvInterface;


# instance fields
.field protected Ev:Lcom/infraware/office/evengine/EV;

.field protected Native:Lcom/infraware/office/evengine/EvNative;

.field protected mEditorMode:I

.field protected mHeapSize:I

.field protected mbInit:Z

.field protected mbSuspend:I


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x23

    iput v0, p0, Lcom/infraware/office/evengine/EvInterface;->mHeapSize:I

    .line 14
    iput-boolean v1, p0, Lcom/infraware/office/evengine/EvInterface;->mbInit:Z

    .line 15
    iput v1, p0, Lcom/infraware/office/evengine/EvInterface;->mbSuspend:I

    .line 16
    iput v1, p0, Lcom/infraware/office/evengine/EvInterface;->mEditorMode:I

    .line 20
    new-instance v0, Lcom/infraware/office/evengine/EV;

    invoke-direct {v0}, Lcom/infraware/office/evengine/EV;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Ev:Lcom/infraware/office/evengine/EV;

    .line 21
    new-instance v0, Lcom/infraware/office/evengine/EvNative;

    invoke-direct {v0, p0}, Lcom/infraware/office/evengine/EvNative;-><init>(Lcom/infraware/office/evengine/EvInterface;)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    .line 22
    return-void
.end method

.method public static getInterface()Lcom/infraware/office/evengine/EvInterface;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/infraware/office/evengine/EvInterface;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;

    invoke-direct {v0}, Lcom/infraware/office/evengine/EvCompInterfaceMsg;-><init>()V

    sput-object v0, Lcom/infraware/office/evengine/EvInterface;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 35
    :cond_b
    sget-object v0, Lcom/infraware/office/evengine/EvInterface;->mInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method


# virtual methods
.method public EV()Lcom/infraware/office/evengine/EV;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Ev:Lcom/infraware/office/evengine/EV;

    return-object v0
.end method

.method public abstract IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
.end method

.method public abstract IApplyBookMark()V
.end method

.method public abstract IBookMarkOnOff(I)V
.end method

.method public abstract IBookmarkEditor(ILjava/lang/String;)V
.end method

.method public abstract IBulletNumbering(III)V
.end method

.method public abstract ICanCellDelete_Editor()Z
.end method

.method public abstract ICanExtendSortRange()V
.end method

.method public abstract ICancel()V
.end method

.method public abstract ICaretMark(II)V
.end method

.method public abstract ICaretMove(III)V
.end method

.method public abstract ICaretShow(I)V
.end method

.method public abstract ICellInsertDelete(II)V
.end method

.method public abstract ICellMergeSeparate(III)V
.end method

.method public abstract IChangeDisplay(I)V
.end method

.method public abstract IChangeScreen(III)V
.end method

.method public abstract IChangeViewMode(IIII)V
.end method

.method public abstract ICharInsert(III)V
.end method

.method public IClose()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvNative;->SetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 130
    iget-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Ev:Lcom/infraware/office/evengine/EV;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EV;->clear()V

    .line 131
    return-void
.end method

.method public abstract ICreateTable(III)V
.end method

.method public abstract IDeleteBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V
.end method

.method public abstract IDeletePenDataForSlideShow()V
.end method

.method public abstract IDocumentModified_Editor()Z
.end method

.method public abstract IEditDocument(IIILjava/lang/String;)V
.end method

.method public abstract IEditPageRedrawBitmap()V
.end method

.method public abstract IExitPreview()V
.end method

.method public abstract IFinalize()V
.end method

.method public abstract IFindWordNext(I)V
.end method

.method public abstract IFindWordNextByPos(II)V
.end method

.method public abstract IFindWordStart(II)V
.end method

.method public abstract IFindWordStop()V
.end method

.method public abstract IFlick(II)V
.end method

.method public abstract IGetBWPCellStatusInfo()I
.end method

.method public abstract IGetBWPGrapAttrInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
.end method

.method public abstract IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
.end method

.method public abstract IGetBWPSplitCellMaxNum_Editor()Lcom/infraware/office/evengine/EV$BWP_SPLITCELL_MAXNUM;
.end method

.method public abstract IGetBookClipCount(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I
.end method

.method public abstract IGetBookClipName(ILcom/infraware/office/evengine/EV$BOOK_CLIP;)V
.end method

.method public abstract IGetBookmarkCount_Editor()I
.end method

.method public abstract IGetBookmarkInfo_Editor(I)Ljava/lang/String;
.end method

.method public abstract IGetBookmarkLabel(I)Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;
.end method

.method public abstract IGetBorderProperty()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
.end method

.method public abstract IGetBulletType_Editor()Lcom/infraware/office/evengine/EV$BULLET_TYPE;
.end method

.method public abstract IGetCaretAfterString(I)Ljava/lang/String;
.end method

.method public abstract IGetCaretBeforeString(I)Ljava/lang/String;
.end method

.method public abstract IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;
.end method

.method public abstract IGetCaretPos()Lcom/infraware/office/evengine/EV$CARET_POS;
.end method

.method public abstract IGetCaretPos_Editor()I
.end method

.method public abstract IGetCellInfo()Lcom/infraware/office/evengine/EV$SHEET_CELL_INFO;
.end method

.method public abstract IGetCellProperty_Editor()Lcom/infraware/office/evengine/EV$CELL_PROPERTY;
.end method

.method public abstract IGetCellType()I
.end method

.method public abstract IGetChartInfo()Lcom/infraware/office/evengine/EV$GUI_SHEET_CHART_EVENT;
.end method

.method public abstract IGetColumn()I
.end method

.method public abstract IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;
.end method

.method public abstract IGetCurrentSheetIndex()I
.end method

.method public abstract IGetEditStauts_Editor()J
.end method

.method public abstract IGetEditorMode_Editor()I
.end method

.method public abstract IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;
.end method

.method public abstract IGetFontPreview(Lcom/infraware/office/evengine/EV$FONT_DATA;Ljava/lang/String;II)Landroid/graphics/Bitmap;
.end method

.method public abstract IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
.end method

.method public abstract IGetHyperLinkInfoEx(II)Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
.end method

.method public abstract IGetHyperLinkInfo_Editor()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
.end method

.method public abstract IGetImageMaxSize(I)I
.end method

.method public IGetInitialHeapSize()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/infraware/office/evengine/EvInterface;->mHeapSize:I

    return v0
.end method

.method public abstract IGetInvalidRect_Editor()Lcom/infraware/office/evengine/EV$INVALID_DRAW_INFO;
.end method

.method public abstract IGetMarkString()Ljava/lang/String;
.end method

.method public abstract IGetParaAttInfo_Editor()Lcom/infraware/office/evengine/EV$SET_PARAATT_INFO;
.end method

.method public abstract IGetProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;
.end method

.method public abstract IGetProtectStatus()I
.end method

.method public abstract IGetScreenPos()Lcom/infraware/office/evengine/EV$SCREEN_INFO;
.end method

.method public abstract IGetScrollInfo_Editor()Lcom/infraware/office/evengine/EV$SCROLLINFO_EDITOR;
.end method

.method public abstract IGetSeparateMarkString_Editor()Ljava/lang/String;
.end method

.method public abstract IGetSheetCount()I
.end method

.method public abstract IGetSheetInfo(Lcom/infraware/office/evengine/EV$SHEET_INFO;I)V
.end method

.method public abstract IGetSheetNameList()[Ljava/lang/String;
.end method

.method public abstract IGetSlideNoteString_Editor(I)Ljava/lang/String;
.end method

.method public abstract IGetSortRange(Lcom/infraware/office/evengine/EV$RANGE;I)I
.end method

.method public abstract IGetSystemFontCount()I
.end method

.method public abstract IGetSystemFontNames()[Ljava/lang/String;
.end method

.method public abstract IGetTextToSpeachString(III)V
.end method

.method public abstract IGetTouchString(II)Ljava/lang/String;
.end method

.method public abstract IGetUseFontCount()I
.end method

.method public abstract IGetUseFontNames()[Ljava/lang/String;
.end method

.method public abstract IHIDAction(IIII)V
.end method

.method public abstract IHTCClearAll()V
.end method

.method public abstract IHTCSetPenColor(I)V
.end method

.method public abstract IHTCSetPenMode(I)V
.end method

.method public abstract IHTCSetPenPosition([I[II)V
.end method

.method public abstract IHTCSetPenSize(I)V
.end method

.method public abstract IHyperLink(III)V
.end method

.method public abstract IHyperLinkEnd()V
.end method

.method public abstract IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IImageInsert(Ljava/lang/String;Landroid/graphics/Bitmap;III)V
.end method

.method public abstract IIndentation(I)V
.end method

.method public IInitialize(III)V
    .registers 6
    .parameter "a_nWidth"
    .parameter "a_nHeight"
    .parameter "a_nDpi"

    .prologue
    .line 104
    const/16 v0, 0xc8

    if-le p3, v0, :cond_8

    .line 105
    const/16 v0, 0x3c

    iput v0, p0, Lcom/infraware/office/evengine/EvInterface;->mHeapSize:I

    .line 106
    :cond_8
    iget-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    iget v1, p0, Lcom/infraware/office/evengine/EvInterface;->mHeapSize:I

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvNative;->ISetHeapSize(I)V

    .line 107
    return-void
.end method

.method public abstract IInputChar(I)V
.end method

.method public abstract IInsertShape(I)V
.end method

.method public abstract IInsertString(Ljava/lang/String;III)V
.end method

.method public abstract IInsertTextBox()V
.end method

.method public abstract IIsComplexColumn()Z
.end method

.method public abstract IIsPenDataForSlideShow()I
.end method

.method public abstract IMemo(ILjava/lang/String;IIIII)V
.end method

.method public abstract IMovePage(II)V
.end method

.method public abstract INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IOpenEx(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IParagraphAlign(I)V
.end method

.method public abstract IPivotScreen(III)V
.end method

.method public abstract IPopupOffset(IIIII)V
.end method

.method public abstract IPrint(IIILjava/lang/String;)V
.end method

.method public abstract IReDraw()V
.end method

.method public abstract IRedoUndo(I)V
.end method

.method public abstract IReleaseFontPreview()V
.end method

.method public abstract IRemoveAllBookMark()V
.end method

.method public abstract IRemoveBookMark(Ljava/lang/String;)V
.end method

.method public abstract IRotate(II)V
.end method

.method public abstract ISaveBookMark()V
.end method

.method public abstract ISaveDocument(Ljava/lang/String;)V
.end method

.method public IScreenCaptureModeOnOff(I)V
    .registers 2
    .parameter "a_bOn"

    .prologue
    .line 218
    return-void
.end method

.method public abstract IScroll(IIIII)V
.end method

.method public abstract ISearchStart(Ljava/lang/String;IIII)V
.end method

.method public abstract ISearchStop()V
.end method

.method public abstract ISelectAll()V
.end method

.method public abstract ISellectAll()V
.end method

.method public abstract ISetBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)I
.end method

.method public abstract ISetBookmarkLabel(Lcom/infraware/office/evengine/EV$BOOKMARK_LABEL;I)V
.end method

.method public abstract ISetBorder(IIIIIIIII)V
.end method

.method public abstract ISetColors(III)V
.end method

.method public abstract ISetColumn(II)V
.end method

.method public abstract ISetCompBackColor(IIIIJJIII)V
.end method

.method ISetEditorMode_Editor(I)V
    .registers 2
    .parameter "EV_EDITMODETYPE"

    .prologue
    .line 101
    iput p1, p0, Lcom/infraware/office/evengine/EvInterface;->mEditorMode:I

    return-void
.end method

.method public abstract ISetFontAttribute(Ljava/lang/String;IIIIIII)V
.end method

.method public ISetHeapSize(I)V
    .registers 3
    .parameter "a_nHeapSize"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetHeapSize(I)V

    .line 75
    return-void
.end method

.method public abstract ISetLineShape(IIII)V
.end method

.method public abstract ISetLineSpace(I)V
.end method

.method public abstract ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V
.end method

.method public ISetLocale(I)V
    .registers 3
    .parameter "a_nLocale"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvNative;->ISetLocale(I)V

    .line 79
    return-void
.end method

.method public abstract ISetModeStatus(I)V
.end method

.method public abstract ISetObjDelete()V
.end method

.method public abstract ISetObjPos(I)V
.end method

.method public abstract ISetObjResize(II)V
.end method

.method public abstract ISetObjTextEdit()V
.end method

.method public abstract ISetObjectAttribute(IIIIIIIIII)V
.end method

.method public abstract ISetPageMap(IIIIII)V
.end method

.method public abstract ISetParaAttribute(IIIIIIIIIIII)V
.end method

.method public abstract ISetPreview(IILjava/lang/String;)V
.end method

.method public abstract ISetPreviewTimerCB()V
.end method

.method public abstract ISetPrint(IIILjava/lang/String;I)V
.end method

.method public abstract ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ISetPrintMode()V
.end method

.method public abstract ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V
.end method

.method public abstract ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V
.end method

.method public abstract ISetScreenMode(I)V
.end method

.method public abstract ISetSortRange(Lcom/infraware/office/evengine/EV$RANGE;)V
.end method

.method public abstract ISetTemplateShape(II)V
.end method

.method public abstract ISetThumbnailByPrint(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract ISetViewMode(I)V
.end method

.method public abstract ISetWebMode()V
.end method

.method public abstract ISetWritePassword(Ljava/lang/String;)V
.end method

.method public abstract ISetZoom(IIIIIIIIIII)V
.end method

.method public abstract ISheetBorder(Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;)V
.end method

.method public abstract ISheetClear(I)V
.end method

.method public abstract ISheetEdit(ILjava/lang/String;IIII)V
.end method

.method public abstract ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract ISheetFixFrame()V
.end method

.method public abstract ISheetFocus()V
.end method

.method public abstract ISheetFormat(IIIIIIII)V
.end method

.method public abstract ISheetFunction(I)V
.end method

.method public abstract ISheetInputField(I)V
.end method

.method public abstract ISheetInsertCell(II)V
.end method

.method public abstract ISheetInsertChart(ILcom/infraware/office/evengine/EV$RANGE;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract ISheetInsertColumns(III)V
.end method

.method public abstract ISheetInsertRows(III)V
.end method

.method public abstract ISheetMerge()V
.end method

.method public abstract ISheetPageBreak()V
.end method

.method public abstract ISheetProtection()V
.end method

.method public abstract ISheetRecalculate()V
.end method

.method public abstract ISheetSetAlignment(II)V
.end method

.method public abstract ISheetSetColor(I)V
.end method

.method public abstract ISheetSetRowColSize(III)V
.end method

.method public abstract ISheetShowHideRowCol(III)V
.end method

.method public abstract ISheetSort(IIII)V
.end method

.method public abstract IShowHideImage(I)V
.end method

.method public abstract ISlideAddMove(III)V
.end method

.method public abstract ISlideNote(III)V
.end method

.method public abstract ISlideNoteInput(ILjava/lang/String;I)V
.end method

.method public abstract ISlideObjInsert(III)V
.end method

.method public abstract ISlideObjMasterLayout(II)V
.end method

.method public abstract ISlideObjStart(III)V
.end method

.method public abstract ISlideObjStartEx(III)V
.end method

.method public abstract ISlideShow(III)V
.end method

.method public abstract ITextPlay(IIII)V
.end method

.method public abstract IThreadSuspend(I)V
.end method

.method public abstract IThumbnail(IIIII)V
.end method

.method public abstract IZoomInOut(II)V
.end method

.method public abstract IsStartOfSentence_Editor()I
.end method

.method OnFinalizeComplete()V
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/evengine/EvInterface;->mbInit:Z

    return-void
.end method

.method OnInitComplete(I)V
    .registers 3
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/evengine/EvInterface;->mbInit:Z

    return-void
.end method

.method abstract OnPreviewTimerStart()V
.end method

.method abstract OnPreviewTimerStop()V
.end method

.method abstract OnTimerStart()V
.end method

.method abstract OnTimerStop()V
.end method

.method public getDocFileExtentionType(Ljava/lang/String;)I
    .registers 6
    .parameter "filePath"

    .prologue
    .line 41
    const/16 v0, 0xff

    .line 42
    .local v0, EV_DOCEXTENSION_TYPE:I
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 43
    .local v1, nIndex:I
    if-ltz v1, :cond_1b

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, strExt:Ljava/lang/String;
    const-string v3, ".doc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c

    .line 46
    const/4 v0, 0x2

    .line 65
    .end local v2           #strExt:Ljava/lang/String;
    :cond_1b
    :goto_1b
    return v0

    .line 47
    .restart local v2       #strExt:Ljava/lang/String;
    :cond_1c
    const-string v3, ".docx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    .line 48
    const/16 v0, 0x12

    goto :goto_1b

    .line 49
    :cond_27
    const-string v3, ".ppt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_31

    .line 50
    const/4 v0, 0x1

    goto :goto_1b

    .line 51
    :cond_31
    const-string v3, ".pptx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3c

    .line 52
    const/16 v0, 0x13

    goto :goto_1b

    .line 53
    :cond_3c
    const-string v3, ".xls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_46

    .line 54
    const/4 v0, 0x5

    goto :goto_1b

    .line 55
    :cond_46
    const-string v3, ".xlsx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_51

    .line 56
    const/16 v0, 0x14

    goto :goto_1b

    .line 59
    :cond_51
    const-string v3, ".pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5b

    .line 60
    const/4 v0, 0x6

    goto :goto_1b

    .line 61
    :cond_5b
    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6b

    const-string v3, ".text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b

    .line 62
    :cond_6b
    const/16 v0, 0xc

    goto :goto_1b
.end method

.method public getFontFileList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/infraware/office/evengine/EvInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->GetFontFileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isInit()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/infraware/office/evengine/EvInterface;->mbInit:Z

    return v0
.end method
