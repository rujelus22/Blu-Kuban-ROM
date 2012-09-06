.class public Lcom/google/googlenav/ui/view/android/ModalOverlay;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ProgressBar;

.field private final c:Landroid/view/animation/Animation;

.field private final d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setClickable(Z)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setFocusable(Z)V

    .line 46
    const v0, 0x10800a9

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040102

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    const v0, 0x7f1002ec

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f1002ed

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->b:Landroid/widget/ProgressBar;

    .line 52
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->c:Landroid/view/animation/Animation;

    .line 53
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->b()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->d:Landroid/view/animation/Animation;

    .line 54
    return-void
.end method

.method private a()Landroid/view/animation/Animation;
    .registers 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/google/googlenav/ui/view/android/bq;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/bq;-><init>(Lcom/google/googlenav/ui/view/android/ModalOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    return-object v0
.end method

.method private b()Landroid/view/animation/Animation;
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/google/googlenav/ui/view/android/br;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/br;-><init>(Lcom/google/googlenav/ui/view/android/ModalOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    return-object v0
.end method


# virtual methods
.method public setHidden()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    return-void
.end method

.method public setState(Lcom/google/googlenav/ui/view/android/bt;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 61
    sget-object v0, Lcom/google/googlenav/ui/view/android/bs;->a:[I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/bt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided state is unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->c:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    :goto_2c
    return-void

    .line 70
    :pswitch_2d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->a:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ModalOverlay;->c:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ModalOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2c

    .line 61
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_14
        :pswitch_2d
    .end packed-switch
.end method
