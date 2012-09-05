.class public final Lcom/cooliris/media/RenderView;
.super Landroid/opengl/GLSurfaceView;
.source "RenderView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/RenderView$TextureLoadThread;,
        Lcom/cooliris/media/RenderView$Lists;,
        Lcom/cooliris/media/RenderView$TextureReference;
    }
.end annotation


# static fields
.field private static sCachedTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

.field private static final sLists:Lcom/cooliris/media/RenderView$Lists;

.field private static final sLoadInputQueue:Lcom/cooliris/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Deque",
            "<",
            "Lcom/cooliris/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadInputQueueCached:Lcom/cooliris/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Deque",
            "<",
            "Lcom/cooliris/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadInputQueueVideo:Lcom/cooliris/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Deque",
            "<",
            "Lcom/cooliris/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadOutputQueue:Lcom/cooliris/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Deque",
            "<",
            "Lcom/cooliris/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextureLoadThreads:[Lcom/cooliris/media/RenderView$TextureLoadThread;

.field private static sVideoTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

.field static final textureId:[I


# instance fields
.field private final mActiveTextureList:Lcom/cooliris/media/DirectLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/DirectLinkedList",
            "<",
            "Lcom/cooliris/media/RenderView$TextureReference;",
            ">;"
        }
    .end annotation
.end field

.field private mAlpha:F

.field private mBoundTexture:Lcom/cooliris/media/Texture;

.field private mCurrentEventType:I

.field private mCurrentKeyEvent:Landroid/view/KeyEvent;

.field private mCurrentKeyEventResult:Z

.field private mFirstDraw:Z

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFrameInterval:F

.field private mFrameTime:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mListsDirty:Z

.field private mLoadingCount:I

.field private mLoadingExpensiveTexturesStartTime:J

.field private mPause:Z

.field private volatile mPendingSensorEvent:Z

.field private mRefreshThread:Ljava/lang/Thread;

.field private mRootLayer:Lcom/cooliris/media/RootLayer;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTouchEventQueue:Lcom/cooliris/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Deque",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchEventTarget:Lcom/cooliris/media/Layer;

.field private final mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHeight:I

.field private mViewWidth:I

.field private final sCacheScaled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/cooliris/media/ResourceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final sCacheUnscaled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/cooliris/media/ResourceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v0, Lcom/cooliris/media/RenderView$Lists;

    invoke-direct {v0}, Lcom/cooliris/media/RenderView$Lists;-><init>()V

    sput-object v0, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    .line 94
    new-instance v0, Lcom/cooliris/media/Deque;

    invoke-direct {v0}, Lcom/cooliris/media/Deque;-><init>()V

    sput-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueue:Lcom/cooliris/media/Deque;

    .line 96
    new-instance v0, Lcom/cooliris/media/Deque;

    invoke-direct {v0}, Lcom/cooliris/media/Deque;-><init>()V

    sput-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueueCached:Lcom/cooliris/media/Deque;

    .line 98
    new-instance v0, Lcom/cooliris/media/Deque;

    invoke-direct {v0}, Lcom/cooliris/media/Deque;-><init>()V

    sput-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueueVideo:Lcom/cooliris/media/Deque;

    .line 100
    new-instance v0, Lcom/cooliris/media/Deque;

    invoke-direct {v0}, Lcom/cooliris/media/Deque;-><init>()V

    sput-object v0, Lcom/cooliris/media/RenderView;->sLoadOutputQueue:Lcom/cooliris/media/Deque;

    .line 102
    sput-object v1, Lcom/cooliris/media/RenderView;->sCachedTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

    .line 104
    sput-object v1, Lcom/cooliris/media/RenderView;->sVideoTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cooliris/media/RenderView$TextureLoadThread;

    sput-object v0, Lcom/cooliris/media/RenderView;->sTextureLoadThreads:[Lcom/cooliris/media/RenderView$TextureLoadThread;

    .line 605
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/cooliris/media/RenderView;->textureId:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-object v3, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 72
    iput v6, p0, Lcom/cooliris/media/RenderView;->mViewWidth:I

    .line 74
    iput v6, p0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    .line 76
    iput-object v3, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    .line 78
    iput-boolean v6, p0, Lcom/cooliris/media/RenderView;->mListsDirty:Z

    .line 82
    iput-object v3, p0, Lcom/cooliris/media/RenderView;->mTouchEventTarget:Lcom/cooliris/media/Layer;

    .line 84
    iput v6, p0, Lcom/cooliris/media/RenderView;->mCurrentEventType:I

    .line 86
    iput-object v3, p0, Lcom/cooliris/media/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 88
    iput-boolean v6, p0, Lcom/cooliris/media/RenderView;->mCurrentKeyEventResult:Z

    .line 90
    iput-boolean v6, p0, Lcom/cooliris/media/RenderView;->mPendingSensorEvent:Z

    .line 92
    iput v6, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    .line 108
    new-instance v0, Lcom/cooliris/media/Deque;

    invoke-direct {v0}, Lcom/cooliris/media/Deque;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->mTouchEventQueue:Lcom/cooliris/media/Deque;

    .line 110
    new-instance v0, Lcom/cooliris/media/DirectLinkedList;

    invoke-direct {v0}, Lcom/cooliris/media/DirectLinkedList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->mActiveTextureList:Lcom/cooliris/media/DirectLinkedList;

    .line 112
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    .line 116
    iput-wide v4, p0, Lcom/cooliris/media/RenderView;->mFrameTime:J

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/RenderView;->mFrameInterval:F

    .line 122
    iput-wide v4, p0, Lcom/cooliris/media/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    .line 138
    iput-boolean v6, p0, Lcom/cooliris/media/RenderView;->mPause:Z

    .line 140
    iput-object v3, p0, Lcom/cooliris/media/RenderView;->mRefreshThread:Ljava/lang/Thread;

    .line 740
    iput v6, p0, Lcom/cooliris/media/RenderView;->mFrameCount:I

    .line 742
    iput-wide v4, p0, Lcom/cooliris/media/RenderView;->mFrameCountingStart:J

    .line 183
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_65

    .line 184
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v2

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {v2, v0}, Lcom/quramsoft/xiv/SFUtils;->setWindowManager(Landroid/view/WindowManager;)V

    .line 189
    :cond_65
    invoke-virtual {p0, v3}, Lcom/cooliris/media/RenderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    invoke-virtual {p0, v9}, Lcom/cooliris/media/RenderView;->setFocusable(Z)V

    .line 192
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/cooliris/media/RenderView;->setEGLConfigChooser(IIIIII)V

    .line 193
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 194
    invoke-virtual {p0, p0}, Lcom/cooliris/media/RenderView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 195
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 196
    sget-object v0, Lcom/cooliris/media/RenderView;->sCachedTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

    if-nez v0, :cond_a7

    .line 197
    const/4 v7, 0x0

    .local v7, i:I
    :goto_8d
    const/4 v0, 0x4

    if-eq v7, v0, :cond_a7

    .line 198
    new-instance v8, Lcom/cooliris/media/RenderView$TextureLoadThread;

    invoke-direct {v8, p0}, Lcom/cooliris/media/RenderView$TextureLoadThread;-><init>(Lcom/cooliris/media/RenderView;)V

    .line 199
    .local v8, thread:Lcom/cooliris/media/RenderView$TextureLoadThread;
    if-nez v7, :cond_99

    .line 200
    sput-object v8, Lcom/cooliris/media/RenderView;->sCachedTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

    .line 202
    :cond_99
    if-ne v7, v9, :cond_9d

    .line 203
    sput-object v8, Lcom/cooliris/media/RenderView;->sVideoTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

    .line 205
    :cond_9d
    sget-object v0, Lcom/cooliris/media/RenderView;->sTextureLoadThreads:[Lcom/cooliris/media/RenderView$TextureLoadThread;

    aput-object v8, v0, v7

    .line 206
    invoke-virtual {v8}, Lcom/cooliris/media/RenderView$TextureLoadThread;->start()V

    .line 197
    add-int/lit8 v7, v7, 0x1

    goto :goto_8d

    .line 209
    .end local v7           #i:I
    .end local v8           #thread:Lcom/cooliris/media/RenderView$TextureLoadThread;
    :cond_a7
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/RenderView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/cooliris/media/RenderView;->mPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/cooliris/media/RenderView;)Landroid/hardware/SensorManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/cooliris/media/RenderView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cooliris/media/RenderView;->mRefreshThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/cooliris/media/RenderView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/RenderView;)Lcom/cooliris/media/RootLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    return-object v0
.end method

