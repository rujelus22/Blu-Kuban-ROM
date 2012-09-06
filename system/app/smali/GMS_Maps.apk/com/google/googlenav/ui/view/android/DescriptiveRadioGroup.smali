.class public Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;
.super Landroid/widget/RadioGroup;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/view/android/ab;

.field private b:I

.field private c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    .line 52
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a()V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)Lcom/google/googlenav/ui/view/android/ab;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a:Lcom/google/googlenav/ui/view/android/ab;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 183
    new-instance v0, Lcom/google/googlenav/ui/view/android/af;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/af;-><init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Lcom/google/googlenav/ui/view/android/ae;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a:Lcom/google/googlenav/ui/view/android/ab;

    .line 184
    new-instance v0, Lcom/google/googlenav/ui/view/android/ag;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/ag;-><init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Lcom/google/googlenav/ui/view/android/ae;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 185
    return-void
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 139
    iput p1, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_d

    .line 141
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    invoke-interface {v0, p0, v1}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 143
    :cond_d
    return-void
.end method

.method private a(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_f

    instance-of v1, v0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    if-eqz v1, :cond_f

    .line 133
    check-cast v0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;->setChecked(Z)V

    .line 135
    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;IZ)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)Z
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 71
    instance-of v0, p1, Lcom/google/googlenav/ui/view/android/CheckableContainer;

    if-eqz v0, :cond_1b

    .line 73
    check-cast p1, Lcom/google/googlenav/ui/view/android/CheckableContainer;

    .line 74
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a:Lcom/google/googlenav/ui/view/android/ab;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->setOnCheckedChangeListener(Lcom/google/googlenav/ui/view/android/ab;)V

    .line 75
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 76
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->check(I)V

    .line 79
    :cond_1b
    return-void
.end method

.method public check(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 84
    if-eq p1, v1, :cond_a

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    if-ne p1, v0, :cond_a

    .line 104
    :goto_9
    return-void

    .line 92
    :cond_a
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    .line 94
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    if-eq v0, v1, :cond_15

    .line 95
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(IZ)V

    .line 98
    :cond_15
    if-eq p1, v1, :cond_1a

    .line 99
    invoke-direct {p0, p1, v3}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(IZ)V

    .line 102
    :cond_1a
    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    .line 103
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(I)V

    goto :goto_9
.end method

.method public getCheckedRadioButtonId()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 154
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 155
    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    .line 156
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(IZ)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->d:Z

    .line 158
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->b:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(I)V

    .line 160
    :cond_18
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 109
    return-void
.end method
