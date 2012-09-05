.class public Lcom/google/android/maps/driveabout/app/TopBarView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

.field private b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030046

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f0120

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(I)V

    const v0, 0x7f0f0121

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    const v0, 0x7f0f0122

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    const v0, 0x7f0f0123

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    const v0, 0x7f0f0124

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    const v0, 0x7f0f0125

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    const v0, 0x7f0f0126

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 7

    const v4, 0x7f040008

    const v3, 0x7f040007

    const/4 v2, 0x0

    const-string v0, "__step_description"

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;IZ)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string v0, "__route_overview"

    if-ne p1, v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;IZ)V

    goto :goto_1f

    :cond_3f
    const-string v0, "__destination_buttons"

    if-ne p1, v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;IZ)V

    goto :goto_1f

    :cond_5e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    if-eq v0, v1, :cond_78

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;IZ)V

    :cond_78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_1f
.end method

.method private a(Lu/I;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b000b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "<image>"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, "<image>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lu/k;->a(Landroid/content/Context;Lu/I;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    new-instance v4, Lcom/google/android/maps/driveabout/app/dn;

    invoke-direct {v4, v2, v3, v3}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Landroid/graphics/drawable/Drawable;FF)V

    const-string v2, "<image>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v3, 0x21

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private a(I)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    if-ne p1, v0, :cond_1b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_7

    :cond_1b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_7
.end method

.method static a(Landroid/content/Context;Lu/I;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lu/I;->f()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_14

    invoke-virtual {p1}, Lu/I;->e()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_3

    :cond_14
    invoke-virtual {p1}, Lu/I;->b()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    invoke-static {p1}, Lu/k;->b(Lu/I;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private b(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lu/I;->j()Lu/I;

    move-result-object v0

    :goto_a
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lu/I;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-virtual {v1}, Lu/I;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->j()V

    :goto_24
    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_a

    :cond_27
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    goto :goto_24

    :cond_2b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;Lu/I;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->g()I

    move-result v1

    const/16 v2, 0x1324

    if-gt v1, v2, :cond_47

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lu/I;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->i()V

    goto :goto_24

    :cond_47
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    goto :goto_24
.end method

.method private i()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Z

    :cond_f
    return-void
.end method

.method private j()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->b(Landroid/view/View;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    :cond_f
    return-void
.end method

.method private k()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    :cond_f
    return-void
.end method

.method private l()V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2$s"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dn;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x3fa66666

    invoke-direct {v0, v3, v4}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v3, v1, 0x4

    const/16 v4, 0x21

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Z

    :cond_f
    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 5

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lu/x;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Lu/x;[Lu/x;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v1

    if-nez v1, :cond_3b

    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->h()I

    move-result v1

    if-ltz v1, :cond_44

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->f()I

    move-result v1

    if-ltz v1, :cond_44

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->h()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->f()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(III)V

    :goto_35
    const-string v0, "__route_overview"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->i()I

    move-result v0

    goto :goto_1c

    :cond_44
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v2

    invoke-virtual {v2}, Lu/x;->p()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v3

    invoke-virtual {v3}, Lu/x;->o()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(III)V

    goto :goto_35
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aL;Lu/I;ZZ)V
    .registers 10

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lu/I;)V

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v1

    if-ne v1, p2, :cond_4e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(I)V

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    invoke-virtual {v1}, Lu/x;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(I)V

    :goto_30
    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(Z)V

    if-eqz p4, :cond_47

    if-nez p3, :cond_47

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->b(Lcom/google/android/maps/driveabout/app/aL;)V

    :goto_3a
    const-string v0, "__step_description"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_40
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    goto :goto_30

    :cond_47
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    goto :goto_3a

    :cond_4e
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    goto :goto_3a
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lu/x;[Lu/x;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Lu/x;[Lu/x;)V

    const-string v0, "__route_overview"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(ZZZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(ZZZ)V

    return-void
.end method

.method public b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    const-string v0, "__destination_buttons"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/maps/driveabout/app/RouteSelectorView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    return-object v0
.end method

.method public e()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public f()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public g()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    return-object v0
.end method

.method public h()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

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
