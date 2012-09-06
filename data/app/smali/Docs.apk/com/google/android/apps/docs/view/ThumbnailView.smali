.class public Lcom/google/android/apps/docs/view/ThumbnailView;
.super Landroid/widget/FrameLayout;
.source "ThumbnailView.java"


# instance fields
.field public a:Labq;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Laac;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Landroid/view/View;

.field private final a:Landroid/widget/ImageView;

.field private a:LkT;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    instance-of v0, p1, LcK;

    if-nez v0, :cond_f

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Context must implements InjectorProvider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v0, p1

    .line 72
    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    .line 73
    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 75
    sget v0, LcU;->thumbnail_view:I

    invoke-static {p1, v0, p0}, Lcom/google/android/apps/docs/view/ThumbnailView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    sget v0, LcS;->thumbnailImage:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/widget/ImageView;

    .line 78
    sget v0, LcS;->thumbnail_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/view/View;

    .line 80
    new-instance v0, Labo;

    invoke-direct {v0, p0}, Labo;-><init>(Lcom/google/android/apps/docs/view/ThumbnailView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/ThumbnailView;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/ThumbnailView;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/ThumbnailView;)LkT;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:LkT;

    return-object v0
.end method

.method private a(Z)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 124
    iget-object v3, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/view/View;

    if-eqz p1, :cond_15

    :goto_f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void

    :cond_13
    move v0, v2

    .line 124
    goto :goto_8

    :cond_15
    move v2, v1

    .line 125
    goto :goto_f
.end method

.method private b()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x190

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/ThumbnailView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 157
    :goto_a
    return-void

    .line 137
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/ThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, LcN;->horizontal_flip_appear:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/ThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, LcN;->horizontal_flip_disappear:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 143
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 145
    new-instance v2, Labp;

    invoke-direct {v2, p0, v0}, Labp;-><init>(Lcom/google/android/apps/docs/view/ThumbnailView;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/view/ThumbnailView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->a(Z)V

    .line 130
    return-void
.end method

.method public setEntry(LkT;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:LkT;

    .line 98
    return-void
.end method

.method public setIcon(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 116
    if-eqz p2, :cond_13

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/ThumbnailView;->b()V

    .line 121
    :goto_12
    return-void

    .line 119
    :cond_13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->a(Z)V

    goto :goto_12
.end method

.method public setImage(Landroid/graphics/Bitmap;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 104
    if-eqz p2, :cond_11

    .line 105
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/ThumbnailView;->b()V

    .line 109
    :goto_10
    return-void

    .line 107
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/view/ThumbnailView;->a(Z)V

    goto :goto_10
.end method
