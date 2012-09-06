.class public Lcom/google/googlenav/ui/wizard/jp;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/ui/wizard/jr;

.field private final d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/jr;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    .line 42
    new-instance v0, Lcom/google/googlenav/ui/wizard/jq;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/jq;-><init>(Lcom/google/googlenav/ui/wizard/jp;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jp;->d:Landroid/view/View$OnClickListener;

    .line 53
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/jp;->a:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/jp;->b:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jp;->c:Lcom/google/googlenav/ui/wizard/jr;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/jp;)Lcom/google/googlenav/ui/wizard/jr;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jp;->c:Lcom/google/googlenav/ui/wizard/jr;

    return-object v0
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/jp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401b7

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 61
    const v0, 0x7f10042e

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 63
    const/4 v1, 0x0

    move v4, v1

    :goto_17
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jp;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_67

    .line 64
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/jp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401b8

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    const v2, 0x7f10042f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jp;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jp;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    add-int/lit8 v2, v4, 0x1

    .line 71
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jp;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_62

    .line 72
    const v3, 0x7f100430

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 73
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_62
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v4, v2

    .line 76
    goto :goto_17

    .line 77
    :cond_67
    return-object v5
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/r;->onBackPressed()V

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jp;->c:Lcom/google/googlenav/ui/wizard/jr;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/jr;->a()V

    .line 85
    return-void
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jp;->a:Ljava/lang/String;

    return-object v0
.end method
