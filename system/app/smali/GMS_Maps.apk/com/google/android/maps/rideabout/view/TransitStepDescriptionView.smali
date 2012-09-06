.class public Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;
.super Lcom/google/android/maps/rideabout/view/StepDescriptionView;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/rideabout/view/i;


# instance fields
.field private h:Lcom/google/googlenav/ui/view/android/rideabout/q;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Lcom/google/android/maps/rideabout/view/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)Lcom/google/android/maps/rideabout/view/c;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->q:Lcom/google/android/maps/rideabout/view/c;

    return-object v0
.end method

.method private a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->setBackgroundType(I)V

    .line 159
    if-eqz p4, :cond_a

    .line 160
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->b()V

    .line 173
    :goto_9
    return-void

    .line 162
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->c()V

    .line 163
    if-eqz p2, :cond_23

    .line 164
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->c(Z)V

    .line 170
    :goto_18
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 167
    :cond_23
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {p0, v2}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->c(Z)V

    goto :goto_18
.end method

.method private a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->setClickable(Z)V

    .line 54
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/q;

    const v1, 0x7f0f00e7

    const v2, 0x7f0f00e8

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/q;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->h:Lcom/google/googlenav/ui/view/android/rideabout/q;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    const v1, 0x7f0203cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->i:Landroid/graphics/drawable/Drawable;

    .line 58
    const v1, 0x7f0203ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->j:Landroid/graphics/drawable/Drawable;

    .line 59
    const v1, 0x7f0203cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->k:Landroid/graphics/drawable/Drawable;

    .line 60
    const v1, 0x7f0203cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->l:Landroid/graphics/drawable/Drawable;

    .line 61
    const v0, 0x7f100490

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->m:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f100491

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->n:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->d:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setVisibility(I)V

    .line 65
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->h()V

    .line 66
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 190
    const v0, 0x7f100492

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 191
    new-instance v1, Lcom/google/android/maps/rideabout/view/n;

    invoke-direct {v1, p0}, Lcom/google/android/maps/rideabout/view/n;-><init>(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f100493

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 200
    new-instance v1, Lcom/google/android/maps/rideabout/view/o;

    invoke-direct {v1, p0}, Lcom/google/android/maps/rideabout/view/o;-><init>(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method

.method private h()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->f()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x4a1

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    new-instance v2, Lcom/google/android/maps/driveabout/app/db;

    const v3, 0x3fa66666

    invoke-direct {v2, v0, v3}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/16 v0, 0x21

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 226
    const v0, 0x7f100492

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->o:Landroid/widget/Button;

    .line 227
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v0, 0x7f100493

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->p:Landroid/widget/Button;

    .line 229
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->p:Landroid/widget/Button;

    const/16 v1, 0x48d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 185
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->b(Ljava/lang/String;)V

    .line 186
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public a(Lcom/google/android/maps/rideabout/app/a;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/google/android/maps/rideabout/app/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v3, Lcom/google/android/maps/rideabout/view/p;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_40

    .line 105
    :goto_15
    :pswitch_15
    if-nez v2, :cond_33

    .line 110
    :goto_17
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->h()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->i()Z

    move-result v3

    if-eqz v3, :cond_3d

    :goto_23
    invoke-direct {p0, v1, v2, v0, p2}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 112
    return-void

    .line 84
    :pswitch_27
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_15

    .line 87
    :pswitch_2a
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_15

    .line 90
    :pswitch_2d
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_15

    .line 94
    :pswitch_30
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_15

    .line 108
    :cond_33
    iget-object v3, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->h:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {v3, v0, v4}, Lcom/google/googlenav/ui/view/android/rideabout/q;->b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_17

    .line 110
    :cond_3d
    const/4 v1, 0x2

    goto :goto_23

    .line 81
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_30
        :pswitch_15
    .end packed-switch
.end method

.method public a(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->q:Lcom/google/android/maps/rideabout/view/c;

    .line 243
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 117
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_11
    return-void

    .line 120
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x4eb

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 138
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->c(Z)V

    .line 179
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->g()V

    .line 180
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 127
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_11
    return-void

    .line 130
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x4c6

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 144
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->q:Lcom/google/android/maps/rideabout/view/c;

    .line 248
    return-void
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 70
    const v0, 0x7f0401dc

    return v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    const-string v0, "x\n%s"

    return-object v0
.end method
