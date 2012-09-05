.class public Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;
.super Landroid/widget/RadioGroup;


# instance fields
.field private a:Lcom/google/googlenav/ui/view/android/au;

.field private b:I

.field private c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)Lcom/google/googlenav/ui/view/android/au;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a:Lcom/google/googlenav/ui/view/android/au;

    return-object v0
.end method

.method private a()V
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/google/googlenav/ui/view/android/aw;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/aw;-><init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Lcom/google/googlenav/ui/view/android/av;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a:Lcom/google/googlenav/ui/view/android/au;

    new-instance v0, Lcom/google/googlenav/ui/view/android/ax;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/ax;-><init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Lcom/google/googlenav/ui/view/android/av;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private a(I)V
    .registers 4

    iput p1, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    invoke-interface {v0, p0, v1}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_d
    return-void
.end method

.method private a(IZ)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;->setChecked(Z)V

    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p1, Lcom/google/googlenav/ui/view/android/CheckableContainer;

    if-eqz v0, :cond_1b

    check-cast p1, Lcom/google/googlenav/ui/view/android/CheckableContainer;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a:Lcom/google/googlenav/ui/view/android/au;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Lcom/google/googlenav/ui/view/android/au;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->check(I)V

    :cond_1b
    return-void
.end method

.method public check(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_a

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    if-ne p1, v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(IZ)V

    :cond_15
    if-eq p1, v1, :cond_1a

    invoke-direct {p0, p1, v3}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(IZ)V

    :cond_1a
    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(I)V

    goto :goto_9
.end method

.method public getCheckedRadioButtonId()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(I)V

    :cond_18
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method
