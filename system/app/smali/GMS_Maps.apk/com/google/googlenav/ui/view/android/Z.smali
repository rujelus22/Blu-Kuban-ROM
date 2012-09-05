.class public Lcom/google/googlenav/ui/view/android/Z;
.super Lcom/google/googlenav/ui/view/android/ap;


# static fields
.field private static final a:Z

.field private static final b:Z


# instance fields
.field private A:Landroid/widget/RadioButton;

.field private B:Landroid/widget/RadioButton;

.field private C:Landroid/widget/EditText;

.field private D:Landroid/widget/Button;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Landroid/widget/TextView;

.field private final L:Z

.field private final M:Z

.field private final N:Z

.field private O:[Ljava/lang/String;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/widget/LinearLayout;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/ProgressBar;

.field private W:Landroid/widget/HorizontalScrollView;

.field private X:Lcom/google/googlenav/ui/bF;

.field private c:Z

.field private d:Z

.field private final k:Lcom/google/googlenav/ah;

.field private l:[Lcom/google/googlenav/aj;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:[Landroid/widget/CheckBox;

.field private q:Landroid/view/ViewGroup;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/AutoCompleteTextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/ui/view/android/Z;->a:Z

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    sput-boolean v0, Lcom/google/googlenav/ui/view/android/Z;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/fj;Lcom/google/googlenav/ah;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/google/googlenav/ui/view/android/Z;->a:Z

    if-eqz v0, :cond_37

    const v0, 0x7f0d001c

    :goto_9
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/Z;->c:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/Z;->d:Z

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/Z;->G:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/Z;->H:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/Z;->I:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/Z;->J:Z

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->O:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->I()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->L:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/Z;->M:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->M:Z

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_34
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->N:Z

    return-void

    :cond_37
    const v0, 0x7f0d001a

    goto :goto_9

    :cond_3b
    move v0, v2

    goto :goto_34
.end method

.method private A()V
    .registers 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->c:Z

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->c:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->I:Z

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->c:Z

    if-eqz v0, :cond_40

    const/16 v0, 0x375

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->c:Z

    if-eqz v0, :cond_47

    const v0, 0x7f020174

    :goto_2d
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/Z;->c:Z

    if-eqz v2, :cond_4b

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_3e
    move v0, v1

    goto :goto_7

    :cond_40
    const/16 v0, 0x376

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_47
    const v0, 0x7f020177

    goto :goto_2d

    :cond_4b
    const/16 v1, 0x8

    goto :goto_3a
.end method

.method private B()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->D:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/view/android/ad;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/ad;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/ae;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/ae;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->P:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->Q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->U:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/aw;)Landroid/view/View;
    .registers 8

    const v5, 0x7f09007b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0335

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/googlenav/aw;->c()Lam/b;

    move-result-object v1

    if-nez v1, :cond_45

    invoke-virtual {p1}, Lcom/google/googlenav/aw;->a()Lah/f;

    move-result-object v1

    :goto_22
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    check-cast v1, Lai/f;

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lbf/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_45
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->X:Lcom/google/googlenav/ui/bF;

    invoke-virtual {p1}, Lcom/google/googlenav/aw;->b()Lcom/google/googlenav/ui/bG;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/bF;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v1

    goto :goto_22
.end method

.method private a(Ljava/lang/String;I)Landroid/view/View;
    .registers 12

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0f030c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0308

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0f0314

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v3, 0x7f0f0313

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    if-ne p2, v5, :cond_60

    move v4, v5

    :goto_36
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-ne p2, v8, :cond_62

    move v4, v5

    :goto_3c
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0, v1, v2, v5, p1}, Lcom/google/googlenav/ui/view/android/Z;->a(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;ILjava/lang/String;)V

    invoke-direct {p0, v1, v3, v8, p1}, Lcom/google/googlenav/ui/view/android/Z;->a(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ah;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const v0, 0x7f0f0312

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5f
    return-object v7

    :cond_60
    move v4, v6

    goto :goto_36

    :cond_62
    move v4, v6

    goto :goto_3c
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/Z;)Landroid/widget/HorizontalScrollView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->W:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private a(I)V
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    aget-object v3, v2, v0

    if-le p1, v0, :cond_14

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    move v2, v1

    goto :goto_e

    :cond_16
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f0f0301

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->q:Landroid/view/ViewGroup;

    const-string v0, "d"

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/Z;->a(Ljava/lang/String;)V

    const v0, 0x7f0f0302

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x360

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0303

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x35d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0f0305

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x35f

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x35e

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/ah;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/ah;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->H:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->c:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->A()V

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    if-ne p2, v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->I:Z

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->y()V

    goto :goto_1b
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->I:Z

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_29

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/am;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/am;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;ILjava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/view/android/ab;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/google/googlenav/ui/view/android/ab;-><init>(Lcom/google/googlenav/ui/view/android/Z;Ljava/lang/String;Landroid/widget/RadioGroup;I)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/Z;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/Z;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/Z;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/Z;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/Z;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/Z;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/Z;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/Z;->b(Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x55

    const-string v1, "rro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a([Lcom/google/googlenav/aj;)V
    .registers 10

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v0, 0x2

    iget-boolean v4, p0, Lcom/google/googlenav/ui/view/android/Z;->M:Z

    if-eqz v4, :cond_7c

    add-int/lit8 v3, v3, 0x1

    iget-boolean v4, p0, Lcom/google/googlenav/ui/view/android/Z;->N:Z

    if-eqz v4, :cond_7c

    move v4, v1

    :goto_11
    if-lez v3, :cond_4a

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->G:Z

    const/4 v0, 0x3

    if-le v3, v0, :cond_4c

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->H:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->M:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->H:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->N:Z

    if-nez v0, :cond_4e

    move v0, v1

    :goto_29
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->I:Z

    move v0, v2

    :goto_2c
    array-length v3, p1

    if-ge v0, v3, :cond_58

    aget-object v5, p1, v0

    iget-object v3, v5, Lcom/google/googlenav/aj;->a:Ljava/lang/String;

    iget v6, v5, Lcom/google/googlenav/aj;->c:I

    invoke-direct {p0, v3, v6}, Lcom/google/googlenav/ui/view/android/Z;->a(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/android/Z;->H:Z

    if-eqz v3, :cond_50

    if-lt v0, v4, :cond_50

    move v3, v1

    :goto_40
    if-eqz v3, :cond_52

    iget-object v3, v5, Lcom/google/googlenav/aj;->a:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/google/googlenav/ui/view/android/Z;->a(Landroid/view/View;Ljava/lang/String;)V

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4a
    move v0, v2

    goto :goto_14

    :cond_4c
    move v0, v2

    goto :goto_1a

    :cond_4e
    move v0, v2

    goto :goto_29

    :cond_50
    move v3, v2

    goto :goto_40

    :cond_52
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/Z;->t:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_47

    :cond_58
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->M:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->v()V

    :cond_5f
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->H:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->z()V

    :goto_70
    return-void

    :cond_71
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->w:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_70

    :cond_7c
    move v4, v0

    goto :goto_11
.end method

.method private a(Ljava/lang/String;Landroid/view/ViewGroup;)Z
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_2e

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0f030c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0, v4, p2}, Lcom/google/googlenav/ui/view/android/Z;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_2e
    move v0, v1

    goto :goto_29
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/Z;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->q:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b(I)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    const/16 v2, 0x6ae

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/Z;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find aspect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    const/16 v2, 0x6ad

    invoke-interface {v0, v2, p1, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->I:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    :goto_52
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v1, p1}, Lcom/google/googlenav/ui/view/android/Z;->a(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->z:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->A:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->B:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_15

    :cond_71
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->t:Landroid/view/ViewGroup;

    goto :goto_52
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/Z;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/Z;->b(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->K:Landroid/widget/TextView;

    const/16 v1, 0x349

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->K:Landroid/widget/TextView;

    const/16 v1, 0x34a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d
.end method

.method private b(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x361

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lcom/google/googlenav/RatingReminderManager;->a(Z)V

    const-string v0, "RATING_REMINDERS_OPT_OUT_CLOSED"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laf/l;->a(Ljava/lang/String;Z)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/Z;)Landroid/widget/RadioButton;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->A:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private c(Z)V
    .registers 7

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/Z;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->G:Z

    if-nez v0, :cond_15

    if-eqz p1, :cond_94

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->L:Z

    if-eqz v0, :cond_94

    :cond_15
    move v0, v2

    :goto_16
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/Z;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_96

    move v0, v1

    :goto_1b
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/Z;->x:Landroid/view/View;

    if-eqz p1, :cond_98

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->L:Z

    if-eqz v0, :cond_98

    move v0, v1

    :goto_36
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->D:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->F:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->z:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    :cond_4c
    sget-boolean v0, Lcom/google/googlenav/ui/view/android/Z;->a:Z

    if-nez v0, :cond_58

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/Z;->E:Landroid/view/View;

    if-eqz p1, :cond_9a

    move v0, v1

    :goto_55
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_58
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->U:Landroid/widget/TextView;

    if-eqz p1, :cond_9c

    sget-object v0, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    :goto_68
    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bg;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->b()Z

    move-result v0

    if-eqz v0, :cond_9f

    move v0, v3

    :goto_78
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/av;->b()Z

    move-result v2

    if-eqz v2, :cond_a1

    :goto_84
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->P:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->Q:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->U:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_94
    move v0, v1

    goto :goto_16

    :cond_96
    move v0, v3

    goto :goto_1b

    :cond_98
    const/4 v0, 0x4

    goto :goto_36

    :cond_9a
    move v0, v3

    goto :goto_55

    :cond_9c
    sget-object v0, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    goto :goto_68

    :cond_9f
    move v0, v1

    goto :goto_78

    :cond_a1
    move v1, v3

    goto :goto_84
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->t:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/Z;->a(Ljava/lang/String;Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/Z;->a(Ljava/lang/String;Landroid/view/ViewGroup;)Z

    move-result v0

    goto :goto_9
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/Z;)Landroid/widget/RadioButton;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->B:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bA()[I

    move-result-object v0

    aget v2, v0, v11

    aget v3, v0, v12

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->bu()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v4}, Lcom/google/googlenav/ah;->bB()Z

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v5}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x55

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "s="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v9}, Lcom/google/googlenav/ah;->bt()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "a="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/googlenav/ui/view/android/Z;->l:[Lcom/google/googlenav/aj;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "f="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "l="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "d="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v0, v0, v12

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    const/4 v2, 0x5

    if-lez v5, :cond_12b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_bd
    aput-object v0, v7, v2

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12d

    const-string v0, "z"

    :goto_ca
    aput-object v0, v7, v2

    const/4 v2, 0x7

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->c:Z

    if-eqz v0, :cond_12f

    const-string v0, "e"

    :goto_d3
    aput-object v0, v7, v2

    const/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/Z;->C:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/16 v2, 0x9

    if-eqz v4, :cond_131

    const-string v0, "x"

    :goto_fc
    aput-object v0, v7, v2

    const/16 v0, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ca="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->bM()Z

    move-result v2

    if-eqz v2, :cond_121

    const-string v1, "i"

    :cond_121
    aput-object v1, v7, v0

    invoke-static {v7}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, p1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_12b
    move-object v0, v1

    goto :goto_bd

    :cond_12d
    move-object v0, v1

    goto :goto_ca

    :cond_12f
    move-object v0, v1

    goto :goto_d3

    :cond_131
    move-object v0, v1

    goto :goto_fc
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/android/Z;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->k()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/view/android/Z;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->d:Z

    return v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/view/android/Z;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/view/android/Z;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->A()V

    return-void
.end method

.method static synthetic i(Lcom/google/googlenav/ui/view/android/Z;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->C:Landroid/widget/EditText;

    return-object v0
.end method

.method private i()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/bw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->b(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .registers 7

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bC()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bt()I

    move-result v0

    :goto_12
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->q:Landroid/view/ViewGroup;

    if-eqz v1, :cond_22

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/Z;->q:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->n()Z

    move-result v1

    if-eqz v1, :cond_6e

    move v1, v2

    :goto_1f
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_22
    if-eqz v0, :cond_70

    move v0, v4

    :goto_25
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->c(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->b()Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->H()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_72

    move v0, v4

    :goto_53
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->Q:Landroid/widget/ImageView;

    if-nez v0, :cond_74

    :goto_57
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->Q:Landroid/widget/ImageView;

    if-eqz v0, :cond_76

    const/16 v0, 0x80

    :goto_60
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :goto_63
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->m()V

    return-void

    :cond_67
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bD()I

    move-result v0

    goto :goto_12

    :cond_6e
    move v1, v3

    goto :goto_1f

    :cond_70
    move v0, v2

    goto :goto_25

    :cond_72
    move v0, v2

    goto :goto_53

    :cond_74
    move v4, v2

    goto :goto_57

    :cond_76
    const/16 v0, 0xff

    goto :goto_60

    :cond_79
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_63
.end method

.method private m()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->S:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aw;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->a(Lcom/google/googlenav/aw;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/android/af;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/view/android/af;-><init>(Lcom/google/googlenav/ui/view/android/Z;Lcom/google/googlenav/aw;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f0f0336

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/view/android/ag;

    invoke-direct {v4, p0, v0}, Lcom/google/googlenav/ui/view/android/ag;-><init>(Lcom/google/googlenav/ui/view/android/Z;Lcom/google/googlenav/aw;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_51
    return-void
.end method

.method private n()Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "RATING_REMINDERS_OPT_OUT_CLOSED"

    invoke-static {v1, v0}, Laf/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/Z;->J:Z

    if-eqz v2, :cond_e

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private v()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->y:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->I:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    const/16 v1, 0x376

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_24
    const v0, 0x7f0f0309

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->A:Landroid/widget/RadioButton;

    const v0, 0x7f0f030a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->B:Landroid/widget/RadioButton;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f030117

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/Z;->O:[Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x7f0f0307

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->z:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->z:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/ai;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/ai;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->x()V

    return-void

    :cond_66
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->t:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_24
.end method

.method private w()V
    .registers 6

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    new-instance v4, Lcom/google/googlenav/ui/view/android/aj;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/android/aj;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    return-void
.end method

.method private x()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->A:Landroid/widget/RadioButton;

    new-instance v1, Lcom/google/googlenav/ui/view/android/ak;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/ak;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->B:Landroid/widget/RadioButton;

    new-instance v1, Lcom/google/googlenav/ui/view/android/al;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/al;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private y()V
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_41

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0f030c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_24

    :cond_20
    :goto_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_24
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3d

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private z()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/ac;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/ac;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/bF;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/Z;->X:Lcom/google/googlenav/ui/bF;

    return-void
.end method

.method public a(Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/Z;->V:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->W:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_15

    :goto_f
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void

    :cond_13
    move v0, v2

    goto :goto_8

    :cond_15
    move v2, v1

    goto :goto_f
.end method

.method protected c()Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    const v5, 0x7f0f0324

    const/16 v3, 0x333

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget-boolean v1, Lcom/google/googlenav/ui/view/android/Z;->a:Z

    if-eqz v1, :cond_1b6

    const v1, 0x7f03011f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f02ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3c
    const v0, 0x7f0f0320

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->r:Landroid/view/ViewGroup;

    const v0, 0x7f0f0346

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->s:Landroid/view/ViewGroup;

    const v0, 0x7f0f0321

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->n:Landroid/widget/TextView;

    const/16 v2, 0x33f

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    const v0, 0x7f0f0348

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v4

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    const/4 v3, 0x1

    const v0, 0x7f0f0349

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    const/4 v3, 0x2

    const v0, 0x7f0f034a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    const/4 v3, 0x3

    const v0, 0x7f0f034b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->p:[Landroid/widget/CheckBox;

    const/4 v3, 0x4

    const v0, 0x7f0f034c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v3

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/Z;->a(Landroid/view/View;)V

    const/16 v0, 0x340

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->s:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->w()V

    const v0, 0x7f0f0322

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->t:Landroid/view/ViewGroup;

    const v0, 0x7f0f0325

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0323

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->w:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->F:Landroid/view/View;

    const v0, 0x7f0f0327

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->C:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->C:Landroid/widget/EditText;

    const/16 v2, 0x355

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0326

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->x:Landroid/view/View;

    const v0, 0x7f0f033c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->P:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v0, 0x7f0f033d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->Q:Landroid/widget/ImageView;

    const v0, 0x7f0f031f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->D:Landroid/widget/Button;

    const v0, 0x7f0f031d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->E:Landroid/view/View;

    sget-boolean v0, Lcom/google/googlenav/ui/view/android/Z;->a:Z

    if-nez v0, :cond_153

    sget-boolean v0, Lcom/google/googlenav/ui/view/android/Z;->b:Z

    if-nez v0, :cond_153

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->E:Landroid/view/View;

    const v2, 0x108009a

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_153
    const v0, 0x7f0f031e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->K:Landroid/widget/TextView;

    const v0, 0x7f0f033b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->S:Landroid/widget/LinearLayout;

    const v0, 0x7f0f033a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->R:Landroid/widget/LinearLayout;

    const v0, 0x7f0f033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->U:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->U:Landroid/widget/TextView;

    const/16 v2, 0x359

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->U:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bg;)V

    const v0, 0x7f0f0337

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->T:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0338

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->V:Landroid/widget/ProgressBar;

    const v0, 0x7f0f0339

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->W:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->B()V

    return-object v1

    :cond_1b6
    const v1, 0x7f03011b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_1d2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1d2
    move-object v1, v0

    goto/16 :goto_3c
.end method

.method protected d()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bB()Z

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Z;->D:Landroid/widget/Button;

    if-eqz v0, :cond_14

    const/16 v0, 0x356

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_14
    const/16 v0, 0x348

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method protected g()V
    .registers 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/google/googlenav/ui/view/android/Z;->a:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/google/googlenav/ui/view/android/Z;->b:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/Z;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f020171

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_13
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->n()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->N:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->r:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bC()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bt()I

    move-result v0

    :goto_41
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->by()[Lcom/google/googlenav/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->l:[Lcom/google/googlenav/aj;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->l:[Lcom/google/googlenav/aj;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->a([Lcom/google/googlenav/aj;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->C:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->bv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Z;->x:Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->L:Z

    if-eqz v0, :cond_82

    move v0, v1

    :goto_67
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->i()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->k()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->W:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aa;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aa;-><init>(Lcom/google/googlenav/ui/view/android/Z;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bD()I

    move-result v0

    goto :goto_41

    :cond_82
    const/16 v0, 0x8

    goto :goto_67
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/Z;->J:Z

    return-void
.end method

.method public onContentChanged()V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->i()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/Z;->k()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->W:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    const-string v0, "b"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/Z;->d(Ljava/lang/String;)V

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x6a8

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_18
    .packed-switch 0x7f0f042b
        :pswitch_c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/ap;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Z;->k:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bB()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Landroid/view/MenuInflater;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0f042b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x330

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method
