.class public Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/vector/bp;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Lcom/google/android/maps/driveabout/vector/bo;

.field private d:Lcom/google/android/maps/driveabout/vector/bs;

.field private e:Z

.field private f:Lcom/google/android/maps/driveabout/vector/bk;

.field private g:Lcom/google/android/maps/driveabout/vector/bl;

.field private h:Lcom/google/android/maps/driveabout/vector/bm;

.field private i:Lcom/google/android/maps/driveabout/vector/bq;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bp;-><init>(Lcom/google/android/maps/driveabout/vector/bf;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a:Lcom/google/android/maps/driveabout/vector/bp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->k:I

    return v0
.end method

.method private a()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_19

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_19
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/bk;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/bl;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/bm;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->i:Lcom/google/android/maps/driveabout/vector/bq;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->j:I

    return v0
.end method

.method static synthetic f()Lcom/google/android/maps/driveabout/vector/bp;
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a:Lcom/google/android/maps/driveabout/vector/bp;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/bs;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bk;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/bk;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bs;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/bk;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bt;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/bt;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/bk;

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/bl;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bi;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/bi;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Lcom/google/android/maps/driveabout/vector/bf;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/bl;

    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/bm;

    if-nez v0, :cond_26

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bj;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/bj;-><init>(Lcom/google/android/maps/driveabout/vector/bf;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/bm;

    :cond_26
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/bs;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bo;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bo;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->start()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->g()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->f()V

    return-void
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bo;->a(I)V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->c()V

    return-void
.end method

.method protected finalize()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->h()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/bs;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->b()I

    move-result v0

    :goto_16
    new-instance v2, Lcom/google/android/maps/driveabout/vector/bo;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/bo;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    if-eq v0, v1, :cond_26

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bo;->a(I)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->start()V

    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    return-void

    :cond_2f
    move v0, v1

    goto :goto_16
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->h()V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/bo;->a(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->d()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->e()V

    return-void
.end method
