.class public Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;
.super Ljava/lang/Object;
.source "UiObjectToastMenu.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_EDIT_OBJECT_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;
    }
.end annotation


# static fields
.field static final BAIDU_SEARCH_QUERY:Ljava/lang/String; = "http://baidu.mobi/s?vit=union&from=124l&word="


# instance fields
.field private m_nResID:I

.field protected m_oActivity:Landroid/app/Activity;

.field protected m_oCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

.field protected m_oCoreInterface:Lcom/infraware/office/evengine/EvInterface;

.field private m_oDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field protected m_oLayout:Landroid/widget/LinearLayout;

.field private m_oMenuClickListener:Landroid/view/View$OnClickListener;

.field protected m_oObjectRect:Landroid/graphics/Rect;

.field private m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

.field protected m_oPopupWindow:Landroid/widget/PopupWindow;

.field protected mbSupportToast:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 5
    .parameter "a_oActivity"
    .parameter "a_oCallbackListener"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->mbSupportToast:Z

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oObjectRect:Landroid/graphics/Rect;

    .line 84
    iput v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_nResID:I

    .line 490
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$1;-><init>(Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 500
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$2;-><init>(Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oMenuClickListener:Landroid/view/View$OnClickListener;

    .line 88
    invoke-static {p1}, Lcom/infraware/common/define/CMModelDefine;->haveObjectToast(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->mbSupportToast:Z

    .line 89
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    .line 90
    iput-object p2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 91
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCoreInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 92
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;-><init>(Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    .line 93
    return-void
.end method

.method private initBackgroundResource()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/16 v3, 0x8

    .line 448
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->getHorizontalStyle()I

    move-result v0

    .line 449
    .local v0, nPopupHStyle:I
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->getVerticalStyle()I

    move-result v1

    .line 451
    .local v1, nPopupVStyle:I
    if-ne v1, v3, :cond_43

    if-ne v0, v6, :cond_43

    .line 453
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f020253

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 454
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 485
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 486
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 487
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 488
    return-void

    .line 457
    :cond_43
    if-ne v1, v3, :cond_59

    const/4 v2, 0x4

    if-ne v0, v2, :cond_59

    .line 459
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f020252

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 460
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_27

    .line 463
    :cond_59
    if-ne v1, v3, :cond_6e

    if-ne v0, v7, :cond_6e

    .line 465
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f020254

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 466
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_27

    .line 469
    :cond_6e
    if-ne v1, v4, :cond_83

    if-ne v0, v6, :cond_83

    .line 471
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f020257

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 472
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_27

    .line 474
    :cond_83
    if-ne v1, v4, :cond_99

    const/4 v2, 0x4

    if-ne v0, v2, :cond_99

    .line 476
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f020256

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 477
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_27

    .line 479
    :cond_99
    if-ne v1, v4, :cond_27

    if-ne v0, v7, :cond_27

    .line 481
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f020258

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 482
    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_27
.end method

.method private initPopupLocation(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Landroid/graphics/Rect;
    .registers 14
    .parameter "evObjectProc"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 281
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 282
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    const v7, 0x7f0c0142

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, oSurfaceView:Landroid/view/View;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 285
    .local v0, inflateMargin:Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 292
    .local v1, layoutSize:Landroid/graphics/Point;
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->getObjectRect(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Landroid/graphics/Rect;

    move-result-object v3

    .line 293
    .local v3, textRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    .line 294
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    .line 295
    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 296
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 293
    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    .local v4, toastRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 300
    .local v5, viewRect:Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4, v6, v7}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->inflateRect(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v4

    .line 303
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    invoke-virtual {v6}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->initSytle()V

    .line 305
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-lt v6, v7, :cond_76

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_89

    .line 307
    :cond_76
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->setVertical(I)V

    .line 308
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 311
    :cond_89
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_97

    .line 312
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v10, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 316
    :cond_97
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_cb

    .line 317
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_af

    .line 319
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 322
    :cond_af
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_cb

    .line 323
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 324
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_105

    .line 325
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->setHorizontal(I)V

    .line 332
    :cond_cb
    :goto_cb
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_e7

    .line 333
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 334
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_10b

    .line 335
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->setHorizontal(I)V

    .line 342
    :cond_e7
    :goto_e7
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_fa

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Oopss!!"

    invoke-static {v6, v7}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_fa
    iget v6, v0, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {p0, v4, v6, v7}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->inflateRect(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    .line 327
    :cond_105
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    invoke-virtual {v6, v11}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->setHorizontal(I)V

    goto :goto_cb

    .line 337
    :cond_10b
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    invoke-virtual {v6, v11}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->setHorizontal(I)V

    goto :goto_e7
.end method


# virtual methods
.method public ToastFinalize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oObjectRect:Landroid/graphics/Rect;

    .line 97
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    .line 98
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCallbackListener:Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;

    .line 99
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_12

    .line 100
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 101
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    .line 103
    :cond_12
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCoreInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 104
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    .line 105
    iput-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    .line 106
    return-void
.end method

.method protected checkEnable(I)Z
    .registers 8
    .parameter "a_nViewId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 351
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    if-eqz v3, :cond_37

    .line 352
    const/4 v1, 0x1

    .line 354
    .local v1, bEnable:Z
    packed-switch p1, :pswitch_data_3a

    .line 371
    .end local v1           #bEnable:Z
    :cond_c
    :goto_c
    :pswitch_c
    return v1

    .line 358
    .restart local v1       #bEnable:Z
    :pswitch_d
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCoreInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    .line 359
    .local v0, aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    iget v3, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->bCutCopy:I

    if-ne v3, v4, :cond_19

    move v1, v4

    .line 360
    :goto_18
    goto :goto_c

    :cond_19
    move v1, v5

    .line 359
    goto :goto_18

    .line 362
    .end local v0           #aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    :pswitch_1b
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    check-cast v3, Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->hasClipBoardData()I

    move-result v3

    if-ne v3, v4, :cond_27

    move v1, v4

    .line 363
    :goto_26
    goto :goto_c

    :cond_27
    move v1, v5

    .line 362
    goto :goto_26

    .line 365
    :pswitch_29
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCoreInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, separateMarkString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_c

    .line 367
    const/4 v1, 0x0

    goto :goto_c

    .end local v1           #bEnable:Z
    .end local v2           #separateMarkString:Ljava/lang/String;
    :cond_37
    move v1, v5

    .line 371
    goto :goto_c

    .line 354
    nop

    :pswitch_data_3a
    .packed-switch 0x7f0c02ee
        :pswitch_1b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_29
    .end packed-switch
.end method

.method protected containObject(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "objectRect"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->getViewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 234
    const/4 v0, 0x1

    .line 235
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected create(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Z
    .registers 19
    .parameter "evObjectProc"

    .prologue
    .line 110
    if-nez p1, :cond_4

    .line 111
    const/4 v12, 0x0

    .line 208
    :goto_3
    return v12

    .line 113
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCoreInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v12}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v5

    .line 114
    .local v5, oCaretInfo:Lcom/infraware/office/evengine/EV$CARET_INFO;
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetDownPosition()Landroid/graphics/Point;

    move-result-object v9

    .line 115
    .local v9, pTouchDownPos:Landroid/graphics/Point;
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlSPosition()Landroid/graphics/Point;

    move-result-object v8

    .line 116
    .local v8, pCtrlStartPos:Landroid/graphics/Point;
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlEPosition()Landroid/graphics/Point;

    move-result-object v7

    .line 117
    .local v7, pCtrlEndPos:Landroid/graphics/Point;
    iget v12, v8, Landroid/graphics/Point;->x:I

    if-nez v12, :cond_57

    iget v12, v8, Landroid/graphics/Point;->y:I

    if-nez v12, :cond_57

    iget v12, v7, Landroid/graphics/Point;->x:I

    if-nez v12, :cond_57

    iget v12, v7, Landroid/graphics/Point;->y:I

    if-nez v12, :cond_57

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    const/high16 v13, 0x4200

    invoke-static {v12, v13}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v12

    float-to-int v10, v12

    .line 120
    .local v10, tollerance:I
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v5, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    sub-int/2addr v12, v10

    iget v13, v5, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    iget v14, v5, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    iget v15, v5, Lcom/infraware/office/evengine/EV$CARET_INFO;->nWidth:I

    add-int/2addr v14, v15

    add-int/2addr v14, v10

    iget v15, v5, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    iget v0, v5, Lcom/infraware/office/evengine/EV$CARET_INFO;->nHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    .local v11, touchRect:Landroid/graphics/Rect;
    iget v12, v9, Landroid/graphics/Point;->x:I

    iget v13, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_78

    .line 122
    const/4 v12, 0x0

    goto :goto_3

    .line 124
    .end local v10           #tollerance:I
    .end local v11           #touchRect:Landroid/graphics/Rect;
    :cond_57
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlType()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_78

    .line 127
    iget v12, v9, Landroid/graphics/Point;->x:I

    iget v13, v8, Landroid/graphics/Point;->x:I

    if-lt v12, v13, :cond_76

    iget v12, v9, Landroid/graphics/Point;->x:I

    iget v13, v7, Landroid/graphics/Point;->x:I

    if-gt v12, v13, :cond_76

    .line 128
    iget v12, v9, Landroid/graphics/Point;->y:I

    iget v13, v8, Landroid/graphics/Point;->y:I

    if-lt v12, v13, :cond_76

    iget v12, v9, Landroid/graphics/Point;->y:I

    iget v13, v7, Landroid/graphics/Point;->y:I

    if-le v12, v13, :cond_78

    .line 129
    :cond_76
    const/4 v12, 0x0

    goto :goto_3

    .line 132
    :cond_78
    const v4, 0x7f03007f

    .line 133
    .local v4, nResID:I
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlType()I

    move-result v12

    packed-switch v12, :pswitch_data_144

    .line 150
    const v4, 0x7f03007f

    .line 154
    :goto_85
    :pswitch_85
    move-object/from16 v0, p0

    iput v4, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_nResID:I

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_nResID:I

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    if-nez v12, :cond_10a

    .line 159
    new-instance v12, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-direct {v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    new-instance v13, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$3;-><init>(Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;)V

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 190
    :goto_e9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 191
    .local v2, nChildCount:I
    const/4 v3, 0x0

    .line 192
    .local v3, nEnableChildCount:I
    const/4 v6, 0x0

    .line 193
    .local v6, oChildView:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f4
    if-lt v1, v2, :cond_116

    .line 206
    if-nez v3, :cond_141

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 136
    .end local v1           #i:I
    .end local v2           #nChildCount:I
    .end local v3           #nEnableChildCount:I
    .end local v6           #oChildView:Landroid/view/View;
    :pswitch_fb
    invoke-static {}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->isSupportDictionary()Z

    move-result v12

    if-eqz v12, :cond_105

    .line 137
    const v4, 0x7f030080

    goto :goto_85

    .line 139
    :cond_105
    const v4, 0x7f030081

    .line 140
    goto/16 :goto_85

    .line 187
    :cond_10a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_e9

    .line 195
    .restart local v1       #i:I
    .restart local v2       #nChildCount:I
    .restart local v3       #nEnableChildCount:I
    .restart local v6       #oChildView:Landroid/view/View;
    :cond_116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 196
    instance-of v12, v6, Landroid/view/View;

    if-eqz v12, :cond_13e

    .line 198
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->checkEnable(I)Z

    move-result v12

    invoke-virtual {v6, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_13e

    .line 202
    add-int/lit8 v3, v3, 0x1

    .line 193
    :cond_13e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f4

    .line 208
    :cond_141
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 133
    :pswitch_data_144
    .packed-switch 0x3
        :pswitch_fb
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_85
    .end packed-switch
.end method

.method protected getObjectRect(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Landroid/graphics/Rect;
    .registers 9
    .parameter "evObjectProc"

    .prologue
    const/4 v3, -0x1

    .line 217
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2b

    .line 218
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlSPosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 219
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetTextSPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 220
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlEPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 221
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetTextEPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjectPickerSize()I

    move-result v6

    add-int/2addr v5, v6

    .line 218
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 229
    :goto_2a
    return-object v1

    .line 224
    :cond_2b
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oCoreInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretInfo_Editor()Lcom/infraware/office/evengine/EV$CARET_INFO;

    move-result-object v0

    .line 225
    .local v0, oCaretInfo:Lcom/infraware/office/evengine/EV$CARET_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$CARET_INFO;->bCaret:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4a

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    iget v3, v0, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    iget v4, v0, Lcom/infraware/office/evengine/EV$CARET_INFO;->nX:I

    iget v5, v0, Lcom/infraware/office/evengine/EV$CARET_INFO;->nWidth:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/infraware/office/evengine/EV$CARET_INFO;->nY:I

    iget v6, v0, Lcom/infraware/office/evengine/EV$CARET_INFO;->nHeight:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2a

    .line 229
    :cond_4a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2a
.end method

.method public getResID()I
    .registers 2

    .prologue
    .line 438
    iget v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_nResID:I

    return v0
.end method

.method protected getViewRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 212
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    const v2, 0x7f0c0142

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, oSurfaceView:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public inflateRect(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 5
    .parameter "rect"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 272
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 273
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 274
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 275
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 276
    return-object p1
.end method

.method public isShow()Z
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    .line 412
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 414
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onConfigurationChanged()V
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 443
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 444
    :cond_9
    return-void
.end method

.method public setObjectRectOnTouchDown(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V
    .registers 7
    .parameter "evObjectProc"

    .prologue
    .line 239
    if-nez p1, :cond_3

    .line 248
    :cond_2
    :goto_2
    return-void

    .line 242
    :cond_3
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oObjectRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlSPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 244
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlSPosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 245
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlEPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 246
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlEPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 243
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2
.end method

.method protected show(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Z)V
    .registers 12
    .parameter "evObjectProc"
    .parameter "a_bShow"

    .prologue
    const/4 v8, 0x0

    .line 377
    iget-boolean v4, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->mbSupportToast:Z

    if-nez v4, :cond_6

    .line 407
    :cond_5
    :goto_5
    return-void

    .line 380
    :cond_6
    if-eqz p2, :cond_51

    .line 382
    if-eqz p1, :cond_5

    .line 385
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->create(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 386
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_5

    .line 387
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_5

    .line 391
    :cond_1a
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 392
    .local v0, location:[I
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    const v5, 0x7f0c0142

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 393
    .local v2, oSurfaceView:Landroid/view/View;
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    const v5, 0x7f0c0046

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 394
    .local v1, oMainLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 395
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    invoke-virtual {v4}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->initSytle()V

    .line 397
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->initPopupLocation(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Landroid/graphics/Rect;

    move-result-object v3

    .line 398
    .local v3, toastRect:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->initBackgroundResource()V

    .line 400
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    .line 401
    iget v5, v3, Landroid/graphics/Rect;->left:I

    aget v6, v0, v8

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x1

    aget v7, v0, v7

    add-int/2addr v6, v7

    .line 400
    invoke-virtual {v4, v1, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_5

    .line 405
    .end local v0           #location:[I
    .end local v1           #oMainLayout:Landroid/widget/LinearLayout;
    .end local v2           #oSurfaceView:Landroid/view/View;
    .end local v3           #toastRect:Landroid/graphics/Rect;
    :cond_51
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_5
.end method

.method public showOnInputAction(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;I)Z
    .registers 5
    .parameter "evObjectProc"
    .parameter "gestureStatus"

    .prologue
    const/4 v0, 0x1

    .line 252
    invoke-virtual {p1}, Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 263
    :cond_8
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1d

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->show(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Z)V

    .line 268
    :goto_e
    return v0

    .line 254
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->getObjectRect(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->containObject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->show(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;Z)V

    goto :goto_e

    .line 268
    :cond_1d
    const/4 v0, 0x0

    goto :goto_e

    .line 252
    nop

    :pswitch_data_20
    .packed-switch 0x3
        :pswitch_f
    .end packed-switch
.end method

.method public update(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)V
    .registers 10
    .parameter "evObjectProc"

    .prologue
    .line 419
    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->isShow()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 420
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 421
    .local v0, location:[I
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oActivity:Landroid/app/Activity;

    const v4, 0x7f0c0142

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 422
    .local v1, oSurfaceView:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 423
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupStyle:Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu$PopupStyle;->initSytle()V

    .line 425
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->initPopupLocation(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Landroid/graphics/Rect;

    move-result-object v2

    .line 426
    .local v2, toastRect:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->initBackgroundResource()V

    .line 428
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->getObjectRect(Lcom/infraware/office/baseframe/gestureproc/EvObjectProc;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->containObject(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 429
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aget v5, v0, v5

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    aget v6, v0, v6

    add-int/2addr v5, v6

    .line 430
    iget-object v6, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    .line 429
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 435
    .end local v0           #location:[I
    .end local v1           #oSurfaceView:Landroid/view/View;
    .end local v2           #toastRect:Landroid/graphics/Rect;
    :cond_4a
    :goto_4a
    return-void

    .line 433
    .restart local v0       #location:[I
    .restart local v1       #oSurfaceView:Landroid/view/View;
    .restart local v2       #toastRect:Landroid/graphics/Rect;
    :cond_4b
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/UiObjectToastMenu;->m_oPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_4a
.end method
