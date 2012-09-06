.class public Lcom/google/googlenav/ui/view/android/aL;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/google/googlenav/aZ;

.field private c:Lcom/google/googlenav/aZ;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/googlenav/ui/view/android/aL;->a:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0xaet 0x1t 0x10t 0x7ft
        0xaft 0x1t 0x10t 0x7ft
        0xb0t 0x1t 0x10t 0x7ft
        0xb1t 0x1t 0x10t 0x7ft
        0xb2t 0x1t 0x10t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/cd;Lcom/google/googlenav/aZ;Lcom/google/googlenav/aZ;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 56
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aL;->d:Z

    .line 61
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aL;->c:Lcom/google/googlenav/aZ;

    .line 62
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aL;->b:Lcom/google/googlenav/aZ;

    .line 63
    invoke-virtual {p2}, Lcom/google/googlenav/aZ;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aL;->d:Z

    .line 64
    return-void
.end method

.method private a(Lcom/google/googlenav/ba;Landroid/view/View;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const v4, 0x7f10015b

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/google/googlenav/ba;->a()I

    move-result v0

    .line 139
    if-ltz v0, :cond_10

    sget-object v1, Lcom/google/googlenav/ui/view/android/aL;->a:[I

    array-length v1, v1

    if-lt v0, v1, :cond_11

    .line 208
    :cond_10
    :goto_10
    return-void

    .line 143
    :cond_11
    sget-object v1, Lcom/google/googlenav/ui/view/android/aL;->a:[I

    aget v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 144
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aL;->d:Z

    if-eqz v1, :cond_77

    .line 147
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 148
    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aL;->c:Lcom/google/googlenav/aZ;

    invoke-virtual {v4}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v4

    .line 150
    if-eqz v4, :cond_75

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    :goto_39
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 151
    new-instance v2, Lcom/google/googlenav/ui/view/android/aO;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/ui/view/android/aL;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    new-instance v2, Lcom/google/googlenav/ui/view/android/aP;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/aP;-><init>(Lcom/google/googlenav/ui/view/android/aL;Landroid/widget/CheckBox;)V

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 201
    :goto_4c
    const v1, 0x7f10015c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    invoke-virtual {p1}, Lcom/google/googlenav/ba;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->aA:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v1, 0x7f10015d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    :cond_75
    move v2, v3

    .line 150
    goto :goto_39

    .line 173
    :cond_77
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 174
    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aL;->c:Lcom/google/googlenav/aZ;

    invoke-virtual {v4}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v4

    .line 176
    if-eqz v4, :cond_a2

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    :goto_8e
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 177
    new-instance v2, Lcom/google/googlenav/ui/view/android/aQ;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/aQ;-><init>(Lcom/google/googlenav/ui/view/android/aL;Landroid/widget/RadioButton;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 189
    new-instance v2, Lcom/google/googlenav/ui/view/android/aR;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/aR;-><init>(Lcom/google/googlenav/ui/view/android/aL;Landroid/widget/RadioButton;)V

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_4c

    :cond_a2
    move v2, v3

    .line 176
    goto :goto_8e
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aL;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aL;->l()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/aL;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aL;->i()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/aL;)Lcom/google/googlenav/aZ;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aL;->c:Lcom/google/googlenav/aZ;

    return-object v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aL;->g:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x2cb

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aL;->c:Lcom/google/googlenav/aZ;

    invoke-virtual {v2}, Lcom/google/googlenav/aZ;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 215
    return-void
.end method

.method private l()V
    .registers 5

    .prologue
    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    const/4 v0, 0x0

    move v1, v0

    .line 225
    :goto_7
    sget-object v0, Lcom/google/googlenav/ui/view/android/aL;->a:[I

    array-length v0, v0

    if-ge v1, v0, :cond_32

    .line 226
    sget-object v0, Lcom/google/googlenav/ui/view/android/aL;->a:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    const v3, 0x7f10015b

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 228
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 229
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ba;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 232
    goto :goto_7

    .line 233
    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aL;->g:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x2d2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aL;->c:Lcom/google/googlenav/aZ;

    invoke-virtual {v3}, Lcom/google/googlenav/aZ;->a()I

    move-result v3

    invoke-interface {v0, v1, v3, v2}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 234
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const v4, 0x7f100031

    const v5, 0x7f100030

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aL;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aL;->d:Z

    if-eqz v0, :cond_3a

    const v0, 0x7f040077

    :goto_13
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aL;->b:Lcom/google/googlenav/aZ;

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v0

    .line 80
    if-nez v0, :cond_a1

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_26
    move v2, v3

    .line 84
    :goto_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3e

    .line 85
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ba;

    invoke-direct {p0, v0, v7}, Lcom/google/googlenav/ui/view/android/aL;->a(Lcom/google/googlenav/ba;Landroid/view/View;)V

    .line 84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_27

    .line 73
    :cond_3a
    const v0, 0x7f040078

    goto :goto_13

    .line 91
    :cond_3e
    const v0, 0x7f10002e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_9d

    move v0, v4

    .line 95
    :goto_4c
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 97
    :goto_52
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aL;->d:Z

    if-eqz v1, :cond_76

    .line 99
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    const/16 v1, 0x3a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v1, Lcom/google/googlenav/ui/view/android/aM;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aM;-><init>(Lcom/google/googlenav/ui/view/android/aL;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    :cond_76
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    const/16 v1, 0xd1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v1, Lcom/google/googlenav/ui/view/android/aN;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aN;-><init>(Lcom/google/googlenav/ui/view/android/aL;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aL;->c:Lcom/google/googlenav/aZ;

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->d()Z

    move-result v1

    if-nez v1, :cond_99

    move v3, v6

    :cond_99
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    return-object v7

    :cond_9d
    move v0, v5

    .line 94
    goto :goto_4c

    :cond_9f
    move v5, v4

    .line 95
    goto :goto_52

    :cond_a1
    move-object v1, v0

    goto :goto_26
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aL;->c:Lcom/google/googlenav/aZ;

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
