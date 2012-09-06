.class public Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;
.super Lcom/google/googlenav/ui/android/TemplateView;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field i:Ljava/util/List;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:[Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    .line 46
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    .line 46
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    .line 55
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bd;)I
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g()V

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 118
    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->bs:Lcom/google/googlenav/ui/aV;

    if-eq v4, v5, :cond_33

    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->bt:Lcom/google/googlenav/ui/aV;

    if-eq v4, v5, :cond_33

    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->aP:Lcom/google/googlenav/ui/aV;

    if-ne v4, v5, :cond_40

    .line 121
    :cond_33
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 126
    iget-object v4, p1, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->f:Lcom/google/googlenav/ui/view/J;

    invoke-static {p0, v4, v0}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    goto :goto_15

    .line 128
    :cond_40
    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->bu:Lcom/google/googlenav/ui/aV;

    if-ne v4, v5, :cond_4c

    .line 129
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 130
    :cond_4c
    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->bv:Lcom/google/googlenav/ui/aV;

    if-eq v4, v5, :cond_58

    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->bw:Lcom/google/googlenav/ui/aV;

    if-ne v4, v5, :cond_5e

    .line 132
    :cond_58
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 133
    :cond_5e
    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->aJ:Lcom/google/googlenav/ui/aV;

    if-ne v4, v5, :cond_6a

    .line 134
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    goto :goto_15

    .line 135
    :cond_6a
    iget-object v4, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->bx:Lcom/google/googlenav/ui/aV;

    if-ne v4, v5, :cond_15

    .line 136
    iget-boolean v4, p1, Lcom/google/googlenav/ui/bd;->C:Z

    if-eqz v4, :cond_15

    .line 137
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 138
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/CheckBox;

    iget-boolean v5, p1, Lcom/google/googlenav/ui/bd;->D:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/CheckBox;

    iget-object v5, v0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/CheckBox;

    iget-object v5, p1, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->f:Lcom/google/googlenav/ui/view/J;

    invoke-static {v4, v5, v0}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 151
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bd;->e()Z

    move-result v0

    if-nez v0, :cond_9e

    move v0, v1

    :goto_99
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setFocusable(Z)V

    goto/16 :goto_15

    :cond_9e
    move v0, v2

    goto :goto_99

    .line 163
    :cond_a0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_101

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_101

    move v3, v1

    .line 166
    :goto_bd
    if-eqz v3, :cond_dd

    .line 167
    iget-object v4, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    const/16 v4, 0x50

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_dd
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 183
    if-eq v4, v1, :cond_e7

    if-eqz v3, :cond_103

    :cond_e7
    :goto_e7
    move v0, v1

    move v1, v2

    .line 185
    :goto_e9
    if-ge v1, v4, :cond_105

    .line 186
    iget-object v5, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    add-int/lit8 v3, v0, 0x1

    aget-object v5, v5, v0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    invoke-virtual {p0, v5, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 185
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_e9

    :cond_101
    move v3, v2

    .line 163
    goto :goto_bd

    :cond_103
    move v1, v2

    .line 183
    goto :goto_e7

    .line 189
    :cond_105
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->i:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Landroid/widget/TextView;Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_119

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :cond_119
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bd;)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    .line 61
    const v0, 0x7f10031a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->j:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f10001e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->k:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    const/4 v2, 0x0

    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 64
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    const/4 v2, 0x1

    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 65
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->l:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f10031e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 66
    const v0, 0x7f10007c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->m:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f10031b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->n:Landroid/widget/CheckBox;

    .line 69
    const v0, 0x7f10032b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/ImageView;

    .line 70
    return-void
.end method

.method public setTemplateContent(Lcom/google/googlenav/ui/bd;)V
    .registers 5
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 76
    const/4 v1, 0x0

    .line 77
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->A:Ljava/lang/Object;

    if-eqz v0, :cond_6e

    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->A:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/googlenav/ui/bf;

    if-eqz v0, :cond_6e

    .line 79
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->A:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlenav/ui/bf;

    .line 81
    iget-object v2, v0, Lcom/google/googlenav/ui/bf;->c:Lcom/google/googlenav/ui/ag;

    if-eqz v2, :cond_65

    .line 82
    iget-object v1, v0, Lcom/google/googlenav/ui/bf;->d:Lcom/google/googlenav/ui/af;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->c:Lcom/google/googlenav/ui/ag;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 88
    :goto_20
    if-eqz v0, :cond_31

    .line 89
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->b:Lcom/google/googlenav/ui/view/J;

    if-eqz v0, :cond_52

    .line 96
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 97
    sget v1, Lcom/google/googlenav/ui/bn;->bx:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    sget v1, Lcom/google/googlenav/ui/bn;->by:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    :cond_52
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->L:Ljava/lang/Object;

    sget-object v1, Lcom/google/googlenav/ui/bd;->h:Ljava/lang/Object;

    if-ne v0, v1, :cond_64

    .line 104
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_64

    .line 105
    const v0, 0x7f020299

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->setBackgroundResource(I)V

    .line 108
    :cond_64
    return-void

    .line 83
    :cond_65
    iget-object v2, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    if-eqz v2, :cond_6e

    .line 84
    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    goto :goto_20

    :cond_6e
    move-object v0, v1

    goto :goto_20
.end method
