.class public Lcom/google/android/maps/driveabout/app/NavigationImageView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lr/ae;


# instance fields
.field private a:Lo/I;

.field private b:Landroid/widget/ImageSwitcher;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/view/ViewGroup;

.field private g:Lr/ac;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationImageView;)Lo/I;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lo/I;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    return-void
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 132
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 134
    const v1, 0x7f04003d

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 135
    const v0, 0x7f100110

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    .line 136
    const v0, 0x7f100111

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cf;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cf;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 154
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 158
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 159
    const v0, 0x7f100113

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->d:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    .line 161
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 162
    const v0, 0x7f100112

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    .line 163
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    .line 164
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lo/I;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lo/I;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lr/ae;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
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

    .line 210
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    if-eqz v1, :cond_2e

    .line 223
    :goto_2d
    return-void

    .line 218
    :cond_2e
    iput p3, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->i:I

    .line 219
    iput p4, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->h:I

    .line 220
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->j:Ljava/lang/String;

    .line 221
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Lr/af;->a(Ljava/lang/String;Lr/ae;Z)Lr/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    goto :goto_2d
.end method

.method private a(Lo/I;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 247
    if-nez p1, :cond_1a

    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lo/I;

    if-eqz v0, :cond_f

    .line 250
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a()V

    .line 251
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    .line 252
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lo/I;

    .line 254
    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    :cond_19
    :goto_19
    return-void

    .line 258
    :cond_1a
    invoke-virtual {p1}, Lo/I;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 262
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a()V

    .line 263
    const v0, 0x7f0d00c1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    .line 290
    :goto_29
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lo/I;

    goto :goto_19

    .line 266
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b(Lo/I;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 271
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    invoke-virtual {v0}, Lr/ac;->c()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 274
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    invoke-virtual {v0}, Lr/ac;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    if-nez v0, :cond_4d

    .line 276
    const v0, 0x7f0d00c2

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    goto :goto_29

    .line 278
    :cond_4d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_29

    .line 285
    :cond_5b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_29
.end method

.method private b(Lo/I;Z)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_26

    .line 315
    :cond_c
    if-eqz p2, :cond_18

    .line 316
    new-instance v0, Lcom/google/android/maps/driveabout/app/cg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/cg;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lo/I;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->post(Ljava/lang/Runnable;)Z

    .line 328
    :goto_16
    const/4 v0, 0x0

    .line 332
    :goto_17
    return v0

    .line 323
    :cond_18
    const v0, 0x7f0d00c2

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(I)V

    .line 325
    const-string v0, "NavigationImageView"

    const-string v1, "Unable to request navigation image since relayout failed to get view size"

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 330
    :cond_26
    invoke-virtual {p1}, Lo/I;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Ljava/lang/String;Lr/ae;II)V

    .line 332
    const/4 v0, 0x1

    goto :goto_17
.end method


# virtual methods
.method public a(Lr/ac;)V
    .registers 3
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    if-eq p1, v0, :cond_5

    .line 353
    :goto_4
    return-void

    .line 347
    :cond_5
    new-instance v0, Lcom/google/android/maps/driveabout/app/ch;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ch;-><init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->i:I

    if-ne v0, p1, :cond_10

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->h:I

    if-eq v0, p2, :cond_25

    .line 117
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->b:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ImageSwitcher;->reset()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    .line 119
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lo/I;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lo/I;Z)V

    .line 122
    :cond_25
    return-void
.end method

.method public setStep(Lo/I;)V
    .registers 4
    .parameter

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-nez v0, :cond_b

    .line 180
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/content/Context;)V

    .line 183
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->g:Lr/ac;

    invoke-virtual {v0}, Lr/ac;->b()Z

    move-result v0

    if-nez v0, :cond_27

    .line 187
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    :goto_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a:Lo/I;

    if-eq p1, v0, :cond_26

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lo/I;Z)V

    .line 199
    :cond_26
    return-void

    .line 193
    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->c:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1e
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationImageView;->k:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    .line 99
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Landroid/content/Context;)V

    .line 101
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    return-void
.end method
