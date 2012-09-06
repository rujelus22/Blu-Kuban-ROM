.class public Lcom/google/googlenav/ui/wizard/a;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/D;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/D;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    .line 34
    invoke-static {}, LaC/a;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/a;->c:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/a;->a:Lcom/google/googlenav/ui/wizard/D;

    .line 38
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/a;->b:Ljava/util/List;

    .line 39
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 7
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 75
    const v0, 0x7f100179

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    const v1, 0x7f100284

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    const v2, 0x7f100283

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/suggest/android/SuggestView;

    .line 79
    const-string v4, "+"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setFeatureTypeRestrict(I)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setVisibility(I)V

    .line 82
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    new-instance v0, Lcom/google/googlenav/ui/wizard/c;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/c;-><init>(Lcom/google/googlenav/ui/wizard/a;Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 95
    const v0, 0x7f100285

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/google/googlenav/ui/wizard/d;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/d;-><init>(Lcom/google/googlenav/ui/wizard/a;Lcom/google/googlenav/suggest/android/SuggestView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Lcom/google/googlenav/ui/wizard/F;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 109
    const v0, 0x7f100179

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    const v1, 0x7f100284

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    const v2, 0x7f100283

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/suggest/android/SuggestView;

    .line 113
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/googlenav/suggest/android/SuggestView;->setVisibility(I)V

    .line 114
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v2, p3, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/a;->c:Ljava/util/Map;

    invoke-static {v2, p3}, LaC/a;->a(Ljava/util/Map;Lcom/google/googlenav/ui/wizard/F;)I

    move-result v4

    .line 117
    const v2, 0x7f10008f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const v2, 0x7f0202f7

    if-ne v4, v2, :cond_5e

    .line 120
    iget-object v2, p3, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_5e
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/a;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 44
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/a;->a:Lcom/google/googlenav/ui/wizard/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Ljava/lang/String;)V

    .line 46
    :cond_f
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040137

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 57
    new-instance v3, Lcom/google/googlenav/ui/wizard/b;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/b;-><init>(Lcom/google/googlenav/ui/wizard/a;)V

    .line 64
    const v0, 0x7f100335

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/a;->a(Landroid/view/ViewGroup;)V

    .line 66
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/wizard/F;

    .line 67
    invoke-direct {p0, v0, v3, v1}, Lcom/google/googlenav/ui/wizard/a;->a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Lcom/google/googlenav/ui/wizard/F;)V

    goto :goto_24

    .line 70
    :cond_34
    return-object v2
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/a;->a:Lcom/google/googlenav/ui/wizard/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/D;->e()V

    .line 51
    return-void
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
