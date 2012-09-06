.class final Lcom/google/android/youtube/app/adapter/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lcom/google/android/youtube/app/adapter/i;

.field private final d:Lcom/google/android/youtube/app/adapter/i;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/i;Lcom/google/android/youtube/app/adapter/i;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/j;->a:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/j;->b:Z

    .line 96
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/i;Lcom/google/android/youtube/app/adapter/i;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/j;-><init>(Lcom/google/android/youtube/app/adapter/i;Lcom/google/android/youtube/app/adapter/i;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/i;->a(Lcom/google/android/youtube/app/adapter/i;)Lcom/google/android/youtube/app/adapter/j;

    move-result-object v0

    if-ne v0, p0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/adapter/i;->a(Lcom/google/android/youtube/app/adapter/i;Lcom/google/android/youtube/app/adapter/j;)Lcom/google/android/youtube/app/adapter/j;

    :cond_e
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 88
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/i;->a(Lcom/google/android/youtube/app/adapter/i;)Lcom/google/android/youtube/app/adapter/j;

    move-result-object v0

    if-ne v0, p0, :cond_2c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/j;->b:Z

    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/j;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/i;->b(Lcom/google/android/youtube/app/adapter/i;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/adapter/i;->a(Lcom/google/android/youtube/app/adapter/i;Z)Z

    invoke-static {}, Lcom/google/android/youtube/app/adapter/i;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/google/android/youtube/app/adapter/i;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/j;->run()V

    goto :goto_2c
.end method

.method public final run()V
    .registers 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/i;->a(Lcom/google/android/youtube/app/adapter/i;)Lcom/google/android/youtube/app/adapter/j;

    move-result-object v0

    if-ne v0, p0, :cond_90

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/adapter/i;->a(Lcom/google/android/youtube/app/adapter/i;Lcom/google/android/youtube/app/adapter/j;)Lcom/google/android/youtube/app/adapter/j;

    .line 122
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/i;->c(Lcom/google/android/youtube/app/adapter/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/j;->e:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/i;->d(Lcom/google/android/youtube/app/adapter/i;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/i;->e(Lcom/google/android/youtube/app/adapter/i;)Lcom/google/android/youtube/app/adapter/k;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 125
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/i;->e(Lcom/google/android/youtube/app/adapter/i;)Lcom/google/android/youtube/app/adapter/k;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/j;->e:Landroid/graphics/Bitmap;

    invoke-interface {v1}, Lcom/google/android/youtube/app/adapter/k;->a()V

    .line 127
    :cond_3d
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/i;->d(Lcom/google/android/youtube/app/adapter/i;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_64

    .line 128
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v3}, Lcom/google/android/youtube/app/adapter/i;->d(Lcom/google/android/youtube/app/adapter/i;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/youtube/app/adapter/i;->a(Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/i;->d(Lcom/google/android/youtube/app/adapter/i;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 132
    :cond_64
    iget-boolean v0, p0, Lcom/google/android/youtube/app/adapter/j;->a:Z

    if-eqz v0, :cond_90

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/i;->f(Lcom/google/android/youtube/app/adapter/i;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/i;->f(Lcom/google/android/youtube/app/adapter/i;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/i;->g(Lcom/google/android/youtube/app/adapter/i;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/j;->d:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/i;->d(Lcom/google/android/youtube/app/adapter/i;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/j;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-static {v1}, Lcom/google/android/youtube/app/adapter/i;->f(Lcom/google/android/youtube/app/adapter/i;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    :cond_90
    return-void
.end method
