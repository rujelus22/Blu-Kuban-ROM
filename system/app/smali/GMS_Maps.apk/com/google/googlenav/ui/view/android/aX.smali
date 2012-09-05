.class public Lcom/google/googlenav/ui/view/android/aX;
.super Lcom/google/googlenav/ui/view/dialog/c;


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/google/googlenav/aY;

.field private c:Lcom/google/googlenav/aY;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/googlenav/ui/view/android/aX;->a:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x7et 0x1t 0xft 0x7ft
        0x7ft 0x1t 0xft 0x7ft
        0x80t 0x1t 0xft 0x7ft
        0x81t 0x1t 0xft 0x7ft
        0x82t 0x1t 0xft 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/by;Lcom/google/googlenav/aY;Lcom/google/googlenav/aY;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/c;-><init>(Lcom/google/googlenav/ui/p;)V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aX;->d:Z

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aX;->c:Lcom/google/googlenav/aY;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aX;->b:Lcom/google/googlenav/aY;

    invoke-virtual {p2}, Lcom/google/googlenav/aY;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aX;->d:Z

    return-void
.end method

.method private a(Lcom/google/googlenav/aZ;Landroid/view/View;)V
    .registers 8

    const v4, 0x7f0f0130

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aZ;->a()I

    move-result v0

    if-ltz v0, :cond_10

    sget-object v1, Lcom/google/googlenav/ui/view/android/aX;->a:[I

    array-length v1, v1

    if-lt v0, v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    sget-object v1, Lcom/google/googlenav/ui/view/android/aX;->a:[I

    aget v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aX;->d:Z

    if-eqz v1, :cond_77

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aX;->c:Lcom/google/googlenav/aY;

    invoke-virtual {v4}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_75

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    :goto_39
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/ba;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/ui/view/android/ba;-><init>(Lcom/google/googlenav/ui/view/android/aX;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/bb;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/bb;-><init>(Lcom/google/googlenav/ui/view/android/aX;Landroid/widget/CheckBox;)V

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :goto_4c
    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/aZ;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->ay:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0132

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    :cond_75
    move v2, v3

    goto :goto_39

    :cond_77
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aX;->c:Lcom/google/googlenav/aY;

    invoke-virtual {v4}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a2

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    :goto_8e
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/bc;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/bc;-><init>(Lcom/google/googlenav/ui/view/android/aX;Landroid/widget/RadioButton;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/bd;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/bd;-><init>(Lcom/google/googlenav/ui/view/android/aX;Landroid/widget/RadioButton;)V

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_4c

    :cond_a2
    move v2, v3

    goto :goto_8e
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aX;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aX;->i()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/aX;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aX;->h()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/aY;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aX;->c:Lcom/google/googlenav/aY;

    return-object v0
.end method

.method private h()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aX;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x2cb

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aX;->c:Lcom/google/googlenav/aY;

    invoke-virtual {v2}, Lcom/google/googlenav/aY;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method private i()V
    .registers 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    sget-object v0, Lcom/google/googlenav/ui/view/android/aX;->a:[I

    array-length v0, v0

    if-ge v1, v0, :cond_32

    sget-object v0, Lcom/google/googlenav/ui/view/android/aX;->a:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v3, 0x7f0f0130

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aX;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x2d2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aX;->c:Lcom/google/googlenav/aY;

    invoke-virtual {v3}, Lcom/google/googlenav/aY;->a()I

    move-result v3

    invoke-interface {v0, v1, v3, v2}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aX;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aX;->d:Z

    if-eqz v0, :cond_34

    const v0, 0x7f030064

    :goto_d
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aX;->b:Lcom/google/googlenav/aY;

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_90

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_20
    move v2, v3

    :goto_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_38

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/view/android/aX;->a(Lcom/google/googlenav/aZ;Landroid/view/View;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    :cond_34
    const v0, 0x7f030065

    goto :goto_d

    :cond_38
    const v0, 0x7f0f000f

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aX;->d:Z

    if-eqz v0, :cond_66

    const v0, 0x7f0f0011

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x38

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/aY;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aY;-><init>(Lcom/google/googlenav/ui/view/android/aX;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_66
    const v0, 0x7f0f0012

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0xc4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/aZ;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aZ;-><init>(Lcom/google/googlenav/ui/view/android/aX;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aX;->c:Lcom/google/googlenav/aY;

    invoke-virtual {v1}, Lcom/google/googlenav/aY;->d()Z

    move-result v1

    if-nez v1, :cond_8c

    move v3, v4

    :cond_8c
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-object v5

    :cond_90
    move-object v1, v0

    goto :goto_20
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aX;->c:Lcom/google/googlenav/aY;

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
