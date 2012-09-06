.class public Lcom/google/android/youtube/app/ui/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/app/ui/cv;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private final A:Landroid/widget/ImageButton;

.field private final B:Landroid/widget/ImageButton;

.field private final C:Landroid/widget/TextView;

.field private final D:Landroid/widget/FrameLayout;

.field private final E:Landroid/widget/ProgressBar;

.field private F:Lcom/google/android/youtube/app/ui/SubscribeHelper;

.field private G:I

.field private H:I

.field private I:Lcom/google/android/youtube/core/model/Video;

.field private final a:Landroid/app/Activity;

.field private final b:Lcom/google/android/youtube/core/Analytics;

.field private final c:Lcom/google/android/youtube/app/a;

.field private final d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final e:Lcom/google/android/youtube/core/b/ae;

.field private final f:Lcom/google/android/youtube/core/b/ag;

.field private final g:Lcom/google/android/youtube/core/utils/k;

.field private h:Lcom/google/android/youtube/app/ui/dm;

.field private final i:Lcom/google/android/youtube/app/ui/eu;

.field private final j:Lcom/google/android/youtube/app/ui/et;

.field private final k:Landroid/view/View;

.field private final l:Lcom/google/android/youtube/core/ui/l;

.field private final m:Landroid/widget/ImageView;

.field private final n:Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/widget/TextView;

.field private final q:Landroid/widget/TextView;

.field private final r:Landroid/widget/TextView;

.field private final s:Landroid/widget/ProgressBar;

.field private final t:Landroid/widget/ImageView;

.field private final u:Landroid/view/View;

.field private final v:Landroid/widget/TextView;

.field private final w:Landroid/widget/TextView;

.field private final x:Lcom/google/android/youtube/app/c/g;

.field private final y:Lcom/google/android/youtube/plus1/PlusOneButton;

.field private final z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/ui/m;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/app/c/g;Lcom/google/android/youtube/core/utils/k;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    .line 110
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/ep;->b:Lcom/google/android/youtube/core/Analytics;

    .line 111
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/ep;->c:Lcom/google/android/youtube/app/a;

    .line 112
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 113
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/ep;->e:Lcom/google/android/youtube/core/b/ae;

    .line 114
    iput-object p6, p0, Lcom/google/android/youtube/app/ui/ep;->f:Lcom/google/android/youtube/core/b/ag;

    .line 115
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->g:Lcom/google/android/youtube/core/utils/k;

    .line 117
    new-instance v1, Lcom/google/android/youtube/app/ui/eu;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/eu;-><init>(Lcom/google/android/youtube/app/ui/ep;B)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->i:Lcom/google/android/youtube/app/ui/eu;

    .line 118
    new-instance v1, Lcom/google/android/youtube/app/ui/et;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/et;-><init>(Lcom/google/android/youtube/app/ui/ep;B)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->j:Lcom/google/android/youtube/app/ui/et;

    .line 120
    const v1, 0x7f0800db

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-static {p1, v1, v0}, Lcom/google/android/youtube/core/ui/l;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;)Lcom/google/android/youtube/core/ui/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->l:Lcom/google/android/youtube/core/ui/l;

    .line 122
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->l:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/ui/l;->a()V

    .line 124
    const v1, 0x7f0800dc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f0800dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->m:Landroid/widget/ImageView;

    .line 126
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f08012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->n:Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

    .line 129
    const v1, 0x7f080024

    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->o:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const-string v2, "title_extended"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->p:Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->t:Landroid/widget/ImageView;

    .line 134
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f080075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->u:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->u:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f08003d

    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->v:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    if-eqz v1, :cond_e5

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v6

    .line 143
    new-instance v1, Lcom/google/android/youtube/app/ui/SubscribeHelper;

    const-string v8, "Watch"

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p8

    move-object v5, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/youtube/app/ui/SubscribeHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->F:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/app/ui/ep;->H:I

    .line 146
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/app/ui/ep;->G:I

    .line 147
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/youtube/app/ui/dl;

    invoke-direct {v2, p1}, Lcom/google/android/youtube/app/ui/dl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 150
    :cond_e5
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    .line 151
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_107

    .line 152
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 158
    :cond_107
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f08003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->E:Landroid/widget/ProgressBar;

    .line 160
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->x:Lcom/google/android/youtube/app/c/g;

    .line 161
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f0800e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/plus1/PlusOneButton;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->y:Lcom/google/android/youtube/plus1/PlusOneButton;

    .line 162
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->y:Lcom/google/android/youtube/plus1/PlusOneButton;

    if-eqz v1, :cond_130

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->y:Lcom/google/android/youtube/plus1/PlusOneButton;

    move-object/from16 v0, p9

    invoke-virtual {v1, p1, v0}, Lcom/google/android/youtube/plus1/PlusOneButton;->a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/a;)V

    .line 166
    :cond_130
    const v1, 0x7f080069

    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->z:Landroid/widget/TextView;

    .line 167
    const v1, 0x7f0800df

    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->q:Landroid/widget/TextView;

    .line 168
    const v1, 0x7f0800de

    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->w:Landroid/widget/TextView;

    .line 169
    const v1, 0x7f0800e5

    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->r:Landroid/widget/TextView;

    .line 170
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->s:Landroid/widget/ProgressBar;

    .line 172
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const-string v2, "like_button"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->A:Landroid/widget/ImageButton;

    .line 173
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->A:Landroid/widget/ImageButton;

    if-eqz v1, :cond_176

    .line 174
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->A:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_176
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const-string v2, "dislike_button"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->B:Landroid/widget/ImageButton;

    .line 177
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->B:Landroid/widget/ImageButton;

    if-eqz v1, :cond_18b

    .line 178
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->B:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_18b
    return-void
