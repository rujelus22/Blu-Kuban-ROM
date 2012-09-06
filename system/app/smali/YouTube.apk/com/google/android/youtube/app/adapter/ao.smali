.class final Lcom/google/android/youtube/app/adapter/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;
.implements Lcom/google/android/youtube/app/adapter/k;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/al;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Lcom/google/android/youtube/app/adapter/i;

.field private k:Lcom/google/android/youtube/core/model/LiveEvent;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/al;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/ao;->a:Lcom/google/android/youtube/app/adapter/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const v0, 0x7f080088

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->c:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->d:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->e:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->f:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->g:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->h:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    const-string v1, "hd"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->i:Landroid/widget/TextView;

    .line 83
    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/al;->a(Lcom/google/android/youtube/app/adapter/al;)Lcom/google/android/youtube/app/adapter/an;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    invoke-virtual {v0, v1, p3}, Lcom/google/android/youtube/app/adapter/an;->a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/i;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->j:Lcom/google/android/youtube/app/adapter/i;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->j:Lcom/google/android/youtube/app/adapter/i;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/adapter/i;->a(Lcom/google/android/youtube/app/adapter/k;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/al;Landroid/view/View;Landroid/view/ViewGroup;B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/adapter/ao;-><init>(Lcom/google/android/youtube/app/adapter/al;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 60
    check-cast p2, Lcom/google/android/youtube/core/model/LiveEvent;

    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/ao;->k:Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->c:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->d:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->e:Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/LiveEvent;->isPlayable()Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ao;->f:Landroid/widget/TextView;

    if-eqz v3, :cond_4a

    if-eqz v0, :cond_6d

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ao;->f:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_3b
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ao;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/ao;->a:Lcom/google/android/youtube/app/adapter/al;

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/al;->b(Lcom/google/android/youtube/app/adapter/al;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/google/android/youtube/core/utils/ac;->a(Landroid/content/Context;Lcom/google/android/youtube/core/model/LiveEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4a
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ao;->g:Landroid/widget/ImageView;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ao;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_76

    move v0, v1

    :goto_53
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_56
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_65

    iget-object v0, p2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->duration:I

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->j:Lcom/google/android/youtube/app/adapter/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/adapter/i;->a(ILjava/lang/Object;)Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->b:Landroid/view/View;

    return-object v0

    :cond_6d
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ao;->f:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3b

    :cond_76
    move v0, v2

    goto :goto_53

    :cond_78
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->h:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->e:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 126
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ao;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ao;->k:Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v2, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ACTIVE:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    if-ne v0, v2, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_12
    return-void

    .line 126
    :cond_13
    const/16 v0, 0x8

    goto :goto_f
.end method
