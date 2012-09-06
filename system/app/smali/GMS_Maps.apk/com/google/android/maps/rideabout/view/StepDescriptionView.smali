.class public Lcom/google/android/maps/rideabout/view/StepDescriptionView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


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

.field private l:F

.field private m:I

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Lcom/google/android/maps/rideabout/view/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->n:Z

    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->n:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 255
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 257
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 259
    const v0, 0x7f10048e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    .line 260
    const v0, 0x7f10048f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->d:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    .line 261
    const v0, 0x7f100488

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/view/View;

    .line 262
    const v0, 0x7f100489

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    .line 263
    const v0, 0x7f10048d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->b:Landroid/widget/LinearLayout;

    .line 264
    const v0, 0x7f10048a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->e:Landroid/widget/ImageView;

    .line 265
    const v0, 0x7f100494

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->i:Landroid/widget/ImageView;

    .line 266
    const v0, 0x7f100495

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->j:Landroid/widget/ImageView;

    .line 267
    const v0, 0x7f10048b

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->f:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f10048c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->g:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f1002a3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->k:Landroid/view/View;

    .line 270
    return-void
.end method


# virtual methods
.method protected c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 280
    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 281
    :goto_3
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    return-void

    .line 280
    :cond_e
    const/16 v0, 0x8

    goto :goto_3
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 276
    const v0, 0x7f0401dc

    return v0
.end method

.method public setBackgroundChangeListener(Lcom/google/android/maps/rideabout/view/l;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->q:Lcom/google/android/maps/rideabout/view/l;

    .line 209
    return-void
.end method

.method public setBackgroundType(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const v0, 0x7f020418

    const v1, 0x7f020415

    .line 181
    iget v2, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->o:I

    if-ne p1, v2, :cond_c

    .line 205
    :cond_b
    :goto_b
    return-void

    .line 184
    :cond_c
    iput p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->o:I

    .line 186
    packed-switch p1, :pswitch_data_44

    .line 198
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    .line 202
    :goto_1c
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->q:Lcom/google/android/maps/rideabout/view/l;

    if-eqz v1, :cond_b

    .line 203
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->q:Lcom/google/android/maps/rideabout/view/l;

    invoke-interface {v1, v0}, Lcom/google/android/maps/rideabout/view/l;->a(I)V

    goto :goto_b

    .line 188
    :pswitch_26
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    const v2, 0x7f020443

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 189
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1c

    .line 193
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Landroid/view/View;

    const v2, 0x7f020440

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    .line 196
    goto :goto_1c

    .line 186
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_26
        :pswitch_34
    .end packed-switch
.end method

.method public setButtonVisibility(ZZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    .line 228
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    .line 229
    :goto_f
    iget-object v6, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->j:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1f

    move v6, v1

    .line 230
    :goto_18
    if-ne p1, v0, :cond_21

    if-ne p2, v6, :cond_21

    .line 252
    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v2

    .line 228
    goto :goto_f

    :cond_1f
    move v6, v2

    .line 229
    goto :goto_18

    .line 233
    :cond_21
    iget-object v7, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->j:Landroid/widget/ImageView;

    if-eqz p2, :cond_6e

    move v1, v2

    :goto_26
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_70

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->j:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 236
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 238
    if-eqz p3, :cond_1c

    .line 240
    if-eq v0, p1, :cond_55

    .line 241
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_72

    move v1, v4

    :goto_43
    if-eqz p1, :cond_74

    move v0, v4

    :goto_46
    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 242
    if-eqz p1, :cond_76

    const-wide/16 v0, 0x0

    :goto_4d
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 243
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    :cond_55
    if-eq v6, p2, :cond_1c

    .line 247
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v6, :cond_79

    move v0, v4

    :goto_5c
    if-eqz p2, :cond_7b

    :goto_5e
    invoke-direct {v2, v0, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 248
    if-eqz p2, :cond_7d

    const-wide/16 v0, 0x0

    :goto_65
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 249
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1c

    :cond_6e
    move v1, v3

    .line 233
    goto :goto_26

    :cond_70
    move v2, v3

    .line 234
    goto :goto_2d

    :cond_72
    move v1, v5

    .line 241
    goto :goto_43

    :cond_74
    move v0, v5

    goto :goto_46

    .line 242
    :cond_76
    const-wide/16 v0, 0x1f4

    goto :goto_4d

    :cond_79
    move v0, v5

    .line 247
    goto :goto_5c

    :cond_7b
    move v4, v5

    goto :goto_5e

    .line 248
    :cond_7d
    const-wide/16 v0, 0x1f4

    goto :goto_65
.end method

.method public setDistanceMeters(F)V
    .registers 3
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_8

    .line 125
    iput p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->l:F

    .line 127
    :cond_8
    return-void
.end method

.method public setDistanceUnits(I)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->m:I

    if-eq v0, p1, :cond_6

    .line 134
    iput p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->m:I

    .line 136
    :cond_6
    return-void
.end method

.method public setShowDistance(Z)V
    .registers 3
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->n:Z

    if-eq v0, p1, :cond_6

    .line 143
    iput-boolean p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->n:Z

    .line 145
    :cond_6
    return-void
.end method

.method public setUseLongDistanceStepFormat(Z)V
    .registers 3
    .parameter

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->p:Z

    if-eq v0, p1, :cond_6

    .line 161
    iput-boolean p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->p:Z

    .line 163
    :cond_6
    return-void
.end method
