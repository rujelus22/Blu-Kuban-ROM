.class public Lcom/google/android/maps/driveabout/app/dw;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/view/View;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Lcom/google/android/maps/driveabout/app/dA;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    const v0, 0x7f0f0139

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dw;->b:I

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dw;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/google/android/maps/driveabout/app/dw;->b:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dw;)Lcom/google/android/maps/driveabout/app/dA;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->u:Lcom/google/android/maps/driveabout/app/dA;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dw;->b:I

    if-nez v0, :cond_5

    .line 229
    :cond_4
    :goto_4
    return-void

    .line 207
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/dw;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 208
    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dw;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 209
    const v1, 0x461c4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 211
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dw;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 215
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2a

    .line 216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->u:Lcom/google/android/maps/driveabout/app/dA;

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->u:Lcom/google/android/maps/driveabout/app/dA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/dA;->a()V

    goto :goto_4

    .line 223
    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->s:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dz;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dz;-><init>(Lcom/google/android/maps/driveabout/app/dw;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dw;)V
    .registers 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dw;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 242
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dB;->a(Landroid/view/Window;)V

    .line 253
    :cond_d
    :goto_d
    return-void

    .line 245
    :cond_e
    const v0, 0x7f1004a2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 246
    if-eqz v0, :cond_d

    .line 247
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 248
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    const v3, 0x7f0b00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 250
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d
.end method

.method public a(ILcom/google/android/maps/driveabout/app/dA;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 194
    iput p1, p0, Lcom/google/android/maps/driveabout/app/dw;->b:I

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/dw;->a:J

    .line 196
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dw;->u:Lcom/google/android/maps/driveabout/app/dA;

    .line 197
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dw;->b()V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 110
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dw;->c:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dw;->d:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/dw;->e:Ljava/lang/String;

    .line 113
    iput p4, p0, Lcom/google/android/maps/driveabout/app/dw;->h:I

    .line 114
    iput p5, p0, Lcom/google/android/maps/driveabout/app/dw;->i:I

    .line 115
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->f:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->g:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 121
    const v0, 0x7f0401eb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dw;->a()V

    .line 123
    const v0, 0x7f1004a2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->s:Landroid/view/View;

    .line 124
    const v0, 0x7f1004a4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->k:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f1004a5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->l:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f1004a6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->m:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f1004a7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->n:Landroid/widget/LinearLayout;

    .line 128
    const v0, 0x7f1004a9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->o:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f1004aa

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->p:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f1004a3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->j:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f1004ac

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->q:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->q:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dx;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dx;-><init>(Lcom/google/android/maps/driveabout/app/dw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v0, 0x7f1004ab

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->r:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->r:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dy;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dy;-><init>(Lcom/google/android/maps/driveabout/app/dw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/o;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->t:Landroid/graphics/drawable/Drawable;

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a1

    .line 155
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dw;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_a0
    return-void

    .line 157
    :cond_a1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->s:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dw;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a0
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->j:Landroid/widget/ImageView;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/dw;->h:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->r:Landroid/widget/Button;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/dw;->i:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 165
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 166
    const-string v0, "TimeoutDialog"

    const-string v3, "error: no action text"

    invoke-static {v0, v3}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->k:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dw;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dw;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->e:Ljava/lang/String;

    if-eqz v0, :cond_90

    const/4 v0, 0x1

    :goto_35
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 173
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dw;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dw;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->e:Ljava/lang/String;

    if-nez v0, :cond_92

    move v0, v2

    :goto_46
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dw;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dw;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->f:Ljava/lang/String;

    if-nez v0, :cond_94

    move v0, v2

    :goto_57
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dw;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dw;->g:Ljava/lang/String;

    if-nez v3, :cond_96

    :goto_67
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    return-void

    .line 169
    :cond_6b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dw;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/dw;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_90
    move v0, v1

    .line 172
    goto :goto_35

    :cond_92
    move v0, v1

    .line 174
    goto :goto_46

    :cond_94
    move v0, v1

    .line 176
    goto :goto_57

    :cond_96
    move v2, v1

    .line 178
    goto :goto_67
.end method
