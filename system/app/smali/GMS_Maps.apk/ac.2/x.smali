.class public LaC/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;

.field private f:LaC/w;


# direct methods
.method public constructor <init>(Ljava/util/List;LaC/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, LaC/x;->e:Ljava/util/List;

    .line 34
    iput-object p2, p0, LaC/x;->f:LaC/w;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, LaC/x;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(LaC/w;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, LaC/x;->e:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, LaC/x;->a(Ljava/util/List;LaC/w;)V

    .line 62
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 47
    const v0, 0x7f100339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaC/x;->a:Landroid/view/ViewGroup;

    .line 48
    const v0, 0x7f100336

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LaC/x;->b:Landroid/view/ViewGroup;

    .line 49
    const v0, 0x7f100337

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaC/x;->c:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f100338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaC/x;->d:Landroid/view/View;

    .line 52
    iget-object v0, p0, LaC/x;->c:Landroid/widget/TextView;

    const/16 v1, 0x3ab

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, LaC/x;->e:Ljava/util/List;

    iget-object v1, p0, LaC/x;->f:LaC/w;

    invoke-virtual {p0, v0, v1}, LaC/x;->a(Ljava/util/List;LaC/w;)V

    .line 55
    return-void
.end method

.method public a(Ljava/util/List;LaC/w;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 66
    iput-object p1, p0, LaC/x;->e:Ljava/util/List;

    .line 67
    iget-object v0, p0, LaC/x;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    iget-object v0, p0, LaC/x;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    iget-object v0, p0, LaC/x;->e:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, LaC/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_37

    .line 72
    :cond_1b
    iget-object v0, p0, LaC/x;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, LaC/x;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, LaC/x;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 75
    iget-object v0, p0, LaC/x;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 87
    :cond_2f
    if-nez p2, :cond_62

    .line 88
    iget-object v0, p0, LaC/x;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 97
    :goto_36
    return-void

    .line 77
    :cond_37
    iget-object v0, p0, LaC/x;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, LaC/x;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, LaC/x;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 81
    iget-object v0, p0, LaC/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaC/w;

    .line 82
    iget-object v2, p0, LaC/x;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, LaC/w;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4c

    .line 90
    :cond_62
    iget-object v0, p0, LaC/x;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 92
    invoke-virtual {p2}, LaC/w;->c()Landroid/view/View;

    move-result-object v0

    .line 93
    const v1, 0x7f10001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v1, p0, LaC/x;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_36
.end method
