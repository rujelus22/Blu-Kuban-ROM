.class Lcom/google/googlenav/ui/view/android/aL;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/ui/view/android/aL;->a:I

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aL;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/ui/view/android/aL;->c:I

    iput p4, p0, Lcom/google/googlenav/ui/view/android/aL;->d:I

    iput-boolean p5, p0, Lcom/google/googlenav/ui/view/android/aL;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aL;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/aL;->d:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03018c

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/android/aL;->a(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aL;->e:Z

    if-nez v0, :cond_29

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aL;->e:Z

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aL;->e:Z

    if-nez v0, :cond_2b

    :goto_25
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    return-object v3

    :cond_29
    move v0, v2

    goto :goto_19

    :cond_2b
    move v1, v2

    goto :goto_25
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/aL;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0f0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aL;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/aL;->e:Z

    if-eqz v1, :cond_26

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_25
    return-void

    :cond_26
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_25
.end method