.end method

.method private a(I)Landroid/widget/TextView;
    .registers 3
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->n:Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

    return-object v0
.end method

.method private a(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    const v4, 0x7f0b01b6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_27
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->s:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3f

    .line 341
    add-int v3, p1, p2

    .line 344
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ep;->s:Landroid/widget/ProgressBar;

    if-nez v3, :cond_62

    move v0, v1

    :goto_32
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 345
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 346
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 348
    :cond_3f
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_61

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->w:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    const v4, 0x7f0b01b5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/ep;->I:Lcom/google/android/youtube/core/model/Video;

    iget v5, v5, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_61
    return-void

    :cond_62
    move v0, v2

    .line 344
    goto :goto_32
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->g:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->x:Lcom/google/android/youtube/app/c/g;

    invoke-interface {v0}, Lcom/google/android/youtube/app/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 264
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/ep;->b()V

    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->y:Lcom/google/android/youtube/plus1/PlusOneButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->I:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v1}, Lcom/google/android/youtube/plus1/c;->a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->setUri(Landroid/net/Uri;)V

    .line 271
    :goto_21
    return-void

    .line 268
    :cond_22
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/ep;->c()V

    goto :goto_21
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/ep;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/et;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->j:Lcom/google/android/youtube/app/ui/et;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->f:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/ui/ep;)Lcom/google/android/youtube/app/ui/SubscribeHelper;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->F:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/youtube/app/ui/ep;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->t:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/youtube/app/ui/ep;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->t:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;)V
    .registers 7
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->F:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->c()Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/ui/es;->a:[I

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper$SubscriptionStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_90

    .line 444
    :goto_15
    return-void

    .line 443
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    const v2, 0x7f0b016a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/youtube/app/ui/ep;->H:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_15

    :pswitch_48
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    const v2, 0x7f0b0168

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/youtube/app/ui/ep;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    const v1, 0x7f020069

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_15

    :pswitch_7a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_15

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_16
        :pswitch_48
        :pswitch_48
        :pswitch_7a
    .end packed-switch
.end method

.method public final a(Lcom/google/android/youtube/app/ui/dm;)V
    .registers 4
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ep;->h:Lcom/google/android/youtube/app/ui/dm;

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->A:Landroid/widget/ImageButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->B:Landroid/widget/ImageButton;

    if-eqz v0, :cond_11

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->A:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->B:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/youtube/app/ui/dm;->a(Landroid/view/View;Landroid/view/View;)V

    .line 187
    :cond_11
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Branding;)V
    .registers 6
    .parameter

    .prologue
    .line 289
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    if-nez v0, :cond_7

    .line 317
    :cond_6
    :goto_6
    return-void

    .line 293
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->f:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Branding;->bannerUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    new-instance v3, Lcom/google/android/youtube/app/ui/eq;

    invoke-direct {v3, p0, p1}, Lcom/google/android/youtube/app/ui/eq;-><init>(Lcom/google/android/youtube/app/ui/ep;Lcom/google/android/youtube/core/model/Branding;)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_6
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 259
    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/ep;->b(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 200
    const-string v0, "video can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->I:Lcom/google/android/youtube/core/model/Video;

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->n:Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

    if-eqz v0, :cond_1b

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->n:Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;->setVisibility(I)V

    .line 207
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->o:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->p:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_2d
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    if-eqz v0, :cond_ae

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_47
    iget v0, p1, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    iget v0, p1, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    iget v2, p1, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/youtube/app/ui/ep;->a(II)V

    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_b4

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->v:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_5b
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->y:Lcom/google/android/youtube/plus1/PlusOneButton;

    if-eqz v0, :cond_64

    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 236
    :cond_64
    const-string v0, "video can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/youtube/app/ui/do;->a:[I

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Video$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_d2

    move v0, v1

    :goto_77
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ep;->A:Landroid/widget/ImageButton;

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ep;->B:Landroid/widget/ImageButton;

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ep;->A:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ep;->B:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 238
    :cond_89
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->z:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->l:Lcom/google/android/youtube/core/ui/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/l;->b()V

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_ad

    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->e:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->ownerUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ep;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ep;->i:Lcom/google/android/youtube/app/ui/eu;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 248
    :cond_ad
    return-void

    .line 219
    :cond_ae
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47

    .line 227
    :cond_b4
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->v:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    .line 236
    :pswitch_cb
    const/4 v0, 0x1

    goto :goto_77

    :pswitch_cd
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    goto :goto_77

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_cb
        :pswitch_cb
        :pswitch_cd
    .end packed-switch
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/ep;->b(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->l:Lcom/google/android/youtube/core/ui/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/ui/l;->a(Ljava/lang/String;Z)V

    .line 197
    return-void
.end method

.method public final a(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->I:Lcom/google/android/youtube/core/model/Video;

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->I:Lcom/google/android/youtube/core/model/Video;

    iget v3, v0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    if-eqz p1, :cond_1a

    move v0, v1

    :goto_d
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ep;->I:Lcom/google/android/youtube/core/model/Video;

    iget v3, v3, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    if-eqz p1, :cond_1c

    :goto_14
    add-int v1, v3, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/ui/ep;->a(II)V

    .line 358
    return-void

    :cond_1a
    move v0, v2

    .line 356
    goto :goto_d

    :cond_1c
    move v2, v1

    goto :goto_14
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->y:Lcom/google/android/youtube/plus1/PlusOneButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->setVisibility(I)V

    .line 279
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->y:Lcom/google/android/youtube/plus1/PlusOneButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/plus1/PlusOneButton;->setVisibility(I)V

    .line 275
    return-void
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->l:Lcom/google/android/youtube/core/ui/l;

    const v1, 0x7f0b010f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/ui/l;->a(IZ)V

    .line 192
    return-void
.end method

.method public final e_()V
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/ep;->b(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->u:Landroid/view/View;

    if-ne p1, v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->I:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_19

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->b:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "WatchChannel"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->c:Lcom/google/android/youtube/app/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ep;->I:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;)V

    .line 331
    :cond_18
    :goto_18
    return-void

    .line 324
    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->A:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->h:Lcom/google/android/youtube/app/ui/dm;

    if-eqz v0, :cond_27

    .line 325
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->h:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dm;->a()V

    goto :goto_18

    .line 326
    :cond_27
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->B:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_35

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->h:Lcom/google/android/youtube/app/ui/dm;

    if-eqz v0, :cond_35

    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->h:Lcom/google/android/youtube/app/ui/dm;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/dm;->b()V

    goto :goto_18

    .line 328
    :cond_35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->D:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_18

    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ep;->F:Lcom/google/android/youtube/app/ui/SubscribeHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscribeHelper;->b()V

    goto :goto_18
.end method
