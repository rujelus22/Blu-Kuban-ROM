.class public Lcom/infraware/office/baseframe/EvBaseView;
.super Landroid/view/SurfaceView;
.source "EvBaseView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/infraware/office/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/office/evengine/E$EV_GUI_EVENT;
.implements Lcom/infraware/office/evengine/E$EDVA_PAGE_INFO_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_DOCEXTENSION_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;,
        Lcom/infraware/office/baseframe/EvBaseView$Renderer;
    }
.end annotation


# static fields
.field static final DEBUG_EXTRACT:Z = true

.field protected static final SCREEN_SIZE_MISMATCH:I

.field static final USE_RENDER_THREAD:Z


# instance fields
.field final CMD_IME_ACTION_INIT_COMPOSING:Ljava/lang/String;

.field private final LOG_CAT:Ljava/lang/String;

.field protected bSurfaceCreated:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBookClipPath:Ljava/lang/String;

.field protected mBookMarkPath:Ljava/lang/String;

.field public mCallBackID:I

.field protected mCanvas:Landroid/graphics/Canvas;

.field protected mChangeWatcher:Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;

.field protected mCompLen:I

.field protected mCompText:Ljava/lang/CharSequence;

.field public mDensityDpi:I

.field protected mEditable:Landroid/text/Editable;

.field protected mEvEditModeType:I

.field protected mFilePath:Ljava/lang/String;

.field protected mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHeight:I

.field protected mIc:Lcom/infraware/office/baseframe/EvInputConnection;

.field protected mInput:Landroid/text/method/KeyListener;

.field protected mOpenType:I

.field protected mRemoveBColorE:I

.field protected mRemoveBColorS:I

.field protected mRenderThread:Lcom/infraware/office/baseframe/EvBaseView$Renderer;

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mTempPath:Ljava/lang/String;

.field protected mWidth:I

.field protected m_eNewTemplatePPT:I

.field protected mbComposing:Z

.field protected mbDeletedFirstPos:Z

.field protected mbEditableClear:Z

.field protected mbForceClear:Z

.field public mbKeyProc:Z

.field protected mbPrint:Z

