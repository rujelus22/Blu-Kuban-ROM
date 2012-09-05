.class public Lcom/google/android/apps/books/widget/PageTurnView;
.super Landroid/renderscript/RSSurfaceView;
.source "PageTurnView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/PageTurnView$6;,
        Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;,
        Lcom/google/android/apps/books/widget/PageTurnView$TtsDataSource;,
        Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;,
        Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;,
        Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;,
        Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;,
        Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;,
        Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;,
        Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;,
        Lcom/google/android/apps/books/widget/PageTurnView$Mode;,
        Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;,
        Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;,
        Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;,
        Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;,
        Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;,
        Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;
    }
.end annotation


# instance fields
.field private final mAccessibilityEnabled:Z

.field private mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

.field private mAnchorPositionSlot:I

.field private mBasePosition:Lcom/google/android/apps/books/common/Position;

.field private final mCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

.field private mCurrentZone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

.field private final mCustomSlots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;",
            ">;"
        }
    .end annotation
.end field

.field private mEndedTurnSequenceNumber:I

.field private mEnqueuedTurnSequenceNumber:I

.field private mFraction:F

.field private mIsChromeVisible:Z

.field private mLastHighlight:Ljava/lang/String;

.field private final mNormalizedSlots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mPassageCount:I

.field private mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

.field private final mRenderListener:Lcom/google/android/apps/books/render/RendererListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/RendererListener",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

.field private final mRenderedSlots:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererSequenceNumber:I

.field private final mResumeTtsHandler:Landroid/os/Handler;

.field private mShouldReadLastPage:Z

.field private mSlotEndOfVolume:Ljava/lang/Integer;

.field private mSlotStartOfVolume:Ljava/lang/Integer;

.field private mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

.field private mStartedTurnSequenceNumber:I

.field private mTts:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

.field private mTtsController:Lcom/google/android/apps/books/tts/TextToSpeechController;

.field private mTtsEnabled:Z

.field private mTtsHighlightBoundsRequestId:I

.field private mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;

.field private mTtsHighlightRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTtsPaused:Z

.field private mTtsPosition:Lcom/google/android/apps/books/render/RenderPosition;

.field private mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

.field private mTurnDirection:I

.field private final mUpdateHandler:Landroid/os/Handler;

