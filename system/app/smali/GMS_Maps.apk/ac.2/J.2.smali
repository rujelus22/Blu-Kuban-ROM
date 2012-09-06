.class public LaC/J;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:LaC/B;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(LaC/B;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, LaC/J;->a:LaC/B;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 129
    const v0, 0x7f0400e2

    iput v0, p0, LaC/J;->b:I

    .line 134
    iput-object p2, p0, LaC/J;->c:Landroid/content/Context;

    .line 135
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, LaC/J;->a:LaC/B;

    invoke-static {v0}, LaC/B;->a(LaC/B;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v0, p0, LaC/J;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, LaC/J;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    iget-object v0, p0, LaC/J;->a:LaC/B;

    invoke-static {v0}, LaC/B;->a(LaC/B;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaC/D;

    .line 146
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    const v1, 0x7f100191

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    invoke-virtual {v0}, LaC/D;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_34

    .line 149
    invoke-virtual {v0}, LaC/D;->b()I

    move-result v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 151
    :cond_34
    invoke-virtual {v0}, LaC/D;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const/high16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    return-object v2
.end method
