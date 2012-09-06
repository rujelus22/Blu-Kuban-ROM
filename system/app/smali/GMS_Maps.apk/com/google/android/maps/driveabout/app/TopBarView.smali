.class public Lcom/google/android/maps/driveabout/app/TopBarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

.field private b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 89
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    const v1, 0x7f040050

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    const v0, 0x7f10014a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    .line 95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setBackgroundType(I)V

    .line 97
    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    .line 99
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    .line 102
    const v0, 0x7f10014e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    .line 104
    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    .line 106
    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/Button;

    .line 118
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->m()V

    .line 120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    .line 121
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f050011

    const v3, 0x7f050010

    const/4 v2, 0x0

    .line 173
    const-string v0, "__step_description"

    if-ne p1, v0, :cond_20

    .line 174
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-eq v0, v1, :cond_1f

    .line 175
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 176
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;IZ)V

    .line 205
    :cond_1f
    :goto_1f
    return-void

    .line 179
    :cond_20
    const-string v0, "__route_overview"

    if-ne p1, v0, :cond_3f

    .line 180
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    if-eq v0, v1, :cond_1f

    .line 181
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    .line 182
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    .line 183
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 184
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;IZ)V

    goto :goto_1f

    .line 187
    :cond_3f
    const-string v0, "__destination_buttons"

    if-ne p1, v0, :cond_5e

    .line 188
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1f

    .line 189
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    .line 190
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    .line 191
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;IZ)V

    goto :goto_1f

    .line 196
    :cond_5e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    if-eq v0, v1, :cond_78

    .line 197
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    .line 198
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    .line 199
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;IZ)V

    .line 203
    :cond_78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_1f
.end method

.method private a(Lo/I;)V
    .registers 7
    .parameter

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d000b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "<image>"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 389
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 392
    const-string v2, "<image>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 394
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lo/k;->a(Landroid/content/Context;Lo/I;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 395
    if-eqz v2, :cond_4b

    .line 397
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 399
    new-instance v4, Lcom/google/android/maps/driveabout/app/db;

    invoke-direct {v4, v2, v3, v3}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/graphics/drawable/Drawable;FF)V

    .line 400
    const-string v2, "<image>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v3, 0x21

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 403
    :cond_4b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 404
    return-void
.end method

.method private a(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 414
    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    .line 415
    const/4 v0, 0x0

    .line 424
    :goto_7
    return v0

    .line 417
    :cond_8
    if-ne p1, v0, :cond_1b

    .line 418
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_7

    .line 421
    :cond_1b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_7
.end method

.method static a(Landroid/content/Context;Lo/I;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 459
    if-nez p1, :cond_4

    .line 472
    :cond_3
    :goto_3
    return v0

    .line 462
    :cond_4
    invoke-virtual {p1}, Lo/I;->f()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_14

    invoke-virtual {p1}, Lo/I;->e()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_3

    .line 466
    :cond_14
    invoke-virtual {p1}, Lo/I;->b()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    .line 469
    invoke-static {p1}, Lo/k;->b(Lo/I;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 472
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private b(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 6
    .parameter

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lo/I;->j()Lo/I;

    move-result-object v0

    .line 434
    :goto_a
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lo/I;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2b

    .line 435
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    .line 436
    invoke-virtual {v1}, Lo/I;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 437
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    .line 451
    :goto_24
    return-void

    .line 433
    :cond_25
    const/4 v0, 0x0

    goto :goto_a

    .line 439
    :cond_27
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    goto :goto_24

    .line 442
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    .line 443
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;Lo/I;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->h()I

    move-result v1

    const/16 v2, 0x1324

    if-gt v1, v2, :cond_47

    .line 445
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lo/I;)V

    .line 446
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->j()V

    goto :goto_24

    .line 448
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    goto :goto_24
.end method

.method private j()V
    .registers 3

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    if-nez v0, :cond_f

    .line 137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    const v1, 0x7f050009

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    .line 140
    :cond_f
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->m:Z

    if-nez v0, :cond_f

    .line 151
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/widget/TextView;

    const v1, 0x7f050009

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->b(Landroid/view/View;I)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->m:Z

    .line 155
    :cond_f
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->m:Z

    if-eqz v0, :cond_f

    .line 159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/widget/TextView;

    const v1, 0x7f05000c

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->m:Z

    .line 163
    :cond_f
    return-void
.end method

.method private m()V
    .registers 6

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v1, "%2$s"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0098

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 481
    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 482
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 483
    new-instance v0, Lcom/google/android/maps/driveabout/app/db;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x3fa66666

    invoke-direct {v0, v3, v4}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v3, v1, 0x4

    const/16 v4, 0x21

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 488
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    if-eqz v0, :cond_f

    .line 144
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    const v1, 0x7f05000c

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/view/View;I)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    .line 147
    :cond_f
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    .line 320
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lo/x;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->setRoutes(Lo/x;[Lo/x;)V

    .line 323
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v1

    if-nez v1, :cond_3b

    .line 325
    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->i()I

    move-result v1

    if-ltz v1, :cond_44

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->g()I

    move-result v1

    if-ltz v1, :cond_44

    .line 327
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->i()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->g()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(III)V

    .line 335
    :goto_35
    const-string v0, "__route_overview"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    .line 336
    return-void

    .line 323
    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->i()I

    move-result v0

    goto :goto_1c

    .line 331
    :cond_44
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v2

    invoke-virtual {v2}, Lo/x;->p()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v3

    invoke-virtual {v3}, Lo/x;->o()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(III)V

    goto :goto_35
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aN;Lo/I;ZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    .line 284
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setStep(Lo/I;)V

    .line 285
    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    .line 286
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v1

    if-ne v1, p2, :cond_4e

    .line 287
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 288
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setBackgroundType(I)V

    .line 289
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setShowDistance(Z)V

    .line 290
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->h()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setDistanceMeters(F)V

    .line 291
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v1

    invoke-virtual {v1}, Lo/x;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setDistanceUnits(I)V

    .line 297
    :goto_30
    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setUseLongDistanceStepFormat(Z)V

    .line 298
    if-eqz p4, :cond_47

    if-nez p3, :cond_47

    .line 299
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->b(Lcom/google/android/maps/driveabout/app/aN;)V

    .line 311
    :goto_3a
    const-string v0, "__step_description"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    .line 312
    return-void

    .line 294
    :cond_40
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setBackgroundType(I)V

    .line 295
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setShowDistance(Z)V

    goto :goto_30

    .line 301
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    .line 302
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    goto :goto_3a

    .line 305
    :cond_4e
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setBackgroundType(I)V

    .line 306
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setShowDistance(Z)V

    .line 307
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setUseLongDistanceStepFormat(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    .line 309
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    goto :goto_3a
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    .line 351
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    .line 352
    return-void
.end method

.method public a(Lo/x;[Lo/x;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->setRoutes(Lo/x;[Lo/x;)V

    .line 342
    const-string v0, "__route_overview"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    return-void
.end method

.method public b()Landroid/view/View;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    .line 359
    const-string v0, "__destination_buttons"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/maps/driveabout/app/RouteSelectorView;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    return-object v0
.end method

.method public e()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public f()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public g()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    return-object v0
.end method

.method public h()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/Button;

    return-object v0
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setButtonVisibility(ZZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setButtonVisibility(ZZZ)V

    .line 377
    return-void
.end method

.method public setConnectedViews(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 128
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 131
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 133
    return-void
.end method
