.class public Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/googlenav/ui/android/ah;


# instance fields
.field a:Landroid/widget/ListAdapter;

.field private b:Lcom/google/googlenav/ui/android/ai;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->f:I

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ListPopupSpinnerSdk5 should be used with stylable attributes."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->f:I

    .line 59
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a(Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->f:I

    .line 64
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a(Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/maps/R$styleable;->ListPopupSpinnerSdk5:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->f:I

    .line 71
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->g:Z

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    iget v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->f:I

    if-gez v0, :cond_2b

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Popup dialog for ListPopupSpinnerSdk5 is not defined."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    const v1, 0x7f0400e8

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->e:Landroid/widget/TextView;

    .line 82
    new-instance v0, Lcom/google/googlenav/ui/android/ai;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a:Landroid/widget/ListAdapter;

    iget v6, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->f:I

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/android/ai;-><init>(Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b:Lcom/google/googlenav/ui/android/ai;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->h:Z

    return p1
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->h:Z

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b:Lcom/google/googlenav/ui/android/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ai;->dismiss()V

    .line 117
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->h:Z

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b:Lcom/google/googlenav/ui/android/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ai;->l()V

    .line 156
    :cond_b
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b:Lcom/google/googlenav/ui/android/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ai;->i()V

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b:Lcom/google/googlenav/ui/android/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ai;->l()V

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b:Lcom/google/googlenav/ui/android/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ai;->show()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->h:Z

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b:Lcom/google/googlenav/ui/android/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ai;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 137
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a()V

    .line 141
    :goto_b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_14

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->d:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 144
    :cond_14
    return-void

    .line 139
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->d()V

    goto :goto_b
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a()V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->c:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1d

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->c:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 132
    :cond_1d
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a:Landroid/widget/ListAdapter;

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->b:Lcom/google/googlenav/ui/android/ai;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/ai;->a(Landroid/widget/ListAdapter;)V

    .line 123
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->d:Landroid/view/View$OnClickListener;

    .line 103
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 98
    return-void
.end method

.method public setSelection(I)V
    .registers 4
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