.field protected mbRemoveBColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/office/baseframe/EvBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/infraware/office/baseframe/EvBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const-string v0, "EvBaseView"

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->LOG_CAT:Ljava/lang/String;

    .line 52
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->bSurfaceCreated:Z

    .line 57
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEvEditModeType:I

    .line 58
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mFilePath:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mTempPath:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookMarkPath:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookClipPath:Ljava/lang/String;

    .line 62
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mOpenType:I

    .line 63
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->m_eNewTemplatePPT:I

    .line 64
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mWidth:I

    .line 65
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mHeight:I

    .line 66
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 68
    const v0, 0xffff

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mCallBackID:I

    .line 69
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mDensityDpi:I

    .line 72
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    .line 73
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mIc:Lcom/infraware/office/baseframe/EvInputConnection;

    .line 74
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    .line 76
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    .line 77
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mCompText:Ljava/lang/CharSequence;

    .line 78
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mCompLen:I

    .line 79
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbEditableClear:Z

    .line 80
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbKeyProc:Z

    .line 81
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    .line 82
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbPrint:Z

    .line 84
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbRemoveBColor:Z

    .line 85
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbDeletedFirstPos:Z

    .line 89
    const-string v0, "imeAction:initComposing"

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->CMD_IME_ACTION_INIT_COMPOSING:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseView$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseView$1;-><init>(Lcom/infraware/office/baseframe/EvBaseView;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-static {v1}, Lcom/infraware/office/util/EvUtil;->setInputMethodManager(Landroid/view/inputmethod/InputMethodManager;)V

    .line 122
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 123
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 124
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->bSurfaceCreated:Z

    .line 126
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusable(Z)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseView;->setClickable(Z)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseView;->setLongClickable(Z)V

    .line 131
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_7d

    .line 132
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    .line 133
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 135
    :cond_7d
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v2, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    .line 136
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->setChangeWatcher()V

    .line 137
    return-void
.end method

.method private killPageInfo()V
    .registers 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_9

    .line 843
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->killPageInfoTimer()V

    .line 844
    :cond_9
    return-void
.end method


# virtual methods
.method public GetObjCtrlSelIndex()I
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_b

    .line 360
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->GetObjCtrlSelIndex()I

    move-result v0

    .line 362
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public GetObjCtrlSize()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_b

    .line 354
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->GetObjCtrlSize()Landroid/graphics/Point;

    move-result-object v0

    .line 355
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public GetObjCtrlType()I
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_b

    .line 346
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->GetObjCtrlType()I

    move-result v0

    .line 348
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public GetOpenType()I
    .registers 2

    .prologue
    .line 366
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mOpenType:I

    return v0
.end method

.method public OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .registers 3
    .parameter "param"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_9

    .line 341
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    .line 342
    :cond_9
    return-void
.end method

.method public SetOpenType(I)V
    .registers 2
    .parameter "openType"

    .prologue
    .line 370
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mOpenType:I

    .line 371
    return-void
.end method

.method public cancelGesture()V
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_9

    .line 609
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->cancelGesture()V

    .line 610
    :cond_9
    return-void
.end method

.method public clearEditable()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 537
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_46

    .line 538
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbEditableClear:Z

    .line 539
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 540
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbKeyProc:Z

    if-eqz v2, :cond_46

    .line 541
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    .line 542
    .local v0, evInterface:Lcom/infraware/office/evengine/EvInterface;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, strBefore:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 545
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_47

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_47

    .line 546
    sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v4, v2}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    .line 550
    :goto_41
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->setChangeWatcher()V

    .line 551
    iput-boolean v4, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbKeyProc:Z

    .line 554
    .end local v0           #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .end local v1           #strBefore:Ljava/lang/String;
    :cond_46
    return-void

    .line 548
    .restart local v0       #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .restart local v1       #strBefore:Ljava/lang/String;
    :cond_47
    sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v4, v2}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    goto :goto_41
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "nlen"

    .prologue
    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    .line 594
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbKeyProc:Z

    .line 595
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    .line 596
    return-void
.end method

.method public destory()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseView;->killPageInfo()V

    .line 286
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 287
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    .line 291
    :cond_f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_1a

    .line 293
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->Gesturefinalize()V

    .line 294
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 297
    :cond_1a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    return-void
.end method

.method public drawAllContents()V
    .registers 4

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 324
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_1
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_1b

    .line 325
    :try_start_4
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_f

    .line 327
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 324
    :cond_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_18

    .line 333
    if-eqz v0, :cond_17

    .line 334
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 337
    :cond_17
    :goto_17
    return-void

    .line 324
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_24
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 329
    :catch_1b
    move-exception v1

    .line 333
    if-eqz v0, :cond_17

    .line 334
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_17

    .line 332
    :catchall_24
    move-exception v1

    .line 333
    if-eqz v0, :cond_2c

    .line 334
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 335
    :cond_2c
    throw v1
.end method

