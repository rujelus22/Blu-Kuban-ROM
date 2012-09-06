.class public Lcom/google/android/youtube/core/player/TvAdOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/a;


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/ae;

.field private final b:Lcom/google/android/youtube/core/b/ag;

.field private final c:Lcom/google/android/youtube/core/async/l;

.field private final d:Lcom/google/android/youtube/core/async/l;

.field private e:Lcom/google/android/youtube/core/player/b;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    const v1, 0x7f040090

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->f:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->g:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->h:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->i:Landroid/widget/ImageView;

    .line 56
    iput-object p2, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->a:Lcom/google/android/youtube/core/b/ae;

    .line 57
    iput-object p3, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->b:Lcom/google/android/youtube/core/b/ag;

    .line 58
    new-instance v0, Lcom/google/android/youtube/core/player/av;

    invoke-direct {v0, p0, v3}, Lcom/google/android/youtube/core/player/av;-><init>(Lcom/google/android/youtube/core/player/TvAdOverlay;B)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->c:Lcom/google/android/youtube/core/async/l;

    .line 59
    new-instance v0, Lcom/google/android/youtube/core/player/au;

    invoke-direct {v0, p0, v3}, Lcom/google/android/youtube/core/player/au;-><init>(Lcom/google/android/youtube/core/player/TvAdOverlay;B)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->d:Lcom/google/android/youtube/core/async/l;

    .line 61
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->setVisibility(I)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/TvAdOverlay;)Lcom/google/android/youtube/core/async/l;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->d:Lcom/google/android/youtube/core/async/l;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/TvAdOverlay;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/TvAdOverlay;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->b:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/TvAdOverlay;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 1

    .prologue
    .line 65
    return-object p0
.end method

.method public final a(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 93
    sub-int v0, p2, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 94
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0067

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/n;)V
    .registers 5
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->a:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/n;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->c:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Ljava/lang/String;Lcom/google/android/youtube/core/async/l;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 79
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/TvAdOverlay;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->f:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->h:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->i:Landroid/widget/ImageView;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {p0, v2, v2}, Lcom/google/android/youtube/core/player/TvAdOverlay;->a(II)V

    .line 86
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/b;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/core/player/TvAdOverlay;->e:Lcom/google/android/youtube/core/player/b;

    .line 70
    return-void
.end method

.method public setOrientation(Z)V
    .registers 2
    .parameter

    .prologue
    .line 90
    return-void
.end method
