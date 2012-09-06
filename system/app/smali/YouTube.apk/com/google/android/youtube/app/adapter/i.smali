.class public abstract Lcom/google/android/youtube/app/adapter/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/android/youtube/app/adapter/az;


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/view/animation/Animation;

.field private final e:I

.field private f:Lcom/google/android/youtube/app/adapter/j;

.field private g:Z

.field private h:Lcom/google/android/youtube/app/adapter/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/i;->g:Z

    .line 43
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->b:Landroid/content/Context;

    .line 45
    const/high16 v0, 0x10a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->d:Landroid/view/animation/Animation;

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/adapter/i;->e:I

    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->c:Landroid/widget/ImageView;

    .line 50
    sget-object v0, Lcom/google/android/youtube/app/adapter/i;->a:Landroid/os/Handler;

    if-nez v0, :cond_41

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/youtube/app/adapter/i;->a:Landroid/os/Handler;

    .line 53
    :cond_41
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/youtube/app/adapter/i;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/i;)Lcom/google/android/youtube/app/adapter/j;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->f:Lcom/google/android/youtube/app/adapter/j;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/i;Lcom/google/android/youtube/app/adapter/j;)Lcom/google/android/youtube/app/adapter/j;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->f:Lcom/google/android/youtube/app/adapter/j;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/i;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/i;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/i;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/i;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/adapter/i;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/adapter/i;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/adapter/i;)Lcom/google/android/youtube/app/adapter/k;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->h:Lcom/google/android/youtube/app/adapter/k;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/adapter/i;)Landroid/view/animation/Animation;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->d:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/adapter/i;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/youtube/app/adapter/i;->e:I

    return v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/google/android/youtube/app/adapter/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/google/android/youtube/app/adapter/j;-><init>(Lcom/google/android/youtube/app/adapter/i;Lcom/google/android/youtube/app/adapter/i;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->f:Lcom/google/android/youtube/app/adapter/j;

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->c:Landroid/widget/ImageView;

    sget-object v1, Lcom/google/android/youtube/app/adapter/i;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/i;->f:Lcom/google/android/youtube/app/adapter/j;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/youtube/app/adapter/i;->a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->f:Lcom/google/android/youtube/app/adapter/j;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->f:Lcom/google/android/youtube/app/adapter/j;

    iget-boolean v0, v0, Lcom/google/android/youtube/app/adapter/j;->b:Z

    if-nez v0, :cond_2f

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->f:Lcom/google/android/youtube/app/adapter/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/youtube/app/adapter/j;->a:Z

    .line 67
    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected a(Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/adapter/k;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/i;->h:Lcom/google/android/youtube/app/adapter/k;

    .line 57
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/i;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 82
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    return-void
.end method