.method public finishComposingText()Z
    .registers 3

    .prologue
    .line 572
    const-string v0, "EvBaseView"

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->clearEditable()V

    .line 574
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_15

    .line 575
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->finishComposingText()Z

    move-result v0

    .line 576
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "aScreenWidth"
    .parameter "aScreenHeight"

    .prologue
    .line 302
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mHeight:I

    if-eq v0, p2, :cond_e

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    :cond_e
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_22

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_36

    .line 307
    :cond_22
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    .line 308
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    .line 312
    :cond_2e
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    .line 314
    :cond_36
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mIc:Lcom/infraware/office/baseframe/EvInputConnection;

    return-object v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public isComposing()Z
    .registers 2

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_b

    .line 855
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onBackPressed()Z

    move-result v0

    .line 857
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_9

    .line 849
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 850
    :cond_9
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 851
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .parameter "outAttrs"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mIc:Lcom/infraware/office/baseframe/EvInputConnection;

    if-nez v0, :cond_b

    .line 513
    new-instance v0, Lcom/infraware/office/baseframe/EvInputConnection;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvInputConnection;-><init>(Lcom/infraware/office/baseframe/EvBaseView;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mIc:Lcom/infraware/office/baseframe/EvInputConnection;

    .line 515
    :cond_b
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, -0x2fffffff

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 517
    const/16 v0, 0x4001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 518
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 519
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 521
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mIc:Lcom/infraware/office/baseframe/EvInputConnection;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 377
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->setPageInfoTimer()V

    .line 378
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_16

    .line 379
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_17

    .line 385
    :cond_16
    :goto_16
    return-void

    .line 382
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 389
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 390
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 444
    :cond_b
    :goto_b
    return v0

    .line 393
    :cond_c
    const-string v1, "EvBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mInput.onKeyDown keyCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbKeyProc:Z

    .line 395
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    .line 396
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2e

    .line 397
    sparse-switch p1, :sswitch_data_ac

    .line 425
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_9a

    .line 426
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 427
    const-string v1, "EvBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mInput.onKeyDown3 keyCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v1, :cond_b

    .line 429
    packed-switch p1, :pswitch_data_be

    :pswitch_57
    goto :goto_b

    .line 432
    :pswitch_58
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_b

    .line 399
    :sswitch_5e
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_85

    .line 400
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_91

    .line 401
    const-string v1, "EvBaseView"

    const-string v2, "mInput.onKeyDown1"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    .line 403
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 404
    const-string v1, "EvBaseView"

    const-string v2, "mInput.onKeyDown2"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 410
    :cond_85
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_91

    .line 411
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_b

    .line 413
    :cond_91
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_b

    .line 417
    :sswitch_97
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    goto :goto_2e

    .line 440
    :cond_9a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_a6

    .line 441
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_b

    .line 444
    :cond_a6
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_b

    .line 397
    :sswitch_data_ac
    .sparse-switch
        0x13 -> :sswitch_97
        0x14 -> :sswitch_97
        0x42 -> :sswitch_97
        0x43 -> :sswitch_5e
    .end sparse-switch

    .line 429
    :pswitch_data_be
    .packed-switch 0x39
        :pswitch_58
        :pswitch_57
        :pswitch_58
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 450
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 501
    :cond_b
    :goto_b
    return v0

    .line 453
    :cond_c
    iget-boolean v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    if-eqz v1, :cond_12

    .line 454
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    .line 456
    :cond_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1b

    .line 457
    packed-switch p1, :pswitch_data_92

    .line 478
    :cond_1b
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_71

    .line 479
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 480
    const-string v1, "EvBaseView"

    const-string v2, "mInput.onKeyUp3"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v1, :cond_b

    .line 482
    packed-switch p1, :pswitch_data_98

    :pswitch_37
    goto :goto_b

    .line 485
    :pswitch_38
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_b

    .line 459
    :pswitch_3e
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_63

    .line 460
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_6c

    .line 461
    const-string v1, "EvBaseView"

    const-string v2, "mInput.onKeyUp1"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v1, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 463
    const-string v1, "EvBaseView"

    const-string v2, "mInput.onKeyUp2"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 469
    :cond_63
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_6c

    .line 470
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 472
    :cond_6c
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b

    .line 492
    :cond_71
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_7a

    .line 493
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 495
    :cond_7a
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    if-eqz v0, :cond_88

    .line 496
    const-string v0, "EvBaseView"

    const-string v1, "mEditable clear"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->clearEditable()V

    .line 500
    :cond_88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    .line 501
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_b

    .line 457
    nop

    :pswitch_data_92
    .packed-switch 0x43
        :pswitch_3e
    .end packed-switch

    .line 482
    :pswitch_data_98
    .packed-switch 0x39
        :pswitch_38
        :pswitch_37
        :pswitch_38
    .end packed-switch
.end method

.method public onShowIme(Z)V
    .registers 3
    .parameter "bShow"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_9

    .line 604
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onShowIme(Z)Z

    .line 605
    :cond_9
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onTextContextMenuItem(I)Z

    .line 245
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public openDocEx(Ljava/lang/String;)V
    .registers 11
    .parameter "password"

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 731
    .local v8, resources:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 732
    .local v4, bLandScape:I
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 733
    const/4 v4, 0x1

    .line 735
    :cond_f
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v3

    .line 736
    .local v3, locale:I
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseView;->mTempPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookMarkPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookClipPath:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/infraware/office/evengine/EvInterface;->IOpenEx(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public restartInput()V
    .registers 4

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 581
    .local v0, Imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 582
    :cond_11
    return-void
.end method

.method public setChangeWatcher()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 140
    const/16 v0, 0x64

    .line 141
    .local v0, PRIORITY:I
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v4

    .line 142
    .local v4, textLength:I
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_40

    .line 143
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    .line 145
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;

    invoke-interface {v3, v8, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;

    .line 146
    .local v5, watchers:[Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;
    array-length v1, v5

    .line 147
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-lt v2, v1, :cond_41

    .line 150
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseView;->mChangeWatcher:Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;

    if-nez v6, :cond_2d

    .line 151
    new-instance v6, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;-><init>(Lcom/infraware/office/baseframe/EvBaseView;Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;)V

    iput-object v6, p0, Lcom/infraware/office/baseframe/EvBaseView;->mChangeWatcher:Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;

    .line 153
    :cond_2d
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseView;->mChangeWatcher:Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;

    const v7, 0x640012

    invoke-interface {v3, v6, v8, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 156
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v6, :cond_40

    .line 157
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseView;->mInput:Landroid/text/method/KeyListener;

    const/16 v7, 0x12

    invoke-interface {v3, v6, v8, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 160
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v5           #watchers:[Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;
    :cond_40
    return-void

    .line 148
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #sp:Landroid/text/Spannable;
    .restart local v5       #watchers:[Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;
    :cond_41
    aget-object v6, v5, v2

    invoke-interface {v3, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "nlen"

    .prologue
    const/4 v0, 0x0

    .line 585
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mCompText:Ljava/lang/CharSequence;

    .line 586
    iput p2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mCompLen:I

    .line 587
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbKeyProc:Z

    .line 588
    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    .line 590
    return-void
.end method

.method public setFindReplaceMode(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_9

    .line 833
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->setFindReplaceMode(Z)V

    .line 834
    :cond_9
    return-void
.end method

.method public setInit(Landroid/app/Activity;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "activity"
    .parameter "EV_EDITMODETYPE"
    .parameter "openFilePath"
    .parameter "docExtType"
    .parameter "OpenType"
    .parameter "aNewTemplatePPT"
    .parameter "tempPath"
    .parameter "bookMarkPath"
    .parameter "bookClipPath"

    .prologue
    .line 202
    iput-object p3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mFilePath:Ljava/lang/String;

    .line 203
    iput-object p7, p0, Lcom/infraware/office/baseframe/EvBaseView;->mTempPath:Ljava/lang/String;

    .line 204
    iput-object p8, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookMarkPath:Ljava/lang/String;

    .line 205
    iput-object p9, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookClipPath:Ljava/lang/String;

    .line 206
    iput p5, p0, Lcom/infraware/office/baseframe/EvBaseView;->mOpenType:I

    .line 207
    iput p6, p0, Lcom/infraware/office/baseframe/EvBaseView;->m_eNewTemplatePPT:I

    .line 208
    invoke-static {p1}, Lcom/infraware/common/util/Utils;->getDensityDpiForEvEngine(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mDensityDpi:I

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    invoke-virtual {p0, p1, v0, p4, p2}, Lcom/infraware/office/baseframe/EvBaseView;->setModeTypeChanged(Landroid/app/Activity;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;II)V

    .line 210
    return-void
.end method

.method public setModeTypeChanged(Landroid/app/Activity;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;II)V
    .registers 7
    .parameter "activity"
    .parameter "callbackListener"
    .parameter "docExtType"
    .parameter "EV_EDITMODETYPE"

    .prologue
    .line 250
    iput p4, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEvEditModeType:I

    .line 251
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_e

    .line 252
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->Gesturefinalize()V

    .line 253
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->clearEditable()V

    .line 256
    :cond_e
    packed-switch p4, :pswitch_data_64

    .line 271
    const/4 v0, 0x5

    if-eq p3, v0, :cond_54

    const/16 v0, 0x14

    if-eq p3, v0, :cond_54

    .line 276
    const-string v0, "EvBaseView"

    const-string v1, "setModeTypeChanged = eEV_EDITOR_VIEWMODE"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;

    invoke-direct {v0, p1, p0, p2}, Lcom/infraware/office/baseframe/gestureproc/EvViewGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 281
    :goto_26
    return-void

    .line 259
    :pswitch_27
    const-string v0, "EvBaseView"

    const-string v1, "setModeTypeChanged = eEV_EDITOR_WORD"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvWordGestureProc;

    invoke-direct {v0, p1, p0, p2}, Lcom/infraware/office/baseframe/gestureproc/EvWordGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    goto :goto_26

    .line 263
    :pswitch_36
    const-string v0, "EvBaseView"

    const-string v1, "setModeTypeChanged = eEV_EDITOR_SHEET"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;

    invoke-direct {v0, p1, p0, p2}, Lcom/infraware/office/baseframe/gestureproc/EvSheetGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    goto :goto_26

    .line 267
    :pswitch_45
    const-string v0, "EvBaseView"

    const-string v1, "setModeTypeChanged = eEV_EDITOR_PPT"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvPptGestureProc;

    invoke-direct {v0, p1, p0, p2}, Lcom/infraware/office/baseframe/gestureproc/EvPptGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    goto :goto_26

    .line 272
    :cond_54
    const-string v0, "EvBaseView"

    const-string v1, "setModeTypeChanged = eEV_EDITOR_SHEET_VIEWMODE"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;

    invoke-direct {v0, p1, p0, p2}, Lcom/infraware/office/baseframe/gestureproc/EvSheetViewGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    goto :goto_26

    .line 256
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_27
        :pswitch_36
        :pswitch_45
    .end packed-switch
.end method

.method public setPageInfoTimer()V
    .registers 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_b

    .line 837
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mCallBackID:I

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->setPageInfoTimer(I)V

    .line 838
    :cond_b
    const v0, 0xffff

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mCallBackID:I

    .line 839
    return-void
.end method

.method public setPrintMode(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbPrint:Z

    .line 214
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbEditableClear:Z

    .line 530
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseView;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 531
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_18

    .line 532
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->setExtractedText(Ljava/lang/CharSequence;)V

    .line 534
    :cond_18
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 20
    .parameter "arg0"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 742
    iget-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->bSurfaceCreated:Z

    if-nez v3, :cond_e5

    .line 743
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->bSurfaceCreated:Z

    .line 744
    const-string v3, "EvBaseView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "surfaceChanged width="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    .line 747
    .local v2, evInterface:Lcom/infraware/office/evengine/EvInterface;
    iget v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mDensityDpi:I

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1, v3}, Lcom/infraware/office/evengine/EvInterface;->IInitialize(III)V

    .line 749
    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetProperties()Lcom/infraware/office/evengine/EV$PROPERTIES;

    move-result-object v13

    .line 750
    .local v13, properties:Lcom/infraware/office/evengine/EV$PROPERTIES;
    const/4 v3, 0x0

    iput v3, v13, Lcom/infraware/office/evengine/EV$PROPERTIES;->byPageEdgeWidth:I

    .line 752
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 753
    .local v14, resources:Landroid/content/res/Resources;
    const v3, 0x7f070029

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v13, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwBgColor:I

    .line 754
    const v3, 0x7f07002a

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v13, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwEdgeColor:I

    .line 755
    const v3, 0x7f07002b

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v13, Lcom/infraware/office/evengine/EV$PROPERTIES;->dwOutlineColor:I

    .line 756
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseView;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/infraware/office/evengine/EvInterface;->getDocFileExtentionType(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_ad

    .line 757
    const/16 v3, 0x14

    iput v3, v13, Lcom/infraware/office/evengine/EV$PROPERTIES;->nMakeThumbnailPages:I

    .line 761
    :goto_69
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->doesNotMoveCaretWhenComposingState()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 762
    const/4 v3, 0x1

    iput v3, v13, Lcom/infraware/office/evengine/EV$PROPERTIES;->bCaretDoesntMoveWhenComposing:I

    .line 764
    :cond_72
    invoke-virtual {v2, v13}, Lcom/infraware/office/evengine/EvInterface;->ISetProperties(Lcom/infraware/office/evengine/EV$PROPERTIES;)V

    .line 766
    const/4 v9, 0x0

    .line 767
    .local v9, bLandScape:I
    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_80

    .line 768
    const/4 v9, 0x1

    .line 770
    :cond_80
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v8

    .line 771
    .local v8, locale:I
    iget v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mOpenType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b2

    .line 772
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mFilePath:Ljava/lang/String;

    const/16 v6, 0x20

    iget v7, p0, Lcom/infraware/office/baseframe/EvBaseView;->m_eNewTemplatePPT:I

    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseView;->mTempPath:Ljava/lang/String;

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookMarkPath:Ljava/lang/String;

    iget-object v12, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookClipPath:Ljava/lang/String;

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v12}, Lcom/infraware/office/evengine/EvInterface;->INewDocument(Ljava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v3, :cond_a9

    .line 774
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->OnNewDocument()V

    .line 796
    .end local v2           #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .end local v8           #locale:I
    .end local v9           #bLandScape:I
    .end local v13           #properties:Lcom/infraware/office/evengine/EV$PROPERTIES;
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_a9
    :goto_a9
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->drawAllContents()V

    .line 797
    return-void

    .line 759
    .restart local v2       #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .restart local v13       #properties:Lcom/infraware/office/evengine/EV$PROPERTIES;
    .restart local v14       #resources:Landroid/content/res/Resources;
    :cond_ad
    const/16 v3, 0x64

    iput v3, v13, Lcom/infraware/office/evengine/EV$PROPERTIES;->nMakeThumbnailPages:I

    goto :goto_69

    .line 776
    .restart local v8       #locale:I
    .restart local v9       #bLandScape:I
    :cond_b2
    iget v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mOpenType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d3

    .line 777
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseView;->mFilePath:Ljava/lang/String;

    const/16 v7, 0x20

    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseView;->mTempPath:Ljava/lang/String;

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookMarkPath:Ljava/lang/String;

    iget-object v12, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookClipPath:Ljava/lang/String;

    move-object v3, v2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v12}, Lcom/infraware/office/evengine/EvInterface;->IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v3, :cond_a9

    .line 779
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->OnTemplateDocument()V

    goto :goto_a9

    .line 782
    :cond_d3
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseView;->mFilePath:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseView;->mTempPath:Ljava/lang/String;

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookMarkPath:Ljava/lang/String;

    iget-object v12, p0, Lcom/infraware/office/baseframe/EvBaseView;->mBookClipPath:Ljava/lang/String;

    move-object v3, v2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v12}, Lcom/infraware/office/evengine/EvInterface;->IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    .line 785
    .end local v2           #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .end local v8           #locale:I
    .end local v9           #bLandScape:I
    .end local v13           #properties:Lcom/infraware/office/evengine/EV$PROPERTIES;
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_e5
    const-string v3, "EvBaseView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "surfaceChanged width="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mWidth:I

    move/from16 v0, p3

    if-ne v3, v0, :cond_113

    iget v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mHeight:I

    move/from16 v0, p4

    if-eq v3, v0, :cond_a9

    .line 787
    :cond_113
    move/from16 v0, p3

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mWidth:I

    move/from16 v0, p4

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseView;->mHeight:I

    .line 789
    iget-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mbPrint:Z

    if-nez v3, :cond_a9

    .line 790
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v3, :cond_a9

    .line 791
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->OnSurfaceChanged(II)V

    goto/16 :goto_a9
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 801
    const-string v0, "EvBaseView"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 812
    const-string v0, "EvBaseView"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseView;->killPageInfo()V

    .line 829
    return-void
.end method

.method public updateCaretPos()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 561
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v1, :cond_a

    .line 562
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v1, v2, v2}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->updateCaretPos(ZZ)V

    .line 564
    :cond_a
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08030e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 565
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 566
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_31

    .line 567
    const-string v1, "imeAction:initComposing"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 569
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_31
    return-void
.end method