.field private mWaitingForFinishAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/PageTurnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 407
    invoke-direct {p0, p1, p2}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    .line 137
    iput v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    .line 168
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderedSlots:Ljava/util/Set;

    .line 253
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;

    .line 260
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    .line 263
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    .line 265
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    .line 331
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/PageTurnView$1;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mUpdateHandler:Landroid/os/Handler;

    .line 358
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPassageCount:I

    .line 392
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentZone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    .line 394
    iput-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mIsChromeVisible:Z

    .line 396
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->SENTENCE:Lcom/google/android/apps/books/tts/TtsUnit;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 1218
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/PageTurnView$2;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderListener:Lcom/google/android/apps/books/render/RendererListener;

    .line 1543
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    .line 2306
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/PageTurnView$5;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mResumeTtsHandler:Landroid/os/Handler;

    .line 408
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mContext:Landroid/content/Context;

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksApplication;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAccessibilityEnabled:Z

    .line 411
    invoke-static {}, Lcom/google/android/apps/books/app/BooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 412
    invoke-static {p1}, Lcom/google/android/apps/books/app/TabletBooksApplication;->getIcsApis(Landroid/content/Context;)Lcom/google/android/apps/books/app/IcsApis;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->createOnHoverListener()Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/books/app/IcsApis;->setOnHoverListener(Landroid/view/View;Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;)V

    .line 416
    :cond_6c
    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->setFocusable(Z)V

    .line 417
    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->setFocusableInTouchMode(Z)V

    .line 418
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/widget/PageTurnView;IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView;->startPositionUpdate(IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/books/widget/PageTurnView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mShouldReadLastPage:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/apps/books/widget/PageTurnView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mShouldReadLastPage:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->maybeReadSpecialView(Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->serviceQueue()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/common/Position;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mBasePosition:Lcom/google/android/apps/books/common/Position;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->finishPositionUpdate()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/TextRange;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRectangles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRectangles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/ReaderRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/books/widget/PageTurnView;ILandroid/graphics/Bitmap;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/apps/books/widget/PageTurnView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageError(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/apps/books/widget/PageTurnView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2900(Ljava/lang/Integer;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->maxIgnoringNull(Ljava/lang/Integer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/android/apps/books/widget/PageTurnView;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$3100(Ljava/lang/Integer;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->minIgnoringNull(Ljava/lang/Integer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/google/android/apps/books/widget/PageTurnView;ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/apps/books/widget/PageTurnView;Z)Lcom/google/android/apps/books/tts/TextToSpeechController;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPosition:Lcom/google/android/apps/books/render/RenderPosition;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPosition:Lcom/google/android/apps/books/render/RenderPosition;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;IZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;IZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightBoundsRequestId:I

    return v0
.end method

.method static synthetic access$3900(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getCurrentRelativeSlots()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/google/android/apps/books/widget/PageTurnView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mLastHighlight:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/books/widget/PageTurnView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mWaitingForFinishAnimation:Z

    return p1
.end method

.method static synthetic access$4104(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mEnqueuedTurnSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mEnqueuedTurnSequenceNumber:I

    return v0
.end method

.method static synthetic access$4200(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mStartedTurnSequenceNumber:I

    return v0
.end method

.method static synthetic access$4202(Lcom/google/android/apps/books/widget/PageTurnView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mStartedTurnSequenceNumber:I

    return p1
.end method

.method static synthetic access$4300(Lcom/google/android/apps/books/widget/PageTurnView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->startTurn(I)V

    return-void
.end method

.method static synthetic access$4402(Lcom/google/android/apps/books/widget/PageTurnView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mEndedTurnSequenceNumber:I

    return p1
.end method

.method static synthetic access$4500(Lcom/google/android/apps/books/widget/PageTurnView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->finishTurnAnimation(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/apps/books/widget/PageTurnView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(I)V

    return-void
.end method

.method static synthetic access$4700(I)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->nameForDirection(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybePauseTTS()V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentZone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentZone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/google/android/apps/books/widget/PageTurnView;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->sendAccessibilityEventWithText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/android/apps/books/widget/PageTurnView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mIsChromeVisible:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybeUnPauseTtsDelayed()V

    return-void
.end method

.method static synthetic access$5302(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/TextRange;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->highlightSpokenText(Lcom/google/android/apps/books/render/TextRange;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/android/apps/books/widget/PageTurnView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->onStoppedSpeaking(Z)V

    return-void
.end method

.method static synthetic access$5602(Lcom/google/android/apps/books/widget/PageTurnView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybeUnPauseTTS()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/books/widget/PageTurnView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/widget/PageTurnView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/books/widget/PageTurnView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->advancePage()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    return-object p1
.end method

.method private advancePage()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 906
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-nez v2, :cond_d

    .line 907
    const-string v1, "PageTurnView"

    const-string v2, "ignoring advancePage(), mAnchorPosition is missing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :goto_c
    return-void

    .line 911
    :cond_d
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x2

    .line 912
    .local v0, pageOffset:I
    :goto_14
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->moveByOffset(II)V

    goto :goto_c

    .end local v0           #pageOffset:I
    :cond_18
    move v0, v1

    .line 911
    goto :goto_14
.end method

.method private cancelUnPauseTts()V
    .registers 3

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mResumeTtsHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2304
    return-void
.end method

.method private createOnHoverListener()Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;
    .registers 2

    .prologue
    .line 2109
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/PageTurnView$4;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    return-object v0
.end method

.method private dispatchCommand(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1559
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->serviceQueue()V

    .line 1560
    return-void
.end method

.method private endTurn(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 1831
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-nez v0, :cond_13

    .line 1832
    const-string v0, "PageTurnView"

    const-string v1, "missing mRenderScript, exiting EndTurnDirectional early"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    .line 1834
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    .line 1852
    :cond_12
    :goto_12
    return-void

    .line 1837
    :cond_13
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    if-nez v0, :cond_27

    .line 1839
    const-string v0, "PageTurnView"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1840
    const-string v0, "PageTurnView"

    const-string v1, "EndTurnDirectional.run() early exit: Not turning"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1845
    :cond_27
    const-string v0, "PageTurnView"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1846
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTurn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_4d
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    .line 1850
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    .line 1851
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->finishTurnAnimation(I)V

    goto :goto_12
.end method

.method private declared-synchronized finishPositionUpdate()V
    .registers 5

    .prologue
    .line 1168
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_54

    if-nez v1, :cond_7

    .line 1185
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 1172
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    iget v2, v2, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->targetSlot:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/RenderPosition;

    .line 1173
    .local v0, normalized:Lcom/google/android/apps/books/render/RenderPosition;
    if-eqz v0, :cond_5

    .line 1174
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    iget-object v2, v0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    iput-object v2, v1, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->position:Lcom/google/android/apps/books/common/Position;

    .line 1176
    const-string v1, "PageTurnView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1177
    const-string v1, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishPositionUpdate() found position; action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_3e
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0x190

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    .line 1183
    iget-object v1, v0, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->maybeUnPauseTTS(Lcom/google/android/apps/books/common/Position;)V
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_54

    goto :goto_5

    .line 1168
    .end local v0           #normalized:Lcom/google/android/apps/books/render/RenderPosition;
    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private finishTurnAnimation(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 1795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mWaitingForFinishAnimation:Z

    .line 1796
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->finishOpening(I)V

    .line 1797
    return-void
.end method

.method private getCurrentRelativeSlots()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v4

    .line 939
    .local v4, shouldDisplayTwoPages:Z
    if-eqz v4, :cond_19

    .line 940
    const/4 v1, -0x3

    .line 941
    .local v1, leftOffset:I
    const/4 v3, 0x2

    .line 946
    .local v3, rightOffset:I
    :goto_8
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 947
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    move v0, v1

    .local v0, i:I
    :goto_d
    if-gt v0, v3, :cond_1c

    .line 948
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 943
    .end local v0           #i:I
    .end local v1           #leftOffset:I
    .end local v2           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3           #rightOffset:I
    :cond_19
    const/4 v1, -0x1

    .line 944
    .restart local v1       #leftOffset:I
    const/4 v3, 0x1

    .restart local v3       #rightOffset:I
    goto :goto_8

    .line 950
    .restart local v0       #i:I
    .restart local v2       #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1c
    return-object v2
.end method

.method private getShouldAutoAdvanceTts()Z
    .registers 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    sget-object v1, Lcom/google/android/apps/books/tts/TtsUnit;->SENTENCE:Lcom/google/android/apps/books/tts/TtsUnit;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;
    .registers 7
    .parameter "createIfNecessary"

    .prologue
    const/4 v4, 0x0

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsController:Lcom/google/android/apps/books/tts/TextToSpeechController;

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getSpeechIsAvailable()Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p1, :cond_35

    .line 523
    new-instance v0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTts:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

    .line 524
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController;

    new-instance v1, Lcom/google/android/apps/books/widget/PageTurnView$TtsDataSource;

    invoke-direct {v1, p0, v4}, Lcom/google/android/apps/books/widget/PageTurnView$TtsDataSource;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTts:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

    new-instance v3, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsController:Lcom/google/android/apps/books/tts/TextToSpeechController;

    .line 525
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPassageCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    .line 526
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsController:Lcom/google/android/apps/books/tts/TextToSpeechController;

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPassageCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/tts/TextToSpeechController;->setPassageCount(I)V

    .line 529
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsController:Lcom/google/android/apps/books/tts/TextToSpeechController;

    return-object v0
.end method

.method private highlightSpokenText(Lcom/google/android/apps/books/render/TextRange;)V
    .registers 5
    .parameter "range"

    .prologue
    .line 568
    const-string v1, "missing highlightRange"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v1, p1, Lcom/google/android/apps/books/render/TextRange;->position:Lcom/google/android/apps/books/common/Position;

    const-string v2, "missing position"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;

    .line 573
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v1, :cond_20

    .line 574
    iget-object v1, p1, Lcom/google/android/apps/books/render/TextRange;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, positionString:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightBoundsRequestId:I

    .line 582
    .end local v0           #positionString:Ljava/lang/String;
    :cond_20
    return-void
.end method

.method private isTurning()Z
    .registers 2

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mWaitingForFinishAnimation:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static maxIgnoringNull(Ljava/lang/Integer;I)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1496
    if-nez p0, :cond_3

    .end local p1
    :goto_2
    return p1

    .restart local p1
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2
.end method

.method private maybePauseTTS()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1958
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    if-eqz v1, :cond_18

    .line 1959
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v0

    .line 1960
    .local v0, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    if-nez v1, :cond_18

    .line 1961
    invoke-virtual {v0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->stopSpeaking()V

    .line 1962
    iput-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    .line 1963
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->onStoppedSpeaking(Z)V

    .line 1966
    .end local v0           #tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    :cond_18
    return-void
.end method

.method private maybeReadSpecialView(Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    .registers 4
    .parameter "customView"

    .prologue
    .line 761
    const-string v1, "missing customView"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-interface {p1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, description:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 765
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->sendAccessibilityEventWithText(ILjava/lang/String;)V

    .line 768
    :cond_10
    return-void
.end method

.method private maybeUnPauseTTS()V
    .registers 3

    .prologue
    .line 2007
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    iget v1, v1, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    if-nez v1, :cond_12

    .line 2010
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v0, v1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    .line 2014
    .local v0, position:Lcom/google/android/apps/books/common/Position;
    :goto_e
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybeUnPauseTTS(Lcom/google/android/apps/books/common/Position;)V

    .line 2015
    return-void

    .line 2012
    .end local v0           #position:Lcom/google/android/apps/books/common/Position;
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #position:Lcom/google/android/apps/books/common/Position;
    goto :goto_e
.end method

.method private maybeUnPauseTTS(Lcom/google/android/apps/books/common/Position;)V
    .registers 8
    .parameter "pos"

    .prologue
    const/4 v5, 0x0

    .line 1984
    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    if-eqz v2, :cond_2e

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isTurning()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mIsChromeVisible:Z

    if-nez v2, :cond_2e

    .line 1985
    invoke-direct {p0, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v1

    .line 1986
    .local v1, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-eqz v1, :cond_2e

    .line 1987
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v2, :cond_2f

    .line 1989
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->nearestPhraseWithUnit(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    move-result-object v0

    .line 1991
    .local v0, newPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getShouldAutoAdvanceTts()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController;->startSpeakingAtPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Z)V

    .line 1992
    iput-boolean v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    .line 2000
    .end local v0           #newPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    .end local v1           #tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    :cond_2e
    :goto_2e
    return-void

    .line 1993
    .restart local v1       #tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    :cond_2f
    if-eqz p1, :cond_2e

    .line 1994
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    invoke-interface {v2, p1}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->getPassageIndexForPosition(Lcom/google/android/apps/books/common/Position;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getShouldAutoAdvanceTts()Z

    move-result v4

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/google/android/apps/books/tts/TextToSpeechController;->startSpeakingAtPosition(ILcom/google/android/apps/books/common/Position;Lcom/google/android/apps/books/tts/TtsUnit;Z)V

    .line 1996
    iput-boolean v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    goto :goto_2e
.end method

.method private maybeUnPauseTtsDelayed()V
    .registers 5

    .prologue
    .line 2298
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->cancelUnPauseTts()V

    .line 2299
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mResumeTtsHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2300
    return-void
.end method

.method private static minIgnoringNull(Ljava/lang/Integer;I)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1492
    if-nez p0, :cond_3

    .end local p1
    :goto_2
    return p1

    .restart local p1
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2
.end method

.method private moveByOffset(II)V
    .registers 6
    .parameter "offset"
    .parameter "mode"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    add-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/render/RenderPosition;IIZ)V

    .line 903
    return-void
.end method

.method private moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;)V
    .registers 12
    .parameter "position"
    .parameter "fromUser"
    .parameter "lastAction"
    .parameter "highlight"
    .parameter "speak"
    .parameter "highlightSearch"
    .parameter "nextChapterWithSearchResult"

    .prologue
    const/4 v2, 0x0

    .line 539
    const-string v1, "missing position"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    if-nez p3, :cond_a

    if-nez p2, :cond_2a

    :cond_a
    const/4 v1, 0x1

    :goto_b
    const-string v3, "missing lastAction"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 542
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mBasePosition:Lcom/google/android/apps/books/common/Position;

    .line 543
    iput-object p4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mLastHighlight:Ljava/lang/String;

    .line 547
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->resetInternalState()V

    .line 549
    const/4 v0, 0x0

    .line 553
    .local v0, targetSlot:I
    invoke-direct {p0, v2, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView;->startPositionUpdate(IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V

    .line 557
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybePauseTTS()V

    .line 558
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 560
    new-instance v1, Lcom/google/android/apps/books/render/RenderPosition;

    invoke-direct {v1, p1, p4, p6, p7}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {p0, v1, v2, v2, p5}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/render/RenderPosition;IIZ)V

    .line 562
    return-void

    .end local v0           #targetSlot:I
    :cond_2a
    move v1, v2

    .line 540
    goto :goto_b
.end method

.method private moveToPosition(Lcom/google/android/apps/books/render/RenderPosition;IIZ)V
    .registers 15
    .parameter "position"
    .parameter "targetSlot"
    .parameter "mode"
    .parameter "speak"

    .prologue
    const/4 v9, 0x1

    .line 962
    const-string v6, "PageTurnView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moveToPosition() moving to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    .line 964
    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    .line 966
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v6, :cond_30

    .line 967
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v6, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setAnchorIndex(I)V

    .line 982
    :cond_30
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v4

    .line 985
    .local v4, shouldDisplayTwoPages:Z
    packed-switch p3, :pswitch_data_92

    .line 1015
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mode is an invalid value!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 987
    :pswitch_3f
    if-eqz v4, :cond_52

    .line 988
    const/4 v1, -0x3

    .line 989
    .local v1, leftOffset:I
    const/4 v3, 0x2

    .line 1018
    .local v3, rightOffset:I
    :goto_43
    move v0, v1

    .local v0, i:I
    :goto_44
    if-gt v0, v3, :cond_65

    .line 1019
    invoke-virtual {p1, v0}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v6

    add-int v7, p2, v0

    invoke-direct {p0, v6, v7, v9}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;IZ)V

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 991
    .end local v0           #i:I
    .end local v1           #leftOffset:I
    .end local v3           #rightOffset:I
    :cond_52
    const/4 v1, -0x1

    .line 992
    .restart local v1       #leftOffset:I
    const/4 v3, 0x1

    .line 994
    .restart local v3       #rightOffset:I
    goto :goto_43

    .line 997
    .end local v1           #leftOffset:I
    .end local v3           #rightOffset:I
    :pswitch_55
    if-eqz v4, :cond_5a

    .line 998
    const/4 v1, -0x3

    .line 999
    .restart local v1       #leftOffset:I
    const/4 v3, -0x2

    .restart local v3       #rightOffset:I
    goto :goto_43

    .line 1001
    .end local v1           #leftOffset:I
    .end local v3           #rightOffset:I
    :cond_5a
    const/4 v3, -0x1

    .restart local v3       #rightOffset:I
    move v1, v3

    .line 1003
    .restart local v1       #leftOffset:I
    goto :goto_43

    .line 1006
    .end local v1           #leftOffset:I
    .end local v3           #rightOffset:I
    :pswitch_5d
    if-eqz v4, :cond_62

    .line 1007
    const/4 v1, 0x1

    .line 1008
    .restart local v1       #leftOffset:I
    const/4 v3, 0x2

    .restart local v3       #rightOffset:I
    goto :goto_43

    .line 1010
    .end local v1           #leftOffset:I
    .end local v3           #rightOffset:I
    :cond_62
    const/4 v3, 0x1

    .restart local v3       #rightOffset:I
    move v1, v3

    .line 1012
    .restart local v1       #leftOffset:I
    goto :goto_43

    .line 1022
    .restart local v0       #i:I
    :cond_65
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v6, :cond_72

    .line 1023
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    iget v7, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    iget v8, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    invoke-virtual {v6, p2, v7, v8, v9}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    .line 1027
    :cond_72
    if-eqz p4, :cond_90

    iget-boolean v6, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    if-eqz v6, :cond_90

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v5

    .local v5, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-eqz v5, :cond_90

    .line 1028
    iget-object v2, p1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    .line 1029
    .local v2, pos:Lcom/google/android/apps/books/common/Position;
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    invoke-interface {v6, v2}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->getPassageIndexForPosition(Lcom/google/android/apps/books/common/Position;)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getShouldAutoAdvanceTts()Z

    move-result v8

    invoke-virtual {v5, v6, v2, v7, v8}, Lcom/google/android/apps/books/tts/TextToSpeechController;->startSpeakingAtPosition(ILcom/google/android/apps/books/common/Position;Lcom/google/android/apps/books/tts/TtsUnit;Z)V

    .line 1032
    .end local v2           #pos:Lcom/google/android/apps/books/common/Position;
    .end local v5           #tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    :cond_90
    return-void

    .line 985
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_5d
        :pswitch_55
    .end packed-switch
.end method

.method private static nameForDirection(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1920
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "forward"

    :goto_5
    return-object v0

    :cond_6
    const-string v0, "backward"

    goto :goto_5
.end method

.method private onStoppedSpeaking(Z)V
    .registers 8
    .parameter "refreshPage"

    .prologue
    .line 585
    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightBoundsRequestId:I

    .line 586
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRectangles:Ljava/util/List;

    .line 588
    if-nez p1, :cond_9

    .line 604
    :cond_8
    return-void

    .line 593
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getCurrentRelativeSlots()Ljava/util/Set;

    move-result-object v0

    .line 594
    .local v0, currentSlots:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 599
    .local v3, slot:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderedSlots:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 600
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/render/RenderPosition;->offsetBy(I)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v2

    .line 601
    .local v2, position:Lcom/google/android/apps/books/render/RenderPosition;
    iget v4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;IZ)V

    goto :goto_11
.end method

.method private requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;IZ)V
    .registers 12
    .parameter "position"
    .parameter "targetSlot"
    .parameter "setPageLoading"

    .prologue
    .line 1057
    const-string v0, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1058
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRenderPage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 1061
    .local v6, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    if-eqz v6, :cond_3f

    .line 1062
    invoke-direct {p0, p2, v6}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    .line 1080
    :goto_3e
    return-void

    .line 1064
    :cond_3f
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v0, :cond_65

    .line 1067
    if-eqz p3, :cond_48

    .line 1068
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageLoading(I)V

    .line 1070
    :cond_48
    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mBasePosition:Lcom/google/android/apps/books/common/Position;

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I

    iget-object v4, p1, Lcom/google/android/apps/books/render/RenderPosition;->highlightSearch:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/google/android/apps/books/render/RenderPosition;->nextHighlightChapterIndex:Ljava/lang/Integer;

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;-><init>(Lcom/google/android/apps/books/common/Position;IILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v7, p1, v0}, Lcom/google/android/apps/books/render/ReaderRenderer;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    .line 1074
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderedSlots:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 1078
    :cond_65
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageEmpty(I)V

    goto :goto_3e
.end method

.method private resetInternalState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mNormalizedSlots:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 500
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 501
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderedSlots:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 502
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRectangles:Ljava/util/List;

    .line 504
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    .line 505
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    .line 509
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v1, :cond_29

    .line 510
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v1}, Lcom/google/android/apps/books/render/ReaderRenderer;->cancelPendingRequests()V

    .line 512
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v0

    .line 513
    .local v0, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-eqz v0, :cond_29

    .line 514
    invoke-virtual {v0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->onPendingRequestsCanceled()V

    .line 518
    .end local v0           #tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    :cond_29
    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRendererSequenceNumber:I

    .line 519
    return-void
.end method

.method private restartTts()V
    .registers 5

    .prologue
    .line 2319
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v1

    .line 2320
    .local v1, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-nez v1, :cond_8

    .line 2338
    :cond_7
    :goto_7
    return-void

    .line 2324
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/apps/books/tts/TextToSpeechController;->stopSpeaking()V

    .line 2327
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->onStoppedSpeaking(Z)V

    .line 2329
    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    if-eqz v2, :cond_7

    .line 2330
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v2, :cond_27

    .line 2331
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->nearestPhraseWithUnit(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    move-result-object v0

    .line 2333
    .local v0, newPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getShouldAutoAdvanceTts()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController;->startSpeakingAtPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Z)V

    goto :goto_7

    .line 2335
    .end local v0           #newPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    :cond_27
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->startTtsAtCurrentPosition(Lcom/google/android/apps/books/tts/TextToSpeechController;)V

    goto :goto_7
.end method

.method private rewindPage()V
    .registers 4

    .prologue
    .line 916
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-nez v1, :cond_c

    .line 917
    const-string v1, "PageTurnView"

    const-string v2, "ignoring rewindPage(), mAnchorPosition is missing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :goto_b
    return-void

    .line 921
    :cond_c
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, -0x2

    .line 922
    .local v0, pageOffset:I
    :goto_13
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->moveByOffset(II)V

    goto :goto_b

    .line 921
    .end local v0           #pageOffset:I
    :cond_18
    const/4 v0, -0x1

    goto :goto_13
.end method

.method private sendAccessibilityEventWithText(ILjava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "textToAnnounce"

    .prologue
    .line 2176
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAccessibilityEnabled:Z

    if-nez v1, :cond_5

    .line 2183
    :goto_4
    return-void

    .line 2179
    :cond_5
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2180
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2182
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_4
.end method

.method private serviceQueue()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    .line 1571
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1572
    const-string v0, "PageTurnView"

    const-string v1, "serviceQueue() must be called from the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/PageTurnView$3;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->post(Ljava/lang/Runnable;)Z

    .line 1610
    :cond_1a
    return-void

    .line 1604
    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1605
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 1586
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1587
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1588
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1590
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;

    .line 1591
    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;->canRun()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1592
    const-string v3, "PageTurnView"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1593
    const-string v3, "PageTurnView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delaying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 1596
    :cond_6c
    const-string v3, "PageTurnView"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 1597
    const-string v3, "PageTurnView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Servicing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_8c
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1600
    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;->run()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_39
.end method

.method private setPageEmpty(I)V
    .registers 3
    .parameter "targetSlot"

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_9

    .line 1096
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 1098
    :cond_9
    return-void
.end method

.method private setPageError(I)V
    .registers 3
    .parameter "targetSlot"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_9

    .line 1090
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageError(I)V

    .line 1092
    :cond_9
    return-void
.end method

.method private setPageLoading(I)V
    .registers 3
    .parameter "targetSlot"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_9

    .line 1084
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageLoading(I)V

    .line 1086
    :cond_9
    return-void
.end method

.method private setPageToBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter "targetSlot"
    .parameter "bitmap"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_9

    .line 1140
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageToBitmap(ILandroid/graphics/Bitmap;)V

    .line 1142
    :cond_9
    return-void
.end method

.method private setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    .registers 5
    .parameter "slot"
    .parameter "view"

    .prologue
    .line 1035
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1039
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_d

    .line 1040
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToBitmap(ILandroid/graphics/Bitmap;)V

    .line 1041
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1043
    :cond_d
    return-void
.end method

.method private shouldDisplayTwoPages()Z
    .registers 2

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/ReaderUtils;->shouldDisplayTwoPages(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized startPositionUpdate(IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V
    .registers 7
    .parameter "targetSlot"
    .parameter "fromUser"
    .parameter "lastAction"

    .prologue
    .line 1153
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;-><init>(IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    .line 1154
    const-string v0, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1155
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPositionUpdate() with action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPendingAction:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->finishPositionUpdate()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 1160
    monitor-exit p0

    return-void

    .line 1153
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startTtsAtCurrentPosition(Lcom/google/android/apps/books/tts/TextToSpeechController;)V
    .registers 6
    .parameter "tts"

    .prologue
    const/4 v2, 0x5

    .line 641
    if-nez p1, :cond_13

    .line 642
    const-string v1, "PageTurnView"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 643
    const-string v1, "PageTurnView"

    const-string v2, "Missing controller, can\'t start TTS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_12
    :goto_12
    return-void

    .line 647
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-nez v1, :cond_27

    .line 648
    const-string v1, "PageTurnView"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 649
    const-string v1, "PageTurnView"

    const-string v2, "Missing anchor position, can\'t start TTS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 653
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v0, v1, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    .line 654
    .local v0, pos:Lcom/google/android/apps/books/common/Position;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->getPassageIndexForPosition(Lcom/google/android/apps/books/common/Position;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getShouldAutoAdvanceTts()Z

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->startSpeakingAtPosition(ILcom/google/android/apps/books/common/Position;Lcom/google/android/apps/books/tts/TtsUnit;Z)V

    goto :goto_12
.end method

.method private startTurn(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 1659
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-nez v0, :cond_44

    const/4 v0, 0x0

    move v2, v0

    .line 1662
    :goto_8
    if-ne p1, v5, :cond_4a

    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    if-eqz v0, :cond_4a

    .line 1663
    const-string v0, "PageTurnView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " anchor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x2

    .line 1665
    :goto_39
    sub-int v0, v2, v0

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotStartOfVolume:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v0, v3, :cond_4a

    .line 1690
    :cond_43
    :goto_43
    return-void

    .line 1659
    :cond_44
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    move v2, v0

    goto :goto_8

    :cond_48
    move v0, v1

    .line 1664
    goto :goto_39

    .line 1671
    :cond_4a
    if-ne p1, v1, :cond_7e

    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    if-eqz v0, :cond_7e

    .line 1672
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " anchor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    add-int/lit8 v0, v2, 0x1

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSlotEndOfVolume:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_43

    .line 1678
    :cond_7e
    const-string v0, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1679
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTurn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_a5
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    .line 1684
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    .line 1687
    if-ne p1, v5, :cond_43

    .line 1688
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->rewindPage()V

    goto :goto_43
.end method

.method private tearDownTts()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsController:Lcom/google/android/apps/books/tts/TextToSpeechController;

    if-eqz v0, :cond_1b

    .line 471
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsController:Lcom/google/android/apps/books/tts/TextToSpeechController;

    invoke-virtual {v0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->stopSpeaking()V

    .line 472
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsController:Lcom/google/android/apps/books/tts/TextToSpeechController;

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTts:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

    invoke-virtual {v0}, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->shutdown()V

    .line 474
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTts:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

    .line 475
    iput-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    .line 476
    iput-boolean v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    .line 477
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->onStoppedSpeaking(Z)V

    .line 479
    :cond_1b
    return-void
.end method


# virtual methods
.method public clearRenderer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v0, :cond_c

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 463
    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    .line 466
    :cond_c
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->tearDownTts()V

    .line 467
    return-void
.end method

.method public endTurn(Z)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2043
    const-string v1, "PageTurnView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2044
    const-string v1, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endTurn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    :cond_28
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2047
    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4b

    if-nez p1, :cond_4b

    .line 2056
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_40

    .line 2059
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 2062
    :cond_40
    new-instance v1, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mEnqueuedTurnSequenceNumber:I

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V

    .line 2064
    return v0

    .line 2047
    :cond_4b
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public enqueueEndTurn(I)V
    .registers 5
    .parameter

    .prologue
    .line 2072
    const-string v0, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2073
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueEndTurn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 2080
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mEnqueuedTurnSequenceNumber:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnDirectional;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;II)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V

    .line 2081
    return-void
.end method

.method public enqueueStartTurn(IZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1932
    if-eq p1, v1, :cond_6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_53

    :cond_6
    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1933
    const-string v0, "PageTurnView"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1934
    const-string v0, "PageTurnView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueStartTurn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_31
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybePauseTTS()V

    .line 1938
    if-eqz p2, :cond_39

    .line 1941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 1944
    :cond_39
    if-ne p1, v1, :cond_55

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1947
    :goto_46
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->sendAccessibilityEventWithText(ILjava/lang/String;)V

    .line 1949
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/books/widget/PageTurnView$StartTurn;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V

    .line 1950
    return-void

    .line 1932
    :cond_53
    const/4 v0, 0x0

    goto :goto_7

    .line 1944
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_46
.end method

.method public enqueueUpdateTurn(F)V
    .registers 4
    .parameter "fraction"

    .prologue
    .line 2028
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mStartedTurnSequenceNumber:I

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mEndedTurnSequenceNumber:I

    if-ne v0, v1, :cond_7

    .line 2032
    :goto_6
    return-void

    .line 2031
    :cond_7
    new-instance v0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;F)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V

    goto :goto_6
.end method

.method public getSpeechIsAvailable()Z
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/books/render/ReaderRenderer;->canProvideText()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getZone(F)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    .registers 5
    .parameter "x"

    .prologue
    .line 2163
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v1

    .line 2164
    .local v1, width:I
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    :goto_b
    div-int v0, v1, v2

    .line 2166
    .local v0, marginWidth:I
    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_17

    .line 2167
    sget-object v2, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->LEFT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    .line 2171
    :goto_14
    return-object v2

    .line 2164
    .end local v0           #marginWidth:I
    :cond_15
    const/4 v2, 0x3

    goto :goto_b

    .line 2168
    .restart local v0       #marginWidth:I
    :cond_17
    sub-int v2, v1, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_21

    .line 2169
    sget-object v2, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->RIGHT_EDGE:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    goto :goto_14

    .line 2171
    :cond_21
    sget-object v2, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->CENTER:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    goto :goto_14
.end method

.method public isSpeaking()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 624
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v0

    .line 625
    .local v0, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-nez v0, :cond_8

    .line 628
    :cond_7
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->isSpeaking()Z

    move-result v2

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    if-eqz v2, :cond_7

    :cond_12
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 16
    .parameter "position"
    .parameter "fromUser"
    .parameter "lastAction"
    .parameter "highlight"
    .parameter "highlightSearch"
    .parameter "nextChapterWithSearchResult"

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybePauseTTS()V

    .line 618
    const/4 v8, 0x0

    .line 619
    .local v8, speak:Z
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 621
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 882
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onAttachedToWindow()V

    .line 883
    const-string v0, "PageTurnView"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 884
    const-string v0, "PageTurnView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 888
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 892
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onDetachedFromWindow()V

    .line 893
    const-string v0, "PageTurnView"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 894
    const-string v0, "PageTurnView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_13
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->resetInternalState()V

    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 899
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2342
    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mIsChromeVisible:Z

    if-nez v2, :cond_12

    move v0, v1

    .line 2343
    .local v0, useTtsControls:Z
    :goto_a
    sparse-switch p1, :sswitch_data_60

    .line 2381
    invoke-super {p0, p1, p2}, Landroid/renderscript/RSSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_11
    :goto_11
    return v1

    .line 2342
    .end local v0           #useTtsControls:Z
    :cond_12
    const/4 v0, 0x0

    goto :goto_a

    .line 2346
    .restart local v0       #useTtsControls:Z
    :sswitch_14
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    invoke-interface {v2}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->toggleChrome()V

    goto :goto_11

    .line 2349
    :sswitch_1a
    if-eqz v0, :cond_2c

    .line 2350
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v2, :cond_11

    .line 2351
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    invoke-virtual {v2}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->rewind()Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 2352
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->restartTts()V

    goto :goto_11

    .line 2357
    :cond_2c
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->enqueueStartTurn(IZ)V

    goto :goto_11

    .line 2361
    :sswitch_31
    if-eqz v0, :cond_43

    .line 2362
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v2, :cond_11

    .line 2363
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    invoke-virtual {v2}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->advance()Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 2364
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->restartTts()V

    goto :goto_11

    .line 2369
    :cond_43
    invoke-virtual {p0, v1, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->enqueueStartTurn(IZ)V

    goto :goto_11

    .line 2373
    :sswitch_47
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v2}, Lcom/google/android/apps/books/tts/TtsUnit;->nextLargerUnit()Lcom/google/android/apps/books/tts/TtsUnit;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 2374
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->restartTts()V

    goto :goto_11

    .line 2377
    :sswitch_53
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v2}, Lcom/google/android/apps/books/tts/TtsUnit;->nextSmallerUnit()Lcom/google/android/apps/books/tts/TtsUnit;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 2378
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->restartTts()V

    goto :goto_11

    .line 2343
    nop

    :sswitch_data_60
    .sparse-switch
        0x13 -> :sswitch_47
        0x14 -> :sswitch_53
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_31
        0x17 -> :sswitch_14
        0x42 -> :sswitch_14
    .end sparse-switch
.end method

.method public onSpecialViewsLayoutChange()V
    .registers 7

    .prologue
    .line 232
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v5, :cond_38

    .line 234
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    invoke-interface {v5}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;->getLoadingView()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v3

    .line 235
    .local v3, loadingView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v5, v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_38

    .line 241
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 242
    .local v4, targetSlot:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 243
    .local v1, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    invoke-direct {p0, v4, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->setPageToSpecialView(ILcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 246
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .end local v2           #i:I
    .end local v3           #loadingView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .end local v4           #targetSlot:I
    :cond_38
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 2086
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .line 2087
    .local v1, halfWidth:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_39

    const/4 v2, 0x1

    .line 2090
    .local v2, touchedRightHalf:Z
    :goto_11
    iget v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    .line 2091
    .local v3, touchedSlot:I
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v5

    if-eqz v5, :cond_1d

    if-nez v2, :cond_1d

    .line 2092
    add-int/lit8 v3, v3, -0x1

    .line 2095
    :cond_1d
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 2096
    .local v0, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    if-eqz v0, :cond_38

    .line 2098
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v4

    if-eqz v4, :cond_34

    if-eqz v2, :cond_34

    .line 2099
    neg-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2102
    :cond_34
    invoke-interface {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 2104
    :cond_38
    return v4

    .end local v0           #customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .end local v2           #touchedRightHalf:Z
    .end local v3           #touchedSlot:I
    :cond_39
    move v2, v4

    .line 2087
    goto :goto_11
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 857
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->pause()V

    .line 860
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I

    if-eqz v0, :cond_b

    .line 861
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(Z)Z

    .line 864
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_14

    .line 865
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    .line 868
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->cancelUnPauseTts()V

    .line 869
    return-void
.end method

.method public refreshPages()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1188
    const-string v2, "PageTurnView"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1189
    const-string v2, "PageTurnView"

    const-string v3, "refreshPages()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->resetInternalState()V

    .line 1196
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    if-eqz v2, :cond_27

    .line 1199
    new-instance v0, Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v2, v2, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-direct {v0, v2}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;)V

    .line 1203
    .local v0, anchorWithoutIndices:Lcom/google/android/apps/books/render/RenderPosition;
    const/4 v1, 0x0

    .line 1204
    .local v1, speak:Z
    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/render/RenderPosition;IIZ)V

    .line 1207
    .end local v0           #anchorWithoutIndices:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v1           #speak:Z
    :cond_27
    return-void
.end method

.method public resetZoom()V
    .registers 2

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_9

    .line 2216
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->resetZoom()V

    .line 2218
    :cond_9
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 873
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->pause()V

    .line 875
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_c

    .line 876
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    .line 878
    :cond_c
    return-void
.end method

.method public setChromeVisible(Z)V
    .registers 4
    .parameter

    .prologue
    .line 2190
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mIsChromeVisible:Z

    .line 2191
    if-eqz p1, :cond_8

    .line 2192
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybePauseTTS()V

    .line 2200
    :cond_7
    :goto_7
    return-void

    .line 2194
    :cond_8
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->maybeUnPauseTTS()V

    .line 2195
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->requestFocus()Z

    move-result v0

    .line 2196
    if-nez v0, :cond_7

    const-string v0, "PageTurnView"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2197
    const-string v0, "PageTurnView"

    const-string v1, "Failed to focus on page turn view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public setPassageCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 485
    iput p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mPassageCount:I

    .line 487
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v0

    .local v0, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-eqz v0, :cond_c

    .line 488
    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController;->setPassageCount(I)V

    .line 490
    :cond_c
    return-void
.end method

.method public setReaderDelegate(Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;)V
    .registers 3
    .parameter "readerDelegate"

    .prologue
    .line 305
    const-string v0, "missing delegate"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    .line 306
    return-void
.end method

.method public setReadingMode(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/ViewGroup;ILandroid/accounts/Account;Lcom/google/android/apps/books/render/ReaderSettings;)Lcom/google/android/apps/books/render/ReaderRenderer;
    .registers 11
    .parameter "context"
    .parameter "resolver"
    .parameter "parent"
    .parameter "targetMode"
    .parameter "account"
    .parameter "settings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/ViewGroup;",
            "I",
            "Landroid/accounts/Account;",
            "Lcom/google/android/apps/books/render/ReaderSettings;",
            ")",
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 430
    packed-switch p4, :pswitch_data_3e

    .line 440
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported reader mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :pswitch_1c
    new-instance v0, Lcom/google/android/apps/books/render/ImageModeRenderer;

    invoke-direct {v0, p2, p1, p5, p6}, Lcom/google/android/apps/books/render/ImageModeRenderer;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 443
    .local v0, renderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;>;"
    :goto_21
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v1, :cond_2b

    .line 444
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/render/ReaderRenderer;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 447
    :cond_2b
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 449
    iput-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    .line 452
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->tearDownTts()V

    .line 454
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    return-object v1

    .line 436
    .end local v0           #renderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;>;"
    :pswitch_38
    new-instance v0, Lcom/google/android/apps/books/render/WebViewRenderer;

    invoke-direct {v0, p3, p2, p5, p6}, Lcom/google/android/apps/books/render/WebViewRenderer;-><init>(Landroid/view/ViewGroup;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 438
    .restart local v0       #renderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<Lcom/google/android/apps/books/widget/PageTurnView$RenderRequestContext;>;"
    goto :goto_21

    .line 430
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_38
    .end packed-switch
.end method

.method public setShouldFadeIn(Z)V
    .registers 3
    .parameter "fade"

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_9

    .line 2222
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setShouldFadeIn(Z)V

    .line 2224
    :cond_9
    return-void
.end method

.method public setSpecialViews(Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;)V
    .registers 4
    .parameter "specialViews"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_c

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    :cond_c
    return-void
.end method

.method public setSpeechEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 659
    iget-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    if-eq p1, v2, :cond_10

    .line 660
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z

    .line 662
    move v0, p1

    .line 663
    .local v0, createIfNecessary:Z
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->getTtsController(Z)Lcom/google/android/apps/books/tts/TextToSpeechController;

    move-result-object v1

    .line 665
    .local v1, tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    if-eqz p1, :cond_11

    .line 666
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->startTtsAtCurrentPosition(Lcom/google/android/apps/books/tts/TextToSpeechController;)V

    .line 673
    .end local v0           #createIfNecessary:Z
    .end local v1           #tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    :cond_10
    :goto_10
    return-void

    .line 667
    .restart local v0       #createIfNecessary:Z
    .restart local v1       #tts:Lcom/google/android/apps/books/tts/TextToSpeechController;
    :cond_11
    if-eqz v1, :cond_10

    .line 668
    invoke-virtual {v1}, Lcom/google/android/apps/books/tts/TextToSpeechController;->stopSpeaking()V

    .line 669
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    .line 670
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->onStoppedSpeaking(Z)V

    goto :goto_10
.end method

.method public setZoom(FFF)V
    .registers 5
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_9

    .line 2210
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/books/widget/PageTurnRS;->setZoom(FFF)V

    .line 2212
    :cond_9
    return-void
.end method

.method public settingsApplied()V
    .registers 2

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->refreshPages()V

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPaused:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;

    if-eqz v0, :cond_16

    .line 1214
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mTtsHighlightRange:Lcom/google/android/apps/books/render/TextRange;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->highlightSpokenText(Lcom/google/android/apps/books/render/TextRange;)V

    .line 1216
    :cond_16
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 809
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 810
    const-string v0, "PageTurnView"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 811
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged() w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_2e
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_37

    .line 815
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 818
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_40

    .line 819
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->surfaceChanged()V

    .line 821
    :cond_40
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 9
    .parameter "holder"

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 772
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 773
    const-string v1, "PageTurnView"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 774
    const-string v1, "PageTurnView"

    const-string v2, "surfaceCreated()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-nez v1, :cond_2c

    .line 778
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 779
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    invoke-virtual {v0, v3, v3}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->setAlpha(II)V

    .line 780
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 784
    .end local v0           #sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    :cond_2c
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    new-instance v2, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 786
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-nez v1, :cond_7c

    .line 787
    new-instance v1, Lcom/google/android/apps/books/widget/PageTurnRS;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/books/widget/PageTurnRS;-><init>(Landroid/renderscript/RenderScriptGL;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    .line 789
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setAnchorIndex(I)V

    .line 791
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 792
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 793
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1, v6}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 794
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 795
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 796
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnRS;->setPageEmpty(I)V

    .line 798
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnRS;->resumeRendering()V

    .line 800
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v4, v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    .line 803
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mSpecialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->setSpecialViews(Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;)V

    .line 805
    :cond_7c
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 6
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 825
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 826
    const-string v0, "PageTurnView"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 827
    const-string v0, "PageTurnView"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v0, :cond_20

    .line 831
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnRS;->pauseRendering()V

    .line 832
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    .line 835
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_35

    .line 836
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 837
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2, v3, v3}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 838
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 839
    iput-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 842
    :cond_35
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->resetInternalState()V

    .line 843
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 850
    const-wide/16 v0, 0x32

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 853
    :goto_5
    return-void

    .line 851
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public tallestCurrentBitmap()I
    .registers 8

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 1126
    .local v4, slotWidth:I
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v3

    .line 1127
    .local v3, slotHeight:I
    int-to-float v5, v4

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1128
    .local v2, slotAspectRatio:F
    move v1, v3

    .line 1129
    .local v1, result:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v5, :cond_2a

    .line 1130
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->getTallestCurrentAspectRatio()F

    move-result v0

    .line 1131
    .local v0, bitmapAspectRatio:F
    cmpl-float v5, v0, v2

    if-lez v5, :cond_2a

    .line 1132
    int-to-float v5, v4

    div-float/2addr v5, v0

    float-to-int v1, v5

    .line 1135
    .end local v0           #bitmapAspectRatio:F
    :cond_2a
    return v1

    .line 1125
    .end local v1           #result:I
    .end local v2           #slotAspectRatio:F
    .end local v3           #slotHeight:I
    .end local v4           #slotWidth:I
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v4

    goto :goto_c
.end method

.method public widestCurrentBitmap()I
    .registers 8

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 1107
    .local v4, slotWidth:I
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v3

    .line 1108
    .local v3, slotHeight:I
    int-to-float v5, v4

    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1109
    .local v2, slotAspectRatio:F
    move v1, v4

    .line 1110
    .local v1, result:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    if-eqz v5, :cond_2f

    .line 1111
    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->getWidestCurrentAspectRatio()F

    move-result v0

    .line 1112
    .local v0, bitmapAspectRatio:F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2f

    cmpg-float v5, v0, v2

    if-gez v5, :cond_2f

    .line 1113
    int-to-float v5, v3

    mul-float/2addr v5, v0

    float-to-int v1, v5

    .line 1116
    .end local v0           #bitmapAspectRatio:F
    :cond_2f
    return v1

    .line 1106
    .end local v1           #result:I
    .end local v2           #slotAspectRatio:F
    .end local v3           #slotHeight:I
    .end local v4           #slotWidth:I
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v4

    goto :goto_c
.end method
