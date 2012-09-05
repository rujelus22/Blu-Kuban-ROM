.class public Lcom/google/googlenav/ui/view/android/ModalOverlay;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ProgressBar;

.field private final c:Landroid/view/animation/Animation;

.field private final d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setFocusable(Z)V

    const v0, 0x10800a9

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0f0275

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0276

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->b:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->b()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->c:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->c()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->d:Landroid/view/animation/Animation;

    return-void
.end method

.method private b()Landroid/view/animation/Animation;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/by;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/by;-><init>(Lcom/google/googlenav/ui/view/android/ModalOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private c()Landroid/view/animation/Animation;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/bz;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/bz;-><init>(Lcom/google/googlenav/ui/view/android/ModalOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/bB;I)V
    .registers 6

    const/4 v2, 0x0

    sget-object v0, Lcom/google/googlenav/ui/view/android/bA;->a:[I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/bB;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided state is unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->c:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2c
    return-void

    :pswitch_2d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->c:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2c

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_14
        :pswitch_2d
    .end packed-switch
.end method
