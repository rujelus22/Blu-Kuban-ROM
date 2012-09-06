.class final Lcom/dropbox/android/activity/n;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/filemanager/O;


# instance fields
.field final a:I

.field final b:I

.field final synthetic c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

.field private final d:Ljava/util/Random;

.field private final e:Lcom/dropbox/android/filemanager/F;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/Map;

.field private h:I

.field private i:Z

.field private j:Lcom/dropbox/android/taskqueue/P;

.field private k:[F

.field private l:[I

.field private final m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->d:Ljava/util/Random;

    .line 528
    invoke-static {}, Lcom/dropbox/android/filemanager/F;->a()Lcom/dropbox/android/filemanager/F;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->e:Lcom/dropbox/android/filemanager/F;

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->g:Ljava/util/Map;

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/activity/n;->h:I

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/n;->i:Z

    .line 536
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->m:Landroid/os/Handler;

    .line 538
    const/4 v0, 0x7

    iput v0, p0, Lcom/dropbox/android/activity/n;->a:I

    .line 539
    const/high16 v0, 0x4100

    iget-object v1, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->j()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dropbox/android/activity/n;->b:I

    .line 574
    if-eqz p2, :cond_68

    const-string v0, "saved_rotations"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 575
    const-string v0, "saved_rotations"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->k:[F

    .line 583
    :cond_55
    :goto_55
    if-eqz p2, :cond_7f

    const-string v0, "saved_padding_offsets"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 584
    const-string v0, "saved_padding_offsets"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->l:[I

    .line 591
    :cond_67
    :goto_67
    return-void

    .line 577
    :cond_68
    invoke-virtual {p1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_55

    const-string v1, "saved_rotations"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 579
    const-string v1, "saved_rotations"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->k:[F

    goto :goto_55

    .line 586
    :cond_7f
    invoke-virtual {p1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_67

    const-string v1, "saved_padding_offsets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 588
    const-string v1, "saved_padding_offsets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/n;->l:[I

    goto :goto_67
.end method

.method static synthetic a(Lcom/dropbox/android/activity/n;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/n;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/n;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->g:Ljava/util/Map;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 702
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_33

    .line 704
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 706
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 707
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 708
    new-instance v1, Lcom/dropbox/android/activity/p;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/p;-><init>(Lcom/dropbox/android/activity/n;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 728
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 730
    :cond_33
    return-void
.end method

.method private a(I)V
    .registers 3
    .parameter

    .prologue
    .line 880
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/dropbox/android/activity/n;->a(ZI)V

    .line 881
    return-void
.end method

.method private a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 823
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 824
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 825
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 828
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/n;->a(Z)V

    .line 831
    :cond_27
    invoke-direct {p0}, Lcom/dropbox/android/activity/n;->b()V

    .line 832
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/n;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/n;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/n;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZJIZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-direct/range {p0 .. p7}, Lcom/dropbox/android/activity/n;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZJIZ)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/n;Ljava/lang/String;Lcom/dropbox/android/filemanager/Q;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/android/activity/n;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/Q;IZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 789
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 790
    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/n;->b(I)I

    move-result v2

    .line 792
    iget-object v3, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v3}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 793
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 794
    invoke-direct {p0, v1, v2}, Lcom/dropbox/android/activity/n;->a(II)V

    .line 820
    :goto_1e
    return-void

    .line 796
    :cond_1f
    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_32

    :goto_29
    new-instance v1, Lcom/dropbox/android/activity/r;

    invoke-direct {v1, p0, v3, p1}, Lcom/dropbox/android/activity/r;-><init>(Lcom/dropbox/android/activity/n;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v3, v0, v1}, Lcom/dropbox/android/widget/e;->a(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1e

    :cond_32
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZJIZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 751
    invoke-direct {p0}, Lcom/dropbox/android/activity/n;->a()V

    .line 753
    iget-boolean v0, p0, Lcom/dropbox/android/activity/n;->i:Z

    if-nez v0, :cond_24

    const/4 v5, 0x1

    .line 754
    :goto_9
    iput-boolean v6, p0, Lcom/dropbox/android/activity/n;->i:Z

    .line 756
    if-eqz p7, :cond_26

    .line 757
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, p6}, Lcom/dropbox/android/activity/n;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    .line 758
    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/widget/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;ZJZ)V

    .line 785
    :goto_21
    iput-boolean v6, p0, Lcom/dropbox/android/activity/n;->i:Z

    .line 786
    return-void

    :cond_24
    move v5, v6

    .line 753
    goto :goto_9

    .line 760
    :cond_26
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v2}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x7

    iget v4, p0, Lcom/dropbox/android/activity/n;->b:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dropbox/android/widget/e;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->k:[F

    if-eqz v1, :cond_7c

    .line 766
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->k:[F

    aget v1, v1, p6

    .line 771
    :goto_4b
    iget-object v2, p0, Lcom/dropbox/android/activity/n;->l:[I

    if-eqz v2, :cond_92

    .line 772
    iget-object v2, p0, Lcom/dropbox/android/activity/n;->l:[I

    mul-int/lit8 v3, p6, 0x2

    aget v2, v2, v3

    .line 773
    iget-object v3, p0, Lcom/dropbox/android/activity/n;->l:[I

    mul-int/lit8 v4, p6, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    .line 778
    :goto_5d
    invoke-static {v0, v1}, Lcom/dropbox/android/widget/e;->a(Landroid/view/View;F)V

    .line 779
    invoke-static {v0, v2, v3}, Lcom/dropbox/android/widget/e;->a(Landroid/view/View;II)V

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    .line 780
    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/widget/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;ZJZ)V

    .line 782
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 783
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0, p6}, Lcom/dropbox/android/activity/n;->b(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_21

    .line 768
    :cond_7c
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v1, 0x0

    goto :goto_4b

    :cond_86
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->d:Ljava/util/Random;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    goto :goto_4b

    .line 775
    :cond_92
    iget-object v2, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ab

    iget v2, p0, Lcom/dropbox/android/activity/n;->b:I

    div-int/lit8 v2, v2, 0x2

    .line 776
    :goto_9e
    iget-object v3, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b9

    iget v3, p0, Lcom/dropbox/android/activity/n;->b:I

    div-int/lit8 v3, v3, 0x2

    goto :goto_5d

    .line 775
    :cond_ab
    iget v2, p0, Lcom/dropbox/android/activity/n;->b:I

    iget-object v3, p0, Lcom/dropbox/android/activity/n;->d:Ljava/util/Random;

    iget v4, p0, Lcom/dropbox/android/activity/n;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_9e

    .line 776
    :cond_b9
    iget v3, p0, Lcom/dropbox/android/activity/n;->b:I

    iget-object v4, p0, Lcom/dropbox/android/activity/n;->d:Ljava/util/Random;

    iget v7, p0, Lcom/dropbox/android/activity/n;->b:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_5d
.end method

.method private a(Ljava/lang/String;Lcom/dropbox/android/filemanager/Q;IZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    if-eqz p2, :cond_1f

    .line 734
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->j()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p2, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-boolean v3, p2, Lcom/dropbox/android/filemanager/Q;->b:Z

    iget-wide v4, p2, Lcom/dropbox/android/filemanager/Q;->c:J

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/android/activity/n;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZJIZ)V

    .line 748
    :goto_1e
    return-void

    .line 741
    :cond_1f
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/android/activity/n;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZJIZ)V

    goto :goto_1e
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 685
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->g()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 686
    const v0, 0x7f020003

    .line 690
    :goto_d
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 691
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 692
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    if-eqz p1, :cond_41

    .line 695
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 696
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 697
    iget-object v1, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v1}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 699
    :cond_41
    return-void

    .line 688
    :cond_42
    const v0, 0x7f02008b

    goto :goto_d
.end method

.method private a(ZI)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 863
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->e(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz p1, :cond_3c

    move v0, v1

    :goto_a
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    if-eqz p1, :cond_18

    .line 865
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->e(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 867
    :cond_18
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 868
    :goto_20
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3f

    .line 869
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dropbox/android/widget/e;->a(Landroid/view/View;Z)V

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 863
    :cond_3c
    const/16 v0, 0x8

    goto :goto_a

    .line 873
    :cond_3f
    return-void
.end method

.method private b(I)I
    .registers 3
    .parameter

    .prologue
    .line 884
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic b(Lcom/dropbox/android/activity/n;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    const v2, 0x7f02007f

    .line 835
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 836
    invoke-direct {p0}, Lcom/dropbox/android/activity/n;->c()V

    .line 860
    :goto_e
    return-void

    .line 840
    :cond_f
    sget-object v0, Lcom/dropbox/android/activity/f;->a:[I

    iget-object v1, p0, Lcom/dropbox/android/activity/n;->j:Lcom/dropbox/android/taskqueue/P;

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 857
    :pswitch_1c
    invoke-direct {p0}, Lcom/dropbox/android/activity/n;->c()V

    goto :goto_e

    .line 842
    :pswitch_20
    const v0, 0x7f0200f2

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/n;->a(I)V

    goto :goto_e

    .line 845
    :pswitch_27
    const v0, 0x7f020127

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/n;->a(I)V

    goto :goto_e

    .line 848
    :pswitch_2e
    invoke-direct {p0, v2}, Lcom/dropbox/android/activity/n;->a(I)V

    goto :goto_e

    .line 851
    :pswitch_32
    invoke-direct {p0, v2}, Lcom/dropbox/android/activity/n;->a(I)V

    goto :goto_e

    .line 854
    :pswitch_36
    const v0, 0x7f02000e

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/n;->a(I)V

    goto :goto_e

    .line 840
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_27
        :pswitch_32
        :pswitch_36
        :pswitch_1c
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 876
    invoke-direct {p0, v0, v0}, Lcom/dropbox/android/activity/n;->a(ZI)V

    .line 877
    return-void
.end method

.method static synthetic c(Lcom/dropbox/android/activity/n;)V
    .registers 1
    .parameter

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/dropbox/android/activity/n;->b()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/dropbox/android/filemanager/Q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->m:Landroid/os/Handler;

    new-instance v1, Lcom/dropbox/android/activity/o;

    invoke-direct {v1, p0, p2, p1}, Lcom/dropbox/android/activity/o;-><init>(Lcom/dropbox/android/activity/n;Lcom/dropbox/android/filemanager/Q;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x0

    .line 594
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 599
    new-array v3, v7, [F

    .line 600
    const/16 v0, 0xa

    new-array v4, v0, [I

    move v1, v2

    .line 601
    :goto_11
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_48

    if-ge v1, v7, :cond_48

    .line 602
    iget-object v0, p0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/n;->b(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/RotatableFrameLayout;

    .line 603
    invoke-virtual {v0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a()F

    move-result v5

    aput v5, v3, v1

    .line 604
    invoke-static {v0}, Lcom/dropbox/android/widget/e;->a(Landroid/view/View;)[I

    move-result-object v0

    .line 605
    mul-int/lit8 v5, v1, 0x2

    aget v6, v0, v2

    aput v6, v4, v5

    .line 606
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    aget v0, v0, v6

    aput v0, v4, v5

    .line 601
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 608
    :cond_48
    const-string v0, "saved_rotations"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 609
    const-string v0, "saved_padding_offsets"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 611
    :cond_52
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/dropbox/android/taskqueue/P;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 614
    if-nez p1, :cond_13

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 615
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not expecting upcoming camera uploads when there is no current one."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_13
    iput-object p3, p0, Lcom/dropbox/android/activity/n;->j:Lcom/dropbox/android/taskqueue/P;

    .line 621
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 622
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 623
    if-eqz p1, :cond_24

    .line 624
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_24
    move v0, v2

    .line 627
    :goto_25
    :try_start_25
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 628
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    const/4 v5, 0x5

    if-ge v1, v5, :cond_3c

    .line 629
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 627
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 631
    :cond_3c
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_43} :catch_44

    goto :goto_39

    .line 634
    :catch_44
    move-exception v0

    .line 635
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 640
    :cond_4b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 641
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 642
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/n;->a(Ljava/lang/String;)V

    goto :goto_56

    .line 648
    :cond_6c
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    iget-object v6, p0, Lcom/dropbox/android/activity/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 652
    if-ltz v6, :cond_89

    .line 653
    add-int/lit8 v0, v6, 0x1

    move v1, v0

    .line 654
    goto :goto_71

    .line 657
    :cond_89
    iget v6, p0, Lcom/dropbox/android/activity/n;->h:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/dropbox/android/activity/n;->h:I

    .line 658
    iget-object v6, p0, Lcom/dropbox/android/activity/n;->g:Ljava/util/Map;

    iget v7, p0, Lcom/dropbox/android/activity/n;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v6, p0, Lcom/dropbox/android/activity/n;->e:Lcom/dropbox/android/filemanager/F;

    iget v7, p0, Lcom/dropbox/android/activity/n;->h:I

    invoke-virtual {v6, v0, v7, v9, p0}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;

    move-result-object v6

    .line 661
    if-eqz v6, :cond_ab

    .line 662
    invoke-direct {p0, v0, v6, v1, v2}, Lcom/dropbox/android/activity/n;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/Q;IZ)V

    .line 666
    :goto_a7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 667
    goto :goto_71

    .line 664
    :cond_ab
    invoke-direct {p0, v0, v8, v1, v2}, Lcom/dropbox/android/activity/n;->a(Ljava/lang/String;Lcom/dropbox/android/filemanager/Q;IZ)V

    goto :goto_a7

    .line 669
    :cond_af
    iget-boolean v0, p0, Lcom/dropbox/android/activity/n;->i:Z

    if-eqz v0, :cond_bc

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_bc

    .line 670
    invoke-direct {p0, v2}, Lcom/dropbox/android/activity/n;->a(Z)V

    .line 673
    :cond_bc
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    iget-object v3, p0, Lcom/dropbox/android/activity/n;->e:Lcom/dropbox/android/filemanager/F;

    invoke-virtual {v3, v0, v9}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;I)V

    goto :goto_c0

    .line 677
    :cond_d2
    invoke-direct {p0}, Lcom/dropbox/android/activity/n;->b()V

    .line 678
    iput-boolean v2, p0, Lcom/dropbox/android/activity/n;->i:Z

    .line 679
    iput-object v8, p0, Lcom/dropbox/android/activity/n;->k:[F

    .line 680
    iput-object v8, p0, Lcom/dropbox/android/activity/n;->l:[I

    .line 681
    return-void
.end method
