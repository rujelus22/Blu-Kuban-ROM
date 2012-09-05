.class public Lcom/google/googlenav/ui/view/android/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:LaY/aG;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Lai/f;

.field private final f:LaJ/B;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/f;LaJ/B;ILaY/aG;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bt;->b:Ljava/lang/CharSequence;

    if-nez p2, :cond_1e

    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bt;->c:Ljava/lang/CharSequence;

    if-nez p3, :cond_25

    :goto_13
    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->d:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bt;->e:Lai/f;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/bt;->f:LaJ/B;

    iput p6, p0, Lcom/google/googlenav/ui/view/android/bt;->g:I

    iput-object p7, p0, Lcom/google/googlenav/ui/view/android/bt;->a:LaY/aG;

    return-void

    :cond_1e
    sget-object v0, Lcom/google/googlenav/ui/bg;->F:Lcom/google/googlenav/ui/bg;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_f

    :cond_25
    sget-object v0, Lcom/google/googlenav/ui/bg;->aY:Lcom/google/googlenav/ui/bg;

    invoke-static {p3, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_13
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lcom/google/googlenav/ui/view/android/bu;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/bu;-><init>()V

    iput-object p1, v1, Lcom/google/googlenav/ui/view/android/bu;->a:Landroid/view/View;

    const v0, 0x7f0f0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bu;->b:Landroid/widget/TextView;

    const v0, 0x7f0f0163

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bu;->c:Landroid/widget/TextView;

    const v0, 0x7f0f023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bu;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bu;->e:Landroid/widget/ImageView;

    const v0, 0x7f0f0166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bu;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    const v0, 0x7f0f0167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bu;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    new-instance v0, Lcom/google/googlenav/ui/view/android/bv;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bv;-><init>(Lcom/google/googlenav/ui/view/android/bt;)V

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bu;->h:Lcom/google/googlenav/ui/view/android/bv;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 6

    check-cast p2, Lcom/google/googlenav/ui/view/android/bu;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bu;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bu;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->d:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bu;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->e:Lai/f;

    invoke-static {v0, v1}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bt;->f:LaJ/B;

    if-eqz v0, :cond_2b

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bu;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bu;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bt;->f:LaJ/B;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;LaJ/B;)V

    :cond_2b
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bu;->h:Lcom/google/googlenav/ui/view/android/bv;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bt;->g:I

    iput v1, v0, Lcom/google/googlenav/ui/view/android/bv;->a:I

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bu;->a:Landroid/view/View;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bu;->h:Lcom/google/googlenav/ui/view/android/bv;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300b0

    return v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bt;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
