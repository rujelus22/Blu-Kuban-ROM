.class public LaQ/s;
.super LaQ/a;
.source "SourceFile"


# instance fields
.field private final e:Lad/t;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lad/t;IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p3, p4, p6}, LaQ/a;-><init>(Ljava/lang/CharSequence;III)V

    .line 39
    iput-object p2, p0, LaQ/s;->e:Lad/t;

    .line 40
    iput p5, p0, LaQ/s;->f:I

    .line 41
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LaQ/s;->e:Lad/t;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/H;->a(Landroid/content/Context;Lad/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 76
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 79
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 55
    new-instance v1, LaQ/u;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/u;-><init>(LaQ/t;)V

    .line 56
    const v0, 0x7f100034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/u;->a(LaQ/u;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 57
    const v0, 0x7f10001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, LaQ/u;->a(LaQ/u;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 58
    invoke-static {v1, p1}, LaQ/u;->a(LaQ/u;Landroid/view/View;)Landroid/view/View;

    .line 59
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 64
    check-cast p2, LaQ/u;

    .line 65
    invoke-static {p2}, LaQ/u;->a(LaQ/u;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaQ/s;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {p2}, LaQ/u;->a(LaQ/u;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 67
    invoke-static {p2}, LaQ/u;->b(LaQ/u;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, LaQ/s;->a(Landroid/widget/ImageView;)V

    .line 68
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 45
    const v0, 0x7f040067

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, LaQ/s;->f:I

    return v0
.end method
