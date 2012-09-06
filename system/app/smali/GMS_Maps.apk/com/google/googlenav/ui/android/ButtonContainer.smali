.class public Lcom/google/googlenav/ui/android/ButtonContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private static b(I)I
    .registers 4
    .parameter

    .prologue
    .line 104
    sparse-switch p0, :sswitch_data_44

    .line 126
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

    .line 106
    :sswitch_1c
    const v0, 0x7f10005b

    .line 124
    :goto_1f
    return v0

    .line 108
    :sswitch_20
    const v0, 0x7f10005c

    goto :goto_1f

    .line 110
    :sswitch_24
    const v0, 0x7f10005e

    goto :goto_1f

    .line 112
    :sswitch_28
    const v0, 0x7f10005d

    goto :goto_1f

    .line 114
    :sswitch_2c
    const v0, 0x7f100072

    goto :goto_1f

    .line 116
    :sswitch_30
    const v0, 0x7f10005f

    goto :goto_1f

    .line 118
    :sswitch_34
    const v0, 0x7f100061

    goto :goto_1f

    .line 120
    :sswitch_38
    const v0, 0x7f100059

    goto :goto_1f

    .line 122
    :sswitch_3c
    const v0, 0x7f100063

    goto :goto_1f

    .line 124
    :sswitch_40
    const v0, 0x7f100064

    goto :goto_1f

    .line 104
    :sswitch_data_44
    .sparse-switch
        0x7f100019 -> :sswitch_1c
        0x7f100060 -> :sswitch_30
        0x7f100062 -> :sswitch_34
        0x7f1000be -> :sswitch_3c
        0x7f1001b3 -> :sswitch_2c
        0x7f1002fc -> :sswitch_40
        0x7f100396 -> :sswitch_20
        0x7f100397 -> :sswitch_24
        0x7f1003a3 -> :sswitch_38
        0x7f1003dd -> :sswitch_28
    .end sparse-switch
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_7

    .line 100
    :goto_6
    return-object v0

    .line 99
    :cond_7
    invoke-static {p1}, Lcom/google/googlenav/ui/android/ButtonContainer;->b(I)I

    move-result v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method

.method public a()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ButtonContainer;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    const v0, 0x7f050014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ButtonContainer;->a:Landroid/view/animation/Animation;

    .line 48
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ButtonContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/actionbar/a;->i()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 61
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v2

    .line 62
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->at()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 63
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v1

    .line 66
    :cond_2b
    :goto_2b
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v3, v2, :cond_33

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v3, v1, :cond_3d

    .line 67
    :cond_33
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_3d
    return-void

    :cond_3e
    move v2, v1

    goto :goto_2b
.end method

.method public c()Lcom/google/googlenav/ui/android/FloorPickerView;
    .registers 3

    .prologue
    .line 73
    const v0, 0x7f1001b3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    .line 74
    const v1, 0x7f1001b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/FloorPickerView;

    return-object v0
.end method

.method public d()Lcom/google/googlenav/ui/android/ab;
    .registers 3

    .prologue
    .line 78
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 80
    new-instance v0, Lcom/google/googlenav/ui/android/ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/ab;-><init>(Lcom/google/googlenav/ui/android/HeaderContainer;)V

    .line 82
    :goto_10
    return-object v0

    :cond_11
    new-instance v1, Lcom/google/googlenav/ui/android/ab;

    const v0, 0x7f100056

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/HeaderContainer;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/android/ab;-><init>(Lcom/google/googlenav/ui/android/HeaderContainer;)V

    move-object v0, v1

    goto :goto_10
.end method
