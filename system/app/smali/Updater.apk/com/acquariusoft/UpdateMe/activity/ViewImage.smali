.class public Lcom/acquariusoft/UpdateMe/activity/ViewImage;
.super Landroid/app/Activity;


# instance fields
.field a:I

.field b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

.field c:Landroid/widget/FrameLayout;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/view/View$OnTouchListener;

.field private g:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->c:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->d:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->e:Landroid/widget/ImageView;

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a()V

    new-instance v1, Lcom/a/a;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-direct {v1, v0}, Lcom/a/a;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->f:Ljava/util/List;

    iget v2, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/acquariusoft/UpdateMe/activity/g;

    invoke-direct {v2, p0}, Lcom/acquariusoft/UpdateMe/activity/g;-><init>(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V

    invoke-virtual {v1, v0, v2}, Lcom/a/a;->a(Ljava/lang/String;Lcom/a/b/d;)Lcom/a/b;

    return-void
.end method

.method static synthetic a(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V
    .registers 3

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    sget-object v1, Lcom/acquariusoft/UpdateMe/an;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_16

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    :goto_12
    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a()V

    return-void

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    goto :goto_12
.end method

.method static synthetic b(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V
    .registers 2

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    :goto_a
    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a()V

    return-void

    :cond_e
    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    goto :goto_a
.end method

.method static synthetic c(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)Landroid/view/GestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->g:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public final a(I)F
    .registers 4

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p0, v2}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a:I

    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->setContentView(I)V

    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->d:Landroid/widget/ImageView;

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->e:Landroid/widget/ImageView;

    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->c:Landroid/widget/FrameLayout;

    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/acquariusoft/UpdateMe/activity/h;

    invoke-direct {v1, p0}, Lcom/acquariusoft/UpdateMe/activity/h;-><init>(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->g:Landroid/view/GestureDetector;

    new-instance v0, Lcom/acquariusoft/UpdateMe/activity/f;

    invoke-direct {v0, p0}, Lcom/acquariusoft/UpdateMe/activity/f;-><init>(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->f:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->f:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->g:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
