.class public Lcom/google/android/maps/rideabout/view/StepDescriptionView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

.field protected d:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:I

.field private n:Lcom/google/android/maps/rideabout/view/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->l:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->l:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f03ed

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const v0, 0x7f0f03ee

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->d:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const v0, 0x7f0f03e7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/view/View;

    const v0, 0x7f0f03e8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    const v0, 0x7f0f03ec

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0f03e9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->e:Landroid/widget/ImageView;

    const v0, 0x7f0f03f3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->i:Landroid/widget/ImageView;

    const v0, 0x7f0f03f4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->j:Landroid/widget/ImageView;

    const v0, 0x7f0f03ea

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->f:Landroid/widget/TextView;

    const v0, 0x7f0f03eb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->g:Landroid/widget/TextView;

    const v0, 0x7f0f0255

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->k:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    const/4 v3, 0x0

    const v0, 0x7f020379

    const v1, 0x7f020376

    iget v2, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->m:I

    if-ne p1, v2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iput p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->m:I

    packed-switch p1, :pswitch_data_44

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    :goto_1c
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->n:Lcom/google/android/maps/rideabout/view/l;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->n:Lcom/google/android/maps/rideabout/view/l;

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/l;->a(I)V

    goto :goto_b

    :pswitch_26
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    const v2, 0x7f0203a1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1c

    :pswitch_34
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    const v2, 0x7f02039e

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_1c

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_26
        :pswitch_34
    .end packed-switch
.end method

.method public a(Lcom/google/android/maps/rideabout/view/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->n:Lcom/google/android/maps/rideabout/view/l;

    return-void
.end method

.method protected c(Z)V
    .registers 4

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_e
    const/16 v0, 0x8

    goto :goto_3
.end method

.method protected e()I
    .registers 2

    const v0, 0x7f030187

    return v0
.end method
