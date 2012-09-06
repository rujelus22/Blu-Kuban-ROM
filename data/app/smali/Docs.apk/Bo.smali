.class public LBo;
.super Ljava/lang/Object;
.source "UnsupportedStyle.java"

# interfaces
.implements LBj;


# instance fields
.field private final a:I

.field a:Landroid/view/View;

.field private final a:Z

.field private final b:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, LBo;->a:Landroid/view/View;

    .line 29
    iput p1, p0, LBo;->a:I

    .line 30
    iput p2, p0, LBo;->b:I

    .line 31
    iput-boolean p3, p0, LBo;->a:Z

    .line 32
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, LBo;->b:I

    return v0
.end method

.method protected a(Landroid/content/Context;)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, LBo;->a:Landroid/view/View;

    if-nez v0, :cond_4a

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    sget v1, Luq;->uneditable_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LBo;->a:Landroid/view/View;

    .line 50
    iget-object v0, p0, LBo;->a:Landroid/view/View;

    sget v1, Lup;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    iget v1, p0, LBo;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v0, p0, LBo;->a:Landroid/view/View;

    sget v1, Lup;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    iget v1, p0, LBo;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v0, p0, LBo;->a:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 55
    iget-object v0, p0, LBo;->a:Landroid/view/View;

    iget-object v1, p0, LBo;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, LBo;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 57
    :cond_4a
    iget-object v0, p0, LBo;->a:Landroid/view/View;

    return-object v0
.end method

.method public a()LyD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LyD",
            "<",
            "LBo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, LBp;

    invoke-direct {v0, p0}, LBp;-><init>(LBo;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, LBo;->a:Z

    return v0
.end method

.method public a(LBj;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    instance-of v1, p1, LBo;

    if-eqz v1, :cond_1a

    .line 37
    check-cast p1, LBo;

    .line 38
    iget v1, p1, LBo;->a:I

    iget v2, p0, LBo;->a:I

    if-ne v1, v2, :cond_1a

    iget v1, p1, LBo;->b:I

    iget v2, p0, LBo;->b:I

    if-ne v1, v2, :cond_1a

    iget-boolean v1, p1, LBo;->a:Z

    iget-boolean v2, p0, LBo;->a:Z

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 41
    :cond_1a
    return v0
.end method
