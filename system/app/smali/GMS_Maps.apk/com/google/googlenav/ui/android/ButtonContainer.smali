.class public Lcom/google/googlenav/ui/android/ButtonContainer;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static b(I)I
    .registers 4

    sparse-switch p0, :sswitch_data_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such view id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    const v0, 0x7f0f0035

    :goto_1f
    return v0

    :sswitch_20
    const v0, 0x7f0f0036

    goto :goto_1f

    :sswitch_24
    const v0, 0x7f0f0037

    goto :goto_1f

    :sswitch_28
    const v0, 0x7f0f0044

    goto :goto_1f

    :sswitch_data_2c
    .sparse-switch
        0x7f0f0001 -> :sswitch_1c
        0x7f0f0183 -> :sswitch_28
        0x7f0f0300 -> :sswitch_20
        0x7f0f0355 -> :sswitch_24
    .end sparse-switch
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/google/googlenav/ui/android/ButtonContainer;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ButtonContainer;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(Landroid/app/Application;)V
    .registers 3

    const v0, 0x7f040014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ButtonContainer;->a:Landroid/view/animation/Animation;

    return-void
.end method

.method public b()V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ButtonContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/actionbar/a;->f()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/M;->aq()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v1

    :cond_2b
    :goto_2b
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v3, v2, :cond_33

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v3, v1, :cond_3d

    :cond_33
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3d
    return-void

    :cond_3e
    move v2, v1

    goto :goto_2b
.end method

.method public c()Lcom/google/googlenav/ui/android/FloorPickerView;
    .registers 3

    const v0, 0x7f0f0183

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/FloorPickerView;

    return-object v0
.end method
