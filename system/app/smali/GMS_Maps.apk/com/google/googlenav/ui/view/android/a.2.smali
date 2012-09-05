.class public final Lcom/google/googlenav/ui/view/android/a;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Lbb/a;

.field private final e:Lai/f;

.field private final f:Lai/f;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1d

    invoke-static {p2, p7}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->b:Ljava/lang/CharSequence;

    if-eqz p3, :cond_12

    invoke-static {p3, p8}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    :cond_12
    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->c:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/a;->d:Lbb/a;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/a;->e:Lai/f;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/a;->f:Lai/f;

    iput p1, p0, Lcom/google/googlenav/ui/view/android/a;->a:I

    return-void

    :cond_1d
    move-object v0, v1

    goto :goto_a
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V
    .registers 15

    const/4 v1, 0x0

    sget-object v7, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    sget-object v8, Lcom/google/googlenav/ui/bg;->y:Lcom/google/googlenav/ui/bg;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    return-void
.end method


# virtual methods
.method public a()Lbb/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->d:Lbb/a;

    return-object v0
.end method

.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lcom/google/googlenav/ui/view/android/b;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/b;-><init>()V

    const v0, 0x7f0f0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/b;->a:Landroid/widget/TextView;

    const v0, 0x7f0f015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/b;->b:Landroid/widget/TextView;

    const v0, 0x7f0f0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/b;->c:Landroid/widget/ImageView;

    const v0, 0x7f0f002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/b;->d:Landroid/widget/ImageView;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lcom/google/googlenav/ui/view/android/b;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/a;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_13
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->e:Lai/f;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/b;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/a;->f:Lai/f;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f03013c

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/a;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
