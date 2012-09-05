.class public final Lcom/google/android/youtube/app/ui/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/p;

.field private final b:Lcom/google/android/youtube/core/Analytics;

.field private final c:Landroid/widget/Toast;

.field private final d:Landroid/widget/ProgressBar;

.field private final e:Landroid/widget/ImageView;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/p;Lcom/google/android/youtube/core/Analytics;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v5, p0, Lcom/google/android/youtube/app/ui/bb;->f:I

    .line 38
    const-string v0, "remoteControl can not be null"

    invoke-static {p2, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/p;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->a:Lcom/google/android/youtube/app/p;

    .line 39
    const-string v0, "analytics can not be null"

    invoke-static {p3, v0}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->b:Lcom/google/android/youtube/core/Analytics;

    .line 41
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->c:Landroid/widget/Toast;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->c:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->c:Landroid/widget/Toast;

    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->c:Landroid/widget/Toast;

    const/16 v2, 0x30

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 50
    const v0, 0x7f09009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->e:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0900a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->d:Landroid/widget/ProgressBar;

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x19

    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bb;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v1}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    if-eq v1, v2, :cond_e

    .line 77
    :cond_d
    :goto_d
    return v0

    .line 62
    :cond_e
    if-eq p1, v3, :cond_14

    const/16 v1, 0x18

    if-ne p1, v1, :cond_d

    .line 66
    :cond_14
    if-ne p1, v3, :cond_4c

    .line 67
    iget v1, p0, Lcom/google/android/youtube/app/ui/bb;->f:I

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/google/android/youtube/app/ui/bb;->f:I

    .line 68
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bb;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "RemoteVolumeDown"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 74
    :goto_23
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bb;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v2}, Lcom/google/android/youtube/app/p;->i()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/app/ui/bb;->f:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bb;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->e:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_45
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    const/4 v0, 0x1

    goto :goto_d

    .line 70
    :cond_4c
    iget v1, p0, Lcom/google/android/youtube/app/ui/bb;->f:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/google/android/youtube/app/ui/bb;->f:I

    .line 71
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bb;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "RemoteVolumeUp"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_23

    .line 74
    :cond_5a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bb;->e:Landroid/widget/ImageView;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_45
.end method

.method public final b(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bb;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v1}, Lcom/google/android/youtube/app/p;->d()Lcom/google/android/youtube/app/t;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    if-eq v1, v2, :cond_c

    .line 93
    :cond_b
    :goto_b
    return v0

    .line 85
    :cond_c
    const/16 v1, 0x19

    if-eq p1, v1, :cond_14

    const/16 v1, 0x18

    if-ne p1, v1, :cond_b

    .line 89
    :cond_14
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bb;->a:Lcom/google/android/youtube/app/p;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bb;->a:Lcom/google/android/youtube/app/p;

    invoke-interface {v3}, Lcom/google/android/youtube/app/p;->i()I

    move-result v3

    iget v4, p0, Lcom/google/android/youtube/app/ui/bb;->f:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/youtube/app/p;->a(I)V

    .line 91
    iput v0, p0, Lcom/google/android/youtube/app/ui/bb;->f:I

    .line 93
    const/4 v0, 0x1

    goto :goto_b
.end method
