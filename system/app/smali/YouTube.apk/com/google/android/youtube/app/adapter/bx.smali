.class final Lcom/google/android/youtube/app/adapter/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/bw;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/bw;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/bx;->a:Lcom/google/android/youtube/app/adapter/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const v0, 0x7f080056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->b:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->b:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->c:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->b:Landroid/view/View;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->d:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    .line 61
    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/bw;->a(Lcom/google/android/youtube/app/adapter/bw;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/bw;->a(Lcom/google/android/youtube/app/adapter/bw;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    :cond_3c
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->b:Landroid/view/View;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->e:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->b:Landroid/view/View;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->g:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->b:Landroid/view/View;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->f:Landroid/view/View;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/bw;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/bx;-><init>(Lcom/google/android/youtube/app/adapter/bw;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->c:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->d:Landroid/widget/TextView;

    iget v3, p2, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->e:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_80

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v3, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v3, :cond_40

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v3, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v3, :cond_95

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_95

    :cond_40
    move v0, v2

    :goto_41
    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->g:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/bx;->a:Lcom/google/android/youtube/app/adapter/bw;

    invoke-static {v3}, Lcom/google/android/youtube/app/adapter/bw;->b(Lcom/google/android/youtube/app/adapter/bw;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/ac;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/bx;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/bx;->a:Lcom/google/android/youtube/app/adapter/bw;

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/bw;->b(Lcom/google/android/youtube/app/adapter/bw;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01bc

    new-array v6, v7, [Ljava/lang/Object;

    if-eqz v0, :cond_97

    :goto_65
    aput-object v0, v6, v1

    iget v0, p2, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->f:Landroid/view/View;

    if-eqz v0, :cond_92

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bx;->f:Landroid/view/View;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_bf

    move v0, v1

    :goto_8f
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_92
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->b:Landroid/view/View;

    return-object v0

    :cond_95
    move v0, v1

    goto :goto_41

    :cond_97
    const-string v0, ""

    goto :goto_65

    :cond_9a
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->g:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/bx;->a:Lcom/google/android/youtube/app/adapter/bw;

    invoke-static {v3}, Lcom/google/android/youtube/app/adapter/bw;->b(Lcom/google/android/youtube/app/adapter/bw;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v4, v4, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bx;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_80

    :cond_bf
    const/16 v0, 0x8

    goto :goto_8f
.end method
