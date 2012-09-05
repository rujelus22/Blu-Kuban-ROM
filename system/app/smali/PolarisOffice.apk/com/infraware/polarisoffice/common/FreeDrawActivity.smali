.class public Lcom/infraware/polarisoffice/common/FreeDrawActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "FreeDrawActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$ViewerListener;
.implements Lcom/infraware/office/evengine/EvListener$EditorListener;
.implements Lcom/infraware/office/evengine/EvListener$PptEditorListener;
.implements Lcom/infraware/office/evengine/EvListener$WordEditorListener;
.implements Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;
.implements Lcom/infraware/office/evengine/E$EV_ERROR_CODE;
.implements Lcom/infraware/office/evengine/E$EV_HID_ACTION;
.implements Lcom/infraware/office/evengine/E$EV_HTC_PEN_MODE;
.implements Lcom/infraware/office/evengine/E$EV_STATUS;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarTypeDef;


# static fields
.field static final LOG_CAT:Ljava/lang/String; = "FreeDrawActivity"


# instance fields
.field protected mContentView:Lcom/infraware/office/baseframe/EvContentView;

.field protected mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field protected mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

.field protected mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

.field protected mInitialPenMode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mInitialPenMode:I

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 39
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 32
    return-void
.end method


# virtual methods
.method public ActivityMsgProc(IIIIILjava/lang/Object;)I
    .registers 8
    .parameter "msg"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"
    .parameter "obj"

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_c

    .line 293
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 291
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    goto :goto_3

    .line 289
    nop

    :pswitch_data_c
    .packed-switch 0x3
        :pswitch_5
    .end packed-switch
.end method

.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/baseframe/EvContentView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnBookMarkEditorMode()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method public OnCloseDoc()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    return-void
.end method

.method public OnDrawBitmap(II)V
    .registers 4
    .parameter "nCallId"
    .parameter "bShowAutomap"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->updateToolbar()V

    .line 181
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvContentView;->drawAllContents()V

    .line 182
    return-void
.end method

.method public OnDrawThumbnailBitmap(I)V
    .registers 2
    .parameter "nPageNum"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    return-void
.end method

.method public OnEditCopyCut(ILjava/lang/String;)V
    .registers 3
    .parameter "nType"
    .parameter "str"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    return-void
.end method

.method public OnEditOrViewMode(II)V
    .registers 3
    .parameter "bEditMode"
    .parameter "EV_EDITMODETYPE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    return-void
.end method

.method public OnGetClipBoardHelper()Lcom/infraware/office/evengine/EvClipBoardHelper;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnGetResID(I)Ljava/lang/String;
    .registers 3
    .parameter "nStrID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    const-string v0, ""

    return-object v0
.end method

.method public OnHidAction(I)V
    .registers 2
    .parameter "EEV_HID_ACTION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    return-void
.end method

.method public OnIMEInsertMode()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    return-void
.end method

.method public OnImagePlaceHolderDefaultImage()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnInsertTableMode()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    return-void
.end method

.method public OnLoadComplete(Ljava/lang/String;)V
    .registers 2
    .parameter "strWritePassword"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    return-void
.end method

.method public OnLoadFail(I)V
    .registers 2
    .parameter "EEV_ERROR_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method public OnNewDoc(I)V
    .registers 2
    .parameter "bOk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    return-void
.end method

.method public OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .registers 2
    .parameter "param"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    return-void
.end method

.method public OnPageMove(III)V
    .registers 4
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    return-void
.end method

.method public OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "bBitmapIamage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptOnDrawSlidenote(I)V
    .registers 2
    .parameter "pageNum"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    return-void
.end method

.method public OnPptSlideDelete()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public OnPptSlideMoveNext()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    return-void
.end method

.method public OnPptSlideMovePrev()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    return-void
.end method

.method public OnPptSlideexInsert()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    return-void
.end method

.method public OnPptSlidenoteStart()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    return-void
.end method

.method public OnPrintMode(Ljava/lang/String;)V
    .registers 2
    .parameter "strPrintFile"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    return-void
.end method

.method public OnPrintedCount(I)V
    .registers 2
    .parameter "nTotalCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    return-void
.end method

.method public OnProgress(II)V
    .registers 3
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public OnProgressStart(I)V
    .registers 2
    .parameter "EV_PROGRESS_TYPE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    return-void
.end method

.method public OnSaveDoc(I)V
    .registers 2
    .parameter "bOk"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    return-void
.end method

.method public OnSearchMode(IIII)V
    .registers 5
    .parameter "EEV_SEARCH_TYPE"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    return-void
.end method

.method public OnTerminate()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public OnTextToSpeachString(Ljava/lang/String;)V
    .registers 2
    .parameter "strTTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    return-void
.end method

.method public OnUndoOrRedo()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    return-void
.end method

.method public OnWordCellDeleteMode()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method public OnWordCellInsertMode()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    return-void
.end method

.method public OnWordCellSeparateMode(I)V
    .registers 2
    .parameter "nResult"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    return-void
.end method

.method public OnWordInsertStringMode()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    return-void
.end method

.method public OnWordMultiSelectCellMode()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    return-void
.end method

.method public OnWordOneSelectCellMode()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    return-void
.end method

.method protected closeActivity()V
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->finish()V

    .line 151
    return-void
.end method

.method protected finalizeFreeDraw()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenMode(I)V

    .line 156
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_12

    .line 157
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->Gesturefinalize()V

    .line 158
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 161
    :cond_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    if-eqz v0, :cond_1d

    .line 162
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvContentView;->destory()V

    .line 163
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    .line 166
    :cond_1d
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    if-eqz v0, :cond_28

    .line 167
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->destroy()V

    .line 168
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    .line 170
    :cond_28
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 171
    return-void
.end method

.method public getClipBoardData()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasClipBoardData()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    move-result v0

    if-nez v0, :cond_b

    .line 193
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->closeActivity()V

    .line 194
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->setTitle(I)V

    .line 47
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 48
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 50
    const v0, 0x7f0c00df

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/baseframe/EvContentView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    .line 51
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    new-instance v1, Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity$1;-><init>(Lcom/infraware/polarisoffice/common/FreeDrawActivity;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvContentView;->setOnContentCreateListener(Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;)V

    .line 71
    iget v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mInitialPenMode:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->setContentViewTouchListener(I)V

    .line 73
    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    .line 74
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    new-instance v1, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;-><init>(Lcom/infraware/polarisoffice/common/FreeDrawActivity;)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->setOnFreeDrawToolbarListener(Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;)V

    .line 126
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->finalizeFreeDraw()V

    .line 187
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 3
    .parameter "nLocale"

    .prologue
    .line 198
    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->setTitle(I)V

    .line 199
    return-void
.end method

.method public setClipBoardData(Ljava/lang/String;)V
    .registers 2
    .parameter "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    return-void
.end method

.method protected setContentViewTouchListener(I)V
    .registers 4
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_c

    .line 130
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->Gesturefinalize()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 134
    :cond_c
    packed-switch p1, :pswitch_data_2a

    .line 144
    :goto_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenMode(I)V

    .line 145
    return-void

    .line 136
    :pswitch_15
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    invoke-direct {v0, p0, v1, p0}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawNormalGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    goto :goto_f

    .line 141
    :pswitch_1f
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;I)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    goto :goto_f

    .line 134
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method
