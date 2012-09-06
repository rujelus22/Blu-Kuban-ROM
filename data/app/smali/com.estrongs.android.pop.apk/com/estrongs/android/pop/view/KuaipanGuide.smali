.class public Lcom/estrongs/android/pop/view/KuaipanGuide;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:[Ljava/lang/String;

.field b:[I

.field c:Z

.field private d:Landroid/widget/ViewFlipper;

.field private e:Landroid/view/GestureDetector;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->f:I

    iput-object v1, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->a:[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->b:[I

    iput v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->h:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->c:Z

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Landroid/graphics/drawable/BitmapDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/view/animation/Animation;
    .registers 10

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method protected b()Landroid/view/animation/Animation;
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x4080

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method protected c()Landroid/view/animation/Animation;
    .registers 10

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method protected d()Landroid/view/animation/Animation;
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/view/KuaipanGuide;->requestWindowFeature(I)Z

    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->setContentView(I)V

    const v0, 0x7f07013e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "client"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->g:Ljava/lang/String;

    const-string v3, "baidu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->c:Z

    const-string v2, "input_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    const-string v2, "imgpath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->a:[Ljava/lang/String;

    move v0, v1

    :goto_4b
    iget-object v2, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_69

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->a:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->h:I

    :cond_55
    :goto_55
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->e:Landroid/view/GestureDetector;

    iput v1, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->f:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v6}, Landroid/widget/ViewFlipper;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p0}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_69
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/estrongs/android/pop/view/KuaipanGuide;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_85
    const-string v3, "imgid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "images"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->b:[I

    move v2, v1

    :goto_96
    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->b:[I

    array-length v0, v0

    if-lt v2, v0, :cond_a1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->b:[I

    array-length v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->h:I

    goto :goto_55

    :cond_a1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->c:Z

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->b:[I

    aget v0, v0, v2

    const v3, 0x7f020027

    if-ne v0, v3, :cond_d8

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f070068

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v4, Lcom/estrongs/android/pop/view/if;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/view/if;-><init>(Lcom/estrongs/android/pop/view/KuaipanGuide;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    :goto_d4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_96

    :cond_d8
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->b:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_d4
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->g:Ljava/lang/String;

    const-string v2, "kuaipan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->q()V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/c;->e(Z)V

    :goto_19
    iget-object v1, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_22

    :cond_1e
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void

    :cond_22
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x4348

    const/high16 v4, 0x42c8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_60

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_60

    iget v2, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->f:I

    iget v3, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->h:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_41

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->c:Z

    if-eqz v2, :cond_3d

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "shownet"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/android/pop/view/KuaipanGuide;->setResult(ILandroid/content/Intent;)V

    :cond_3d
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->finish()V

    :cond_40
    :goto_40
    return v0

    :cond_41
    iget v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->f:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->a()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->b()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_5e
    :goto_5e
    move v0, v1

    goto :goto_40

    :cond_60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5e

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5e

    iget v2, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->f:I

    if-eqz v2, :cond_40

    iget v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->f:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->c()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->d()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_5e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_21

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->c:Z

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "shownet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/KuaipanGuide;->setResult(ILandroid/content/Intent;)V

    :cond_1e
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/KuaipanGuide;->finish()V

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/KuaipanGuide;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
