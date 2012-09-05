.class public LaQ/E;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:LaQ/x;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(LaQ/x;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, LaQ/E;->a:LaQ/x;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0300c3

    iput v0, p0, LaQ/E;->b:I

    iput-object p2, p0, LaQ/E;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, LaQ/E;->a:LaQ/x;

    invoke-static {v0}, LaQ/x;->a(LaQ/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, LaQ/E;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, LaQ/E;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, LaQ/E;->a:LaQ/x;

    invoke-static {v0}, LaQ/x;->a(LaQ/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/z;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0f0163

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, LaQ/z;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_34

    invoke-virtual {v0}, LaQ/z;->b()I

    move-result v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_34
    invoke-virtual {v0}, LaQ/z;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v2
.end method
