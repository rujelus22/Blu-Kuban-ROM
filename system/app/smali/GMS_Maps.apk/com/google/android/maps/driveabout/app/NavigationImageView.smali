.class public Lcom/google/android/maps/driveabout/app/NavigationImageView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lx/af;


# instance fields
.field private a:Lu/I;

.field private b:Landroid/widget/ImageSwitcher;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/view/ViewGroup;

.field private g:Lx/ad;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationImageView;)Lu/I;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lu/I;

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const-wide/16 v3, 0x3e8

    const/4 v2, 0x1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030033

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f00eb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const v0, 0x7f0f00ec

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cr;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cr;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0f00ee

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v0, 0x7f0f00ed

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lu/I;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lu/I;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lx/af;II)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    if-eqz v1, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    iput p3, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->i:I

    iput p4, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->h:I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->j:Ljava/lang/String;

    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Lx/ag;->a(Ljava/lang/String;Lx/af;Z)Lx/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    goto :goto_2d
.end method

.method private a(Lu/I;Z)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lu/I;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lu/I;

    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p1}, Lu/I;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a()V

    const v0, 0x7f0b00b3

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    :goto_29
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lu/I;

    goto :goto_19

    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b(Lu/I;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    invoke-virtual {v0}, Lx/ad;->c()I

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    invoke-virtual {v0}, Lx/ad;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4d

    const v0, 0x7f0b00b4

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    goto :goto_29

    :cond_4d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_29

    :cond_5b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_29
.end method

.method private b(Lu/I;Z)Z
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_26

    :cond_c
    if-eqz p2, :cond_18

    new-instance v0, Lcom/google/android/maps/driveabout/app/cs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/cs;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lu/I;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->post(Ljava/lang/Runnable;)Z

    :goto_16
    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    const v0, 0x7f0b00b4

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    const-string v0, "NavigationImageView"

    const-string v1, "Unable to request navigation image since relayout failed to get view size"

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_26
    invoke-virtual {p1}, Lu/I;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Ljava/lang/String;Lx/af;II)V

    const/4 v0, 0x1

    goto :goto_17
.end method


# virtual methods
.method public a(Lu/I;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/content/Context;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    invoke-virtual {v0}, Lx/ad;->b()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lu/I;

    if-eq p1, v0, :cond_26

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lu/I;Z)V

    :cond_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1e
.end method

.method public a(Lx/ad;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    if-eq p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/google/android/maps/driveabout/app/ct;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ct;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->i:I

    if-ne v0, p1, :cond_10

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->h:I

    if-eq v0, p2, :cond_25

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lx/ad;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lu/I;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lu/I;Z)V

    :cond_25
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/content/Context;)V

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
