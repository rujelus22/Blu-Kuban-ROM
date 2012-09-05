.class public Lcom/google/android/maps/driveabout/app/dH;
.super Landroid/app/Dialog;


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

.field private u:Lcom/google/android/maps/driveabout/app/dL;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f0d00ff

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dH;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dH;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/dH;->b:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dH;)Lcom/google/android/maps/driveabout/app/dL;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->u:Lcom/google/android/maps/driveabout/app/dL;

    return-object v0
.end method

.method private b()V
    .registers 5

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dH;->b:I

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/dH;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dH;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->u:Lcom/google/android/maps/driveabout/app/dL;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->u:Lcom/google/android/maps/driveabout/app/dL;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/dL;->a()V

    goto :goto_4

    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->s:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dK;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dK;-><init>(Lcom/google/android/maps/driveabout/app/dH;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dH;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dH;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dH;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dM;->a(Landroid/view/Window;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    const v0, 0x7f0f03fd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dH;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d
.end method

.method public a(ILcom/google/android/maps/driveabout/app/dL;)V
    .registers 5

    iput p1, p0, Lcom/google/android/maps/driveabout/app/dH;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/dH;->a:J

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dH;->u:Lcom/google/android/maps/driveabout/app/dL;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dH;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dH;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dH;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/dH;->e:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/maps/driveabout/app/dH;->h:I

    iput p5, p0, Lcom/google/android/maps/driveabout/app/dH;->i:I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->g:Ljava/lang/String;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const v0, 0x7f030191

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dH;->a()V

    const v0, 0x7f0f03fd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->s:Landroid/view/View;

    const v0, 0x7f0f03ff

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->k:Landroid/widget/TextView;

    const v0, 0x7f0f0400

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->l:Landroid/widget/TextView;

    const v0, 0x7f0f0401

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->m:Landroid/widget/TextView;

    const v0, 0x7f0f0402

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0404

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->o:Landroid/widget/TextView;

    const v0, 0x7f0f0405

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->p:Landroid/widget/TextView;

    const v0, 0x7f0f03fe

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->j:Landroid/widget/ImageView;

    const v0, 0x7f0f0407

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->q:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dI;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dI;-><init>(Lcom/google/android/maps/driveabout/app/dH;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0406

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->r:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dJ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dJ;-><init>(Lcom/google/android/maps/driveabout/app/dH;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dH;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/q;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->t:Landroid/graphics/drawable/Drawable;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a0
    return-void

    :cond_a1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->s:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dH;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a0
.end method

.method public onSearchRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->j:Landroid/widget/ImageView;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/dH;->h:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->r:Landroid/widget/Button;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/dH;->i:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->k:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_20
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dH;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dH;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->e:Ljava/lang/String;

    if-eqz v0, :cond_89

    const/4 v0, 0x1

    :goto_2e
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dH;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dH;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->e:Ljava/lang/String;

    if-nez v0, :cond_8b

    move v0, v2

    :goto_3f
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->o:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dH;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dH;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->f:Ljava/lang/String;

    if-nez v0, :cond_8d

    move v0, v2

    :goto_50
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dH;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dH;->g:Ljava/lang/String;

    if-nez v3, :cond_8f

    :goto_60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_64
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dH;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/dH;->c:Ljava/lang/String;

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

    goto :goto_20

    :cond_89
    move v0, v1

    goto :goto_2e

    :cond_8b
    move v0, v1

    goto :goto_3f

    :cond_8d
    move v0, v1

    goto :goto_50

    :cond_8f
    move v2, v1

    goto :goto_60
.end method
