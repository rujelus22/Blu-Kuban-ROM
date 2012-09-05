.class Lcom/google/android/maps/driveabout/app/dl;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private g:Lu/x;

.field private final h:Z


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;Z)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dl;->b:Landroid/view/View;

    const v0, 0x7f0f0105

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->c:Landroid/widget/TextView;

    const v0, 0x7f0f00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0106

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->e:Landroid/widget/TextView;

    const v0, 0x7f0f0107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->b:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/dm;-><init>(Lcom/google/android/maps/driveabout/app/dl;Lcom/google/android/maps/driveabout/app/RouteSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/dl;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/dj;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/dl;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dl;)Lu/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->g:Lu/x;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(II)V
    .registers 6

    const/4 v2, 0x0

    if-gez p1, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/maps/driveabout/app/dA;->a(IIZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_a
.end method

.method public a(IZ)V
    .registers 7

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->f:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    if-gez p1, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->f:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/dA;->a(IZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_1b
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dl;->h:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b007f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->g:Lu/x;

    invoke-virtual {v0}, Lu/x;->E()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    :cond_38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_a
.end method

.method public a(Lu/x;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dl;->g:Lu/x;

    invoke-virtual {p1}, Lu/x;->p()I

    move-result v0

    invoke-virtual {p1}, Lu/x;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dl;->a(II)V

    invoke-virtual {p1}, Lu/x;->o()I

    move-result v0

    invoke-virtual {p1}, Lu/x;->y()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dl;->a(IZ)V

    invoke-virtual {p1}, Lu/x;->w()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dl;->g:Lu/x;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lu/x;->p()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;Lu/x;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dl;->a(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    invoke-virtual {p1}, Lu/x;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dl;->a(Ljava/lang/String;)V

    goto :goto_32
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_24

    const v0, 0x7f080052

    :goto_b
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dl;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dl;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dl;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void

    :cond_24
    const v0, 0x7f080053

    goto :goto_b
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dl;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
