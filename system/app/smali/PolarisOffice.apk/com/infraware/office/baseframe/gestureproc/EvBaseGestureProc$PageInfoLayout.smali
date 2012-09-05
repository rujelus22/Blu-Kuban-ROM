.class public Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;
.super Ljava/lang/Object;
.source "EvBaseGestureProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageInfoLayout"
.end annotation


# static fields
.field protected static final PAGEINFO_INVISIBLE:I = 0x0

.field protected static final PAGEINFO_SETTEXT:I = 0x2

.field protected static final PAGEINFO_VISIBLE:I = 0x1

.field protected static final ZOOM_IN:I = 0x3

.field protected static final ZOOM_OUT:I = 0x4


# instance fields
.field listener:Landroid/view/View$OnTouchListener;

.field protected mActivity:Landroid/app/Activity;

.field protected mHandler:Landroid/os/Handler;

.field protected mPageInfoLayout:Landroid/widget/LinearLayout;

.field protected mTextView:Landroid/widget/TextView;

.field protected mZoomEditLayout:Landroid/widget/RelativeLayout;

.field private mZoomFlag:Z

.field protected mZoomInButton:Landroid/widget/ImageButton;

.field protected mZoomOutButton:Landroid/widget/ImageButton;

.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;Landroid/app/Activity;)V
    .registers 5
    .parameter
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 579
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mActivity:Landroid/app/Activity;

    .line 509
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mPageInfoLayout:Landroid/widget/LinearLayout;

    .line 510
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mTextView:Landroid/widget/TextView;

    .line 511
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomEditLayout:Landroid/widget/RelativeLayout;

    .line 512
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    .line 513
    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z

    .line 523
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$1;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mHandler:Landroid/os/Handler;

    .line 581
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout$2;-><init>(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->listener:Landroid/view/View$OnTouchListener;

    .line 564
    iput-object p2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mActivity:Landroid/app/Activity;

    .line 565
    const v0, 0x7f0c0147

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mPageInfoLayout:Landroid/widget/LinearLayout;

    .line 566
    const v0, 0x7f0c0148

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mTextView:Landroid/widget/TextView;

    .line 568
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSingleTouchModel()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 569
    const v0, 0x7f0c0156

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomEditLayout:Landroid/widget/RelativeLayout;

    .line 570
    const v0, 0x7f0c0157

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    .line 571
    const v0, 0x7f0c0158

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    .line 574
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->checkZoomOnStart()V

    .line 576
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 577
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_73
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V
    .registers 1
    .parameter

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setText()V

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Z
    .registers 2
    .parameter

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z

    return v0
.end method

.method static synthetic access$3(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V
    .registers 1
    .parameter

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setZoomIn()V

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)V
    .registers 1
    .parameter

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setZoomout()V

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomFlag:Z

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->onTouchDownCheckZoomBtEnable(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;)Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;
    .registers 2
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    return-object v0
.end method

.method private onTouchDownCheckZoomBtEnable(I)V
    .registers 5
    .parameter "ZoomInOrOut"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 616
    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 617
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 618
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 623
    :cond_f
    :goto_f
    return-void

    .line 619
    :cond_10
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 620
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    goto :goto_f
.end method

.method private setText()V
    .registers 7

    .prologue
    .line 676
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v4, v4, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    .line 677
    .local v0, configInfo:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    .line 678
    .local v1, nCurPage:I
    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    .line 679
    .local v2, nTotalPage:I
    if-lez v1, :cond_3b

    if-lez v2, :cond_3b

    .line 681
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget v4, v4, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mPageInfoType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, pageInfo:Ljava/lang/String;
    :goto_36
    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    .end local v3           #pageInfo:Ljava/lang/String;
    :cond_3b
    return-void

    .line 685
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #pageInfo:Ljava/lang/String;
    goto :goto_36
.end method

.method private setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 692
    if-nez p1, :cond_5

    .line 693
    invoke-direct {p0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setText()V

    .line 695
    :cond_5
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSingleTouchModel()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 696
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mPageInfoLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomEditLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1d

    .line 697
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mPageInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 705
    :cond_1d
    :goto_1d
    return-void

    .line 701
    :cond_1e
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mPageInfoLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1d

    .line 702
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mPageInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1d
.end method

.method private setZoomIn()V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 708
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v12

    .line 709
    .local v12, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v2, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    .line 710
    .local v2, nScale:I
    add-int/lit8 v2, v2, 0xa

    .line 711
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v4}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v4

    iget v4, v4, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->minMax(III)I

    move-result v2

    .line 712
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_3b

    .line 713
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v7, 0x1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 714
    :cond_3b
    return-void
.end method

.method private setZoomout()V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 717
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v12

    .line 718
    .local v12, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v2, v12, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    .line 719
    .local v2, nScale:I
    add-int/lit8 v2, v2, -0xa

    .line 720
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    iget-object v4, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v4}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v4

    iget v4, v4, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->minMax(III)I

    move-result v2

    .line 721
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    if-eq v0, v2, :cond_3b

    .line 722
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget-object v0, v0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v7, 0x1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v11, v1

    invoke-virtual/range {v0 .. v11}, Lcom/infraware/office/evengine/EvInterface;->ISetZoom(IIIIIIIIIII)V

    .line 723
    :cond_3b
    return-void
.end method


# virtual methods
.method public PageInfofinalize()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 663
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->setVisibility(I)V

    .line 664
    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mActivity:Landroid/app/Activity;

    .line 665
    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mPageInfoLayout:Landroid/widget/LinearLayout;

    .line 666
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 667
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    iget v2, v2, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->mTempTextSizeOfmTextView:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 668
    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mTextView:Landroid/widget/TextView;

    .line 670
    :cond_19
    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomEditLayout:Landroid/widget/RelativeLayout;

    .line 671
    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    .line 672
    iput-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    .line 673
    return-void
.end method

.method public checkZoomBtEnable()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 626
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    .line 627
    .local v0, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    if-ne v1, v2, :cond_1e

    .line 628
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 629
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 630
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 639
    :goto_1d
    return-void

    .line 631
    :cond_1e
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    if-ne v1, v2, :cond_34

    .line 632
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 633
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 634
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1d

    .line 636
    :cond_34
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 637
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1d
.end method

.method public checkZoomOnStart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 653
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    .line 654
    .local v0, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    if-ne v1, v2, :cond_12

    .line 655
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 657
    :cond_12
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    if-ne v1, v2, :cond_1d

    .line 658
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 660
    :cond_1d
    return-void
.end method

.method public isZoomButtonsPressed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 726
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_19

    .line 727
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 729
    :cond_19
    :goto_19
    return v0

    .line 727
    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public refreshZoomBt()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 642
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->getConfigInfo()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    .line 643
    .local v0, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    if-eq v1, v2, :cond_12

    .line 644
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomInButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 646
    :cond_12
    iget v1, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    iget v2, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    if-eq v1, v2, :cond_1d

    .line 647
    iget-object v1, p0, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc$PageInfoLayout;->mZoomOutButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 649
    :cond_1d
    return-void
.end method