.method static synthetic access$300()Lcom/cooliris/media/RenderView$TextureLoadThread;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/cooliris/media/RenderView;->sVideoTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

    return-object v0
.end method

.method static synthetic access$400()Lcom/cooliris/media/Deque;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueueVideo:Lcom/cooliris/media/Deque;

    return-object v0
.end method

.method static synthetic access$500()Lcom/cooliris/media/RenderView$TextureLoadThread;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/cooliris/media/RenderView;->sCachedTextureLoadThread:Lcom/cooliris/media/RenderView$TextureLoadThread;

    return-object v0
.end method

.method static synthetic access$600()Lcom/cooliris/media/Deque;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueueCached:Lcom/cooliris/media/Deque;

    return-object v0
.end method

.method static synthetic access$700()Lcom/cooliris/media/Deque;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueue:Lcom/cooliris/media/Deque;

    return-object v0
.end method

.method static synthetic access$800()Lcom/cooliris/media/Deque;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/cooliris/media/RenderView;->sLoadOutputQueue:Lcom/cooliris/media/Deque;

    return-object v0
.end method

.method static synthetic access$900(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/Texture;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/cooliris/media/RenderView;->loadTextureAsync(Lcom/cooliris/media/Texture;)V

    return-void
.end method

.method private clearTextureArray(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/cooliris/media/ResourceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/cooliris/media/ResourceTexture;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 254
    return-void
.end method

.method private getResourceInternal(IZ)Lcom/cooliris/media/ResourceTexture;
    .registers 5
    .parameter "resourceId"
    .parameter "scaled"

    .prologue
    .line 228
    if-eqz p2, :cond_17

    iget-object v0, p0, Lcom/cooliris/media/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    .line 229
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/cooliris/media/ResourceTexture;>;"
    :goto_4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/ResourceTexture;

    .line 230
    .local v1, texture:Lcom/cooliris/media/ResourceTexture;
    if-nez v1, :cond_16

    if-eqz p1, :cond_16

    .line 231
    new-instance v1, Lcom/cooliris/media/ResourceTexture;

    .end local v1           #texture:Lcom/cooliris/media/ResourceTexture;
    invoke-direct {v1, p1, p2}, Lcom/cooliris/media/ResourceTexture;-><init>(IZ)V

    .line 232
    .restart local v1       #texture:Lcom/cooliris/media/ResourceTexture;
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    :cond_16
    return-object v1

    .line 228
    .end local v0           #cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/cooliris/media/ResourceTexture;>;"
    .end local v1           #texture:Lcom/cooliris/media/ResourceTexture;
    :cond_17
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    goto :goto_4
.end method

.method private hitTest(FF)Lcom/cooliris/media/Layer;
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 939
    sget-object v5, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    iget-object v5, v5, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 940
    .local v4, listSize:I
    sget-object v5, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    iget-object v5, v5, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 941
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/cooliris/media/Layer;>;"
    :cond_10
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 942
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Layer;

    .line 943
    .local v1, layer:Lcom/cooliris/media/Layer;
    if-eqz v1, :cond_10

    iget-boolean v5, v1, Lcom/cooliris/media/Layer;->mHidden:Z

    if-nez v5, :cond_10

    .line 944
    iget v2, v1, Lcom/cooliris/media/Layer;->mX:F

    .line 945
    .local v2, layerX:F
    iget v3, v1, Lcom/cooliris/media/Layer;->mY:F

    .line 946
    .local v3, layerY:F
    cmpl-float v5, p1, v2

    if-ltz v5, :cond_10

    cmpl-float v5, p2, v3

    if-ltz v5, :cond_10

    iget v5, v1, Lcom/cooliris/media/Layer;->mWidth:F

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_10

    iget v5, v1, Lcom/cooliris/media/Layer;->mHeight:F

    add-float/2addr v5, v3

    cmpg-float v5, p2, v5

    if-gez v5, :cond_10

    invoke-virtual {v1, p1, p2}, Lcom/cooliris/media/Layer;->containsPoint(FF)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 952
    .end local v1           #layer:Lcom/cooliris/media/Layer;
    .end local v2           #layerX:F
    .end local v3           #layerY:F
    :goto_42
    return-object v1

    :cond_43
    const/4 v1, 0x0

    goto :goto_42
.end method

.method private loadTextureAsync(Lcom/cooliris/media/Texture;)V
    .registers 16
    .parameter "texture"

    .prologue
    const/4 v13, 0x0

    .line 313
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/cooliris/media/Texture;->load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5e

    .line 317
    sget-boolean v10, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v10, :cond_61

    .line 318
    const/16 v10, 0x400

    invoke-static {v0, v10}, Lcom/quramsoft/xiv/XIVUtils;->getResizedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    :goto_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 325
    .local v9, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 326
    .local v5, height:I
    iput v9, p1, Lcom/cooliris/media/Texture;->mWidth:I

    .line 327
    iput v5, p1, Lcom/cooliris/media/Texture;->mHeight:I

    .line 330
    invoke-static {v9}, Lcom/cooliris/media/Shared;->isPowerOf2(I)Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-static {v5}, Lcom/cooliris/media/Shared;->isPowerOf2(I)Z

    move-result v10

    if-nez v10, :cond_76

    .line 331
    :cond_29
    invoke-static {v9}, Lcom/cooliris/media/Shared;->nextPowerOf2(I)I

    move-result v8

    .line 332
    .local v8, paddedWidth:I
    invoke-static {v5}, Lcom/cooliris/media/Shared;->nextPowerOf2(I)I

    move-result v7

    .line 333
    .local v7, paddedHeight:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 336
    .local v2, config:Landroid/graphics/Bitmap$Config;
    sget-boolean v10, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v10, :cond_68

    .line 338
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->getInstance()Lcom/quramsoft/xiv/XIVUtils;

    move-result-object v10

    invoke-virtual {v10, v2, v9, v5, p1}, Lcom/quramsoft/xiv/XIVUtils;->getBitmapConfig(Landroid/graphics/Bitmap$Config;IILcom/cooliris/media/Texture;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 348
    :cond_41
    :goto_41
    invoke-static {v8, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 349
    .local v6, padded:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 350
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 351
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    move-object v0, v6

    .line 355
    int-to-float v10, v9

    int-to-float v11, v8

    div-float/2addr v10, v11

    iput v10, p1, Lcom/cooliris/media/Texture;->mNormalizedWidth:F

    .line 356
    int-to-float v10, v5

    int-to-float v11, v7

    div-float/2addr v10, v11

    iput v10, p1, Lcom/cooliris/media/Texture;->mNormalizedHeight:F

    .line 362
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    .end local v5           #height:I
    .end local v6           #padded:Landroid/graphics/Bitmap;
    .end local v7           #paddedHeight:I
    .end local v8           #paddedWidth:I
    .end local v9           #width:I
    :cond_5e
    :goto_5e
    iput-object v0, p1, Lcom/cooliris/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 370
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_60
    return-void

    .line 320
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_61
    const/16 v10, 0x400

    invoke-static {v0, v10}, Lcom/cooliris/media/Utils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_11

    .line 341
    .restart local v2       #config:Landroid/graphics/Bitmap$Config;
    .restart local v5       #height:I
    .restart local v7       #paddedHeight:I
    .restart local v8       #paddedWidth:I
    .restart local v9       #width:I
    :cond_68
    if-nez v2, :cond_6c

    .line 342
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 343
    :cond_6c
    mul-int v10, v9, v5

    const v11, 0x64000

    if-lt v10, v11, :cond_41

    .line 344
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_41

    .line 358
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    .end local v7           #paddedHeight:I
    .end local v8           #paddedWidth:I
    :cond_76
    const/high16 v10, 0x3f80

    iput v10, p1, Lcom/cooliris/media/Texture;->mNormalizedWidth:F

    .line 359
    const/high16 v10, 0x3f80

    iput v10, p1, Lcom/cooliris/media/Texture;->mNormalizedHeight:F
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_7e} :catch_86

    goto :goto_5e

    .line 363
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #height:I
    .end local v9           #width:I
    :catch_7f
    move-exception v3

    .line 364
    .local v3, e:Ljava/lang/Exception;
    iput-object v13, p1, Lcom/cooliris/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 365
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60

    .line 366
    .end local v3           #e:Ljava/lang/Exception;
    :catch_86
    move-exception v4

    .line 367
    .local v4, eMem:Ljava/lang/OutOfMemoryError;
    const-string v10, "RenderView"

    const-string v11, "Bitmap power of 2 creation fail, outofmemory"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->handleLowMemory()V

    goto :goto_60
.end method

.method private processCurrentEvent()V
    .registers 3

    .prologue
    .line 854
    iget v0, p0, Lcom/cooliris/media/RenderView;->mCurrentEventType:I

    .line 855
    .local v0, type:I
    packed-switch v0, :pswitch_data_1a

    .line 865
    :goto_5
    monitor-enter p0

    .line 866
    const/4 v1, 0x0

    :try_start_7
    iput v1, p0, Lcom/cooliris/media/RenderView;->mCurrentEventType:I

    .line 867
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 868
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_16

    .line 869
    return-void

    .line 857
    :pswitch_e
    invoke-direct {p0}, Lcom/cooliris/media/RenderView;->processKeyEvent()V

    goto :goto_5

    .line 860
    :pswitch_12
    invoke-direct {p0}, Lcom/cooliris/media/RenderView;->processFocusEvent()V

    goto :goto_5

    .line 868
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1

    .line 855
    nop

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method private processFocusEvent()V
    .registers 1

    .prologue
    .line 936
    return-void
.end method

.method private processKeyEvent()V
    .registers 5

    .prologue
    .line 916
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 917
    .local v0, event:Landroid/view/KeyEvent;
    const/4 v1, 0x0

    .line 918
    .local v1, result:Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cooliris/media/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 921
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_1c

    .line 922
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1f

    .line 923
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/cooliris/media/RootLayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 928
    :cond_1c
    :goto_1c
    iput-boolean v1, p0, Lcom/cooliris/media/RenderView;->mCurrentKeyEventResult:Z

    .line 929
    return-void

    .line 925
    :cond_1f
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/cooliris/media/RootLayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1c
.end method

.method private processTextures(Z)V
    .registers 10
    .parameter "processAll"

    .prologue
    const/4 v7, 0x0

    .line 610
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 612
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    :goto_3
    iget-object v5, p0, Lcom/cooliris/media/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/RenderView$TextureReference;

    .local v4, textureReference:Lcom/cooliris/media/RenderView$TextureReference;
    if-eqz v4, :cond_2b

    .line 613
    sget-object v5, Lcom/cooliris/media/RenderView;->textureId:[I

    iget v6, v4, Lcom/cooliris/media/RenderView$TextureReference;->textureId:I

    aput v6, v5, v7

    .line 614
    iget-object v1, v4, Lcom/cooliris/media/RenderView$TextureReference;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 615
    .local v1, glOld:Ljavax/microedition/khronos/opengles/GL11;
    if-eqz v1, :cond_23

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 616
    const/4 v5, 0x1

    sget-object v6, Lcom/cooliris/media/RenderView;->textureId:[I

    invoke-interface {v0, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 618
    :cond_23
    iget-object v5, p0, Lcom/cooliris/media/RenderView;->mActiveTextureList:Lcom/cooliris/media/DirectLinkedList;

    iget-object v6, v4, Lcom/cooliris/media/RenderView$TextureReference;->activeListEntry:Lcom/cooliris/media/DirectLinkedList$Entry;

    invoke-virtual {v5, v6}, Lcom/cooliris/media/DirectLinkedList;->remove(Lcom/cooliris/media/DirectLinkedList$Entry;)Lcom/cooliris/media/DirectLinkedList$Entry;

    goto :goto_3

    .line 620
    .end local v1           #glOld:Ljavax/microedition/khronos/opengles/GL11;
    :cond_2b
    sget-object v2, Lcom/cooliris/media/RenderView;->sLoadOutputQueue:Lcom/cooliris/media/Deque;

    .line 624
    .local v2, outputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    :cond_2d
    monitor-enter v2

    .line 625
    :try_start_2e
    invoke-virtual {v2}, Lcom/cooliris/media/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/Texture;

    .line 626
    .local v3, texture:Lcom/cooliris/media/Texture;
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_45

    .line 627
    if-eqz v3, :cond_44

    .line 629
    sget-object v5, Lcom/cooliris/media/RenderView;->textureId:[I

    invoke-direct {p0, v3, v5}, Lcom/cooliris/media/RenderView;->uploadTexture(Lcom/cooliris/media/Texture;[I)V

    .line 632
    iget v5, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    .line 636
    if-nez p1, :cond_2d

    .line 637
    :cond_44
    return-void

    .line 626
    .end local v3           #texture:Lcom/cooliris/media/Texture;
    :catchall_45
    move-exception v5

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v5
.end method

.method private processTouchEvent()V
    .registers 9

    .prologue
    .line 876
    const/4 v2, 0x0

    .line 877
    .local v2, event:Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/cooliris/media/RenderView;->mTouchEventQueue:Lcom/cooliris/media/Deque;

    invoke-virtual {v6}, Lcom/cooliris/media/Deque;->size()I

    move-result v4

    .line 878
    .local v4, numEvents:I
    const/4 v3, 0x0

    .line 881
    .local v3, i:I
    :cond_8
    iget-object v7, p0, Lcom/cooliris/media/RenderView;->mTouchEventQueue:Lcom/cooliris/media/Deque;

    monitor-enter v7

    .line 882
    :try_start_b
    iget-object v6, p0, Lcom/cooliris/media/RenderView;->mTouchEventQueue:Lcom/cooliris/media/Deque;

    invoke-virtual {v6}, Lcom/cooliris/media/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 883
    monitor-exit v7

    .line 884
    if-nez v2, :cond_1c

    .line 912
    :goto_18
    return-void

    .line 883
    :catchall_19
    move-exception v6

    monitor-exit v7
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v6

    .line 888
    :cond_1c
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 890
    .local v1, action:I
    if-nez v1, :cond_50

    .line 891
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/cooliris/media/RenderView;->hitTest(FF)Lcom/cooliris/media/Layer;

    move-result-object v5

    .line 892
    .local v5, target:Lcom/cooliris/media/Layer;
    iput-object v5, p0, Lcom/cooliris/media/RenderView;->mTouchEventTarget:Lcom/cooliris/media/Layer;

    .line 898
    :goto_30
    if-eqz v5, :cond_35

    .line 899
    invoke-virtual {v5, v2}, Lcom/cooliris/media/Layer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 903
    :cond_35
    const/4 v6, 0x1

    if-eq v1, v6, :cond_3b

    const/4 v6, 0x3

    if-ne v1, v6, :cond_3e

    .line 904
    :cond_3b
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/cooliris/media/RenderView;->mTouchEventTarget:Lcom/cooliris/media/Layer;

    .line 906
    :cond_3e
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 907
    add-int/lit8 v3, v3, 0x1

    .line 908
    if-eqz v2, :cond_47

    if-lt v3, v4, :cond_8

    .line 909
    :cond_47
    monitor-enter p0

    .line 910
    :try_start_48
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 911
    monitor-exit p0

    goto :goto_18

    :catchall_4d
    move-exception v6

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4d

    throw v6

    .line 894
    .end local v5           #target:Lcom/cooliris/media/Layer;
    :cond_50
    iget-object v5, p0, Lcom/cooliris/media/RenderView;->mTouchEventTarget:Lcom/cooliris/media/Layer;

    .restart local v5       #target:Lcom/cooliris/media/Layer;
    goto :goto_30
.end method

.method private queueLoad(Lcom/cooliris/media/Texture;Z)V
    .registers 7
    .parameter "texture"
    .parameter "highPriority"

    .prologue
    .line 453
    invoke-virtual {p1}, Lcom/cooliris/media/Texture;->shouldQueue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 483
    :goto_6
    return-void

    .line 458
    :cond_7
    const/4 v2, 0x2

    iput v2, p1, Lcom/cooliris/media/Texture;->mState:I

    .line 461
    invoke-virtual {p1}, Lcom/cooliris/media/Texture;->isUncachedVideo()Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueueVideo:Lcom/cooliris/media/Deque;

    .line 464
    .local v0, inputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    :goto_12
    monitor-enter v0

    .line 465
    if-eqz p2, :cond_46

    .line 466
    :try_start_15
    invoke-virtual {v0, p1}, Lcom/cooliris/media/Deque;->addFirst(Ljava/lang/Object;)V

    .line 470
    iget v2, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2f

    .line 471
    invoke-virtual {v0}, Lcom/cooliris/media/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Texture;

    .line 472
    .local v1, unloadTexture:Lcom/cooliris/media/Texture;
    if-eqz v1, :cond_29

    .line 473
    const/4 v2, 0x0

    iput v2, v1, Lcom/cooliris/media/Texture;->mState:I

    .line 475
    :cond_29
    iget v2, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    .line 480
    .end local v1           #unloadTexture:Lcom/cooliris/media/Texture;
    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 481
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_4a

    .line 482
    iget v2, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    goto :goto_6

    .line 461
    .end local v0           #inputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    :cond_3a
    invoke-virtual {p1}, Lcom/cooliris/media/Texture;->isCached()Z

    move-result v2

    if-eqz v2, :cond_43

    sget-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueueCached:Lcom/cooliris/media/Deque;

    goto :goto_12

    :cond_43
    sget-object v0, Lcom/cooliris/media/RenderView;->sLoadInputQueue:Lcom/cooliris/media/Deque;

    goto :goto_12

    .line 478
    .restart local v0       #inputQueue:Lcom/cooliris/media/Deque;,"Lcom/cooliris/media/Deque<Lcom/cooliris/media/Texture;>;"
    :cond_46
    :try_start_46
    invoke-virtual {v0, p1}, Lcom/cooliris/media/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_2f

    .line 481
    :catchall_4a
    move-exception v2

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method private refreshThread()V
    .registers 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRefreshThread:Ljava/lang/Thread;

    if-nez v0, :cond_10

    .line 1315
    new-instance v0, Lcom/cooliris/media/RenderView$2;

    invoke-direct {v0, p0}, Lcom/cooliris/media/RenderView$2;-><init>(Lcom/cooliris/media/RenderView;)V

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->mRefreshThread:Ljava/lang/Thread;

    .line 1342
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRefreshThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1344
    :cond_10
    return-void
.end method

.method private updateLists()V
    .registers 4

    .prologue
    .line 956
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v0, :cond_14

    .line 957
    sget-object v1, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    monitor-enter v1

    .line 958
    :try_start_7
    sget-object v0, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView$Lists;->clear()V

    .line 959
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    sget-object v2, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    invoke-virtual {v0, p0, v2}, Lcom/cooliris/media/RootLayer;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 960
    monitor-exit v1

    .line 962
    :cond_14
    return-void

    .line 960
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private uploadTexture(Lcom/cooliris/media/Texture;[I)V
    .registers 13
    .parameter "texture"
    .parameter "textureId"

    .prologue
    .line 640
    iget-object v0, p1, Lcom/cooliris/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 641
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 642
    .local v2, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v3, 0x0

    .line 643
    .local v3, glError:I
    if-eqz v0, :cond_c5

    .line 644
    iget v6, p1, Lcom/cooliris/media/Texture;->mWidth:I

    .line 645
    .local v6, width:I
    iget v4, p1, Lcom/cooliris/media/Texture;->mHeight:I

    .line 648
    .local v4, height:I
    const/4 v7, 0x4

    new-array v1, v7, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v1, v7

    const/4 v7, 0x1

    aput v4, v1, v7

    const/4 v7, 0x2

    aput v6, v1, v7

    const/4 v7, 0x3

    neg-int v8, v4

    aput v8, v1, v7

    .line 652
    .local v1, cropRect:[I
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    .line 654
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v2, v7, p2, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 655
    const/16 v7, 0xde1

    const/4 v8, 0x0

    aget v8, p2, v8

    invoke-interface {v2, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 656
    const/16 v7, 0xde1

    const v8, 0x8b9d

    const/4 v9, 0x0

    invoke-interface {v2, v7, v8, v1, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 657
    const/16 v7, 0xde1

    const/16 v8, 0x2802

    const v9, 0x812f

    invoke-interface {v2, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 658
    const/16 v7, 0xde1

    const/16 v8, 0x2803

    const v9, 0x812f

    invoke-interface {v2, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 659
    const/16 v7, 0xde1

    const/16 v8, 0x2801

    const v9, 0x46180400

    invoke-interface {v2, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 660
    const/16 v7, 0xde1

    const/16 v8, 0x2800

    const v9, 0x46180400

    invoke-interface {v2, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 661
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v0, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 662
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v3

    .line 664
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 665
    const/16 v7, 0x505

    if-ne v3, v7, :cond_72

    .line 666
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->handleLowMemory()V

    .line 668
    :cond_72
    if-eqz v3, :cond_a0

    .line 671
    const-string v7, "RenderView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Texture creation fail, glError "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v7, p1, Lcom/cooliris/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 673
    const/4 v7, 0x0

    iput v7, p1, Lcom/cooliris/media/Texture;->mId:I

    .line 674
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/cooliris/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 675
    const/4 v7, 0x0

    iput v7, p1, Lcom/cooliris/media/Texture;->mState:I

    .line 676
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v2, v7, p2, v8}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 699
    .end local v1           #cropRect:[I
    .end local v4           #height:I
    .end local v6           #width:I
    :goto_9f
    return-void

    .line 679
    .restart local v1       #cropRect:[I
    .restart local v4       #height:I
    .restart local v6       #width:I
    :cond_a0
    iget-object v7, p1, Lcom/cooliris/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 680
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/cooliris/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 681
    const/4 v7, 0x0

    aget v7, p2, v7

    iput v7, p1, Lcom/cooliris/media/Texture;->mId:I

    .line 682
    const/4 v7, 0x3

    iput v7, p1, Lcom/cooliris/media/Texture;->mState:I

    .line 685
    new-instance v5, Lcom/cooliris/media/RenderView$TextureReference;

    iget-object v7, p0, Lcom/cooliris/media/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    const/4 v8, 0x0

    aget v8, p2, v8

    invoke-direct {v5, p1, v2, v7, v8}, Lcom/cooliris/media/RenderView$TextureReference;-><init>(Lcom/cooliris/media/Texture;Ljavax/microedition/khronos/opengles/GL11;Ljava/lang/ref/ReferenceQueue;I)V

    .line 687
    .local v5, textureRef:Lcom/cooliris/media/RenderView$TextureReference;
    iget-object v7, p0, Lcom/cooliris/media/RenderView;->mActiveTextureList:Lcom/cooliris/media/DirectLinkedList;

    iget-object v8, v5, Lcom/cooliris/media/RenderView$TextureReference;->activeListEntry:Lcom/cooliris/media/DirectLinkedList$Entry;

    invoke-virtual {v7, v8}, Lcom/cooliris/media/DirectLinkedList;->add(Lcom/cooliris/media/DirectLinkedList$Entry;)V

    .line 688
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto :goto_9f

    .line 692
    .end local v1           #cropRect:[I
    .end local v4           #height:I
    .end local v5           #textureRef:Lcom/cooliris/media/RenderView$TextureReference;
    .end local v6           #width:I
    :cond_c5
    sget-boolean v7, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v7, :cond_d0

    .line 693
    invoke-static {p1}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->setTextureStateWhenDecodingFailed(Lcom/cooliris/media/Texture;)I

    move-result v7

    iput v7, p1, Lcom/cooliris/media/Texture;->mState:I

    goto :goto_9f

    .line 695
    :cond_d0
    const/4 v7, 0x4

    iput v7, p1, Lcom/cooliris/media/Texture;->mState:I

    goto :goto_9f
.end method


# virtual methods
.method public bind(Lcom/cooliris/media/Texture;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    if-eqz p1, :cond_12

    .line 374
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mBoundTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 411
    :cond_c
    :goto_c
    return v0

    .line 376
    :cond_d
    iget v2, p1, Lcom/cooliris/media/Texture;->mState:I

    packed-switch v2, :pswitch_data_98

    :cond_12
    :goto_12
    :pswitch_12
    move v0, v1

    .line 411
    goto :goto_c

    .line 378
    :pswitch_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/cooliris/media/ResourceTexture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 379
    invoke-virtual {p0, p1}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    move v0, v1

    .line 380
    goto :goto_c

    .line 382
    :cond_25
    iget v2, p1, Lcom/cooliris/media/Texture;->mId:I

    if-eqz v2, :cond_46

    .line 383
    invoke-virtual {p0, v0}, Lcom/cooliris/media/RenderView;->getCacheSize(Z)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/cooliris/media/RenderView;->getCacheSize(Z)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 384
    iget v3, p1, Lcom/cooliris/media/Texture;->mId:I

    if-le v3, v2, :cond_46

    .line 385
    sget-object v2, Lcom/cooliris/media/RenderView;->textureId:[I

    iget v3, p1, Lcom/cooliris/media/Texture;->mId:I

    aput v3, v2, v1

    .line 386
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v3, Lcom/cooliris/media/RenderView;->textureId:[I

    invoke-interface {v2, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 389
    :cond_46
    iget v0, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_12

    .line 390
    invoke-direct {p0, p1, v1}, Lcom/cooliris/media/RenderView;->queueLoad(Lcom/cooliris/media/Texture;Z)V

    goto :goto_12

    .line 394
    :pswitch_50
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    .line 396
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v3, 0xde1

    iget v4, p1, Lcom/cooliris/media/Texture;->mId:I

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 397
    iput-object p1, p0, Lcom/cooliris/media/RenderView;->mBoundTexture:Lcom/cooliris/media/Texture;

    .line 398
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v2

    .line 399
    const/16 v3, 0x505

    if-ne v2, v3, :cond_76

    .line 400
    const-string v0, "RenderView"

    const-string v2, "bind: GL_OUT_OF_MEMORY"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->handleLowMemory()V

    move v0, v1

    .line 402
    goto :goto_c

    .line 403
    :cond_76
    if-eqz v2, :cond_c

    .line 404
    const-string v1, "RenderView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlError ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 376
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_50
    .end packed-switch
.end method

.method public bindMixed(Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;F)Z
    .registers 14
    .parameter "from"
    .parameter "to"
    .parameter "ratio"

    .prologue
    const v9, 0x47057500

    const v8, 0x44408000

    const/4 v3, 0x0

    const/high16 v7, 0x3f80

    const/16 v6, 0x2300

    .line 511
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 512
    .local v2, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v0, 0x1

    .line 513
    .local v0, bind:Z
    invoke-virtual {p0, p1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 514
    const v4, 0x84c1

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 515
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/cooliris/media/RenderView;->mBoundTexture:Lcom/cooliris/media/Texture;

    .line 516
    invoke-virtual {p0, p2}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 517
    if-nez v0, :cond_24

    .line 543
    :goto_23
    return v3

    .line 522
    :cond_24
    const/16 v4, 0xde1

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 525
    const/16 v4, 0x2200

    const v5, 0x47057000

    invoke-interface {v2, v6, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 526
    const v4, 0x8571

    invoke-interface {v2, v6, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 527
    const v4, 0x8572

    invoke-interface {v2, v6, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 531
    const/4 v4, 0x4

    new-array v1, v4, [F

    aput v7, v1, v3

    const/4 v4, 0x1

    aput v7, v1, v4

    const/4 v4, 0x2

    aput v7, v1, v4

    const/4 v4, 0x3

    aput p3, v1, v4

    .line 534
    .local v1, color:[F
    const/16 v4, 0x2201

    invoke-interface {v2, v6, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 537
    const v3, 0x8582

    const v4, 0x47057600

    invoke-interface {v2, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 538
    const v3, 0x8592

    invoke-interface {v2, v6, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 541
    const v3, 0x858a

    const v4, 0x47057600

    invoke-interface {v2, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 542
    const v3, 0x859a

    invoke-interface {v2, v6, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 543
    const/4 v3, 0x1

    goto :goto_23
.end method

.method public clearCache()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/cooliris/media/RenderView;->clearTextureArray(Landroid/util/SparseArray;)V

    .line 239
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/cooliris/media/RenderView;->clearTextureArray(Landroid/util/SparseArray;)V

    .line 240
    return-void
.end method

.method public clearTouchEventQueue()V
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mTouchEventQueue:Lcom/cooliris/media/Deque;

    invoke-virtual {v0}, Lcom/cooliris/media/Deque;->clear()V

    .line 873
    return-void
.end method

.method public defaultPriorityRenderView()V
    .registers 2

    .prologue
    .line 1310
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1311
    return-void
.end method

.method public draw2D(FFFFF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    sub-float v2, v1, p5

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 507
    return-void
.end method

.method public draw2D(Lcom/cooliris/media/Texture;FF)V
    .registers 10
    .parameter "texture"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 487
    invoke-virtual {p1}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 488
    .local v4, width:F
    invoke-virtual {p1}, Lcom/cooliris/media/Texture;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 489
    .local v5, height:F
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    sub-float v2, v1, v5

    const/4 v3, 0x0

    move v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 491
    .end local v4           #width:F
    .end local v5           #height:F
    :cond_1f
    return-void
.end method

.method public draw2D(Lcom/cooliris/media/Texture;FFFF)V
    .registers 12
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 495
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    sub-float v2, v1, p5

    const/4 v3, 0x0

    move v1, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 497
    :cond_17
    return-void
.end method

.method public draw2D(Lcom/cooliris/media/Texture;IIII)V
    .registers 12
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 501
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    sub-int/2addr v1, p3

    sub-int v2, v1, p5

    const/4 v3, 0x0

    move v1, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 503
    :cond_16
    return-void
.end method

.method public drawMixed2D(Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;FFFFFF)V
    .registers 17
    .parameter "from"
    .parameter "to"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 558
    iget-object v7, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 561
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-virtual {p0, p1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 562
    const v0, 0x84c1

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->mBoundTexture:Lcom/cooliris/media/Texture;

    .line 564
    invoke-virtual {p0, p2}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 566
    const/16 v0, 0xde1

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 569
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x47057000

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 570
    const/16 v0, 0x2300

    const v1, 0x8571

    const v2, 0x47057500

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 571
    const/16 v0, 0x2300

    const v1, 0x8572

    const v2, 0x47057500

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 575
    const/4 v0, 0x4

    new-array v6, v0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    aput v1, v6, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f80

    aput v1, v6, v0

    const/4 v0, 0x2

    const/high16 v1, 0x3f80

    aput v1, v6, v0

    const/4 v0, 0x3

    aput p3, v6, v0

    .line 578
    .local v6, color:[F
    const/16 v0, 0x2300

    const/16 v1, 0x2201

    const/4 v2, 0x0

    invoke-interface {v7, v0, v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 581
    const/16 v0, 0x2300

    const v1, 0x8582

    const v2, 0x47057600

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 582
    const/16 v0, 0x2300

    const v1, 0x8592

    const v2, 0x44408000

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 585
    const/16 v0, 0x2300

    const v1, 0x858a

    const v2, 0x47057600

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 586
    const/16 v0, 0x2300

    const v1, 0x859a

    const v2, 0x44408000

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v0, v7

    .line 589
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p5

    sub-float v2, v1, p8

    move v1, p4

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 592
    const/16 v0, 0xde1

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 596
    .end local v6           #color:[F
    :cond_9b
    const v0, 0x84c0

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->mBoundTexture:Lcom/cooliris/media/Texture;

    .line 599
    :cond_a4
    return-void
.end method

.method public elapsedLoadingExpensiveTextures()J
    .registers 5

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/cooliris/media/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 444
    .local v0, startTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 447
    :goto_d
    return-wide v2

    :cond_e
    const-wide/16 v2, -0x1

    goto :goto_d
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 422
    iget v0, p0, Lcom/cooliris/media/RenderView;->mAlpha:F

    return v0
.end method

.method public getCacheSize(Z)I
    .registers 4
    .parameter "scaled"

    .prologue
    .line 243
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/cooliris/media/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    .line 244
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/cooliris/media/ResourceTexture;>;"
    :goto_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    return v1

    .line 243
    .end local v0           #cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/cooliris/media/ResourceTexture;>;"
    :cond_9
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    goto :goto_4
.end method

.method public getFrameTime()J
    .registers 3

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/cooliris/media/RenderView;->mFrameTime:J

    return-wide v0
.end method

.method public getResource(I)Lcom/cooliris/media/ResourceTexture;
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cooliris/media/RenderView;->getResourceInternal(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getResource(IZ)Lcom/cooliris/media/ResourceTexture;
    .registers 4
    .parameter "resourceId"
    .parameter "scaled"

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/RenderView;->getResourceInternal(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method public handleLowMemory()V
    .registers 3

    .prologue
    .line 1295
    const-string v0, "RenderView"

    const-string v1, "Handling low memory condition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v0, :cond_10

    .line 1297
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/RootLayer;->handleLowMemory()V

    .line 1299
    :cond_10
    return-void
.end method

.method public highPriorityRenderView()V
    .registers 2

    .prologue
    .line 1306
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1307
    return-void
.end method

.method public isLoadingExpensiveTextures()Z
    .registers 5

    .prologue
    .line 439
    iget-wide v0, p0, Lcom/cooliris/media/RenderView;->mLoadingExpensiveTexturesStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadTexture(Lcom/cooliris/media/Texture;)V
    .registers 5
    .parameter "texture"

    .prologue
    const/4 v2, 0x2

    .line 293
    if-eqz p1, :cond_8

    .line 294
    iget v1, p1, Lcom/cooliris/media/Texture;->mState:I

    packed-switch v1, :pswitch_data_1c

    .line 309
    :cond_8
    :goto_8
    return-void

    .line 297
    :pswitch_9
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 298
    .local v0, textureId:[I
    iput v2, p1, Lcom/cooliris/media/Texture;->mState:I

    .line 299
    invoke-direct {p0, p1}, Lcom/cooliris/media/RenderView;->loadTextureAsync(Lcom/cooliris/media/Texture;)V

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/cooliris/media/RenderView;->uploadTexture(Lcom/cooliris/media/Texture;[I)V

    .line 301
    iget v1, p1, Lcom/cooliris/media/Texture;->mState:I

    if-ne v1, v2, :cond_8

    .line 302
    const/4 v1, 0x0

    iput v1, p1, Lcom/cooliris/media/Texture;->mState:I

    goto :goto_8

    .line 294
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1133
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1233
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 1234
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1238
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 1239
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 28
    .parameter "gl1"

    .prologue
    .line 761
    move-object/from16 v12, p1

    check-cast v12, Ljavax/microedition/khronos/opengles/GL11;

    .line 762
    .local v12, gl:Ljavax/microedition/khronos/opengles/GL11;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/RenderView;->mFirstDraw:Z

    if-nez v3, :cond_11

    .line 763
    const-string v3, "RenderView"

    const-string v4, "First Draw"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/cooliris/media/RenderView;->mFirstDraw:Z

    .line 768
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_33

    .line 769
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    sget-object v7, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/cooliris/media/RenderView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/quramsoft/xiv/SFUtils;->onDrawFrame(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RootLayer;Ljavax/microedition/khronos/opengles/GL10;Lcom/cooliris/media/RenderView$Lists;II)V

    .line 776
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/RenderView;->mListsDirty:Z

    if-eqz v3, :cond_3c

    .line 777
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/RenderView;->updateLists()V

    .line 780
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/RenderView;->refreshThread()V

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/RenderView;->isLoadingExpensiveTextures()Z

    move-result v25

    .line 783
    .local v25, wasLoadingExpensiveTextures:Z
    const/16 v20, 0x0

    .line 784
    .local v20, loadingExpensiveTextures:Z
    sget-object v3, Lcom/cooliris/media/RenderView;->sTextureLoadThreads:[Lcom/cooliris/media/RenderView$TextureLoadThread;

    array-length v0, v3

    move/from16 v23, v0

    .line 785
    .local v23, numTextureThreads:I
    const/4 v13, 0x2

    .local v13, i:I
    :goto_4b
    move/from16 v0, v23

    if-ge v13, v0, :cond_59

    .line 786
    sget-object v3, Lcom/cooliris/media/RenderView;->sTextureLoadThreads:[Lcom/cooliris/media/RenderView$TextureLoadThread;

    aget-object v3, v3, v13

    iget-boolean v3, v3, Lcom/cooliris/media/RenderView$TextureLoadThread;->mIsLoading:Z

    if-eqz v3, :cond_bc

    .line 787
    const/16 v20, 0x1

    .line 791
    :cond_59
    move/from16 v0, v20

    move/from16 v1, v25

    if-eq v0, v1, :cond_69

    .line 792
    if-eqz v20, :cond_bf

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    :goto_65
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/cooliris/media/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 797
    :cond_69
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cooliris/media/RenderView;->processTextures(Z)V

    .line 800
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 801
    .local v21, now:J
    const v3, 0x3a83126f

    const-wide/16 v4, 0x32

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cooliris/media/RenderView;->mFrameTime:J

    sub-long v6, v21, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v10, v3, v4

    .line 802
    .local v10, dt:F
    move-object/from16 v0, p0

    iput v10, v0, Lcom/cooliris/media/RenderView;->mFrameInterval:F

    .line 803
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cooliris/media/RenderView;->mFrameTime:J

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/RenderView;->processCurrentEvent()V

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/RenderView;->processTouchEvent()V

    .line 809
    sget-object v19, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    .line 810
    .local v19, lists:Lcom/cooliris/media/RenderView$Lists;
    monitor-enter v19

    .line 812
    const/4 v15, 0x0

    .line 813
    .local v15, isDirty:Z
    :try_start_99
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_a1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cooliris/media/Layer;

    .line 814
    .local v17, layer:Lcom/cooliris/media/Layer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/RenderView;->mFrameInterval:F

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lcom/cooliris/media/Layer;->update(Lcom/cooliris/media/RenderView;F)Z

    move-result v24

    .line 815
    .local v24, retVal:Z
    or-int v15, v15, v24

    .line 816
    goto :goto_a1

    .line 785
    .end local v10           #dt:F
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #isDirty:Z
    .end local v17           #layer:Lcom/cooliris/media/Layer;
    .end local v19           #lists:Lcom/cooliris/media/RenderView$Lists;
    .end local v21           #now:J
    .end local v24           #retVal:Z
    :cond_bc
    add-int/lit8 v13, v13, 0x1

    goto :goto_4b

    .line 792
    :cond_bf
    const-wide/16 v3, 0x0

    goto :goto_65

    .line 817
    .restart local v10       #dt:F
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #isDirty:Z
    .restart local v19       #lists:Lcom/cooliris/media/RenderView$Lists;
    .restart local v21       #now:J
    :cond_c2
    if-eqz v15, :cond_c7

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/RenderView;->requestRender()V
    :try_end_c7
    .catchall {:try_start_99 .. :try_end_c7} :catchall_10f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_99 .. :try_end_c7} :catch_112

    .line 825
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_c7
    :goto_c7
    const/16 v3, 0xc11

    :try_start_c9
    invoke-interface {v12, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 826
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/RenderView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v6

    invoke-interface {v12, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 828
    const/16 v3, 0x100

    invoke-interface {v12, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 831
    const/16 v3, 0xbe2

    invoke-interface {v12, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 832
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cooliris/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 833
    .local v18, listSize:I
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cooliris/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v16

    .line 834
    .local v16, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/cooliris/media/Layer;>;"
    :cond_f5
    :goto_f5
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 835
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cooliris/media/Layer;

    .line 836
    .restart local v17       #layer:Lcom/cooliris/media/Layer;
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/cooliris/media/Layer;->mHidden:Z

    if-nez v3, :cond_f5

    .line 839
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lcom/cooliris/media/Layer;->renderOpaque(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    goto :goto_f5

    .line 850
    .end local v16           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/cooliris/media/Layer;>;"
    .end local v17           #layer:Lcom/cooliris/media/Layer;
    .end local v18           #listSize:I
    :catchall_10f
    move-exception v3

    monitor-exit v19
    :try_end_111
    .catchall {:try_start_c9 .. :try_end_111} :catchall_10f

    throw v3

    .line 820
    :catch_112
    move-exception v11

    .line 821
    .local v11, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_113
    const-string v3, "RenderView"

    invoke-virtual {v11}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 843
    .end local v11           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v16       #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/cooliris/media/Layer;>;"
    .restart local v18       #listSize:I
    :cond_11d
    const/16 v3, 0xbe2

    invoke-interface {v12, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 844
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_12a
    :goto_12a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_144

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cooliris/media/Layer;

    .line 845
    .restart local v17       #layer:Lcom/cooliris/media/Layer;
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/cooliris/media/Layer;->mHidden:Z

    if-nez v3, :cond_12a

    .line 846
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lcom/cooliris/media/Layer;->renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    goto :goto_12a

    .line 849
    .end local v17           #layer:Lcom/cooliris/media/Layer;
    :cond_144
    const/16 v3, 0xbe2

    invoke-interface {v12, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 850
    monitor-exit v19
    :try_end_14a
    .catchall {:try_start_113 .. :try_end_14a} :catchall_10f

    .line 851
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1172
    invoke-super {p0, p1, p2, p3}, Landroid/opengl/GLSurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1184
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 1185
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v5, 0x32

    const/4 v0, 0x0

    .line 1191
    iget-object v3, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v3, :cond_8

    .line 1223
    :cond_7
    :goto_7
    return v0

    .line 1197
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 1202
    :try_start_e
    monitor-enter p0
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_f} :catch_43

    .line 1203
    :try_start_f
    iput-object p2, p0, Lcom/cooliris/media/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 1204
    const/4 v3, 0x2

    iput v3, p0, Lcom/cooliris/media/RenderView;->mCurrentEventType:I

    .line 1205
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 1206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long v1, v3, v5

    .line 1208
    .local v1, timeout:J
    :cond_1d
    const-wide/16 v3, 0x32

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1209
    iget v3, p0, Lcom/cooliris/media/RenderView;->mCurrentEventType:I

    if-eqz v3, :cond_2e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_1d

    .line 1210
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_40

    .line 1216
    .end local v1           #timeout:J
    :goto_2f
    const/4 v0, 0x0

    .line 1217
    .local v0, retVal:Z
    iget-boolean v3, p0, Lcom/cooliris/media/RenderView;->mCurrentKeyEventResult:Z

    if-nez v3, :cond_45

    iget v3, p0, Lcom/cooliris/media/RenderView;->mCurrentEventType:I

    if-nez v3, :cond_45

    .line 1218
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1222
    :goto_3c
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto :goto_7

    .line 1210
    .end local v0           #retVal:Z
    :catchall_40
    move-exception v3

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw v3
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_43} :catch_43

    .line 1211
    :catch_43
    move-exception v3

    goto :goto_2f

    .line 1220
    .restart local v0       #retVal:Z
    :cond_45
    const/4 v0, 0x1

    goto :goto_3c
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 727
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/RenderView;->mPause:Z

    .line 729
    const-string v0, "RenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPause RenderView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 731
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v0, :cond_2c

    .line 732
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/RootLayer;->onPause()V

    .line 735
    :cond_2c
    invoke-static {}, Lcom/cooliris/media/GridInputProcessor;->resetScale()V

    .line 736
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 703
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 704
    const-string v0, "RenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume RenderView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/RenderView;->mPause:Z

    .line 706
    new-instance v0, Lcom/cooliris/media/RenderView$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/RenderView$1;-><init>(Lcom/cooliris/media/RenderView;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Lcom/cooliris/media/RenderView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 723
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x3

    .line 1138
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 1139
    .local v1, type:I
    iget-boolean v2, p0, Lcom/cooliris/media/RenderView;->mPendingSensorEvent:Z

    if-nez v2, :cond_e

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    :cond_e
    if-ne v1, v3, :cond_1f

    .line 1141
    :cond_10
    move-object v0, p1

    .line 1142
    .local v0, e:Landroid/hardware/SensorEvent;
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v2, :cond_1a

    .line 1143
    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {v2, p0, v0}, Lcom/cooliris/media/RootLayer;->onSensorChanged(Lcom/cooliris/media/RenderView;Landroid/hardware/SensorEvent;)V

    .line 1144
    :cond_1a
    if-ne v1, v3, :cond_1f

    .line 1145
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 1148
    .end local v0           #e:Landroid/hardware/SensorEvent;
    :cond_1f
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 971
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_21

    .line 975
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 976
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v1

    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {v1, v0}, Lcom/quramsoft/xiv/SFUtils;->setWindowManager(Landroid/view/WindowManager;)V

    .line 980
    :cond_1a
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/quramsoft/xiv/SFUtils;->onSurfaceChanged()V

    .line 984
    :cond_21
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 985
    iput-boolean v3, p0, Lcom/cooliris/media/RenderView;->mFirstDraw:Z

    .line 986
    iput p2, p0, Lcom/cooliris/media/RenderView;->mViewWidth:I

    .line 987
    iput p3, p0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    .line 988
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v0, :cond_34

    .line 989
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/RootLayer;->setSize(FF)V

    .line 993
    :cond_34
    const v0, 0x3dcccccd

    .line 994
    const/high16 v1, 0x42c8

    .line 995
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 996
    const/16 v2, 0x1701

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 997
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 998
    const/high16 v2, 0x4234

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {p1, v2, v3, v0, v1}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 1001
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_5f

    .line 1007
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v0, :cond_59

    .line 1008
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {v0, p0, p2, p3}, Lcom/cooliris/media/RootLayer;->onSurfaceChanged(Lcom/cooliris/media/RenderView;II)V

    .line 1017
    :cond_59
    :goto_59
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 1018
    return-void

    .line 1011
    :cond_5f
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v0, :cond_59

    .line 1012
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {v0, p0, p2, p3}, Lcom/cooliris/media/RootLayer;->onSurfaceChanged(Lcom/cooliris/media/RenderView;II)V

    goto :goto_59
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const v6, 0x8078

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1035
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->clearCache()V

    .line 1037
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 1038
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v0, :cond_90

    .line 1039
    iput-object p1, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 1049
    :goto_11
    invoke-virtual {p0, v4}, Lcom/cooliris/media/RenderView;->setRenderMode(I)V

    .line 1054
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1057
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 1058
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 1064
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 1065
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 1076
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 1077
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 1078
    const v0, 0x84c1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 1079
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 1080
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 1083
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 1084
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDepthFunc(I)V

    .line 1087
    const/16 v0, 0x303

    invoke-interface {p1, v5, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 1090
    const/high16 v0, 0x3f80

    invoke-interface {p1, v3, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 1091
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 1094
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mActiveTextureList:Lcom/cooliris/media/DirectLinkedList;

    invoke-virtual {v0}, Lcom/cooliris/media/DirectLinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 1095
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mActiveTextureList:Lcom/cooliris/media/DirectLinkedList;

    invoke-virtual {v0}, Lcom/cooliris/media/DirectLinkedList;->getHead()Lcom/cooliris/media/DirectLinkedList$Entry;

    move-result-object v0

    move-object v1, v0

    .line 1096
    :goto_71
    if-eqz v1, :cond_b8

    .line 1097
    iget-object v0, v1, Lcom/cooliris/media/DirectLinkedList$Entry;->value:Ljava/lang/Object;

    check-cast v0, Lcom/cooliris/media/RenderView$TextureReference;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView$TextureReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Texture;

    .line 1098
    if-eqz v0, :cond_8c

    .line 1099
    sget-object v2, Lcom/cooliris/media/RenderView;->textureId:[I

    iget v3, v0, Lcom/cooliris/media/Texture;->mId:I

    aput v3, v2, v4

    .line 1100
    iput v4, v0, Lcom/cooliris/media/Texture;->mState:I

    .line 1101
    sget-object v0, Lcom/cooliris/media/RenderView;->textureId:[I

    invoke-interface {p1, v5, v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 1103
    :cond_8c
    iget-object v0, v1, Lcom/cooliris/media/DirectLinkedList$Entry;->next:Lcom/cooliris/media/DirectLinkedList$Entry;

    move-object v1, v0

    .line 1104
    goto :goto_71

    .line 1042
    :cond_90
    const-string v0, "RenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLObject has changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iput-object p1, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    goto/16 :goto_11

    .line 1106
    :cond_b8
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mActiveTextureList:Lcom/cooliris/media/DirectLinkedList;

    invoke-virtual {v0}, Lcom/cooliris/media/DirectLinkedList;->clear()V

    .line 1107
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    if-eqz v0, :cond_c6

    .line 1108
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {v0, p0, p1}, Lcom/cooliris/media/RootLayer;->onSurfaceCreated(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1110
    :cond_c6
    sget-object v1, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    monitor-enter v1

    .line 1111
    :try_start_c9
    sget-object v0, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    iget-object v0, v0, Lcom/cooliris/media/RenderView$Lists;->systemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Layer;

    .line 1112
    invoke-virtual {v0, p0, p1}, Lcom/cooliris/media/Layer;->onSurfaceCreated(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    goto :goto_d1

    .line 1114
    :catchall_e1
    move-exception v0

    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_c9 .. :try_end_e3} :catchall_e1

    throw v0

    :cond_e4
    :try_start_e4
    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e1

    .line 1117
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_105

    .line 1121
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_fe

    .line 1122
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v1

    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {v1, v0}, Lcom/quramsoft/xiv/SFUtils;->setWindowManager(Landroid/view/WindowManager;)V

    .line 1126
    :cond_fe
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/quramsoft/xiv/SFUtils;->saveCurrentRotation()V

    .line 1129
    :cond_105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1154
    iget-object v1, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v1, :cond_7

    .line 1155
    const/4 v1, 0x0

    .line 1167
    :goto_6
    return v1

    .line 1158
    :cond_7
    iget-object v1, p0, Lcom/cooliris/media/RenderView;->mTouchEventQueue:Lcom/cooliris/media/Deque;

    invoke-virtual {v1}, Lcom/cooliris/media/Deque;->size()I

    move-result v1

    const/16 v3, 0x8

    if-le v1, v3, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    move v1, v2

    .line 1159
    goto :goto_6

    .line 1160
    :cond_1a
    iget-object v3, p0, Lcom/cooliris/media/RenderView;->mTouchEventQueue:Lcom/cooliris/media/Deque;

    monitor-enter v3

    .line 1161
    :try_start_1d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1162
    .local v0, eventCopy:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/cooliris/media/RenderView;->mTouchEventQueue:Lcom/cooliris/media/Deque;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/Deque;->addLast(Ljava/lang/Object;)V

    .line 1163
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 1164
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_3b

    .line 1166
    iget-object v1, p0, Lcom/cooliris/media/RenderView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getBoundaryLayer()Lcom/cooliris/media/BoundaryLayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cooliris/media/BoundaryLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v2

    .line 1167
    goto :goto_6

    .line 1164
    .end local v0           #eventCopy:Landroid/view/MotionEvent;
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public prime(Lcom/cooliris/media/Texture;Z)V
    .registers 5
    .parameter "texture"
    .parameter "highPriority"

    .prologue
    .line 267
    if-eqz p1, :cond_11

    iget v0, p1, Lcom/cooliris/media/Texture;->mState:I

    if-nez v0, :cond_11

    if-nez p2, :cond_e

    iget v0, p0, Lcom/cooliris/media/RenderView;->mLoadingCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_11

    .line 269
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/RenderView;->queueLoad(Lcom/cooliris/media/Texture;Z)V

    .line 271
    :cond_11
    return-void
.end method

.method public processAllTextures()V
    .registers 2

    .prologue
    .line 602
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cooliris/media/RenderView;->processTextures(Z)V

    .line 603
    return-void
.end method

.method public resetColor()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f80

    .line 433
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 434
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 435
    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 436
    return-void
.end method

.method public setAlpha(F)V
    .registers 6
    .parameter "alpha"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 416
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 417
    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 418
    iput p1, p0, Lcom/cooliris/media/RenderView;->mAlpha:F

    .line 419
    return-void
.end method

.method public setFov(F)V
    .registers 7
    .parameter "fov"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 1022
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v3, 0x1701

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 1023
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 1024
    const v2, 0x3dcccccd

    .line 1025
    .local v2, zNear:F
    const/high16 v1, 0x42c8

    .line 1026
    .local v1, zFar:F
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, p1, v3, v2, v1}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 1027
    const/16 v3, 0x1700

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 1028
    return-void
.end method

.method public setRootLayer(Lcom/cooliris/media/RootLayer;)V
    .registers 5
    .parameter "layer"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 213
    iput-object p1, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/RenderView;->mListsDirty:Z

    .line 215
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    iget v1, p0, Lcom/cooliris/media/RenderView;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cooliris/media/RenderView;->mViewHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/RootLayer;->setSize(FF)V

    .line 217
    :cond_18
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;

    .line 1289
    sget-object v1, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    monitor-enter v1

    .line 1290
    :try_start_6
    sget-object v0, Lcom/cooliris/media/RenderView;->sLists:Lcom/cooliris/media/RenderView$Lists;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView$Lists;->clear()V

    .line 1291
    monitor-exit v1

    .line 1292
    return-void

    .line 1291
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 1228
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1229
    return-void
.end method

.method public unbindMixed()V
    .registers 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/cooliris/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 549
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 552
    const v1, 0x84c0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 553
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cooliris/media/RenderView;->mBoundTexture:Lcom/cooliris/media/Texture;

    .line 554
    return-void
.end method
