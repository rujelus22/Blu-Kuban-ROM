.class public Lcom/sec/android/mimage/photoretouching/AdjustView;
.super Landroid/widget/FrameLayout;
.source "AdjustView.java"


# instance fields
.field private bt_minus:Landroid/widget/ImageButton;

.field private bt_plus:Landroid/widget/ImageButton;

.field private mBaseValue:I

.field private mProgressValue:I

.field private mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->initWidget(Landroid/content/Context;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->initWidget(Landroid/content/Context;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/SeekBar$OnSeekBarChangeListener;II)V
    .registers 5
    .parameter "context"
    .parameter "listener"
    .parameter "b"
    .parameter "p"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput p3, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mBaseValue:I

    .line 23
    iput p4, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mProgressValue:I

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/AdjustView;->initWidget(Landroid/content/Context;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/AdjustView;)Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;
    .registers 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    return-object v0
.end method

.method private initWidget(Landroid/content/Context;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    .line 42
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mBaseValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->setBaseValue(I)V

    .line 43
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mProgressValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->setProgress(I)V

    .line 44
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getThumbOffset()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getThumbOffset()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->setPadding(IIII)V

    .line 48
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->bt_minus:Landroid/widget/ImageButton;

    .line 49
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->bt_minus:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/AdjustView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/AdjustView$1;-><init>(Lcom/sec/android/mimage/photoretouching/AdjustView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->bt_plus:Landroid/widget/ImageButton;

    .line 58
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->bt_plus:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/AdjustView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/AdjustView$2;-><init>(Lcom/sec/android/mimage/photoretouching/AdjustView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/AdjustView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->sendStopMsg()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->setFlagPause(Z)V

    .line 78
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    .line 87
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->bt_minus:Landroid/widget/ImageButton;

    .line 88
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->bt_plus:Landroid/widget/ImageButton;

    .line 89
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->setFlagPause(Z)V

    .line 82
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/AdjustView;->mSeekbar:Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 73
    return-void
.end method
