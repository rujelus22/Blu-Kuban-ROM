.class public Lcom/sec/android/app/music/widget/ListSplitViewResizer;
.super Landroid/widget/LinearLayout;
.source "ListSplitViewResizer.java"


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field public static sSavedWidth:I


# instance fields
.field private mEnableResize:Z

.field private mLeftView:Lcom/sec/android/app/music/MusicContentListView;

.field private mRightContainer:Landroid/view/View;

.field private mScreenWidth:I

.field private mSplitDivider:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->CLASSNAME:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->sSavedWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mEnableResize:Z

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mEnableResize:Z

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 32
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 35
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_1f

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1c
    iput v1, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mScreenWidth:I

    .line 37
    return-void

    .line 35
    :cond_1f
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1c
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_b6

    .line 102
    :pswitch_9
    iget-boolean v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mEnableResize:Z

    if-eqz v2, :cond_b2

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mSplitDivider:Landroid/view/View;

    if-eqz v2, :cond_16

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mSplitDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 106
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v2, :cond_24

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/music/MusicContentListView;->setSplitBarPress(Z)V

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicContentListView;->invalidateAllViews()V

    :cond_24
    move v2, v3

    .line 115
    :goto_25
    return v2

    .line 63
    :pswitch_26
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mRightContainer:Landroid/view/View;

    if-nez v2, :cond_33

    .line 64
    const v2, 0x7f0c002e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mRightContainer:Landroid/view/View;

    .line 66
    :cond_33
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mRightContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mRightContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x41f0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_78

    .line 68
    iput-boolean v3, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mEnableResize:Z

    .line 69
    const v2, 0x7f0c002d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/MusicContentListView;

    iput-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/MusicContentListView;->setSplitBarPress(Z)V

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicContentListView;->invalidateAllViews()V

    .line 72
    const v2, 0x7f0c002f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mSplitDivider:Landroid/view/View;

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mSplitDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    move v2, v3

    .line 74
    goto :goto_25

    .line 76
    :cond_78
    iput-boolean v5, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mEnableResize:Z

    .line 115
    :cond_7a
    :goto_7a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_25

    .line 80
    :pswitch_7f
    iget-boolean v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mEnableResize:Z

    if-eqz v2, :cond_7a

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mRightContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mScreenWidth:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v2, v4

    .line 83
    .local v0, caculatedWidth:I
    const/16 v2, 0x14

    if-le v0, v2, :cond_7a

    iget v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mScreenWidth:I

    if-ge v0, v2, :cond_7a

    .line 84
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_a6

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mSplitDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 91
    :cond_a6
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mRightContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    sput v0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->sSavedWidth:I

    move v2, v3

    .line 94
    goto/16 :goto_25

    .line 112
    .end local v0           #caculatedWidth:I
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_b2
    iput-boolean v5, p0, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->mEnableResize:Z

    goto :goto_7a

    .line 61
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_26
        :pswitch_9
        :pswitch_7f
    .end packed-switch
.end method
