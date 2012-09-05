.class public Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;
.super Ljava/lang/Object;
.source "EvObjectProc.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_EDIT_OBJECT_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_EDIT_OBJECT_POINT_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;,
        Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;,
        Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;,
        Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;,
        Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;
    }
.end annotation


# instance fields
.field private mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

.field private mListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

.field private mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

.field private mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

.field private mObjSize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

.field private mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

.field private mTouchDown:Landroid/graphics/Point;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 6
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    .line 20
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    .line 21
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    .line 22
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    .line 23
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    .line 24
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    .line 25
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    .line 26
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTouchDown:Landroid/graphics/Point;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    .line 123
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    .line 124
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    .line 125
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    .line 126
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    .line 127
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    invoke-direct {v0, p0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    .line 129
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    .line 130
    iput-object p2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 131
    const/4 v0, 0x1

    const v1, 0x420aae14

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    .line 132
    return-void
.end method

.method private GetDefObjCtrlType(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 550
    move v0, p1

    .line 552
    .local v0, nDefType:I
    packed-switch p1, :pswitch_data_a

    .line 569
    :goto_4
    :pswitch_4
    return v0

    .line 557
    :pswitch_5
    const/4 v0, 0x1

    .line 558
    goto :goto_4

    .line 566
    :pswitch_7
    const/4 v0, 0x6

    goto :goto_4

    .line 552
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public CheckObjCtrlPoint(IILjava/lang/Boolean;)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "bDown"

    .prologue
    .line 412
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 413
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTouchDown:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 417
    :goto_b
    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 418
    .local v6, sDrawRect:Landroid/graphics/Rect;
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    div-int/lit8 v8, v0, 0x2

    .line 419
    .local v8, nSensitivity:I
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 420
    .local v7, bDraw:Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 421
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 423
    :cond_2f
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    packed-switch v0, :pswitch_data_1d8

    .line 511
    :goto_36
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 512
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    .line 513
    :cond_46
    return-void

    .line 415
    .end local v6           #sDrawRect:Landroid/graphics/Rect;
    .end local v7           #bDraw:Ljava/lang/Boolean;
    .end local v8           #nSensitivity:I
    :cond_47
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTouchDown:Landroid/graphics/Point;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_b

    .line 429
    .restart local v6       #sDrawRect:Landroid/graphics/Rect;
    .restart local v7       #bDraw:Ljava/lang/Boolean;
    .restart local v8       #nSensitivity:I
    :pswitch_4f
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 430
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v3, v4

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 432
    .local v10, sRect:Landroid/graphics/Rect;
    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 433
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 434
    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_36

    .line 437
    :cond_87
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_36

    .line 440
    .end local v10           #sRect:Landroid/graphics/Rect;
    :cond_8d
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, -0x1

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    goto :goto_36

    .line 445
    :pswitch_93
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 446
    new-instance v11, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v3, v4

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 447
    .local v11, sSRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v3, v4

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 449
    .local v9, sERect:Landroid/graphics/Rect;
    invoke-virtual {v11, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 450
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 451
    invoke-virtual {v6, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 453
    :cond_ef
    invoke-virtual {v9, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 454
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, 0x1

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 455
    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 458
    :cond_ff
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_36

    .line 461
    .end local v9           #sERect:Landroid/graphics/Rect;
    .end local v11           #sSRect:Landroid/graphics/Rect;
    :cond_106
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, -0x1

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    goto/16 :goto_36

    .line 472
    :pswitch_10d
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 473
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v8

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 474
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v2, v3

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    .line 473
    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 475
    .restart local v10       #sRect:Landroid/graphics/Rect;
    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 476
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 477
    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 480
    :cond_149
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_36

    .line 483
    .end local v10           #sRect:Landroid/graphics/Rect;
    :cond_150
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, -0x1

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    goto/16 :goto_36

    .line 488
    :pswitch_157
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 489
    new-instance v11, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v8

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v8

    .line 490
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v2, v3

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v3, v4

    .line 489
    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 491
    .restart local v11       #sSRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v8

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 492
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v2, v3

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    .line 491
    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 494
    .restart local v9       #sERect:Landroid/graphics/Rect;
    invoke-virtual {v11, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 495
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, 0x0

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 496
    invoke-virtual {v6, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 498
    :cond_1b9
    invoke-virtual {v9, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1c9

    .line 499
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, 0x1

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 500
    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_36

    .line 503
    :cond_1c9
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_36

    .line 506
    .end local v9           #sERect:Landroid/graphics/Rect;
    .end local v11           #sSRect:Landroid/graphics/Rect;
    :cond_1d0
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    const/4 v1, -0x1

    iput v1, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    goto/16 :goto_36

    .line 423
    nop

    :pswitch_data_1d8
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_4f
        :pswitch_93
        :pswitch_10d
        :pswitch_10d
        :pswitch_10d
        :pswitch_10d
        :pswitch_10d
        :pswitch_157
        :pswitch_10d
        :pswitch_4f
        :pswitch_4f
        :pswitch_10d
    .end packed-switch
.end method

.method public DrawObjCtrlPoint(Landroid/graphics/Canvas;Ljava/lang/Boolean;)V
    .registers 21
    .parameter "canvas"
    .parameter "bObjFrame"

    .prologue
    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 309
    .local v9, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    packed-switch v12, :pswitch_data_326

    .line 409
    :cond_11
    :goto_11
    return-void

    .line 315
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    neg-int v13, v13

    if-le v12, v13, :cond_11

    .line 316
    const/4 v3, 0x0

    .line 317
    .local v3, ctrlBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    if-nez v12, :cond_4d

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 321
    :goto_34
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_11

    .line 320
    :cond_4d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_34

    .line 327
    .end local v3           #ctrlBitmap:Landroid/graphics/Bitmap;
    :pswitch_58
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nBarImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 329
    .local v1, barBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v2, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 330
    .local v2, barRect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v14, v14, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v15, v15, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nSBarCY:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    .local v10, sbarRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v14, v14, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v15, v15, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-direct {v4, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 332
    .local v4, ebarRect:Landroid/graphics/Rect;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 333
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 335
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nNormalImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 338
    .local v5, normalBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nSelectImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 340
    .local v11, selectBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    if-nez v12, :cond_14d

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 345
    :goto_124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_166

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 350
    :goto_145
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_11

    .line 343
    :cond_14d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_124

    .line 348
    :cond_166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_145

    .line 362
    .end local v1           #barBitmap:Landroid/graphics/Bitmap;
    .end local v2           #barRect:Landroid/graphics/Rect;
    .end local v4           #ebarRect:Landroid/graphics/Rect;
    .end local v5           #normalBitmap:Landroid/graphics/Bitmap;
    .end local v10           #sbarRect:Landroid/graphics/Rect;
    .end local v11           #selectBitmap:Landroid/graphics/Bitmap;
    :pswitch_17f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_263

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 365
    .local v6, rcClip:Landroid/graphics/Rect;
    move-object v7, v6

    .line 366
    .local v7, rcTemp:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget v14, v6, Landroid/graphics/Rect;->right:I

    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 369
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 371
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v14, v14, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v15, v15, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v15, v15, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int v15, v15, v16

    .line 371
    invoke-direct {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 374
    .local v8, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    const/16 v13, 0xcd

    const/16 v14, 0xd2

    const/16 v15, 0xeb

    const/16 v16, 0xed

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0x14

    const/16 v15, 0x43

    const/16 v16, 0x84

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x4080

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 381
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 384
    .end local v6           #rcClip:Landroid/graphics/Rect;
    .end local v7           #rcTemp:Landroid/graphics/Rect;
    .end local v8           #rect:Landroid/graphics/Rect;
    :cond_263
    const/4 v3, 0x0

    .line 385
    .restart local v3       #ctrlBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    if-nez v12, :cond_290

    .line 386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->nSelectImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 389
    :goto_276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 388
    :cond_290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->nNormalImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_276

    .line 394
    .end local v3           #ctrlBitmap:Landroid/graphics/Bitmap;
    :pswitch_29b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->nNormalImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 395
    .restart local v5       #normalBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->nSelectImg:I

    invoke-static {v9, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 397
    .restart local v11       #selectBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    if-nez v12, :cond_2f2

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 402
    :goto_2cf
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_30b

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 400
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2cf

    .line 405
    :cond_30b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v12, v12, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v13, v13, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 309
    nop

    :pswitch_data_326
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_58
        :pswitch_17f
        :pswitch_17f
        :pswitch_17f
        :pswitch_17f
        :pswitch_17f
        :pswitch_29b
        :pswitch_17f
        :pswitch_12
        :pswitch_12
        :pswitch_17f
    .end packed-switch
.end method

.method public EvObjectProcfinalize()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    .line 114
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    .line 115
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    .line 116
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    .line 117
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    .line 118
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    .line 119
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 120
    return-void
.end method

.method public FlingObjCtrl()Ljava/lang/Boolean;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 538
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    if-eqz v1, :cond_5f

    .line 539
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 540
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v4, v4, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v5, v5, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v4, v4, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v5, v5, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v6, v6, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 539
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 541
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTouchDown:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTouchDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 542
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 546
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_52
    return-object v1

    .line 543
    .restart local v0       #rect:Landroid/graphics/Rect;
    :cond_53
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5f

    .line 544
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_52

    .line 546
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_5f
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_52
.end method

.method public GetDownPosition()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTouchDown:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetObjCtrlEPosition()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetObjCtrlSPosition()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetObjCtrlSelIndex()I
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    return v0
.end method

.method public GetObjCtrlSize()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sObjectSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetObjCtrlType()I
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    return v0
.end method

.method public GetObjectPickerSize()I
    .registers 2

    .prologue
    .line 619
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    return v0
.end method

.method public GetTextEPosition()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    return-object v0
.end method

.method public GetTextSPosition()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    return-object v0
.end method

.method public LongPressObjCtrl(II)Ljava/lang/Boolean;
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 516
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    packed-switch v1, :pswitch_data_58

    .line 534
    :cond_7
    :pswitch_7
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_c
    return-object v1

    .line 526
    :pswitch_d
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 527
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v4, v4, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v5, v5, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v4, v4, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v5, v5, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v6, v6, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 526
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 528
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 529
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 530
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_c

    .line 516
    nop

    :pswitch_data_58
    .packed-switch 0x3
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_7
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method public SetObjCtrlInfo(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .registers 14
    .parameter "object"

    .prologue
    .line 163
    if-eqz p1, :cond_8

    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nObjectType:I

    if-nez v8, :cond_c

    .line 164
    :cond_8
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->UnSetObjCtrlInfo()V

    .line 304
    :cond_b
    :goto_b
    return-void

    .line 167
    :cond_c
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 168
    .local v0, bUpdate:Ljava/lang/Boolean;
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    invoke-direct {p0, v8}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetDefObjCtrlType(I)I

    move-result v7

    .line 169
    .local v7, nRegType:I
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->nObjectType:I

    and-int/lit16 v8, v8, 0x7fff

    and-int/lit16 v6, v8, -0x1001

    .line 170
    .local v6, nObjType:I
    invoke-direct {p0, v6}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetDefObjCtrlType(I)I

    move-result v3

    .line 171
    .local v3, nDefType:I
    iget v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    div-int/lit8 v5, v8, 0x2

    .line 173
    .local v5, nObjSize:I
    if-eq v7, v3, :cond_2e

    .line 174
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->UnSetObjCtrlInfo()V

    .line 176
    :cond_2e
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v10, v10, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->startPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 177
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v10, v10, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->endPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 178
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sObjectSize:Landroid/graphics/Point;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjRange:Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;

    iget-object v10, v10, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_RANGE;->sObjectSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 180
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    if-eq v8, v6, :cond_11b

    .line 181
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iput v6, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    .line 191
    :cond_71
    :goto_71
    packed-switch v3, :pswitch_data_36e

    :pswitch_74
    goto :goto_b

    .line 194
    :pswitch_75
    const/4 v4, 0x0

    .line 195
    .local v4, nIndex:I
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a8

    .line 196
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_a8

    .line 197
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a8

    .line 198
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_a8

    .line 199
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_158

    .line 200
    :cond_a8
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nType:I

    .line 201
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 202
    add-int/lit8 v4, v4, 0x1

    .line 209
    :goto_d0
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    if-eq v8, v9, :cond_f3

    .line 210
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 211
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 214
    :cond_f3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_b

    .line 215
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_184

    .line 216
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_174

    .line 217
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f0203a2

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 218
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f0203a3

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 182
    .end local v4           #nIndex:I
    :cond_11b
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_125

    const/4 v8, 0x1

    if-eq v6, v8, :cond_13d

    .line 183
    :cond_125
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_131

    const/16 v8, 0xb

    if-eq v6, v8, :cond_13d

    .line 184
    :cond_131
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/16 v9, 0xc

    if-ne v8, v9, :cond_151

    const/16 v8, 0xc

    if-ne v6, v8, :cond_151

    .line 185
    :cond_13d
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nType:I

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    if-ne v8, v9, :cond_71

    .line 186
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_71

    .line 189
    :cond_151
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_71

    .line 205
    .restart local v4       #nIndex:I
    :cond_158
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const/4 v9, 0x0

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nType:I

    .line 206
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    neg-int v9, v9

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_d0

    .line 222
    :cond_174
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f020397

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 223
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f020398

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 226
    :cond_184
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/16 v9, 0xc

    if-eq v8, v9, :cond_193

    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1bd

    .line 227
    :cond_193
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_1ad

    .line 228
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f0203a0

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 229
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f0203a1

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 232
    :cond_1ad
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f02039d

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 233
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f02039e

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 236
    :cond_1bd
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_1d7

    .line 237
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f020395

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 238
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f020396

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 241
    :cond_1d7
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f02039b

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 242
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    const v9, 0x7f02039c

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 249
    .end local v4           #nIndex:I
    :pswitch_1e7
    const/4 v8, 0x1

    const v9, 0x417570a4

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v1, v8

    .line 250
    .local v1, nBarX:I
    const/4 v8, 0x1

    const v9, 0x41f55c29

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v2, v8

    .line 251
    .local v2, nBarY:I
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 252
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 253
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 254
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 255
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sSBarPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nSBarCY:I

    .line 256
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    .line 257
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->sEBarPos:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    iget v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nEBarCY:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 259
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_b

    .line 260
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    const v9, 0x7f02039f

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nBarImg:I

    .line 261
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    const v9, 0x7f020395

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nNormalImg:I

    .line 262
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    const v9, 0x7f020396

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 268
    .end local v1           #nBarX:I
    .end local v2           #nBarY:I
    :pswitch_2b3
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 270
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2f0

    .line 271
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 272
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 275
    :cond_2f0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_b

    .line 276
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    const v9, 0x7f020399

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->nNormalImg:I

    .line 277
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    const v9, 0x7f02039a

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 283
    :pswitch_306
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sSPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 284
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->sEPos:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v9, v9, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v10, v10, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 286
    iget-object v8, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->nObjectType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_358

    .line 287
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 288
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget-object v8, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    iget-object v9, p1, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;->ptObjPoint:[Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY$EDIT_OBJECT_POINT;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 291
    :cond_358
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_b

    .line 292
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    const v9, 0x7f020399

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->nNormalImg:I

    .line 293
    iget-object v8, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    const v9, 0x7f02039a

    iput v9, v8, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->nSelectImg:I

    goto/16 :goto_b

    .line 191
    :pswitch_data_36e
    .packed-switch 0x1
        :pswitch_75
        :pswitch_74
        :pswitch_1e7
        :pswitch_74
        :pswitch_74
        :pswitch_2b3
        :pswitch_74
        :pswitch_74
        :pswitch_306
    .end packed-switch
.end method

.method public UnSetObjCtrlInfo()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    packed-switch v0, :pswitch_data_26

    .line 159
    :goto_7
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->SetInit()V

    .line 160
    return-void

    .line 140
    :pswitch_d
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->SetInit()V

    goto :goto_7

    .line 143
    :pswitch_13
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mTextInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$TEXTOBJCTPT_INFO;->SetInit()V

    goto :goto_7

    .line 152
    :pswitch_19
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mRectInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$RECTOBJCTPT_INFO;->SetInit()V

    goto :goto_7

    .line 155
    :pswitch_1f
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mLineInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$LINEOBJCTPT_INFO;->SetInit()V

    goto :goto_7

    .line 135
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1f
        :pswitch_19
        :pswitch_d
        :pswitch_d
        :pswitch_19
    .end packed-switch
.end method

.method public isCellObjMarkArea(II)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 573
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjCtrlInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;

    iget v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTRL_INFO;->nType:I

    sparse-switch v1, :sswitch_data_34

    .line 583
    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 578
    :sswitch_9
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v1, v1, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjInfo:Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;

    iget-object v4, v4, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->mObjSize:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 579
    .local v0, sRect:Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 580
    const/4 v1, 0x1

    goto :goto_8

    .line 573
    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0xb -> :sswitch_9
        0xc -> :sswitch_9
    .end sparse-switch
.end method
