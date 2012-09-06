.class public Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;
.super Ljava/lang/Object;


# static fields
.field private static final K:[I


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Z

.field private G:I

.field private H:Lcom/estrongs/android/pop/popupwindowwitharrow/c;

.field private I:Z

.field private J:I

.field private L:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private N:I

.field private O:I

.field private P:I

.field private Q:Landroid/view/animation/AnimationSet;

.field private R:Landroid/view/animation/AnimationSet;

.field private S:Landroid/view/animation/ScaleAnimation;

.field private T:Landroid/view/animation/AlphaAnimation;

.field private U:Landroid/view/animation/ScaleAnimation;

.field private V:Landroid/view/animation/AlphaAnimation;

.field public a:I

.field protected b:I

.field protected c:I

.field protected d:Z

.field protected e:Z

.field private f:Landroid/content/Context;

.field private g:Landroid/view/WindowManager;

.field private h:Z

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/view/View$OnTouchListener;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:[I

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->K:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a:I

    iput v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->l:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->n:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->o:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->p:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->e:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->z:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->A:Landroid/graphics/Rect;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->G:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->I:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->J:I

    new-instance v0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/a;-><init>(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .registers 8

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a:I

    iput v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->l:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->n:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->o:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->p:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->e:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->z:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->A:Landroid/graphics/Rect;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->G:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->I:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->J:I

    new-instance v0, Lcom/estrongs/android/pop/popupwindowwitharrow/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/a;-><init>(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g:Landroid/view/WindowManager;

    :cond_47
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b(I)V

    invoke-virtual {p0, p3}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(I)V

    invoke-virtual {p0, p4}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Z)V

    return-void
.end method

.method private a()I
    .registers 10

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->P:I

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->B:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b:I

    int-to-float v1, v1

    div-float v6, v0, v1

    const/4 v8, 0x0

    :cond_13
    :goto_13
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->Q:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666

    const/high16 v2, 0x3f80

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->S:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->T:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->S:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xd2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->T:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->S:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->T:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->Q:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->S:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->Q:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->T:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->R:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f666666

    const/high16 v3, 0x3f80

    const v4, 0x3f666666

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->U:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->V:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->U:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->V:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xd2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->U:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->V:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->R:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->U:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->R:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->V:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/estrongs/android/pop/popupwindowwitharrow/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/b;-><init>(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->R:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->J:I

    return v0

    :cond_ca
    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->B:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b:I

    int-to-float v1, v1

    div-float v6, v0, v1

    const/high16 v8, 0x3f80

    goto/16 :goto_13
.end method

.method private a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->t:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->v:I

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_21
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->G:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->m:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PopupWindow:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_4e
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_21
.end method

.method static synthetic a(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->L:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g:Landroid/view/WindowManager;

    if-nez v0, :cond_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v2, Lcom/estrongs/android/pop/popupwindowwitharrow/d;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f:Landroid/content/Context;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/d;-><init>(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d:Z

    if-eqz v0, :cond_49

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b:I

    :goto_22
    iget-boolean v3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->e:Z

    if-eqz v3, :cond_28

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->c:I

    :cond_28
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_39
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    invoke-virtual {v2, v0, v3}, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->w:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->x:I

    return-void

    :cond_49
    move v0, v1

    goto :goto_22
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 5

    const/4 v2, -0x1

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->P:I

    if-nez v0, :cond_17

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->P:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_16
.end method

.method static synthetic a(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    aget v2, v2, v0

    add-int/2addr v2, p3

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x33

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->z:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->x:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_44

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->w:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_aa

    :cond_44
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->w:I

    add-int/2addr v7, v4

    add-int/2addr v7, p3

    iget v8, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->x:I

    add-int/2addr v8, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p4

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v6, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    iget-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    aget v4, v4, v0

    add-int/2addr v4, p3

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    aget v4, v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->z:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->z:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p4

    iget-object v5, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->z:[I

    aget v5, v5, v1

    sub-int/2addr v5, p4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v2

    if-ge v4, v2, :cond_97

    move v0, v1

    :cond_97
    if-eqz v0, :cond_b2

    const/16 v2, 0x53

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    aget v1, v3, v1

    sub-int v1, v2, v1

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_aa
    :goto_aa
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v0

    :cond_b2
    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->y:[I

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_aa
.end method

.method static synthetic a(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->Q:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->Q:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->startNow()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->N:I

    return v0
.end method

.method private d(I)I
    .registers 6

    const/high16 v3, 0x2

    const v0, -0x68219

    and-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->I:Z

    if-eqz v1, :cond_e

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_e
    iget-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->k:Z

    if-nez v1, :cond_34

    or-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    or-int/2addr v0, v3

    :cond_1a
    :goto_1a
    iget-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->n:Z

    if-nez v1, :cond_20

    or-int/lit8 v0, v0, 0x10

    :cond_20
    iget-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->o:Z

    if-eqz v1, :cond_27

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    :cond_27
    iget-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->p:Z

    if-nez v1, :cond_2d

    or-int/lit16 v0, v0, 0x200

    :cond_2d
    iget-boolean v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->q:Z

    if-eqz v1, :cond_33

    or-int/lit16 v0, v0, 0x100

    :cond_33
    return v0

    :cond_34
    iget v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    or-int/2addr v0, v3

    goto :goto_1a
.end method

.method static synthetic d(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->O:I

    return v0
.end method

.method private d(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->F:Z

    if-eq p1, v0, :cond_19

    iput-boolean p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->F:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->F:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    :cond_22
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_19
.end method

.method static synthetic e(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->F:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->r:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g()[I
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->K:[I

    return-object v0
.end method

.method private h()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->L:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_b
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->M:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_16
    iput-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->L:Ljava/lang/ref/WeakReference;

    return-void

    :cond_19
    move-object v0, v1

    goto :goto_b
.end method


# virtual methods
.method public a(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(IZ)V

    return-void
.end method

.method public a(IIIIZ)V
    .registers 11

    const/4 v4, -0x1

    const/4 v1, 0x1

    if-eq p3, v4, :cond_9

    iput p3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->t:I

    invoke-virtual {p0, p3}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b(I)V

    :cond_9
    if-eq p4, v4, :cond_10

    iput p4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->v:I

    invoke-virtual {p0, p4}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(I)V

    :cond_10
    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    if-nez v0, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f()I

    move-result v2

    if-nez v2, :cond_7e

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->B:Landroid/graphics/Rect;

    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    :cond_2d
    :goto_2d
    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->s:I

    if-gez v2, :cond_8b

    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->s:I

    :goto_33
    if-eq p3, v4, :cond_3e

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v3, v2, :cond_3e

    iput v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->t:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v1

    :cond_3e
    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->u:I

    if-gez v2, :cond_8e

    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->u:I

    :goto_44
    if-eq p4, v4, :cond_4f

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v2, :cond_4f

    iput v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->v:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v1

    :cond_4f
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v2, p1, :cond_56

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v1

    :cond_56
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, p2, :cond_5d

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v1

    :cond_5d
    invoke-direct {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a()I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_68

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v1

    :cond_68
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d(I)I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_91

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_74
    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    :cond_7e
    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f()I

    move-result v2

    if-ne v2, v1, :cond_2d

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->B:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int p2, v2, p4

    goto :goto_2d

    :cond_8b
    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->t:I

    goto :goto_33

    :cond_8e
    iget v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->v:I

    goto :goto_44

    :cond_91
    move v1, p5

    goto :goto_74
.end method

.method public a(IZ)V
    .registers 3

    iput p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->c:I

    iput-boolean p2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->e:Z

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->C:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f:Landroid/content/Context;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f:Landroid/content/Context;

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g:Landroid/view/WindowManager;

    goto :goto_6
.end method

.method public a(Landroid/view/View;III)V
    .registers 6

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->c()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->h:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a()I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->a(Landroid/view/WindowManager$LayoutParams;)V

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_a
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->k:Z

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->R:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->R:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    return-void
.end method

.method public b(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b(IZ)V

    return-void
.end method

.method public b(IZ)V
    .registers 3

    iput p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b:I

    iput-boolean p2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->B:Landroid/graphics/Rect;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->n:Z

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->P:I

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->o:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->h:Z

    return v0
.end method

.method public d()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->c()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->h()V

    :try_start_f
    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_39

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2b
    iput-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->H:Lcom/estrongs/android/pop/popupwindowwitharrow/c;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->H:Lcom/estrongs/android/pop/popupwindowwitharrow/c;

    invoke-interface {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/c;->a()V

    :cond_38
    return-void

    :catchall_39
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    if-eq v0, v2, :cond_50

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_50
    iput-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->j:Landroid/view/View;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->H:Lcom/estrongs/android/pop/popupwindowwitharrow/c;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->H:Lcom/estrongs/android/pop/popupwindowwitharrow/c;

    invoke-interface {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/c;->a()V

    :cond_5d
    throw v1
.end method

.method public e()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->B:Landroid/graphics/Rect;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->P:I

    return v0
.end method
